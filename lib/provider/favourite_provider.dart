import 'package:flutter/cupertino.dart';

class FavouriteProvider with ChangeNotifier{
 final  List<int> _selectedItem=[];
  List<int> get selectedItem=>_selectedItem;

  void addValue(value){
    selectedItem.add(value);
    notifyListeners();
  }
  void removeValue(value){
    selectedItem.remove(value);
    notifyListeners();
  }
}