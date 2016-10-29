//
//  ExtensionStringLanguage.swift
//  Localize_demo
//
//  Created by Phung on 10/30/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import Foundation
extension String {
    func localized() -> String {
        let langId = (Locale.current as NSLocale).object(forKey: NSLocale.Key.languageCode) as! String
        switch langId {
        case "vi" :
            let path = Bundle.main.path(forResource: "vi", ofType: "lproj")
            let bundle = Bundle(path: path!)
            return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
            
        default:
            let path = Bundle.main.path(forResource: "en", ofType: "lproj")
            let bundle = Bundle(path: path!)
            return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
        }
    }
}
