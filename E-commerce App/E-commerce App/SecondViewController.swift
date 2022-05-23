import UIKit

class SecondViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var titleLabelsv:UILabel!
    @IBOutlet weak var descriptionLabel:UILabel!
    @IBOutlet weak var ratingTextField:UITextField!
    
    //MARK: Variables
    var titleContainer:String = ""
    var descriptionContainer:String = ""
    var ratingContainer:String = ""
    var passDataClosure:((String?)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabelsv.text = self.titleContainer
        descriptionLabel.text = self.descriptionContainer
        ratingTextField.text = self.ratingContainer
        
    }
    @IBAction func popButton(_ sender: Any) {
        let rating = self.ratingTextField.text ?? ""
        
        guard let closure = passDataClosure else{
            return
        }
        closure(rating)
        self.navigationController?.popViewController(animated: true)
      }
    }

