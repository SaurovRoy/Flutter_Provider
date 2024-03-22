
import 'package:flutter/cupertino.dart';

class Slider_Provider with ChangeNotifier{
  double _opacity=1.0;
  double get  opacity=>_opacity;
  void setValue(double value){
    _opacity=value;
    notifyListeners();
  }
}