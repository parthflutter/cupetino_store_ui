import 'package:flutter/material.dart';

class cart_provider extends ChangeNotifier
{
  DateTime delivery = DateTime(2023, 14, 3, 12, 52);

  void changedate(DateTime news)
  {
    delivery = news;
    notifyListeners();
  }
}