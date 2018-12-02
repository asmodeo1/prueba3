//
//  ViewController.swift
//  TodoLista
//
//  Created by Juan Alonso on 02/12/2018.
//  Copyright © 2018 Juan Alonso. All rights reserved.
//

import UIKit

class TodoListaViewController: UITableViewController {
    let items = ["uno", "dos", "tres"] //elementos de prueba
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "TodoItemCelda", for: indexPath)
        celda.textLabel?.text = items[indexPath.row]
        return celda
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        //Con esta línea se nota que se selecciona, pero no queda seleccionada, lo
        //que queda más bonito
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

