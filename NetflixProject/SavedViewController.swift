//
//  SavedViewController.swift
//  NetflixProject
//
//  Created by 조규연 on 5/16/24.
//

import UIKit

class SavedViewController: UIViewController {

    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var savedImageView: UIImageView!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var viewSavedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.topItem?.title = "저장한 콘텐츠 목록"
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white]
        
        self.view.backgroundColor = .black
        
        configureLabel(label: firstLabel, text: "'나만의 자동 저장' 기능", textColor: .white, fontSize: 20)
        
        configureLabel(label: secondLabel, text: "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요.", textColor: .gray, fontSize: 14)
        
        savedImageView.image = .dummy
        
        configureButton(button: settingButton, title: "설정하기", titleColor: .white, backgroundColor: .systemBlue)
        configureButton(button: viewSavedButton, title: "저장 가능한 콘텐츠 살펴보기", titleColor: .black, backgroundColor: .white)
    }
    
    func configureButton(button: UIButton, title: String, titleColor: UIColor, backgroundColor: UIColor) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 5
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
    }
    
    func configureLabel(label: UILabel, text: String, textColor: UIColor, fontSize: CGFloat) {
        label.text = text
        label.textColor = textColor
        label.textAlignment = .center
        label.font = .systemFont(ofSize: fontSize)
        label.numberOfLines = 0
    }

}
