class Zoo {
    let animals:[String] = ["Dog","Cat","Fish"]
    let feed:[String] = ["Pedigree","Whiskas","Sakura"]
    
    let animal2:String
    
    init(animal: String) {
        self.animal2=animal
    }
    
    func processing() -> String {
        var ans:String = ""
        for(var i=0 ; i<animals.count ; i++){
            if(animals[i]==animal2){
                ans=feed[i]
            }
        }
        return ans
    }
}

let start = Zoo(animal: "Dog")
start.processing()
