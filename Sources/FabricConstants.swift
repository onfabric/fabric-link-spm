//
//  File.swift
//  
//
//  Created by Eeshita Pande on 05/09/2024.
//

import Foundation

public struct FabricConstants {
    public static func fabricURL(token: String) -> URL {
        return URL(string: "https://www.onfabric.io/consent/fabric/google?token=\(token)")!
    }
}
