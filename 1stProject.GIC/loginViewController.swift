//
//  loginViewController.swift
//  1stProject.GIC
//
//  Created by Khy Punnreay on 20/8/22.
//

import UIKit

class loginViewController: UIViewController {
    
    
    private let username = ""
    private let phoneNumber = ""

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        phoneNumberTextField.in
//        view.backgroundColor = .green
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc private func login(){
        if usernameTextField.text == username && phoneNumberTextField.text == phoneNumber {
            changeRootWindow()
        }else {
            print("Invalid username or phone number!")
        }
        
        
//        setInitialVC()
        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        let uikitVC = UIKitViewController()
//        let nv = UINavigationController(rootViewController: uikitVC)
//        appDelegate.window?.rootViewController = nv
//        appDelegate.window?.makeKeyAndVisible()
//
//        print(usernameTextField.text ?? "")
//        print(phoneNumberTextField.text ?? "")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    deinit {
        print("Login view controller dead!")
    }

    
    func setInitialVC() {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
    //        let storyboard=UIStoryboard(name: "Main", bundle: nil)
            
            if #available(iOS 13.0, *) {
                if let scene = UIApplication.shared.connectedScenes.first{
                    guard let windowScene = (scene as? UIWindowScene) else { return }
                    let uikitVC = UIKitViewController()
                    let nv = UINavigationController(rootViewController: uikitVC)
                    let window: UIWindow = UIWindow(frame: windowScene.coordinateSpace.bounds)
                    window.windowScene = windowScene
                    window.rootViewController = nv
                    window.makeKeyAndVisible()
                    appDelegate.window = window
                }
            }
            else
            {
                let uikitVC = UIKitViewController()
                let nv = UINavigationController(rootViewController: uikitVC)
                appDelegate.window?.rootViewController = nv
                appDelegate.window?.makeKeyAndVisible()
            }
        }
    
    private func changeRootWindow() {
          // Have file SceneDelegate
            if let scene = UIApplication.shared.connectedScenes.first{
                guard let windowScene = (scene as? UIWindowScene) else { return }
                if let sceneDelegate = windowScene.delegate as? SceneDelegate {
                    let uikitVC = UIKitViewController()
                    let nv = UINavigationController(rootViewController: uikitVC)
                    sceneDelegate.window?.rootViewController = nv
                    sceneDelegate.window?.makeKeyAndVisible()
                }
            }
            
            /*
             // Don't have file SceneDelegate
             if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                 let uikitVC = UIKitViewController()
                 let nv = UINavigationController(rootViewController: uikitVC)
                 appDelegate.window?.rootViewController = nv
                 appDelegate.window?.makeKeyAndVisible()
             }
             */
        }
    
    
}
