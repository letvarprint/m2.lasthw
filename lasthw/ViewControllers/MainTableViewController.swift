import UIKit

final class MainTableViewController: UITableViewController {
    
  var personList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.title = "Persons list"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? DetailsViewController else {return}
        viewController.person = sender as? Person
    }
}

//MARK: - UITableViewDataSource

extension MainTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            1
        }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let contact = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name) \(contact.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }
    
   
}


//MARK: - UITableViewDelegate
extension MainTableViewController {
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = personList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: contact)
    }

}
