//
//  ViewController.swift
//  xibCellpla
//
//  Created by 橋元雄太郎 on 2021/12/01.
//
//　このplaではファイルをtitleのsfiftファイル、カスタムセルのクラス、viewのクラスに分けて作成している

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let models = Model.createModels()

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
// nibName: "CollectionViewCell" はクラスの名前
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
// セルの大きさを設定
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: collectionView.frame.width, height: 100)
        collectionView.collectionViewLayout = layout
    }

// セルの中身を表示する
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
        // if let でcellをキャストしている
        if let cell = cell as? CollectionViewCell {
            cell.setupCell(model: models[indexPath.row])
        }
        return cell
    }

// セルの行数を指定する
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
}

