//
//  SearchViewProtocol.swift
//  iTunesKeychainCleanSwift
//
//  Created by Ибрагим Габибли on 17.02.2025.
//

import UIKit
import SnapKit

protocol SearchViewProtocol: AnyObject {
    func displayAlbums(viewModel: Search.ViewModel)
    func displayError(_ message: String)
}
