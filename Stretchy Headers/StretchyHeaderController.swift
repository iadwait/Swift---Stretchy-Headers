//
//  StretchyHeaderController.swift
//  Stretchy Headers
//
//  Created by Adwait Barkale on 21/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit


class StretchyHeaderController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    fileprivate var cellId = "cellId"
    fileprivate var headerId = "headerId"
    fileprivate var padding:CGFloat = 16
    
//    let imgView: UIImageView = {
//       let iv = UIImageView()
//        iv.frame = .init(x: 20, y: 10, width: 120, height: 120)
//        iv.image = UIImage(named: "p1")
//        iv.contentMode = .scaleAspectFit
//       return iv
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
        setupCollectionViewLayout()
        
        
    }
    
    fileprivate func setupCollectionViewLayout() {
        //layout customization
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout{
            layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
        }
    }
    
    fileprivate func setupCollectionView() {
        collectionView.backgroundColor = .white
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) 
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 340)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .white
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor.black.cgColor
        let imgView: UIImageView = {
        let iv = UIImageView()
        iv.frame = .init(x: 20, y: 10, width: 120, height: 120)
        iv.layer.cornerRadius = iv.frame.height / 2
        iv.image = UIImage(named: "p1")
        iv.contentMode = .scaleAspectFit
        return iv
       }()
        let lblName = UILabel(frame: CGRect(x: 145, y: 0, width: 180, height: 150))
        lblName.text = "User Data Here"
        lblName.font = .systemFont(ofSize: 25)
        //lblName.backgroundColor = .blue
        cell.addSubview(lblName)
        cell.addSubview(imgView)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 2 * padding, height: 150)
    }

}
