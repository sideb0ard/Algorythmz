require_relative "LinkedList_forStack"

words = File.open("tobe.txt").read.split(' ')
myStack = LinkedList_forStack.new

words.each_with_index {|w, index|
  #puts "word #{w}\nindex #{index}\n\n"
  if w == "-" then
    puts myStack.pop
  else
    myStack.push(w)
  end
}

