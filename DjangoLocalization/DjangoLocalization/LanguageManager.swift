//
//  LanguageManager.swift
//  DjangoLocalization
//
//  Created by Ankit Sachan on 31/12/23.
//

import Foundation
class LocalizationManager {
    static let shared = LocalizationManager()

    var locale: Locale = Locale.current

    func localizedString(forKey key: String) -> String {
        guard let path = Bundle.main.path(forResource: locale.languageCode, ofType: "lproj"),
              let bundle = Bundle(path: path) else {
            return NSLocalizedString(key, comment: "")
        }

        return bundle.localizedString(forKey: key, value: nil, table: nil)
    }
}
