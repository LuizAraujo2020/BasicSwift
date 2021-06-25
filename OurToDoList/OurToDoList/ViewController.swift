//
//  ViewController.swift
//  OurToDoList
//
//  Created by Luiz Carlos da Silva Araujo on 25/06/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    
    
    //criar a tableview: para listar as entradas
    private let table: UITableView = {
            let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    var items = [String]()  //itens ficam numa array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pega os dados da User Defaults e põe na array items
        self.items = UserDefaults.standard.stringArray(forKey: "items") ?? []
        
        //título
        title = "To Do List"
        
        view.addSubview(table)
        table.dataSource = self //self quer dizer que a viewControle irá fornecer os dados
        
        //add botao +
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    
    @objc private func didTapAdd(){ //@objc porque é um seletor
        let alert = UIAlertController(title: "New Item", message: "Enter new to do task!", preferredStyle: .alert)
        
        alert.addTextField { field in
            field.placeholder = "Enter item..."
        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))//btn cancelar
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: { [weak self] (_) in //waek self é para não causar "memory leak
            //pegar a entrada do text field
            if let field = alert.textFields?.first {
                if let text = field.text, !text.isEmpty {
                    //enter new to do list item
//                    print(text)   //teste
                    DispatchQueue.main.async {//pra ter certeza que vai rodar na main thread
                        //user defaults: salva algumas ifn no user device
                        
                        var currentItems = UserDefaults.standard.stringArray(forKey: "items") ?? []//pra nao ficar substituindo/só uma entrada
                        currentItems.append(text)
                        
                        UserDefaults.standard.setValue(currentItems, forKey: "items")
                        self?.items.append(text)
                        self?.table.reloadData()
                    }
                }
            }
        }))
        
        present(alert, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row] //pega o item e poe na cell
        
        return cell
    }
 
}































