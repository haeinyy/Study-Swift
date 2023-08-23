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
    func didImageZoomDone(_ contorller: EditViewController, isZoom: Bool)
}

class EditViewController: UIViewController {
    
    var textWayValues: String = ""
    var textMessage: String = ""
    var delegate : EditDelegate?
    var isOn = false
    var isZoom = false

    @IBOutlet var lblWady: UILabel!
    @IBOutlet var txMeassage: UITextField!
    @IBOutlet var swlsOn: UISwitch!
    @IBOutlet var btnResize: UIButton!
    
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
            delegate?.didImageZoomDone(self, isZoom: isZoom)
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
    
    @IBAction func btnResizeimage(_ sender: UIButton) {
        if isZoom {
            isZoom = false
            btnResize.setTitle("축소", for: UIControl.State())
        } else {
            isZoom = true
            btnResize.setTitle("확대", for: UIControl.State())
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
