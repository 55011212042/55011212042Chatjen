class MyZoo {
    let anls:[String] = ["snake","chicken","whale","dinosaur","kingkong"]
    let feedOfAnls:[String] = ["bread","chocolate","jelly","butter","cheese"]
    
    func searching(anl:String) -> String {
        var feed:String = ""
        for(var i=0 ; i<anls.count ; i++){
            if(anls[i]==anl){
                feed=feedOfAnls[i]
            }
        }
        if(feed==""){
            println("Not have \(anl) in the zoo.")
        } else {
            println("\(anl) eat \(feed).")
        }
        return feed
    }
}

let start = MyZoo()
println(start.searching("dinosaur"))
println(start.searching("whale"))
println(start.searching("cat"))