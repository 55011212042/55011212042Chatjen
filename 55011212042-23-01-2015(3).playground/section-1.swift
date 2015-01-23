class Zoo {
    let animals:[String] = ["Dog","Cat","Fish"]
    let feed:[String] = ["Pedigree","Whiskas","Sakura"]
    
    let animal:String
    
    init(animal: String) {
        self.animal=animal
    }
    
    func processing() -> String {
        var ans:String = ""
        for(var i=0 ; i<animals.count ; i++){
            if(animals[i]==animal){
                ans=feed[i]
            }
        }
        return ans
    }
}

let start = Zoo(animal: "Dog")
start.processing()