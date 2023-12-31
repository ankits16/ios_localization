//
//  String+Localization.swift
//  DjangoLocalization
//
//  Created by Ankit Sachan on 31/12/23.
//

import Foundation

extension String {
    var localized: String {
           return LocalizationManager.shared.localizedString(forKey: self)
       }
}
