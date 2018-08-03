//
//  secondPicker.swift
//  PickerView
//
//  Created by Ali on 7/3/1439 AH.
//  Copyright © 1439 Ali. All rights reserved.
//

import UIKit

class secondPicker: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    /*
     
     البكر فيو ياخذ بياناته من الكود
     مع البيكر فيو فيه ربطين لازم اسويهم
     الاول
     الثاني
     والطريقة نحدد البيكر فيو ثم نروح الي connections inspetor
     نختار الداتا سورس ونسحب الي view conroleer  اللي في الكانفاس
     ونختار الديليقيت ونسحب الي view conrolee اللي في الكانفاس
     
     نعرف مصفوفة فيها القيم
     
     نضيف الديليقت بعد الكلاس بس اكتب  picker وتطلع لك الديليقت
     نضيف الداتا سورس بعد الكلاس بس اكتب بيكر وتطلع الداتا سورس
     بيطلع لنا خطأ انه لازم فيه دالة على الاقل
     نضغط فكس وهو من لحاله يضيف الدالتين
     */
    
    
    
    // مصفوفة فيها القيم
    var data:[[String]] = [
        ["item 1", "item 2", "item 3", "item 4", "Ali"],
        ["item A", "item B", "item C", "item D"]
                        ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { // دالة ترجع كم صف
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }
    
    //  I اكتب بيكر واختار هذي الدالة titleForRow
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
        //         [string array][]
        
    }
    
    // فنكشن نضيفها عشان ناخذ قيمة من البيكر فيو
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print ([row])
        print([component])
        print("....")
        return label.text = data[component][row]
        //I [تجي من الدالة اللي بالسطر ٥٥ ] [ row الدالة اللي ]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
}
