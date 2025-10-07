void main() {
  var list1 = [1,2,3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  //tambahan 
  list1 = [1,2,0];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  var nim = ['2', '3', '4', '1', '7', '2', '0', '2', '4', '3'];
  var NimSpreadOperator = [...list3, ...nim];
  print(NimSpreadOperator);

  // //tambahan 2
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  if (promoActive == true) {
    nav = ['Home', 'Furniture', 'Plants', 'Outlet'];
    print(nav);
  } else {
    nav = ['Home', 'Furniture', 'Plants'];
    print(nav);
  }

  // tambahan 3
  var login = '..';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);


  var listOfInts = [1,2,3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings[1] == '#1');
  print(listOfStrings);
  
}