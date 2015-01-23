class UserPassword {
    let UserAndPassword:[String:String] = ["Jirapan":"Js55011212042","Sirada":"Sl55011212027","Jiraporn":"Jt55011212043"]
    
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
}

let start = UserPassword(user: "Jirapan")
start.processing()
