//
//  ViewController.swift
//  Tomato Timer
//
//  Created by Вячеслав Онучин on 07.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - Constant

    enum Static {
        static let indent: CGFloat = 30
        static let buttonWidth = 60
        static let buttonHight = 60
    }

    // MARK: - UI Elements

    private var isWorkTime = false
    private var isStarted = false

    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "background"))
        image.contentMode = .scaleAspectFill
        return image
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "25:00"
        label.sizeToFit()
        label.textColor = UIColor(hex: "#141991")
        label.font = UIFont.systemFont(ofSize: 38, weight: UIFont.Weight.bold)
        return label
    }()

    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(systemName: "play"), for: UIControl.State.normal)
        button.tintColor = UIColor(hex: "#141991")
        return button
    }()

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupView()
        setupLayout()
        setupTapGestureToHideKeyboard()
    }

    // MARK: - Setups

    private func setupHierarchy() {
        [backgroundImage,
        label,
        button].forEach {view.addSubview($0)}
    }

    private func setupView() {

    }

    private func setupLayout() {

        backgroundImage.snp.makeConstraints { make in
            make.right.left.top.bottom.equalToSuperview()
        }

        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(Static.buttonHight)
            make.width.equalTo(Static.buttonWidth)
        }

        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(button.snp.top).offset(-Static.indent)
        }
    }

    private func setupTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }

    // MARK: - Actions
}

