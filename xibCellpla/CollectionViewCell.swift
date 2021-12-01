//
//  CollectionViewCell.swift
//  xibCellpla
//
//  Created by 橋元雄太郎 on 2021/12/01.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setupCell(model: Model) {
            title.text = model.title

            if let text = model.subTitle {
                subtitle.text = text
            }

            self.backgroundColor = .lightGray
        }
    }

