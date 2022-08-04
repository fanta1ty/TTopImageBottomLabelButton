//
//  TTopImageBottomLabelButton.swift
//  TTopImageBottomLabelButton
//
//  Created by Nguyen, Thinh on 04/08/2022.
//

import Foundation
import TTouchAnimatedButton

open class TTopImageBottomLabelButton: TTouchAnimatedButton {
    // MARK: - Private Properties
    private let stackView = UIStackView()
    
    // MARK: - Public Properties
    public let customTitleLabel = UILabel()
    public let topImageView = UIImageView()
    
    public init(title: String, image: UIImage) {
        self.customTitleLabel.text = title
        self.topImageView.image = image
        super.init(frame: .zero)
        
        addSubviews()
        setupSubviews()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) { nil }
}

// MARK: - Private Functions
extension TTopImageBottomLabelButton {
    private func addSubviews() {
        stackView.addArrangedSubview(topImageView)
        stackView.addArrangedSubview(customTitleLabel)
        addSubview(stackView)
    }

    private func setupSubviews() {
        /// stackView
        stackView.isUserInteractionEnabled = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 8
        
        /// topImageView
        topImageView.contentMode = .scaleAspectFit
        
        /// customTitleLabel
        customTitleLabel.numberOfLines = 0
        customTitleLabel.lineBreakMode = .byWordWrapping
        customTitleLabel.font = UIFont.systemFont(ofSize: 16)
        customTitleLabel.textColor = .white
        customTitleLabel.textAlignment = .center
    }

    private func setupConstraints() {
        stackView.clipToEdges(.zero)
    }
    
    
}

private extension UIView {
    func clipToEdges(_ edges: UIEdgeInsets) {
        guard let superview = superview else { return }
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: edges.top),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -edges.bottom),
            leftAnchor.constraint(equalTo: superview.leftAnchor, constant: edges.left),
            rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -edges.right)
        ])
    }
}
