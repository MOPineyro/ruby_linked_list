class Stack
  attr_accessor :head
  
  def initialize
    @head = nil
  end

  def push(node_val)
    node = Node.new(node_val, @head)
    @head = node
  end

  def pop
    unless @head.nil?
      val = @head.node_val
      @head = @head.next_node
      val
    else
      puts "Stack is Empty"
    end
  end

  def print_stack(current_node = @head)
    puts current_node.node_val
    unless current_node.next_node.nil?
      print_stack(current_node.next_node)
    end
  end

  def reverse_no_mutation
    reversed_list = Stack.new
    reverse_push(reversed_list)
    reversed_list
  end

  def reverse_push(list, current_node = @head)
    list.push(current_node.node_val) 
    unless current_node.next_node.nil?
      reverse_push(list, current_node.next_node)
    end
  end
end