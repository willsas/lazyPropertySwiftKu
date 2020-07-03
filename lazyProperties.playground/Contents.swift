import Foundation

struct CountingWork{
    
    static func wheelsCount() -> Int{
        var total = [Int]()
        for i in 1...5000{
            total.append(i)
        }
        return total.count
    }
    
}


struct Vehicle{
    
    var type: String
    var color: String
    
    var regularWheelsCount = CountingWork.wheelsCount()
    
    lazy var lazyWheelsCount = CountingWork.wheelsCount()
//
    var computedWheelsCount: Int  {
        return CountingWork.wheelsCount()
    }
    
}

var sedan = Vehicle(type: "Sedan", color: "Putih")

print(sedan.lazyWheelsCount)
print(sedan.lazyWheelsCount)
print(sedan.lazyWheelsCount)
print(sedan.lazyWheelsCount)
//
//print(sedan.computedWheelsCount)
//print(sedan.computedWheelsCount)
//print(sedan.computedWheelsCount)
//print(sedan.computedWheelsCount)




