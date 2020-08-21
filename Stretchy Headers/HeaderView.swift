//
//  HeaderView.swift
//  Stretchy Headers
//
//  Created by Adwait Barkale on 21/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
        
    
    let imgView: UIImageView = {
       let iv = UIImageView(image: #imageLiteral(resourceName: "fb-insta-tw"))
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(imgView)
        imgView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


