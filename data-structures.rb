class Queue
  def initialize
    @array = []
    @front = -1
    @rear = -1
  end

  def first
    @array[@front]
  end

  def print
    arr = []
    (@front..@rear).each do |x|
      arr << @array[x]
    end
    arr
  end

  def push(value)
    @front += 1 if self.empty?
    @rear += 1
    @array[@rear] = value
  end

  def pop
    temp = @array[@front]
    @front +=1
    return temp
  end

  def empty?
    @front == -1 && @rear == -1
  end
end

class Stack
  def initialize
    @array = []
    @top = -1
  end

  def push(value)
    @top += 1
    @array[@top] = value
  end

  def pop
    temp = @array[@top]
    @top -= 1
    temp
  end

  def first
    @array[@top]
  end
end

class Node
  attr_reader :left, :right
  def initialize(value,left=nil,right=nil)
    @value = value
    @left = left
    @right = right
  end
end


class BST
  def initialize
    @root = nil
  end

  def insert(node, value)
    if @root.nil?
      @root = node
    elsif node.nil?
      node = Node.new(value)
    elsif value <= node.value
      node.left = insert(node.left,value)
    elsif value > node.value
      node.right = insert(node.right,value)
    end
    node
  end


  def height(node)
    return -1 unless @node
    left = height(node.left)
    right = height(node.right)
    [left, right].max + 1
  end

  def min(node)
    current = node.left until (node.left).nil?
    current
  end

  def max(node)
    current = node.right until (node.right).nil?
    current
  end

  def bfs(node)
    queue = Queue.new
    array = []
    queue.push(node)
    until queue.empty?
      node = queue.pop
      queue.push(node.left)
      queue.push(node.right)
      array << node
    end
    array  
  end



end
