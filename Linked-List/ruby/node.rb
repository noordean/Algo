# Class for generating every node of a linked-list
class Node
  attr_reader :data, :next

  # data(Integer): the node's value
  def initialize(data)
    @data = data
    @next = nil
  end
end
