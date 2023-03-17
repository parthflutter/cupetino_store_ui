
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  cart_provider? c, cy;

  @override
  Widget build(BuildContext context) {
    c = Provider.of<cart_provider>(context, listen: false);
    cy = Provider.of<cart_provider>(context, listen: true);
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: Color(0xfff9f9f9),
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Shopping Cart",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  CupertinoTextField.borderless(
                    prefix: Icon(
                      CupertinoIcons.person_alt,
                      color: Colors.black38,
                    ),
                    placeholder: "Name",
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoTextField.borderless(
                    prefix: Icon(
                      CupertinoIcons.mail_solid,
                      color: Colors.black38,
                    ),
                    placeholder: "Email",
                  ),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  CupertinoTextField.borderless(
                    prefix: Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.black38,
                    ),
                    placeholder: "Location",
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: CupertinoTextField.borderless(
                prefix: Icon(
                  CupertinoIcons.time,
                  color: Colors.black38,
                ),
                placeholder: "Delivery Time",
                suffix: Text(
                    " ${cy!.delivery.day}-${cy!.delivery.month}-${cy!.delivery.year} ${cy!.delivery.hour}:${cy!.delivery.minute} "),
              ),
            ),
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  c!.changedate(value);
                },
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 41,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset("assets/images/bag1.jpg",height: 30,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bag"),
                        Text("\$98.00",
                          style: TextStyle
                            (fontSize: 13,color: Colors.black54),),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("\$98.00"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 41,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset("assets/images/shopping.webp",height: 30,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Stella sunglasses"),
                        Text("\$58.00",style: TextStyle(fontSize: 13,color: Colors.black54),),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("\$58.00"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 41,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset("assets/images/watch.webp",height: 30),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Smart Watch"),
                        Text("\$16.00",style: TextStyle(fontSize: 13,color: Colors.black54),),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("\$16.00"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Shipping \$21.00",style: TextStyle(fontSize: 10,color: Colors.black45),),
                  Text("Tax \$10.32",style: TextStyle(fontSize: 10,color: Colors.black45),),
                  Text("Total \$203.32"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
