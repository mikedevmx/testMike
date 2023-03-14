import UIKit

class ViewController2: UIViewController {

    var name:String?
    
    
    @IBOutlet weak var texto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        texto.text = name   
        // Do any additional setup after loading the view.
    }
}
