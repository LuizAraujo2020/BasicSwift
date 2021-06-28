//
//  ViewController.swift
//  Livrarios
//
//  Created by Luiz Carlos da Silva Araujo on 25/06/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //IBOulets
    @IBOutlet  var tableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
//    let tableView: UITableView = {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
    
    private var models = [Livro]()
    
    
    
// MARK: - ViewDidLoad()
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Livrarios"
        
        let nib = UINib(nibName: "LivroTableViewCell", bundle: nil)

        tableView.register(nib, forCellReuseIdentifier: "LivroTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.rowHeight = 150
        
        //botão +
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
        getAllItems()
    }

    
// MARK: - func BOTAO +
    @objc private func didTapAdd() {
        //criar o Alert para inclusão
        let alert = UIAlertController(title: "Novo Livro", message: nil, preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: nil)
        alert.textFields?.first?.placeholder = "ISBN do livro"
        
        alert.addAction(UIAlertAction(title: "Enviar", style: .cancel, handler: { [weak self] _ in
//            guard let field = alert.textFields?.first, let titulo = field.text, !titulo.isEmpty else {
//                return
//            }
            guard let field = alert.textFields?.first, let isbnEntrada = field.text, !isbnEntrada.isEmpty else {
                return
            }
            
            let url = "https://www.googleapis.com/books/v1/volumes?q=isbn:\(isbnEntrada)&printType=books&key=AIzaSyA0zhelKkv1POeMXy2HuWr2vQQNognD5fQ"
            getData(from: url)
//            self?.creatItem(titulo: titulo, autor: autor)
//            self?.creatItem(titulo: item[0], autor: item[1])
        }))
        getAllItems()
        present(alert, animated: true)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //deixar o número de rows igual ao de livros
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "LivroTableViewCell", for: indexPath) as! LivroTableViewCell
        
        if indexPath.row % 2 != 0 {
            cell.backgroundColor = .systemFill
        } else  {
            cell.backgroundColor = .white
        }
        
        cell.labelTitulo.text = model.titulo
        cell.labelAutor.text = model.autor

        return cell
    }

    
    
    //ao selecionar Livro
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = models[indexPath.row]
        
        let sheet = UIAlertController(title: "Editar", message: nil, preferredStyle: .actionSheet)
        
        sheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        sheet.addAction(UIAlertAction(title: "Editar", style: .default, handler: { [weak self] _ in
            
            let alert = UIAlertController(title: "Editar titulo", message: "Edite autor", preferredStyle: .alert)
            
            alert.addTextField(configurationHandler: nil)
            alert.textFields?.first?.text = item.titulo
            alert.addTextField(configurationHandler: nil)
            alert.textFields?.last?.text = item.autor
            
            alert.addAction(UIAlertAction(title: "Salvar", style: .cancel, handler: { [weak self] _ in
                guard let field = alert.textFields?.first, let newTitle = field.text, !newTitle.isEmpty else {
                    return
                }
                guard let fieldAuthor = alert.textFields?.last, let newAuthor = fieldAuthor.text, !newAuthor.isEmpty else {
                    return
                }
            
                self?.updateItem(item: item, newTitulo: newTitle, newAutor: newAuthor)
        }))
            
            self?.present(alert, animated: true)
        }))
        sheet.addAction(UIAlertAction(title: "Deletar", style: .destructive, handler: { [weak self] _ in
            self?.deleteItem(item: item)
        }))
        
        present(sheet, animated: true)
    }
    
    
    
    
    
//MARK: CORE DATA
    func getAllItems() {
        do{
            models = try context.fetch(Livro.fetchRequest())
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch {
            print("Erro na hora de dar fetch no context.")
        }
    }
    
    //SOBRECARGA
    
    func creatItem(titulo: String, autor: String) {
        let newItem = Livro(context: context)
        newItem.titulo = titulo
        newItem.autor = autor
        
        //salvar
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
    }
    
    
    func creatItem(livro: Livro) {
        var newItem = Livro(context: context)
        newItem = livro
        
        //salvar
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
        
    }
    
    func deleteItem(item: Livro) {
        context.delete(item)
        
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao deletar")
        }
    }
    
    func updateItem(item: Livro, newTitulo: String) {
        item.titulo = newTitulo
        
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
    }
    
    func updateItem(item: Livro, newAutor: String) {
        item.autor = newAutor
        
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
    }
    
    func updateItem(item: Livro, newLido: Bool) {
        item.lido = newLido
        
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
    }
    
    func updateItem(item: Livro, newTitulo: String, newAutor: String) {
        item.titulo = newTitulo
        item.autor = newAutor
        
        do{
            try context.save()
            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
    }
    
    
    //FAZER VALIDACOES
    
    
    
    
    
}

