class Node
  attr_accessor :val, :next
  def initialize(val, next)
      @val = val
      @next = next
  end
end

# instance_of?(Node) can be replaced with null check


class LinkedList
  def initialize
    @head  = nil
  end
  
  def reverseList
    reverse(@head)
  end
  
  def reverse
    prev_node = nil
    current = @head
    while current_node.instance_of?(Node)
        next_node  = current_node.next
        current_node.next = prev_node
        prev_node = current_node
        current_node = next_node
    end
    @head = prev
  end
  
  def print_list
    node = @head
    while node.instance_of?(Node)
        puts node.val
        node = node.next
    end
  end
  
  def is_palindrome()
    stack = []
    current_node = @head
    #iterate through the list and push
    while current_node.instance_of?(Node)
        stack.push(current_node.val)
        tail_node = current_node unless current_node.next.instance_of?(Node)
        current_node = current_node.next
    end
    # iterate again through same list and pop
    # Pop will fetch it from reverse order
    current_node = @head
    while current_node.instance_of?(Node)
        stack.pop if stack.last == current_node.val
        tail_node = current_node unless current_node.next.instance_of?(Node)
        current_node = current_node.next
    end
    return true if stack.empty?
    false
end
  
  private 
   ## Recurisve reverse
   def reverse(node)
    return nil unless node.instance_of?(Node)
    unless node.next.instance_of?(Node)
      @head = node
      return node 
    end
    temp_node = reverse(node.next)
    temp_node.next = node
    node.next = nil
    return node
  end
  
end
