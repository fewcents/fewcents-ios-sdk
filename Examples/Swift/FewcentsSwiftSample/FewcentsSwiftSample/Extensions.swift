//
//  Extensions.swift
//  FewcentsSwiftSample
//
//  Created by Chowdhury Md Rajib  Sarwar on 31/7/21.
//

import UIKit

extension UINavigationItem {
    func addNavBarImage() {
        
        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 35))
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 35))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "palo-english")
        imageView.image = image
        logoContainer.addSubview(imageView)
        self.titleView = logoContainer
    }
}
