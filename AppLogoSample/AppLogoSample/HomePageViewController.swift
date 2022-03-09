import Foundation
import UIKit

class HomePageViewController : UIViewController{

    @IBOutlet weak var homeCounterView: UITextField!
    @IBOutlet weak var counterBtn: UIButton!
    
    var counter = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemPink
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
    }
    
    @IBAction func counterBtnPressed(_ sender: Any)
    {
        counter = counter + 1
        homeCounterView.text = "You have \(counter) likes."
    }
    
}

