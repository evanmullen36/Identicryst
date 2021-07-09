//
//  DetailViewController.swift
//  Identicryst
//
//  Created by Evan Mullen on 3/30/21.
//

import UIKit

class DetailViewController: UIViewController {

    var name = ""
    var img: UIImage?
    var desc = ""
    var healingProp = ""
    var spiritualProp = ""
    var associationsProp = ""
    
    @IBOutlet weak var detailCrystalPhotoImageView: UIImageView!
   // about the crystal
    @IBOutlet weak var crystalDescriptionTextView: UITextView!
    @IBOutlet weak var backgroundInfoLabel: UILabel!
    // healing properties
    @IBOutlet weak var healingPropertiesLabel: UILabel!
    @IBOutlet weak var healingPropertiesInfoTextView: UITextView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var associationsInfoLabel: UILabel!
    @IBOutlet weak var associationsTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets up scroll view
 //      scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+200)

        // displays crystal title and crystal image
        title = name
        detailCrystalPhotoImageView.image = img
        
        // display background label and text
        backgroundInfoLabel.text = String("About " + name + " ℹ️")
        backgroundInfoLabel.font = UIFont.systemFont(ofSize: 24, weight: .light)
        
        // sets up crystal summary
        crystalDescriptionTextView.text = desc
        crystalDescriptionTextView.font = UIFont.systemFont(ofSize: 18, weight: .thin)
        
        
        // display healing properties label and text
        healingPropertiesLabel.text = String("Healing Properties 💟")
        healingPropertiesLabel.font = UIFont.systemFont(ofSize: 24, weight: .light)
        healingPropertiesInfoTextView.text = healingProp
        healingPropertiesInfoTextView.font = UIFont.systemFont(ofSize: 18, weight: .thin)
        
        // display associations label and text
        associationsInfoLabel.text = String("Associations ☸️")
        associationsInfoLabel.font = UIFont.systemFont(ofSize: 24,weight: .light)
        
        associationsTextView.text = associationsProp
        associationsTextView.font = UIFont.systemFont(ofSize: 18, weight: .thin)
    
    }
}
