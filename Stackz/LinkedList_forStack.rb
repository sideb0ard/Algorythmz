class LinkedList_forStack

  Cell = Struct.new(:value, :next)

  @first

  def push(s)
    @first = Cell.new(s, @first)
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

end
