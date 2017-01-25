
import UIKit

class defentionViewController: UIViewController {
    
    var emoji = "No emoji"
    
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
