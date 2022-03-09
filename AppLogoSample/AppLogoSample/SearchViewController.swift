import Foundation
import UIKit

class SearchViewController : UIViewController
{
    @IBOutlet weak var printBtn: UIButton!
    @IBOutlet weak var labelOne: UITextField!

    @IBOutlet weak var labelTwo: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemPink
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
// ******************* Gradient Color ************************
//        let layer = CAGradientLayer()
//        layer.frame = view.bounds
//        layer.colors = [UIColor.systemYellow.cgColor,UIColor.systemBlue.cgColor,UIColor.systemPink.cgColor]
//        layer.startPoint = CGPoint(x:0,y: 0)
//        layer.endPoint = CGPoint(x: 1,y: 1)
//        layer.frame = view.frame
//        view.layer.addSublayer(layer)
// ************************************************************
        
        labelOne.font = UIFont(name: "labelOne.text", size: 25)
        labelOne.textColor = UIColor.red

        printBtn.backgroundColor = UIColor.systemGray
        printBtn.titleLabel?.textColor = UIColor.white
    }
    @IBAction func printBtnPressed(_ sender: Any) {
        
        labelTwo.font = UIFont(name: "labelOne.text", size: 25)
     

        let receiveTxt = labelOne.text
        labelTwo.text = ("Your Message is : \(receiveTxt!)")
        
    }
}

