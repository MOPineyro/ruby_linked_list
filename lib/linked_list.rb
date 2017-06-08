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

  def self.run_example_cycle_detection
    # Loop
    n1 = Node.new(10)
    n2 = Node.new(20, n1)
    n3 = Node.new(30, n2)
    n4 = Node.new(40, n3)
    n5 = Node.new(50, n4)
    n6 = Node.new(50, n5)
    n1.next_node = n4

    # No Loop
    n_1 = Node.new(10)
    n_2 = Node.new(20, n_1)
    n_3 = Node.new(30, n_2)
    n_4 = Node.new(40, n_3)

    puts "Loop: \n"
    puts n6.detect_cycle

    puts "No Loop: \n"
    puts n_4.detect_cycle
  end
end












