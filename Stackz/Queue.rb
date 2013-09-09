require_relative "LinkedList_forQueue"

words = File.open("tobe.txt").read.split(' ')
myQueue = LinkedList_forQueue.new()

words.each_with_index {|w, index|
  myQueue.enqueue(w)
}

(0...words.size).each {|i|
  puts myQueue.dequeue()
}


