//
//  WeeksViewController.swift
//  onekay
//
//  Created by Sushant Verma on 21/8/20.
//  Copyright © 2020 Sushant Verma. All rights reserved.
//

import UIKit

class WeekCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class WeeksViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        flowLayout?.minimumInteritemSpacing = 1
        flowLayout?.minimumLineSpacing = 1

        collectionView.register(WeekCell.self, forCellWithReuseIdentifier: "weekCell")

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 52
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weekCell", for: indexPath)

        return cell
    }


    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.width/4)-1
        return CGSize(width: size,
                      height: size)

    }
}

