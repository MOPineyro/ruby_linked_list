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
end