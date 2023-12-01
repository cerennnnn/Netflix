//
//  Extensions.swift
//  Netflix-Clone
//
//  Created by Ceren Güneş on 29.11.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
