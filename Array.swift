
extension Array where Element:Comparable{
    func insertionSort() -> Array{
        var index = 0
        var array = self
        for i in 1..<array.count{
            let key = array[i]
            index = i - 1
            while index > -1 && array[index] > key{
                array[index + 1] = array[index]
                index = index - 1
            }
            array[index + 1] = key
        }
        return array
    }
}
