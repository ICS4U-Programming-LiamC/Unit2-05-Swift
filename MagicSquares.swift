//
//  MagicSquares.swift
//
//  Created by Liam Csiffary
//  Created on 2022-04-24
//  Version 1.1
//  Copyright (c) 2022 IMH. All rights reserved.
//
//  MagicNumbers.java brute force algorithm,
//  generates all possible 3x3's populated with numbers 1-9
//  then sends each square to the "isMagicSquare"
// function, which prints the square that are magic

import Foundation

// permutation function
// https://stackoverflow.com/questions/34968470/calculate-all-permutations-of-a-string-in-swift
func permutations(_ n:Int, _ a: inout Array<Character>) {
  // the {isMagicSquare(arrString: a); is all I did
  if n == 1 {isMagicSquare(arrString: a); return}
  for i in 0..<n-1 {
    permutations(n-1,&a)
    a.swapAt(n-1, (n%2 == 1) ? 0 : i)
  }
  permutations(n-1,&a)
}

// function to check if it is a magic square
func isMagicSquare(arrString: Array<Character>) {

  // turns the array of chars into an array of ints
  var arrInt: [Int] = []

  for each in arrString {
    arrInt.append(Int(String(each)) ?? -1)
  }

  // gets the totals of all the combinations
  let row1 = arrInt[0] + arrInt[1] + arrInt[2]
  let row2 = arrInt[3] + arrInt[4] + arrInt[5]
  let row3 = arrInt[6] + arrInt[7] + arrInt[8]
  let column1 = arrInt[0] + arrInt[3] + arrInt[6]
  let column2 = arrInt[1] + arrInt[4] + arrInt[7]
  let column3 = arrInt[2] + arrInt[5] + arrInt[8]
  let diagonal1 = arrInt[0] + arrInt[4] + arrInt[8]
  let diagonal2 = arrInt[2] + arrInt[4] + arrInt[6]

  // if they are all share a sum
  if ((row1 == row2) && (row2 == row3) && (row3 == column1) && (column1 == column2)
      && (column2 == column3) && (column3 == diagonal1) && (diagonal1 == diagonal2)) {

    // print the array with formatting
    var i = 0
    for each in arrInt {
    // for each in the array
      if ((i + 1) % 3 == 0) {
        print(each);
      } else {
        print(String(each) + ", ", terminator: " ");
      }
      i += 1
    }
    print()
  }
}

// main function
func main() {
  // create the array
  var arr = Array("123456789")
  // send the array to the permutation generator
  permutations(9, &arr)
}

// start the program
main()
