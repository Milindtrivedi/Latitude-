  func raiseTo (_ N : Int) -> Int {
        
        var resultant = 11 ^^ N
        var num = [Int]()
        while resultant > 0 {
            num.insert(resultant % 10, at: 0)
            resultant /= 10
        }
        
        let arr = num.filter { $0 == 1 }
        return arr.count
    }


precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}