//MARK: - API do GOOGLE Books

private func getData(from url: String){
    var array: [String] = ["testo", "texto", "tezto"]

    let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
        
        guard let data = data, error == nil else {
            print("Algo de errado não está certo")
            return
        }
        
        var result: Welcome?

        do {
            result = try JSONDecoder().decode(Welcome.self, from: data)
        } catch {
            print("Falha ao converter \(error.localizedDescription)")
        }
        
        guard let json = result else {
            return
        }
        
        print("Total Items: \(json.totalItems!)")

        array = ["\(json.items?[0].volumeInfo?.title ?? "404")", "\(json.items?[0].volumeInfo?.authors?[0] ?? "404")", "\(json.items?[0].volumeInfo?.imageLinks?.thumbnail ?? "404")"]
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newItem = Livro(context: context)
        newItem.titulo = array[0]
        newItem.autor = array[1]
        newItem.imageCapa = array[2]
        
        //salvar
        do{
            try context.save()
//            getAllItems()
        } catch {
            print("Erro ao salvar")
        }
        
    })
    
    task.resume()
//    return task
}


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//let welcome = try Welcome(json)


// MARK: - Welcome
struct Welcome: Codable {
    let kind: String?
    let totalItems: Int?
    let items: [Item]?
}

// MARK: - Item
struct Item: Codable {
    let kind: String?
    let id: String?
    let etag: String?
    let selfLink: String?
    let volumeInfo: VolumeInfo?
    let saleInfo: SaleInfo?
    let accessInfo: AccessInfo?
    let searchInfo: SearchInfo?
    
    func getTitle() -> String {
        return (volumeInfo?.title ?? "Erou")
    }
    
}

// MARK: - AccessInfo
struct AccessInfo: Codable {
    let country: String?
    let viewability: String?
    let embeddable: Bool?
    let publicDomain: Bool?
    let textToSpeechPermission: String?
    let epub: Epub?
    let pdf: PDF?
    let webReaderLink: String?
    let accessViewStatus: String?
    let quoteSharingAllowed: Bool?
}

// MARK: - Epub
struct Epub: Codable {
    let isAvailable: Bool?
    let acsTokenLink: String?
}

// MARK: - PDF
struct PDF: Codable {
    let isAvailable: Bool?
}

// MARK: - SaleInfo
struct SaleInfo: Codable {
    let country: String?
    let saleability: String?
    let isEbook: Bool?
    let listPrice: SaleInfoListPrice?
    let retailPrice: SaleInfoListPrice?
    let buyLink: String?
    let offers: [Offer]?
}

// MARK: - SaleInfoListPrice
struct SaleInfoListPrice: Codable {
    let amount: Double?
    let currencyCode: String?
}

// MARK: - Offer
struct Offer: Codable {
    let finskyOfferType: Int?
    let listPrice: OfferListPrice?
    let retailPrice: OfferListPrice?
    let giftable: Bool?
}

// MARK: - OfferListPrice
struct OfferListPrice: Codable {
    let amountInMicros: Int?
    let currencyCode: String?
}

// MARK: - SearchInfo
struct SearchInfo: Codable {
    let textSnippet: String?
}

// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String?
    let subtitle: String?
    let authors: [String]?
    let publisher: String?
    let publishedDate: String?
    let volumeInfoDescription: String?
    let industryIdentifiers: [IndustryIdentifier]?
    let readingModes: ReadingModes?
    let pageCount: Int?
    let printType: String?
    let categories: [String]?
    let averageRating: Int?
    let ratingsCount: Int?
    let maturityRating: String?
    let allowAnonLogging: Bool?
    let contentVersion: String?
    let panelizationSummary: PanelizationSummary?
    let imageLinks: ImageLinks?
    let language: String?
    let previewLink: String?
    let infoLink: String?
    let canonicalVolumeLink: String?
}

// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail: String?
    let thumbnail: String?
}

// MARK: - IndustryIdentifier
struct IndustryIdentifier: Codable {
    let type: String?
    let identifier: String?
}

// MARK: - PanelizationSummary
struct PanelizationSummary: Codable {
    let containsEpubBubbles: Bool?
    let containsImageBubbles: Bool?
}

// MARK: - ReadingModes
struct ReadingModes: Codable {
    let text: Bool?
    let image: Bool?
}
