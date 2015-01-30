class Calculator {
    let num1:Double
    let num2:Double

    init(num1Input:Double,num2Input:Double){
        self.num1=num1Input
        self.num2=num2Input
    }
    
    func calculate(op:String){
        if(num1>(-100) && num2<100 && num1<100 && num2>(-100)){
            var ans:Double
            if(op == "+"){
                ans = num1 + num2
                println("\(num1) + \(num2) = \(ans)")
            }
            else if(op == "-"){
                ans = num1 - num2
                println("\(num1) - \(num2) = \(ans)")
            }
            else if(op == "*"){
                ans = num1 * num2
                println("\(num1) * \(num2) = \(ans)")
            }
            else if(op == "/"){
                ans = num1 / num2
                println("\(num1) / \(num2) = \(ans)")
            }
            else if(op == "%"){
                ans = num1 % num2
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
let cal=Calculator(num1Input:4,num2Input:10)
cal.calculate("/")
