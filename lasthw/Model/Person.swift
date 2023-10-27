import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
}


extension Person {
    static func getPersonList() -> [Person] {
      let data = DataStore()
        
      let names = data.names.shuffled()
      let surnames = data.surnames.shuffled()
      let emails = data.emails.shuffled()
      let phones = data.phoneNumbers.shuffled()
        
      var model: [Person] = []
        
        for index in 0...9 {
        let person = Person(name: names[index], 
                            surname: surnames[index],
                            email: emails[index],
                            phone: phones[index])
            model.append(person)
        }
        return model
    }
}
