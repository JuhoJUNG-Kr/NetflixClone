//
//  Extensions.swift
//  Netflix Clone
//
//  Created by 정주호 on 03/11/2022.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
