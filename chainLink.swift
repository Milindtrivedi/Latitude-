override func viewDidLoad() {
        super.viewDidLoad()
        
        //["5","2","//4*",'[{6,\3},+7]
        var arr:[Int] = [1,4,1,2,7,9,8,8,0]
        let ans = ans(A: &arr)
}

 public func ans( A : inout [Int]) -> Int {
  //MARK: Method 2
  
        var sum: Int = A[1] + A[3]
        let i: Int = 1
        let j: Int = i + 2
        let N: Int = A.count
//      A.removeFirst()
//      A.removeLast()
        print("=====>",N,"<=====")
        
        for i in i..<(N - 3) {
            print(i, "<======i in Loop")
            
            for j in j..<(N - 1) {
                print(j,"<------- j in Loop")

                if (A[i] + A[j] < sum) {
                   // print("\(A[i] + A[j])")
                    
                    sum = A[i] + A[j]
                }
            }
        }
        
        print("===================Input Array --->", A)
        print("=================== minimum cost of  / the *** into tres parts is --->", sum)
        
  return sum
 }
