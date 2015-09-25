class Queue
  attr_accessor :front, :rear, :array

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
