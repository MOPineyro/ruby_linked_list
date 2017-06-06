module LinkedList
  require_relative './data_structs/node'
  require_relative './data_structs/stack'

  def self.run_example_no_mutation
    stack = Stack.new
    stack.push(12)
    stack.push(755)
    stack.push(768)
    stack.push(978)

    puts "Original stack: \n"
    stack.print_stack
    puts "Reversed stack: \n"
    reversed_stack = stack.reverse_no_mutation
    reversed_stack.print_stack
  end

  def self.run_example_with_mutation
    n1 = Node.new(732)
    n2 = Node.new(755, n1)
    n3 = Node.new(768, n2)
    n4 = Node.new(978, n3)

    puts "Original values: \n"
    n4.print_values
    puts "Reversed values: \n"
    n4.reverse_list
    n1.print_values
  end
end