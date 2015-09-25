class Node
  attr_accessor :value, :next
  def initialize(val,nxt)
    @value = val
    @next = nxt
  end
end

class LinkedList
  def initialize(val)
    @head = Node.new(val,nil)
  end

  def add(value)
    current = @head
    until current.next.nil?
      current = current.next
    end
    current.next = Node.new(value,nil)
  end

  def delete(value)
    current = @head
    if current.value == value
      @head = current.next
    end

    while true
      if (current.next != nil) && (current.next.value != value)
        current = current.next
      elsif (current.next != nil) && (current.next.value == value)
        current.next = current.next.next
        break
      end
    end
  end

  def insert(value, num)
    current = @head
    if num == 1
      node = Node.new(value, current)
      @head = node
    else
      (num-2).times do
        raise "List is not that long" if current.next.nil?
        current = current.next
      end
      current.next = Node.new(value,current.next)
    end
  end

  def reverse
    current = @head
    prev_node = nil
    until current.nil?
      next_node = current.next
      current.next = prev_node
      prev_node = current
      current = next_node
    end
    @head = prev_node
    self.print
  end

  # def print(node=@head)
  #   return if node.nil?
  #   p node
  #   print(node.next)
  # end

  def print(node=@head)
    return [node.value] if (node.next).nil?
    print(node.next) + [node.value]
  end

  def reverse_rec(node=@head)
    if (node.next).nil?
      @head = node
      return
    end
    reverse_rec(node.next)
    q = node.next
    q.next = node
    node.next = nil
  end
end

class Node
  attr_accessor :value, :next, :previous
  def initialize(val,nxt,prv)
    @value = val
    @next = nxt
    @previous = prv
  end
end

class DoubleLinkedList
  def initialize(value)
    @head = Node.new(value,nil,nil)
    @tail = @head
  end

  def insert_at_head(value)
    node = Node.new(value,@head,nil)
    @head.previous = node
    @head = node
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def insert_at_tail(value)
    node = Node.new(value,nil,@tail)
    @tail.next = node
    @tail = node
  end

  def print(node=@head)
    return if node.nil?
    p node.value
    print(node.next)
  end
end
