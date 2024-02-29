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
    
    func deleteHead() {
        if head == nil {
            return
        }
        
        if head?.next == nil {
            head = nil
            return
        }
        
        head = head?.next
        head?.prev?.next = nil
        head?.prev = nil
    }
    
    func reverse() {
        if head == nil || head?.next == nil {
            return
        }
        
        var curr = head
        var prev: Node? = nil
        
        while curr != nil {
            prev = curr?.prev
            curr?.prev = curr?.next
            curr?.next = prev
            curr = curr?.prev
        }
        head = prev?.prev
    }
    
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
    
    func insertAtEnd(data: Int) {
        let newNode = Node(data: data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var curr = head
        
        while curr?.next != nil {
            curr = curr?.next
        }
        
        curr?.next = newNode
        newNode.prev = curr
    }
    
    func printLinkedList() {
        var curr: Node? = head
        
        print("Head <-> ", terminator: "")
        while curr != nil {
            print("\(String(describing: curr?.data)) <->", terminator: "")
            curr = curr?.next
        }
        print()
    }
}

// Create doubly linked list

let linkedList = DoubdlyLinkedList()
linkedList.printLinkedList()
linkedList.deleteHead()
linkedList.printLinkedList()
linkedList.insertAtEnd(data: 10)
linkedList.insertAtEnd(data: 20)
linkedList.insertAtEnd(data: 30)
linkedList.printLinkedList()
linkedList.deleteHead()
linkedList.printLinkedList()

/**
 Output:
 
 Head <->
 Head <->
 Head <-> Optional(10) <->Optional(20) <->Optional(30) <->
 Head <-> Optional(20) <->Optional(30) <->
 */
