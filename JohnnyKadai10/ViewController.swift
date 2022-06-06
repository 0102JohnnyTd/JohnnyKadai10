//
//  ViewController.swift
//  JohnnyKadai10
//
//  Created by Johnny Toda on 2022/06/05.
//

import UIKit

class ViewController: UIViewController {
    private let prefecturesDataManager = PrefecturesDataManager()
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefecturesDataManager.dataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell

        cell.setUpBackgroundView(row: indexPath.row)
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        cell.textLabel?.text = prefecturesDataManager.dataArray[indexPath.row]

        return cell
    }
}
