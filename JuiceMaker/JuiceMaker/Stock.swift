//
//  Stock.swift
//  JuiceMaker
//
//  Created by 강경, Ryan on 2021/03/08.
//

import Foundation

// MARK: - Stock Type
class Stock {
  private var stock = [Fruit: Int]()
  
  init() {
    for fruit in Fruit.allCases {
      self.stock[fruit] = 10
    }
  }
  
//  func checkStock(for fruit: Fruit) throws {
//    guard let fruitNumberInStock = stock[fruit] else {
//      throw FruitError.nilHasOccurredWhileCheckingStock
//    }
//    print("\(fruit): \(fruitNumberInStock)")
//  }
  
  func count(for fruit: Fruit) -> Int {
    let returnValueForInvalidInput: Int = 0
    guard let fruitNumberInStock = stock[fruit] else {
      print("과일 입력이 잘못 되었습니다. 프로그램을 다시 확인해주세요. \(#function)")
      return returnValueForInvalidInput
    }
    return fruitNumberInStock
  }
  
  func subtract(for fruit: Fruit, amount: Int = 1) throws {
    guard let fruitNumberInStock = stock[fruit] else {
      throw FruitError.nilHasOccurredWhileSubtracting
    }
    if fruitNumberInStock >= 0 {
      stock[fruit] = fruitNumberInStock - amount
    } else {
      print("재고가 없어 더 차감할 수 없습니다.")
    }
  }
  
  func add(for fruit: Fruit) throws {
    guard let fruitNumberInStock = stock[fruit] else {
      throw FruitError.nilHasOccurredWhileSubtracting
    }
    stock[fruit] = fruitNumberInStock + 1
  }
}
