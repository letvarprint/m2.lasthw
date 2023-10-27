import UIKit

final class SecondTableViewController: UITableViewController {
    
    var personList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Persons list"
        tableView.sectionHeaderTopPadding = 0.0
    }
}
    
    // MARK: - Table view data source
    extension SecondTableViewController {
        override func numberOfSections(in tableView: UITableView) -> Int {
            personList.count
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            2
        }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
            
            let contact = personList[indexPath.section]
            
            var content = cell.defaultContentConfiguration()
            
            if indexPath.row == 0 {
                content.text = contact.phone
                content.image = UIImage(systemName: "phone")
            } else {
                content.text = contact.email
                content.image = UIImage(systemName: "tray")
            }
            
            cell.contentConfiguration = content
            return cell
        }
        
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            if section < personList.count {
                return String("\(personList[section].name) \(personList[section].surname)")
            } else {
                return ""
            }
        }
        
        override func tableView(_ tableView: UITableView,
                                willDisplayHeaderView view: UIView,
                                forSection section: Int) {
            (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
            (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.white
        }
        
    }

