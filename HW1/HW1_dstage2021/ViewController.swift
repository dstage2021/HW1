//
//  ViewController.swift
//  HW1_dstage2021
//
//  Created by Dawson Stage on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(didTapLabel))
                let tap2 = UITapGestureRecognizer(target: self, action: #selector(didTapLabel))
                let tap3 = UITapGestureRecognizer(target: self, action: #selector(didTapLabel))

                firstLabel.addGestureRecognizer(tap1)
                secondLabel.addGestureRecognizer(tap2)
                thirdLabel.addGestureRecognizer(tap3)
                
                firstLabel.isUserInteractionEnabled = true
                secondLabel.isUserInteractionEnabled = true
                thirdLabel.isUserInteractionEnabled = true
    }

    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let destinationVC = segue.destination as? DetailViewController,
           let tappedLabel = sender as? UILabel {
            destinationVC.displayText = tappedLabel.text
            
            switch tappedLabel {
            case firstLabel:
                destinationVC.displayImage = UIImage(named: "upbringing")
                destinationVC.displayText = "Bruce is brought up in Wayne Manor, and leads a happy and privileged existence until the age of eight, when his parents are killed by a small-time criminal named Joe Chill while on their way home from a movie theater."
            case secondLabel:
                destinationVC.displayImage = UIImage(named: "charity")
                destinationVC.displayText = "Bruce has an established non-profit organization called The Wayne Foundation that funds charities, medical research, urban renewal, etc."
            case thirdLabel:
                destinationVC.displayImage = UIImage(named: "batman")
                destinationVC.displayText = "Bruce witnessed the murder of his parents, Dr. Thomas Wayne and Martha Wayne, which ultimately led him to craft the Batman persona and seek justice against criminals. "
            default:
                break
            }
        }
    }


}

