
import UIKit

class HeaderReusableView: UICollectionReusableView {
    
    @IBOutlet private weak var lblTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(title: String?) {
        if title?.count ?? 0 > 0 {
            lblTitle.isHidden = false
            lblTitle.text = title
        } else {
            lblTitle.isHidden = true
        }
        
    }
    
}
      
