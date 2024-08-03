import 'package:flutter/material.dart';

class Shrdprovider with ChangeNotifier{
  String test1="Code with mallu";

  void changeValue(String a){
    test1=a;
    notifyListeners();
  }

} 