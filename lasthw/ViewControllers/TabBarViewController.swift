import UIKit

final class TabBarViewController: UITabBarController {
  private var personList: [Person] = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let mainTableVC = $0 as? MainTableViewController {
                mainTableVC.personList = personList
            } else if let secondTableVC = $0 as? SecondTableViewController {
                secondTableVC.personList = personList
            }
        }
    }
}
