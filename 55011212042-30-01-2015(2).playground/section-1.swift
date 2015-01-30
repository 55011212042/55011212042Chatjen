class UserPassword {
    var UserAndPass:[String:String] = ["Jirapan":"Js042","Parkphoom":"Pk000"]
    
    func searchPass(uSearch:String) -> String {
        var passSreach:String = ""
        for(key,value) in UserAndPass{
            if(key==uSearch){
                passSreach=value
            }
        }
        if(passSreach==""){
            println(">>Not have User : \(uSearch) in Database.")
        } else {
            println(">>User : \(uSearch) Password : \(passSreach).")
        }
        return passSreach
    }
    
    func add(uAdd:String, pAdd:String) {
        UserAndPass[uAdd] = pAdd
        println(">>ADD User : \(uAdd) successfull.")
    }
    func del(uDel:String) {
        var passSreach:String = ""
        for(key,value) in UserAndPass{
            if(key==uDel){
                passSreach=value
            }
        }
        if(passSreach==""){
            println(">>Not have User : \(uDel) in Database.")
        } else {
            println(">>DELETE User : \(uDel) successfull.")
            UserAndPass[uDel] = nil
        }
    }
    func edit(uEdit:String, pEdit:String) {
        var passSreach:String = ""
        for(key,value) in UserAndPass{
            if(key==uEdit){
                passSreach=value
            }
        }
        if(passSreach==""){
            println(">>Not have \(uEdit) in Database.")
        } else {
            println(">>Edit User : \(uEdit) successfull.")
            UserAndPass[uEdit] = pEdit
        }
    }
}

let start = UserPassword()

start.searchPass("Park")
start.searchPass("Parkphoom")

start.add("Sirinthorn", pAdd: "Sr000")

start.del("Sirin")
start.del("Sirinthorn")

start.edit("Jirapan", pEdit: "Js240")
start.edit("Jiraporn", pEdit: "Jf555")
