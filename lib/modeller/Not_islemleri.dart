import 'package:flutter/cupertino.dart';
import 'package:not_defterim/modeller/Not.dart';

class Notislem extends ChangeNotifier{
  static List<Notlar> _notlar=List<Notlar>();

   static List<Notlar> get getNotlar{
    return _notlar;
  }
  Notislem(){
  }
  void notOlustur(String baslik, String icerik){
    Notlar notlar=Notlar(baslik,icerik);
    _notlar.add(notlar);
    notifyListeners();
  }
}