import scala.collection.mutable.ListBuffer

object mergeSortProg {

  def merge(l1: List[Int], l2: List[Int]): List[Int] = {
    println("Starting Merge")
    val sortedList = ListBuffer.empty[Int]
    val l1_buffer = l1.to[ListBuffer]
    val l2_buffer = l2.to[ListBuffer]

    while(l1_buffer.length > 0 || l2_buffer.length > 0) {
      if(l1_buffer.length > 0 && l2_buffer.length > 0) {
        if(l1_buffer.head <= l2_buffer.head) {
          println("l1.head smaller than l2.head -> appending to sortedList")
          sortedList += l1_buffer.head
          l1_buffer remove 0
        } else {
          println("l2.head smaller - appending to sortedList")
          sortedList += l2_buffer.head
          l2_buffer remove 0
        }
      } else if(l1_buffer.length > 0) {
        println("no more l2 - putting rest of l1 to sortedList")
        sortedList += l1_buffer.head
        l1_buffer remove 0
      } else {
        println("no more l1 - putting rest of l2 to sortedList")
        sortedList += l2_buffer.head
        l2_buffer remove 0
      }
    }
    println("About to return == sortedList = " + sortedList.mkString(" "))
    return sortedList.toList
  }


  def mergeSort(intz: List[Int]): List[Int] = {

    // If list is one or less, then return - otherwise split in half and recursively call ourselves. 
    // When whole list is split into single numbers, then return back up tree merging results

    if (intz.length <= 1)
      return intz

    val halfSize = intz.length / 2
    val (listOne,listTwo) = intz splitAt halfSize

    println("ListOne iz " + listOne.mkString(" "))
    println("ListTwo iz " + listTwo.mkString(" "))

    // heres the recursive magic ...
    return(merge(mergeSort(listOne),mergeSort(listTwo)))
  }
}

// START HERE - TAKE INPUT, MAP TO INTS AND AWAY WE GO!
val intz: List[Int] = args.map(_.toInt).toList

val sortedIntz: List[Int] = mergeSortProg.mergeSort(intz)
println("\nSorted, mate -- " + sortedIntz.mkString(" ") + "\n")
