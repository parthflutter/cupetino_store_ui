import 'package:flutter/material.dart';

class home_provider extends ChangeNotifier {
  List productName = [
    "Bags",
    "Glasses",
    "Wallet",
    "Smart watch",
    "Airpodes",
  ];

  List productPrice = [
    "\$120",
    "\$58",
    "\$35",
    "\$98",
    "\$34",
    "\$12",
  ];

  List images = [
    "assets/images/bag1.jpg",
    "assets/images/shopping.webp",
    "assets/images/wallet.png",
    "assets/images/watch.webp",
    "assets/images/airpodes.jpg",
  ];
}
