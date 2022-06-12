//
//  CustomTableViewCell.swift
//  JohnnyKadai10
//
//  Created by Johnny Toda on 2022/06/06.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    private let prefecturesDataManager = PrefecturesDataManager()

    func configure(row: Int) {
        setUpText(row: row)
        setUpBackgroundView(row: row)
    }

    private func setUpText(row: Int) {
        self.detailTextLabel?.text = "\(row + 1)番目の都道府県です"
        self.textLabel?.text = prefecturesDataManager.dataArray[row]
    }

    private func setUpBackgroundView(row: Int) {
        backgroundView = UIView()

        switch row % 3 {
        case 0:
            backgroundView?.backgroundColor = UIColor(red: 0.7, green: 0, blue: 0, alpha: 0.5)
        case 1:
            backgroundView?.backgroundColor = UIColor(red: 0, green: 0.7, blue: 0, alpha: 0.5)
        case 2 :
            backgroundView?.backgroundColor = UIColor(red: 0, green: 0, blue: 0.7, alpha: 0.5)
        default: break
        }
    }
}
