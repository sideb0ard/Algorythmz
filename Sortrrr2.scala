// merge calls itself recursively
def merge(l1: List[Int], l2: List[Int]): List[Int] = {
  // termination cases
  (l1, l2) match {
    case (Nil, Nil) => Nil
    case (x, Nil) => x
    case (Nil, y) => y
    case (_, _) => l1.head.compare(l2.head) match {
      case -1 => l1.head :: merge(l1.tail, l2)
      case _  => l2.head :: merge(l2.tail, l1)
    }
  }
}
 
// mergeSort calls itself AND merge recursively
def mergeSort(list: List[Int]): List[Int] = {
  // termination case
  if (list.length < 2)
    list
  else {
    val part = list.splitAt(list.length / 2)
    merge(mergeSort(part._1), mergeSort(part._2))
  }
}
