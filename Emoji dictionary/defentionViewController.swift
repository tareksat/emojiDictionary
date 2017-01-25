
import UIKit

class defentionViewController: UIViewController {
    
    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDef: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.symbol
        emojiDef.text = emoji.def
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
