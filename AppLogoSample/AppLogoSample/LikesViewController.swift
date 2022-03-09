import Foundation
import UIKit

class LikesViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, LikesTableViewCellDelegate
{
  
/*-------------------------------------------- Array Declearation --------------------------------------------------*/
    var today = ["Nishant like your photo","Amol tagged you picture", "Pratik commented on your photo","Prachi view your profile", "Ashish like your photo","Vinay like your photo"] // Create an array
    
//    var thisWeek = ["Trupti like your photo","Hariom tagged you picture", "Tejaswini commented on your photo","Nidhi view your profile", "Sachin like your photo","Nihal like your photo","Vaibhav commented on a post you're tagged in"] // Create an array

//    var thisMonth = ["Yash like your photo","Deep tagged you picture", "Pratik commented on your photo","Prachi view your profile", "Ashish like your photo","Vinay like your photo"] // Create an array

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
/*-------------------------------------------- Navigation Bar --------------------------------------------------*/
        
        let barAppearance = UINavigationBarAppearance() // create property for navigationBar appearance
        barAppearance.backgroundColor = .systemPink //Set navBar color to systemPink
        
        navigationItem.standardAppearance = barAppearance
        navigationItem.scrollEdgeAppearance = barAppearance
        
        if #available(iOS 15.0, *) //Micros explicitly set for iOS 15.0
        {
            self.tableView.sectionHeaderTopPadding = 0 //Set tableView Header padding to 0
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        self.registerLikesViewCell()
    }
    
    
    
    func registerLikesViewCell()
    {
        let likesCell = UINib(nibName: "LikesTableViewCell", bundle: nil)
        self.tableView.register(likesCell, forCellReuseIdentifier: "LikesTableViewCell")
    }
    
/*-------------------------------------------- For tableView --------------------------------------------------*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
//        let cell = UITableViewCell() //Create a property for tableView Cell
//        cell.textLabel?.text = today[indexPath.row] //Assign array value by its index value for a row
//
//        cell.textLabel?.font = UIFont.systemFont(ofSize: 20) //Set array element font size 20px
//        return cell
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "LikesTableViewCell") as? LikesTableViewCell
        {
            cell.delegate = self
            cell.textLabel?.font = UIFont.systemFont(ofSize: 28)
            return cell
        }
        return UITableViewCell()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        2
    }
    
    
/*-------------------------------------------- For Header --------------------------------------------------*/
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        50 // set tableView header height to 50px
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let headerView = UITableView(frame: CGRect(x: 0,
                                                   y: 0,
                                                   width: self.tableView.frame.width,
                                                   height: 50))
        headerView.backgroundColor = .systemGray3
        
        let headerLabel = UILabel()
        headerLabel.frame = CGRect.init(x: 20, y: 5, width: headerView.frame.width, height: headerView.frame.height)
        
        headerLabel.text = "Today"
        headerLabel.font = .systemFont(ofSize: 22)
        headerLabel.font = .boldSystemFont(ofSize: 20)
        headerLabel.textColor = .black
        
        headerView.addSubview(headerLabel) //move label on header (below to above)
        
        return headerView // return headerView to tableView
    }
    
/*-------------------------------------------- For Footer --------------------------------------------------*/
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    {
        2 // set tableView footer height to 50px
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
    {
        let footerView = UITableView (frame: CGRect(x: 0,
                                                    y: 0,
                                                    width: self.tableView.frame.width,
                                                    height: 2))
        footerView.backgroundColor = .black // set footer background color to colorName : black
        return footerView // return footerView to tableView
    }
    
    
/*-------------------------------------------- Number of rows in tableView --------------------------------------------------*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return today.count //count array size and return the size of array
    }
    
    func addToMessage()
    {
        print("Message Added")
    }
}
