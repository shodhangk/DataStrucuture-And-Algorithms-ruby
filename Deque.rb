class Deque
  attr_reader :items

  def initialize
    @items = []
  end

  def add_front(item)
    @items.push(item)
  end

  def add_rear(item)
    @items.unshift(item)
  end

  def remove_front
    @items.pop
  end

  def remove_rear
    @items.shift
  end

  def size
    @items.length
  end
end