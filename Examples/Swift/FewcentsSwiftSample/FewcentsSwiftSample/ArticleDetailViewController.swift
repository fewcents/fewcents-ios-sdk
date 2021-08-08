//
//  ArticleDetailViewController.swift
//  FewcentsSwiftSample
//
//  Created by Chowdhury Md Rajib  Sarwar on 31/7/21.
//

import UIKit

import Fewcents_iOS_SDK

class ArticleDetailViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    
    let ACESS_KEY = "hounds.fewcents.co"
    let CATEGORY = "test_article"
    let LOGO_URL = "https://totlol.com/wp-content/uploads/2019/05/prothomalo.jpg"
    let PUBLISHER_CUSTOMER_ID = "abhishek_sharma"
    let PUBLISHER_DOMAIN = "hounds.fewcents.co"
    
    var data: News!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.addNavBarImage()
        popuateView()
        addFewcentsPaywall()
    }
    
    func popuateView() {
        imageView.imageFromURL(urlString: data.imageUrl ?? "")
        lblTitle.text = data.title ?? ""
        lblDescription.text = data.descriptions ?? ""
    }
    
    func addFewcentsPaywall() {
        let fewcents = Fewcents(accessKey: ACESS_KEY,
                                category: CATEGORY,
                                logoUrl: LOGO_URL,
                                articleUrl: data.articleUrl ?? "",
                                publisherCustomerId: PUBLISHER_CUSTOMER_ID,
                                publisherDomain: PUBLISHER_DOMAIN)
        
        fewcents.loadPaywall(in: self)
        fewcents.loadPaywall(in: self, content: contentView, position: .top)
    }
}
