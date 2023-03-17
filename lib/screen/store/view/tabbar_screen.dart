import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/tabbar_provider.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  tabbar_provider? t,tt;
  @override
  Widget build(BuildContext context) {
    t = Provider.of<tabbar_provider>(context,listen: false);
    tt = Provider.of<tabbar_provider>(context,listen: true);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Products"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
      ],), tabBuilder: (context, index) {
      return CupertinoTabView(
        builder:(context) {
          return Center(
            child: t!.Screen[index],
          );
        },
      );
    },
    );
  }
}

