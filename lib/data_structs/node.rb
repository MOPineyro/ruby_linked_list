class Node
  attr_accessor :node_val, :next_node

  def initialize(node_val, next_node=nil)
    @node_val = node_val
    @next_node = next_node
  end

  def print_values(current_node = self, prev_node = nil)
    puts "#{current_node.node_val} \n"
    unless current_node.next_node.nil?
      print_values(current_node.next_node)
    end
  end

  def reverse_list(current_node = self, prev_node = nil)
    if current_node
      next_node = current_node.next_node
      current_node.next_node = prev_node
      reverse_list(next_node, current_node)
    end
  end

  def detect_cycle(fast_pointer = nil, slow_pointer = nil)
    start_node = self
    fast_pointer ||= self
    slow_pointer ||= self

    while !slow_pointer.nil? && !fast_pointer.nil? && !fast_pointer.next_node.nil?
      slow_pointer = slow_pointer.next_node
      fast_pointer = fast_pointer.next_node.next_node

      if slow_pointer == fast_pointer
        slow_pointer = start_node
        while fast_pointer != slow_pointer
          slow_pointer = slow_pointer.next_node
          fast_pointer = fast_pointer.next_node
        end
        return "Found loop - node: #{slow_pointer} - value: #{slow_pointer.node_val}"
      end
    end

    puts "No Loop"
  end
end



