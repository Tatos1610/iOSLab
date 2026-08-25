import UIKit

let temperature = 70

switch temperature {
case 65...75:
    print("The temperature is just right.")
case Int.min...64:
    print("It's too cold")
default:
    print("It's too hot")
}
