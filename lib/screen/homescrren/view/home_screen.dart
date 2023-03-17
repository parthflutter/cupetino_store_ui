import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../ulitis/product_imges_list.dart';
import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  home_provider? h, ht;

  @override
  Widget build(BuildContext context) {
    h = Provider.of<home_provider>(context, listen: false);
    ht = Provider.of<home_provider>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Cupertino Store"),
        ),
        child: ListView.builder(
          itemCount: h!.images.length,
          itemBuilder: (context, index) {
            return CupertinoListTile(
              padding: EdgeInsets.all(10),
              leadingSize: 70,
              title: Text("${h!.productName[index]}"),
              leading: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("${h!.images[index]}")),
              subtitle: Text("${h!.productPrice[index]}"),
              trailing: Icon(CupertinoIcons.add_circled,),
            );
          },
        ),
      ),
    );
  }
}
