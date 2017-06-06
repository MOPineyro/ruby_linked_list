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

  def detect_cycle(head_node = self, fast_pointer = nil, slow_pointer = nil)
    fast_pointer ||= head_node
    slow_pointer ||= head_node

    unless fast_pointer.nil? && slow_pointer.nil? && fast_pointer.next_node.nil?
      if fast_pointer == slow_pointer
        puts "found loop at node with value #{fast_pointer.node_val} - pointing to node with value #{fast_pointer.next_node.node_val}"
      else
        detect_cycle(@fast_pointer.next_node.next_node, slow_pointer.next_node)
      end
    end
  end
end