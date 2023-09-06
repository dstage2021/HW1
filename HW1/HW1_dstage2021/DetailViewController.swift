//
//  DetailViewController.swift
//  HW1_dstage2021
//
//  Created by Dawson Stage on 9/5/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTextLabel: UILabel!
    
    var displayImage: UIImage?
        var displayText: String?

        override func viewDidLoad() {
            super.viewDidLoad()
            detailImageView.image = displayImage
            detailTextLabel.text = displayText
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
