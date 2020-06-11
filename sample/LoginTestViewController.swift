//
//  LoginTestViewController.swift
//  sample
//
//  Created by Divya Lingam on 19/05/20.
//  Copyright © 2020 Divya Lingam. All rights reserved.
//

import UIKit
import FirebaseCrashlytics
import Crashlytics

class LoginTestViewController: UIViewController {
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passWordTxt: UITextField!
    @IBOutlet weak var userNameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .roundedRect)
                      button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
                      button.setTitle("Crash", for: [])
                      button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
                      view.addSubview(button)
       // loginBtn.addTarget(self, action: #selector(loginClick), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }
    func loginClick()
   {
     print("login click")
    let a = 10
    let b = 5
    if a+b == 10
    {
        print("same")
    }
    else{
        print("not same")
    }
    }
    
    @IBAction func switchPressed(_ sender: Any)
    {
        let a = 10
        let b = 5
        if a+b == 10
        {
            print("same")
        }
        else{
            print("not same")
        }
       /* if switchBtn.isOn
        {
            Analytics.logEvent(FirebaseAnalytics.FAselectQAEnglishEvent, parameters: [
                         "Event": FirebaseAnalytics.FAselectQAEnglishEvent as NSObject,
                     ])
            Common.userDefaults.saveDebugMode(true)
            Common.setAPPKeyAndSeacretDebuggMode(true)
            APICommunicationURLs.setApplicationEnviroment(_domainType: .QA)
            Localization.storeCurrentLanguage("en")
            switchBtn.onTintColor = UIColor(red: 36/255, green: 98/255, blue: 158/255, alpha: 1.0)
            
            setupView()

        }
        else {
            Analytics.logEvent(FirebaseAnalytics.FAselectProductionArabicEvent, parameters: [
                                    "Event": FirebaseAnalytics.FAselectQAEnglishEvent as NSObject,
                                ])
            Common.setAPPKeyAndSeacretDebuggMode(false)
            Common.userDefaults.saveDebugMode(false)
            APICommunicationURLs.setApplicationEnviroment(_domainType: .Production)
            switchBtn.onTintColor = UIColor(red: 167/255, green: 167/255, blue: 167/255, alpha: 1.0)
            Localization.storeCurrentLanguage("ar")
            setupView()
        }*/
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
