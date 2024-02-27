import Foundation

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
    
    func deleteFirst() {
        if head == nil {
            return
        }
        
        // If only one node is present
        if head?.next == nil {
            head = nil
            return
        }
        
        let next = head
        head = head?.next
        next?.next = nil
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

// Create linked list

let linkedList = LinkedList()
linkedList.insertAtBeginning(data: 10)
linkedList.insertAtBeginning(data: 20)
linkedList.insertAtBeginning(data: 30)
linkedList.printLinkedList()
linkedList.deleteFirst()
linkedList.printLinkedList()
linkedList.deleteFirst()
linkedList.printLinkedList()
linkedList.deleteFirst()
linkedList.printLinkedList()
linkedList.deleteFirst()
linkedList.printLinkedList()
