//
//  SlotMachineViewController.swift
//  Lec5IOs
//
//  Created by hackeru on 22 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

func createARandom(upperLimit: Int)->(Int) {
    // there's a global function to preduce random numbers
    // UInt32 is a positive integer 32 bit - Unsigned
    
    //init UInt32(10) -> upper = 10
    let upper = UInt32(upperLimit)
    //random UInt32(0...<10)
    let randomNumber = arc4random_uniform(upper)
    // convert to int
    let r = Int(randomNumber)
    // return
    return r
}
class SlotMachineViewController: UIViewController {
    
    var images = [#imageLiteral(resourceName: "icons8-7_c"), #imageLiteral(resourceName: "icons8-apple"), #imageLiteral(resourceName: "icons8-cherry"), #imageLiteral(resourceName: "icons8-citrus"), #imageLiteral(resourceName: "icons8-banana"), #imageLiteral(resourceName: "icons8-orange"), #imageLiteral(resourceName: "icons8-pineapple"), #imageLiteral(resourceName: "icons8-question_mark")]

    
    @IBOutlet var slots: [UIImageView]!
    
    
    @IBAction func spin(_ sender: UIButton) {
        
        for imageView in slots {
            // how to get one random image
            let r = createARandom(upperLimit: images.count)
            // get an image
            let randImage = images[r]
            // put the image
            imageView.image = images[r]
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
