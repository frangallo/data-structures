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
