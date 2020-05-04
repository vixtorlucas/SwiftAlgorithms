var array = [23,4,1,3,9,5,0,17,22,11,10,2]

print(array.count)
var index = 0
for i in 1..<array.count{
    let key = array[i]
    index = i - 1 
    while index > -1 && array[index] > key{
        array[index + 1] = array[index]
        index = index - 1
    }
    
    array[index + 1] = key
    print(array)
}

print(array)

