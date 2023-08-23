//
//  EditViewController.swift
//  swift_chapter11_navigation
//
//  Created by 해인 on 2023/08/23.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ contorller: EditViewController, isOn: Bool)
}

class EditViewController: UIViewController {
    
    var textWayValues: String = ""
    var textMessage: String = ""
    var delegate : EditDelegate?
    var isOn = false

    @IBOutlet var lblWady: UILabel!
    @IBOutlet var txMeassage: UITextField!
    @IBOutlet var swlsOn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWady.text = textWayValues
        txMeassage.text = textMessage
        swlsOn.isOn = isOn
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMeassage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            isOn = true
        } else {
            isOn = false
        }
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
