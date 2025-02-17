//
//  AlbumAssembly.swift
//  iTunesKeychainCleanSwift
//
//  Created by Ибрагим Габибли on 17.02.2025.
//

import Foundation
import UIKit

final class AlbumAssembly {
    static func build(with album: Album) -> UIViewController {
        let storageManager = KeychainSevice()
        let networkManager = NetworkManager(storageManager: storageManager)

        let presenter = AlbumPresenter()
        let worker = AlbumWorker(networkManager: networkManager)
        let interactor = AlbumInteractor(presenter: presenter,
                                         worker: worker
        )
        let viewController = AlbumViewController(interactor: interactor,
                                                 album: album
        )

        presenter.viewController = viewController

        return viewController
    }
}
