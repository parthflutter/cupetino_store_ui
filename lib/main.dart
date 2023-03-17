import 'package:cupetino_store_ui/screen/cart_screen/provider/cart_provider.dart';
import 'package:cupetino_store_ui/screen/cart_screen/view/cart_screen.dart';
import 'package:cupetino_store_ui/screen/homescrren/provider/home_provider.dart';
import 'package:cupetino_store_ui/screen/homescrren/view/home_screen.dart';
import 'package:cupetino_store_ui/screen/search_screen/provider/search_provider.dart';
import 'package:cupetino_store_ui/screen/store/provider/tabbar_provider.dart';
import 'package:cupetino_store_ui/screen/store/view/tabbar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/search_screen/view/search_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider(),),
        ChangeNotifierProvider(create: (context) => search_provider(),),
        ChangeNotifierProvider(create: (context) => cart_provider(),),
        ChangeNotifierProvider(create: (context) => tabbar_provider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'cart',
        routes: {
          '/': (p0) => TabBarScreen(),
          'home': (p0) => HomeScreen(),
          'search':(p0) => SearchScreen(),
          'cart':(p0) => CartScreen(),
        },
      ),
    ),
  );
}
