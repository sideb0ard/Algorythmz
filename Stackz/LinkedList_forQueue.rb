class LinkedList_forQueue

  Cell = Struct.new(:value, :next)

  @first
  @last

  def enqueue(s)
    oldlast = @last
    @last = Cell.new(s,nil)
    if @first.nil? then
      @first = @last
    else
      oldlast.next = @last
    end
  end

  def dequeue
    dequeueval = @first.value
    @first = @first.next
    if @last.nil? then
      @first.next = nil
    end
    return dequeueval
  end

end
