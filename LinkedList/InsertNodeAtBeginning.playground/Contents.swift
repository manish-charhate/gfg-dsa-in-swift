import UIKit

class Node {
    var next: Node?
    var data: Int
    
    init(next: Node? = nil, data: Int) {
        self.next = next
        self.data = data
    }
}

class LinkedList {
    var head: Node?
    
    func insertAtBeginning(data: Int) {
        let newNode = Node(data: data)
        newNode.next = head
        head = newNode
    }
    
    func printLinkedList() {
        var curr: Node? = head
        
        print("Head -> ", terminator: "")
        while curr != nil {
            print(" \(String(describing: curr?.data)) ->", terminator: "")
            curr = curr?.next
        }
        print()
    }
}

// Creating initial linked list
let linkedList = LinkedList()
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 10)
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 20)
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 30)
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 40)
linkedList.printLinkedList()

/**
 Output:
 
 Head ->
 Head ->  Optional(10) ->
 Head ->  Optional(20) -> Optional(10) ->
 Head ->  Optional(30) -> Optional(20) -> Optional(10) ->
 Head ->  Optional(40) -> Optional(30) -> Optional(20) -> Optional(10) ->
 */
