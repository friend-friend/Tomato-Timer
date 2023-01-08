//
//  ViewController.swift
//  Tomato Timer
//
//  Created by Вячеслав Онучин on 07.01.2023.
//

import UIKit
import SnapKit

// MARK: - UI Elements

let backgroundImage: UIImageView = {
    let image = UIImageView(image: UIImage(named: "background"))
    image.contentMode = .scaleAspectFill
    return image
}()

// MARK: - LifeCycle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupView()
        setupLayout()
        setupTapGestureToHideKeyboard()
    }

    // MARK: - Setups

    private func setupHierarchy() {
        [backgroundImage].forEach {view.addSubview($0)}
    }

    private func setupView() {

    }

    private func setupLayout() {

        backgroundImage.snp.makeConstraints { make in
            make.right.left.top.bottom.equalToSuperview()
        }
    }

    private func setupTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }

    // MARK: - Actions
}

