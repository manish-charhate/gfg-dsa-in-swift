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
    
    func insertAtEnd(data: Int) {
        let newNode = Node(data: data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var current = head
        
        // Traverse to the last node of linked list
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = newNode
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


let linkedList = LinkedList()
linkedList.printLinkedList()
linkedList.insertAtEnd(data: 10)
linkedList.printLinkedList()
linkedList.insertAtEnd(data: 20)
linkedList.printLinkedList()
linkedList.insertAtEnd(data: 30)
linkedList.printLinkedList()
linkedList.insertAtEnd(data: 40)
linkedList.printLinkedList()

/**
 Output:
 
 Head ->
 Head ->  Optional(10) ->
 Head ->  Optional(10) -> Optional(20) ->
 Head ->  Optional(10) -> Optional(20) -> Optional(30) ->
 Head ->  Optional(10) -> Optional(20) -> Optional(30) -> Optional(40) ->
 */
