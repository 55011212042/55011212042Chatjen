class Calculator {
    let num1:Int = 0
    let num2:Int = 0

    init(num1Input:Int,num2Input:Int){
        self.num1=num1Input
        self.num2=num2Input
    }
    
    func calculate(op:String){
        if(num1>=(-100) && num2<100){
            var ans:Double
            if(op == "+"){
                ans = Double(num1 + num2)
                println("\(num1) + \(num2) = \(ans)")
            }
            else if(op == "-"){
                ans = Double(num1 - num2)
                println("\(num1) - \(num2) = \(ans)")
            }
            else if(op == "*"){
                ans = Double(num1 * num2)
                println("\(num1) * \(num2) = \(ans)")
            }
            else if(op == "/"){
                ans = Double(num1 / num2)
                println("\(num1) / \(num2) = \(ans)")
            }
            else if(op == "%"){
                ans = Double(num1 % num2)
                println("\(num1) % \(num2) = \(ans)")
            }
            else{
                println("Operator is not correct!")
            }
        }
        else{
            println("Invalid parameter (\(num1)),(\(num2)) number must be >= 0 and < 100.")
        }
    }
}
let cal=Calculator(num1Input:-45,num2Input:40)
cal.calculate("%")
