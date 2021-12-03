//
//  ViewController.swift
//  binder
//
//  Created by 하유림 on 2021/11/25.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    // 선생님 이름 변수
    @IBOutlet weak var teacherName: UILabel!
    
    // 선생님 이메일 변수
    @IBOutlet weak var teacherEmail: UILabel!
    
    // 선생님 사진 변수
    @IBOutlet weak var teacherImage: UIImageView!
    
    // 학생 추가 버튼
    @IBOutlet weak var addStudentButton: UIButton!
    
    // 버튼 동작
    @IBAction func addStudentButton(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "addStudentView")
        newVC?.modalTransitionStyle = .coverVertical
        newVC?.modalPresentationStyle = .automatic
        self.present(newVC!, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 선생님 이름, 이메일 설정
        teacherName.text = "윤수미 선생님"
        teacherEmail.text! = "gmltpqkr1234@naver.com"
        
        // 선생님 이름 띄우기
        let attr1 = NSMutableAttributedString(string: teacherName.text!)
        teacherName.attributedText = attr1
        
        // 선생님 이메일 띄우기
        let attr2 = NSMutableAttributedString(string: teacherEmail.text!)
        teacherEmail.attributedText = attr2
        
        // 선생님 사진 띄우기
        // 둥근 테두리
        teacherImage.layer.cornerRadius = teacherImage.frame.height/2
        teacherImage.layer.borderWidth = 1
        teacherImage.layer.borderColor = UIColor.clear.cgColor
        teacherImage.clipsToBounds = true
        teacherImage.image = UIImage(named:"teacher")
        
        
        
    }
}
