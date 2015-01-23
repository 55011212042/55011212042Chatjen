class UserPassword {
    var UserAndPassword:[String:String] = ["Jirapan":"Js55011212042"]
    
    let userInput:String
    
    init(user: String) {
        self.userInput=user
    }
    
    func processing() -> String {
        var ans:String = ""
        for(key,value) in UserAndPassword{
            if(key==userInput){
                ans=value
            }
        }
        return ans
    }
    
    func add(uAdd:String, pAdd:String) {
        UserAndPassword[uAdd] = pAdd
    }
    func del(uDel:String) {
        UserAndPassword[uDel] = nil
    }
    func edit(uEdit:String, pEdit:String) {
        UserAndPassword[uEdit] = pEdit
    }
}

let start = UserPassword(user: "Jirapan")
start.processing()
start.add("Jark", pAdd: "555")
start.del("Jark")
start.edit("Jirapan", pEdit: "555")
