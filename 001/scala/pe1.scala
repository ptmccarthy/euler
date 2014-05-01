/*
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

object Multiples {
  def main(args: Array[String]) {
    val t0 = System.nanoTime()
    val sum = (1 until 1000).view.filter(n => n % 3 == 0 || n % 5 == 0).sum
    val t1 = System.nanoTime()
    println(sum)
    println("Calculated in " + (t1-t0)/1000000 + " ms")
  }
}
