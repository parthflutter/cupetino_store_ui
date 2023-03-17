import 'package:flutter/material.dart';

import '../../cart_screen/view/cart_screen.dart';
import '../../homescrren/view/home_screen.dart';
import '../../search_screen/view/search_screen.dart';

class tabbar_provider extends ChangeNotifier
{
  List Screen = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
  ];
}
