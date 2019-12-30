//
//  TemplateUICollectionReusableView.swift
//  SwiftKit-XiaoDe
//
//  Created by 小唐 on 13/02/2018.
//  Copyright © 2018 ChainOne. All rights reserved.
//
//  UICollectionReusableView 的使用模板
//  用于UICollectionView的SectionHeader和SectionFooter

import UIKit

class TemplateUICollectionReusableView: UICollectionReusableView {
    
    // MARK: - Internal Property
    
    static let headerHeight: CGFloat = 32
    static let identifier: String = "TemplateUICollectionReusableViewReusableIdentifier"
    
    var model: String? {
        didSet {
            self.setupModel(model)
        }
    }
    
    // MARK: - Private Property
    
    fileprivate let mainView: UIView = UIView()
    
    // MARK: - Initialize Function
    init() {
        super.init(frame: CGRect.zero)
        self.initialUI()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialUI()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Internal Function
extension TemplateUICollectionReusableView {
    class func headerInCollectionView(_ collectionView: UICollectionView, at indexPath: IndexPath, of kind: String) -> TemplateUICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: TemplateUICollectionReusableView.identifier, for: indexPath)
        (header as! TemplateUICollectionReusableView).resetSelf()
        return header as! TemplateUICollectionReusableView
    }
    
    class func loadXib() -> TemplateUICollectionReusableView? {
        return Bundle.main.loadNibNamed("TemplateUICollectionReusableView", owner: nil, options: nil)?.first as? TemplateUICollectionReusableView
    }
}

// MARK: - LifeCircle Function
extension TemplateUICollectionReusableView {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initialInAwakeNib()
    }
}
// MARK: - Private UI 手动布局
extension TemplateUICollectionReusableView {
    
    /// 界面布局
    fileprivate func initialUI() -> Void {
        self.addSubview(self.mainView)
        self.initialMainView(self.mainView)
        //self.mainView.snp.makeConstraints { (make) in
        //    make.edges.equalToSuperview()
        //}
    }
    fileprivate func initialMainView(_ mainView: UIView) -> Void {
        mainView.backgroundColor = UIColor.lightGray
    }
    
}
// MARK: - Private UI Xib加载后处理
extension TemplateUICollectionReusableView {
    /// awakeNib时的处理
    fileprivate func initialInAwakeNib() -> Void {
        
    }
}

// MARK: - Data Function
extension TemplateUICollectionReusableView {
    /// 数据重置
    fileprivate func resetSelf() -> Void {
        
    }
    
    fileprivate func setupModel(_ model: String?) -> Void {
        
    }
}

// MARK: - Event Function
extension TemplateUICollectionReusableView {
    
}

// MARK: - Extension Function
