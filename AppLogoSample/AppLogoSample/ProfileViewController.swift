import Foundation
import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = .systemPink
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
    }
    
    @IBAction func NewPageBtnPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "NextPageIdentifier", sender: "Welcome to Next Page!")
        
    }
    @IBAction func EditProfileBtnPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "ProfileItemSegue", sender: "Nishant")
        
    }
    
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "ProfileItemSegue")
        {
            let profileItemViewController = segue.destination as! ProfileItemViewController
            profileItemViewController.myName = (sender as! String)
        }else if (segue.identifier == "NextPageIdentifier")
        {
            _ = segue.destination as! NewPageViewController
        }
        
    }
    

}
    
