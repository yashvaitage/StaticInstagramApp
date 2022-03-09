import UIKit

protocol LikesTableViewCellDelegate : AnyObject{
    func addToMessage()
}

class LikesTableViewCell: UITableViewCell {
    
    weak var delegate: LikesTableViewCellDelegate?

    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var viewBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func viewBtnPressed(_ sender: Any) {
        //print("View Button Pressed")
        delegate?.addToMessage()
    }
}





