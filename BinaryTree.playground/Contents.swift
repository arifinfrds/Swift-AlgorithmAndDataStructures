import UIKit

// Reference: https://www.youtube.com/watch?v=oSWTXtMglKE

class Node {
    var leftNode: Node? = nil
    var rightNode: Node? = nil
    let data: Int
    
    init(data: Int) {
        self.data = data
    }
    
    func insert(value: Int) {
        if value <= data {
            if leftNode == nil {
                leftNode = Node(data: value)
            } else {
                leftNode?.insert(value: value)
            }
        } else {
            if rightNode == nil {
                rightNode = Node(data: value)
            } else {
                rightNode?.insert(value: value)
            }
        }
    }
    
    func contains(value: Int) -> Bool {
        if value == self.data {
            return true
        }
        else if value < self.data {
            if leftNode == nil {
                return false
            } else {
                return leftNode!.contains(value: value)
            }
        }
        else {
            if rightNode == nil {
                return false
            } else {
                return rightNode!.contains(value: value)
            }
        }
    }
    
    func printInOrder() {
        if leftNode != nil {
            leftNode?.printInOrder()
        }
        print(data)
        if rightNode != nil {
            rightNode?.printInOrder()
        }
    }
}


class Program {
    func binaryTree() {
        let node = Node(data: 10)
        node.insert(value: 1)
        node.insert(value: 100)
        node.insert(value: 70)
        node.insert(value: 44)
        
        node.printInOrder()
        print(node.contains(value: 10))
        print(node.contains(value: 2))
    }
}


print(Program().binaryTree())
