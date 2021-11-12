//
//  ViewController.swift
//  QuocPhongNgo_MAPD714_Assignment4
//
//  Created by Phong on 07/11/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    @IBOutlet var tableView: UITableView!
    
    @IBOutlet weak var tableView: UITableView!
    private let movies = [
        ["Name":"Dune 2021","Genre":"Sci-Fi"],
        ["Name":"Shang Chi","Genre":"Superhero"],
        ["Name":"Star Wars","Genre":"Sci-Fi"],
        ["Name":"Blade Runner","Genre":"Sci-Fi"],
        ["Name":"Spiderman","Genre":"Sci-Fi"],
        ["Name":"The Avengers","Genre":"Sci-Fi"],
        ["Name":"Back to the Future","Genre":"Sci-Fi"]
    ]
    let tableIdentifier = "moviesTable"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: tableIdentifier)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Step 1 - Instantiate an object of type UITableViewCell
        var cell = tableView.dequeueReusableCell(withIdentifier: tableIdentifier, for: indexPath) as! CustomTableViewCell
        let rowData = movies[indexPath.row]
        cell.name = rowData["Name"]!
        cell.genre = rowData["Genre"]!
        
        // switch view
        let switchView = UISwitch(frame: .zero)
        switchView.setOn(false, animated: true)
        switchView.tag = indexPath.row
        switchView.addTarget(self, action: #selector(self.switchChanged(_:)), for: .valueChanged)
        cell.accessoryView = switchView
//        if(cell == nil)
//        {
//            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: tableIdentifier)
//        }
        
        return cell
    }
    
    @objc func switchChanged(_ sender: UISwitch!)
    {
        print("Table row switch Changed \(sender.tag)")
        print("The switch is \(sender.isOn ? "ON" : "OFF")")
    }

}

