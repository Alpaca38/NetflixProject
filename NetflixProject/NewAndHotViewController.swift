//
//  NewAndHotViewController.swift
//  NetflixProject
//
//  Created by 조규연 on 5/16/24.
//

import UIKit

// Image Rendering Mode: template vs original
// UIImage().withRenderingMode(.alwaysOriginal)
// template mode는 tint color를 변경하거나 하기 위해 필요
class NewAndHotViewController: UIViewController {

    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchIconImageView: UIImageView!
    @IBOutlet var firstCategoryButton: UIButton!
    @IBOutlet var secondCategoryButton: UIButton!
    @IBOutlet var thirdCategoryButton: UIButton!
    @IBOutlet var firstResultLabel: UILabel!
    @IBOutlet var secondResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "Hot & New 검색"
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white ]
        
        self.view.backgroundColor = .black
        
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요..."
        searchTextField.backgroundColor = .gray
        searchTextField.leftViewMode = .always
        searchTextField.leftView = searchIconImageView
        
        searchIconImageView.contentMode = .scaleAspectFit
        searchIconImageView.image = UIImage(systemName: "magnifyingglass")
        searchIconImageView.tintColor = .lightGray
        
        let categoryButtons = [firstCategoryButton, secondCategoryButton, thirdCategoryButton]
        
        configureCategoryButton(button: firstCategoryButton, image: .blue, title: "공개예정")
        
        configureCategoryButton(button: secondCategoryButton, image: .turquoise, title: "모두의 인기 콘텐츠")
        
        configureCategoryButton(button: thirdCategoryButton, image: .pink, title: "TOP 10 시리즈")
        
        configureResultLabel()
    }
    
    func configureCategoryButton(button: UIButton, image: UIImage, title: String) {
        button.layer.cornerRadius = 10
        button.setImage(image, for: .normal)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
    }
    
    func configureResultLabel() {
        let labels = [firstResultLabel, secondResultLabel]
        
        labels.forEach {
            $0?.textColor = .white
            $0?.textAlignment = .center
            $0?.numberOfLines = 0
            $0?.text = ""
        }
    }
    
    @IBAction func firstCategoryButtonTapped(_ sender: UIButton) {
       
        firstCategoryButton.setTitleColor(.black, for: .normal)
        secondCategoryButton.setTitleColor(.white, for: .normal)
        thirdCategoryButton.setTitleColor(.white, for: .normal)
        
        firstCategoryButton.backgroundColor = .white
        secondCategoryButton.backgroundColor = .black
        thirdCategoryButton.backgroundColor = .black
        
        firstResultLabel.text = "이런! 찾으시는 작품이 없습니다."
        secondResultLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
    }
    
    @IBAction func secondCategoryButtonTapped(_ sender: UIButton) {
        firstCategoryButton.setTitleColor(.white, for: .normal)
        secondCategoryButton.setTitleColor(.black, for: .normal)
        thirdCategoryButton.setTitleColor(.white, for: .normal)
        
        firstCategoryButton.backgroundColor = .black
        secondCategoryButton.backgroundColor = .white
        thirdCategoryButton.backgroundColor = .black
        
        firstResultLabel.text = "이런! 인기 콘텐츠가 없습니다."
        secondResultLabel.text = "다음달을 기대해 주세요."
    }
    
    @IBAction func thirdCategoryButtonTapped(_ sender: UIButton) {
        firstCategoryButton.setTitleColor(.white, for: .normal)
        secondCategoryButton.setTitleColor(.white, for: .normal)
        thirdCategoryButton.setTitleColor(.black, for: .normal)
        
        firstCategoryButton.backgroundColor = .black
        secondCategoryButton.backgroundColor = .black
        thirdCategoryButton.backgroundColor = .white
        
        firstResultLabel.text = "상위 10개 시리즈 입니다."
        secondResultLabel.text = ""
    }
}
