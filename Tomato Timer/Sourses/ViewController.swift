//
//  ViewController.swift
//  Tomato Timer
//
//  Created by Вячеслав Онучин on 07.01.2023.
//

import UIKit
import SnapKit

// MARK: - UI Elements



// MARK: - LifeCycle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        addTapGestureToHideKeyboard()
    }

    // MARK: - Setups

    private func setupHierarchy() {

    }

    private func setupLayout() {

    }

    private func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }

    // MARK: - Actions
}

