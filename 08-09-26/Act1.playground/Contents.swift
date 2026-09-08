struct Person{
    let name: String
    var age: Int
}

var jay = Person.init(name: "Jay", age: 24)
var myFriend = jay

jay.age += 1

print(jay.age)
print(myFriend.age)
