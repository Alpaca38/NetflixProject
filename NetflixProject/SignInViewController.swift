//
//  SignInViewController.swift
//  NetflixProject
//
//  Created by 조규연 on 5/16/24.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var recommandCodeTextField: UITextField!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var extraInfoLabel: UILabel!
    @IBOutlet var extraInfoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTextField(textField: emailTextField, placeholder: "이메일 주소 또는 전화번호", secure: false)
        configureTextField(textField: passwordTextField, placeholder: "비밀번호", secure: true)
        configureTextField(textField: nicknameTextField, placeholder: "닉네임", secure: false)
        configureTextField(textField: locationTextField, placeholder: "위치", secure: false)
        configureTextField(textField: recommandCodeTextField, placeholder: "추천 코드 입력", secure: false)
        recommandCodeTextField.keyboardType = .numberPad
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.setTitleColor(.black, for: .normal)
        
        extraInfoLabel.text = "추가 정보 입력"
        extraInfoLabel.textColor = .white
        
        extraInfoSwitch.setOn(false, animated: true)
        extraInfoSwitch.onTintColor = .blue
        extraInfoSwitch.thumbTintColor = .red
        
    }
    
    func configureTextField(textField: UITextField, placeholder: String, secure: Bool) {
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.textAlignment = .center
        textField.backgroundColor = .gray
        textField.isSecureTextEntry = secure
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        self.view.endEditing(true)
    }
    
}
