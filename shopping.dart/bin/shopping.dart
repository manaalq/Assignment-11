import 'dart:io';

void main() {
  print("How many items do you want to add?");
  int item = int.parse(stdin.readLineSync()!);
  Map<String, int> ShoppingList = {};

  for (int i = 1; i <= item; i++) {
    print("Enter item $i name");
    String itemName = (stdin.readLineSync()!);
    int itemPrice = -1;

    while (itemPrice < 0) {
      print("Enter Enter price for $itemName ");
      itemPrice = int.parse(stdin.readLineSync()!);
      if (itemPrice < 0) {
        print("Plase ty again invalid input");
      }
    }

    ShoppingList[itemName] = itemPrice;
  }

  int total = calclate(ShoppingList);
  print(" your Total is $total ");

  int? maximumPrice;
  int? minmumPrice;
  String? maxItem;
  String? minItem;

  ShoppingList.forEach((itemName, itemPrice) {
    if (maximumPrice == null) {
      maximumPrice = itemPrice;
      maxItem = itemName;
    } else if (itemPrice > maximumPrice!) {
      maximumPrice = itemPrice;
      maxItem = itemName;
    }

    if (minmumPrice == null) {
      minmumPrice = itemPrice;
      minItem = itemName;
    } else if (itemPrice < minmumPrice!) {
      minmumPrice = itemPrice;
      minItem = itemName;
    }
    
  });
  print("maximum value is $maxItem and price is $maximumPrice");
  print("minimum value is $minItem price is $minmumPrice");
}

int calclate(Map<String, int> ShoppingList) {
  int total = 0;
  ShoppingList.forEach((itemName, itemPrice) {
    total += itemPrice;
  });
  return total;
}
