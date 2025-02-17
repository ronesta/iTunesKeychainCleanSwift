//
//  SearchHistoryInteractorProtocol.swift
//  iTunesKeychainCleanSwift
//
//  Created by Ибрагим Габибли on 17.02.2025.
//

import Foundation

protocol SearchHistoryInteractorProtocol {
    func fetchSearchHistory(request: SearchHistoryModels.Request)
}
