//
//  SearchHistoryAssembly.swift
//  iTunesKeychainCleanSwift
//
//  Created by Ибрагим Габибли on 17.02.2025.
//

import Foundation
import UIKit

final class SearchHistoryAssembly {
    static func build() -> UIViewController {
        let storageManager = KeychainSevice()
        let viewController = SearchHistoryViewController()

        let presenter = SearchHistoryPresenter()
        let worker = SearchHistoryWorker(storageManager: storageManager)
        let interactor = SearchHistoryInteractor(presenter: presenter,
                                                 worker: worker
        )
        let router = SearchHistoryRouter()

        viewController.interactor = interactor
        viewController.router = router
        router.viewController = viewController
        presenter.viewController = viewController

        let navigationController = UINavigationController(rootViewController: viewController)
        let tabBarItem = UITabBarItem(title: "History",
                                      image: UIImage(systemName: "clock"),
                                      tag: 1)
        tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 16)], for: .normal)
        navigationController.tabBarItem = tabBarItem

        return navigationController
    }
}
