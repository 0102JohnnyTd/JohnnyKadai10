//
//  ViewController.swift
//  JohnnyKadai10
//
//  Created by Johnny Toda on 2022/06/05.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!

    private let prefecturesData = PrefecturesDataManager().dataArray
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefecturesData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell

        cell.configure(row: indexPath.row, name: prefecturesData[indexPath.row])

        return cell
    }
}
