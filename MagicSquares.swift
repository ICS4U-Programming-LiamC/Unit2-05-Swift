//
//  MagicSquares.swift
//
//  Created by Liam Csiffary
//  Created on 2022-04-22
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
//  MagicNumbers.java brute force algorithm,
//  generates all possible 3x3's populated with numbers 1-9
//  then deletes the ones that are not magic squares





extension Array {
    var permutations: [[Element]] {
        guard let (head, rest) = self.chopped() else { return [[]] }
        return rest.permutations.flatMap { $0.interleaved(head) }
    }
}

  func isMagicSquare(array: [Int]) -> [Int] {
    // calculates what all the parts of the square add up to
    let row1 = array[0] + array[1] + array[2]
    let row2 = array[3] + array[4] + array[5]
    let row3 = array[6] + array[7] + array[8]
    let column1 = array[0] + array[1] + array[2]
    let column2 = array[0] + array[1] + array[2]
    let column3 = array[0] + array[1] + array[2]
    let diagonal1 = array[0] + array[1] + array[2]
    let diagonal2 = array[0] + array[1] + array[2]
    


    if ((row1 == row2) && (row2 == row3) && (row3 == column1) && (column1 == column2)
        && (column2 == column3) && (column3 == diagonal1) && (diagonal1 == diagonal2)) {
      
      // if they all add up to the same number add the array to the list
      correctSquares.add(allPossibleSquares.get(i));
    }
  }

// main function
func main() {
  let arrayOfPermutes = [1, 2, 3, 4, 5, 6, 7, 8, 9].permutations
  print(arrayOfPermutes)
}

// start the program
main()
