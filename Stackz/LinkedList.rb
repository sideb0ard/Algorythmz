class LinkedList

  Cell = Struct.new(:value, :next)

  @first

  def initialize(firstval)
    @first = Cell.new(firstval, nil)
  end

  def linked_list(value, cell)
      return Cell.new(value, cell)
  end

  def push(s)
    @first = linked_list(s, @first)
    "pushed #{s}"
  end

  def pop
    popval = @first.value
    @first = @first.next
    return popval
  end

  def isEmpty?
    @first.nil?
  end

  def print
    recursive_print(@first)
  end

  def recursive_print(list)
    return if list.nil?
    p list.value
    recursive_print(list.next) unless list.nil?
  end

end
