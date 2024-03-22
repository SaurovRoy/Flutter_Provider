

import 'package:flutter/material.dart';

class count_provider with ChangeNotifier{
  int _count=0;
  int get count=>_count;
  void setCount(){
    _count++;
    notifyListeners();
  }
}