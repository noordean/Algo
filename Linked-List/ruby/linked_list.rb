require './node'

# Initialising this class produces a linked-list
# of just one node
class LinkedList
  def initialize
    @node = Node.new(1)
  end

  # prepends a new node of data: value
  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @node
    @node = new_node
  end

  # appends a new node of data: value
  def append(value)
    new_node = Node.new(value)
    node = @node

    while node.next
      node = node.next
    end

    node.next = new_node
  end

  # these methods are basically for testing purpose
  def size
    count = 1
    node = @node

    while node.next
      count += 1
      node = node.next
    end

    count
  end

  def [](index)
    count = 0
    node = @node

    while count != index
      node = node.next
      count += 1
    end

    node
  end
end
