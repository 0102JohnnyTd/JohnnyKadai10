//
//  CustomTableViewCell.swift
//  JohnnyKadai10
//
//  Created by Johnny Toda on 2022/06/06.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    func configure(row: Int, name: String) {
        setUpText(row: row, name: name)
        setUpBackgroundView(row: row)
    }

    private func setUpText(row: Int, name: String) {
        self.detailTextLabel?.text = "\(row + 1)番目の都道府県です"
        self.textLabel?.text = name
    }

    private func setUpBackgroundView(row: Int) {
        backgroundView = UIView()


        let colors: [UIColor] = [
            UIColor(red: 0.7, green: 0, blue: 0, alpha: 0.5),
            UIColor(red: 0, green: 0.7, blue: 0, alpha: 0.5),
            UIColor(red: 0, green: 0, blue: 0.7, alpha: 0.5)
        ]

        backgroundView?.backgroundColor = colors[row % colors.count]
    }
}
