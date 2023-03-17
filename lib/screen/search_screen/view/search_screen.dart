import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  search_provider? s,st;
  @override
  Widget build(BuildContext context) {
    s = Provider.of<search_provider>(context,listen: false);
    st = Provider.of<search_provider>(context,listen: true);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.all(8),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffe5dede),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(CupertinoIcons.search,color: Colors.black54),
                  SizedBox(width: 10,),
                  Text("shirt"),
                  Expanded(child: SizedBox()),
                  Icon(CupertinoIcons.clear_circled_solid,color: Colors.black54,),
                  SizedBox(width: 10,),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: s!.tshirts.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("${s!.tshirts[index]}")),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${s!.names[index]}"),
                                SizedBox(height: 10,),
                                Text("${s!.price[index]}",style: TextStyle(color: Colors.black54,fontSize: 13),),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Icon(CupertinoIcons.add_circled),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black45,
                        thickness: 0.5,
                        indent: 100,
                        endIndent: 10,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
