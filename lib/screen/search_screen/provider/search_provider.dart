import 'package:flutter/material.dart';

import '../../../ulitis/product_imges_list.dart';


class search_provider extends ChangeNotifier
{
  List tshirts = [
    tshirt1,
    tshirt2,
    tshirt3,
    tshirt4,
    tshirt5,
  ];

  List names = [
    "Black shirt",
    "light shirt",
    "Black shirt",
    "shmit Black shirt",
    "red and white dress",
  ];

  List price = [
    "\$70",
    "\$70",
    "\$48",
    "\$38",
    "\$58",
  ];
}