import Foundation

class Node {
    var next: Node?
    var prev: Node?
    var data: Int
    
    init(next: Node? = nil, prev: Node? = nil, data: Int) {
        self.next = next
        self.prev = prev
        self.data = data
    }
}

class DoubdlyLinkedList {
    var head: Node?
    
    func insertAtBeginning(data: Int) {
        let newNode = Node(data: data)
        
        // If linked list is empty, attach new node to head
        if head == nil {
            head = newNode
            return
        }
        
        newNode.next = head
        head?.prev = newNode
        head = newNode
    }
    
    func printLinkedList() {
        var curr: Node? = head
        
        print("Head <-> ", terminator: "")
        while curr != nil {
            print(" \(String(describing: curr?.data)) <->", terminator: "")
            curr = curr?.next
        }
        print()
    }
}

// Create doubly linked list

let linkedList = DoubdlyLinkedList()
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 10)
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 20)
linkedList.printLinkedList()
linkedList.insertAtBeginning(data: 30)
linkedList.printLinkedList()


/**
 Output:
 
 Head <->
 Head <->  Optional(10) <->
 Head <->  Optional(20) <-> Optional(10) <->
 Head <->  Optional(30) <-> Optional(20) <-> Optional(10) <->
 */
