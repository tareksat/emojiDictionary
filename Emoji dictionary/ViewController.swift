
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        emojis = emojiArray()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].symbol
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: emoji )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! defentionViewController
        defvc.emoji = sender as! Emoji
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func emojiArray() ->[Emoji] {
        var emojis: [Emoji] = []
        emojis.append(Emoji(symbol: "😀", def: "Happy face"))
        emojis.append(Emoji(symbol: "😎", def: "sun glasses"))
        emojis.append(Emoji(symbol: "😂", def: "laughing"))
        emojis.append(Emoji(symbol: "😔", def: "sad face"))
        emojis.append(Emoji(symbol: "😳", def: "surprised!"))
        emojis.append(Emoji(symbol: "🤔", def: "Thinking"))
        
        return emojis
    }


}

