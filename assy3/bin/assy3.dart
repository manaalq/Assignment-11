import 'dart:io';
//main
void main() {
  Map<String, double> menu = {
    'Pizza': 30.0,
    'Burger': 20.0,
    'Salad': 15.0,
    'Fries': 10.0
  };

  List<String> order = [];
//while loop 
  while (true) {
    print("\n1. View Menu Food");
    print("2. Add Order");
    print("3. View Order Summary");
    print("4. Exit");

    String? choice = stdin.readLineSync();
//switch
    switch (choice) {
      case '1':
        viewMenu(menu);
        break;
      case '2':
        addOrder(menu, order);
        break;
      case '3':
        viewOrderSummary(menu, order);
        break;
      case '4':
        exitProgram();
        break;
      default:
        print("Invalid input");
    }
  }
}

void viewMenu(Map<String, double> menu) {
  print("\nThe Menu:");
  menu.forEach((key, value) => print('The dish is $key and the price is \$${value}'));
}

void addOrder(Map<String, double> menu, List<String> order) {
  print("Please write dish name:");
  String? item = stdin.readLineSync();

  if (item != null && menu.containsKey(item)) {
    order.add(item);
    print("$item added to your order.");
  } else {
    print("Item not found in the menu.");
  }
}

void viewOrderSummary(Map<String, double> menu, List<String> order) {
  if (order.isEmpty) {
    print("You have not added any items yet.");
  } else {
    print("Here is your order summary:");
    double total = 0;
    for (var item in order) {
      double price = menu[item]!;
      total += price;
      print("$item - \$${price}");
    }
    print("Total: \$${total}");
  }
}

void exitProgram() {
  print("Thank you for using the Restaurant Menu Application.");
  exit(0);
}
