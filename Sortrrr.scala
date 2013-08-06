object mergeSortProg {

  //def merge(array1

  def mergeSort(intz: List[Int]): List[Int] = {

    if (intz.length <= 1)
      return intz

    println("LENGTH is " + intz.length)

    val halfSize = intz.length / 2
    println("HALF LENGTH is " + halfSize)

    val splitTuple = intz splitAt halfSize 
    var listOne: List[Int] = splitTuple._1
    var listTwo: List[Int] = splitTuple._2

    println("ListOne iz " + listOne.mkString(" "))
    println("ListTwo iz " + listTwo.mkString(" "))

    listOne = mergeSort(listOne)
    listTwo = mergeSort(listTwo)

    //if (intzList.length <= 1)
    //  return intzList
    //else
    //  mergeSort(intzList)
      // return intzList

    val dummyList: List[Int] = List(43, 53, 12)
    dummyList

  }
}

// START HERE - TAKE INPUT, MAP TO INTS AND AWAY WE GO!
val intz: List[Int] = args.map(_.toInt).toList

val sortedIntz: List[Int] = mergeSortProg.mergeSort(intz)
println("Sorted, mate -- " + sortedIntz.mkString(" "))
