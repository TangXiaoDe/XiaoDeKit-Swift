//
//  TemplateUICollectionViewCell.swift
//  XiaoDeKit
//
//  Created by 小唐 on 13/02/2018.
//  Copyright © 2018 XiaoDeStudio. All rights reserved.
//
//  UICollectionViewCell 的使用模板

import UIKit

///  UICollectionViewCell 的使用模板
class TemplateUICollectionViewCell: UICollectionViewCell {
    
    // MARK: - Internal Property
    
    static let identifier: String = "TemplateUICollectionViewCellReuseIdentifier"
    
    var model: String? {
        didSet {
            self.setupWithModel(model)
        }
    }
    
    // MARK: - Private Property
    
    fileprivate let mainView: UIView = UIView()
    
    // MARK: - Initialize Function
    init() {
        super.init(frame: CGRect.zero)
        self.commonInit()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }
    
    /// 通用初始化
    func commonInit() -> Void {
        self.initialUI()
    }
    
}

// MARK: - Internal Function
extension TemplateUICollectionViewCell {
    class func cellInCollectionView(_ collectionView: UICollectionView, at indexPath: IndexPath) -> TemplateUICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.identifier, for: indexPath)
        (cell as! TemplateUICollectionViewCell).resetSelf()
        return cell as! TemplateUICollectionViewCell
    }
    
}

// MARK: - LifeCircle Function
extension TemplateUICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initialInAwakeNib()
    }
}
// MARK: - Private UI 手动布局
extension TemplateUICollectionViewCell {
    
    /// 界面布局
    fileprivate func initialUI() -> Void {
        self.addSubview(self.mainView)
        self.initialMainView(self.mainView)
        //        self.mainView.snp.makeConstraints { (make) in
        //            make.edges.equalToSuperview()
        //        }
    }
    fileprivate func initialMainView(_ mainView: UIView) -> Void {
        mainView.backgroundColor = UIColor.white
        
    }
    
}
// MARK: - Private UI Xib加载后处理
extension TemplateUICollectionViewCell {
    /// awakeNib时的处理
    fileprivate func initialInAwakeNib() -> Void {
        
    }
}

// MARK: - Data Function
extension TemplateUICollectionViewCell {
    /// 数据加载
    fileprivate func setupWithModel(_ model: String?) -> Void {
        guard let _ = model else {
            return
        }
    }
    
    fileprivate func resetSelf() -> Void {
        self.isSelected = false
    }
}

// MARK: - Event Function

// MARK: - Extension Function

// MARK: - <>



