class Node
  attr_reader :val, :next_node

  def self.hello
    puts 'hello'
  end

  def initialize(node_val, next_node)
    @node_val = node_val
    @next_node = next_node
  end
end