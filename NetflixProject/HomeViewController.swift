//
//  HomeViewController.swift
//  NetflixProject
//
//  Created by 조규연 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var hotContentsLabel: UILabel!
    @IBOutlet var firstHotPosterImageView: UIImageView!
    @IBOutlet var secondHotPosterImageView: UIImageView!
    @IBOutlet var thirdHotPosterImageView: UIImageView!
    @IBOutlet var firstNetFlixLogoImageView: UIImageView!
    @IBOutlet var secondNetFlixLogoImageView: UIImageView!
    @IBOutlet var thirdNetFlixLogoImageView: UIImageView!
    @IBOutlet var firstTopLogoImageView: UIImageView!
    @IBOutlet var secondTopLogoImageView: UIImageView!
    @IBOutlet var thirdTopLogoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "고래밥님"
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white ]
        
        self.view.backgroundColor = .darkGray

        configureImageView(imageView: posterImageView, image: .명량)
        
        playButton.setImage(.playNormal, for: .normal)
        playButton.setTitle("", for: .normal)

        hotContentsLabel.text = "지금 뜨는 콘텐츠"
        hotContentsLabel.textColor = .white
        hotContentsLabel.font = .systemFont(ofSize: 14)
        
        configureImageView(imageView: firstHotPosterImageView, image: .극한직업)
        
        configureImageView(imageView: secondHotPosterImageView, image: .노량)
        
        configureImageView(imageView: thirdHotPosterImageView, image: .더퍼스트슬램덩크)
    }
    
    func configureImageView(imageView: UIImageView, image: UIImage) {
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 10
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        let numbers = [1,2,3,4,5].shuffled()
        posterImageView.image = UIImage(named: "\(numbers[0])")
        firstHotPosterImageView.image = UIImage(named: "\(numbers[1])")
        secondHotPosterImageView.image = UIImage(named: "\(numbers[2])")
        thirdHotPosterImageView.image = UIImage(named: "\(numbers[3])")
        
        let netflixLogoImages = [firstNetFlixLogoImageView,secondNetFlixLogoImageView,thirdNetFlixLogoImageView]
        
        netflixLogoImages.forEach { $0?.image = .singleBadge }
        
        let randomNumber = Int.random(in: 1...3)
        netflixLogoImages.shuffled().prefix(randomNumber).forEach { $0?.isHidden = true }
        netflixLogoImages.shuffled().prefix(randomNumber).forEach { $0?.isHidden = false }
        
        let topLogoImages = [firstTopLogoImageView, secondTopLogoImageView, thirdTopLogoImageView]
        
        topLogoImages.forEach { $0?.image = .top10Badge }
        
        topLogoImages.shuffled().prefix(randomNumber).forEach { $0?.isHidden = true }
        topLogoImages.shuffled().prefix(randomNumber).forEach { $0?.isHidden = false }
    }
    
}
