//
//  SearchHistoryPresenter.swift
//  iTunesKeychainCleanSwift
//
//  Created by Ибрагим Габибли on 17.02.2025.
//

import Foundation

final class SearchHistoryPresenter: SearchHistoryPresenterProtocol {
    weak var viewController: SearchHistoryViewProtocol?

    func presentSearchHistory(response: SearchHistoryModels.Response) {
        let viewModel = SearchHistoryModels.ViewModel(history: response.history)
        viewController?.displaySearchHistory(viewModel: viewModel)
    }
}
