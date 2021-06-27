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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Livrarios"
        let nib = UINib(nibName: "LivroTableViewCell", bundle: nil)
//        DispatchQueue.main.async {
//            self.view.addSubview(tableView)
//        }
        getAllItems()
        tableView.register(nib, forCellReuseIdentifier: "LivroTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.rowHeight = 150
            
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    
    @objc private func didTapAdd() {
        let alert = UIAlertController(title: "Novo Livro", message: nil, preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: nil)
        alert.addTextField(configurationHandler: nil)
        
        alert.textFields?.first?.placeholder = "Titulo do livro"
        alert.textFields?.last?.placeholder = "Autor do livro"
        
        alert.addAction(UIAlertAction(title: "Enviar", style: .cancel, handler: { [weak self] _ in
            guard let field = alert.textFields?.first, let titulo = field.text, !titulo.isEmpty else {
                return
            }
            
            guard let fieldAutor = alert.textFields?.last, let autor = fieldAutor.text, !autor.isEmpty else {
                return
            }
            
            self?.creatItem(titulo: titulo, autor: autor)
        }))
        
        present(alert, animated: true)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
        cell.imageCapa.image = UIImage(named: "livro\(indexPath.row)")
        
        return cell
    }
    
    
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

