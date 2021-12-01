//
//  titleFile.swift
//  xibCellpla
//
//  Created by 橋元雄太郎 on 2021/12/01.
//

import Foundation

struct Model {
    let title: String?
    let subTitle: String?

static func createModels() -> [Model]
    {
return [
Model(title: "aaaa", subTitle: "aaaa"),
Model(title: "bbbb", subTitle: "bbbb"),
Model(title: "cccc", subTitle: "cccc"),
Model(title: "宮地", subTitle: "宮地い")

]
    }
}
