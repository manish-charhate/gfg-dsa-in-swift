import Foundation

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
    
    func insert(data: Int, atPosition position: Int) {
        let newNode = Node(data: data)
        
        // Insert at beginning
        if position <= 1 {
            newNode.next = head
            head = newNode
            return
        }
        
        var currentNode = head
        var currentIndex = 1
        
        // Traverse till the given position
        while currentIndex != position - 1 {
            
            // For index greater than total count
            if currentNode?.next == nil {
                currentNode?.next = newNode
                return
            }
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        // Insert new node at the position
        newNode.next = currentNode?.next
        currentNode?.next = newNode
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
linkedList.insert(data: 10, atPosition: 1)
linkedList.insert(data: 20, atPosition: 2)
linkedList.insert(data: 30, atPosition: 3)
linkedList.insert(data: 40, atPosition: 4)
linkedList.printLinkedList()
linkedList.insert(data: 50, atPosition: 2)
linkedList.printLinkedList()
linkedList.insert(data: 60, atPosition: 1)
linkedList.printLinkedList()
linkedList.insert(data: 70, atPosition: 7)
linkedList.printLinkedList()
linkedList.insert(data: 80, atPosition: 50)
linkedList.printLinkedList()
/**
 Output:
 
 Head ->
 Head ->  Optional(10) -> Optional(20) -> Optional(30) -> Optional(40) ->
 Head ->  Optional(10) -> Optional(50) -> Optional(20) -> Optional(30) -> Optional(40) ->
 Head ->  Optional(60) -> Optional(10) -> Optional(50) -> Optional(20) -> Optional(30) -> Optional(40) ->
 Head ->  Optional(60) -> Optional(10) -> Optional(50) -> Optional(20) -> Optional(30) -> Optional(40) -> Optional(70) ->
 Head ->  Optional(60) -> Optional(10) -> Optional(50) -> Optional(20) -> Optional(30) -> Optional(40) -> Optional(70) -> Optional(80) ->
 */
