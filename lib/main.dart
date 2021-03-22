import 'package:flutter/material.dart';
import 'package:not_defterim/modeller/Not_islemleri.dart';
import 'package:provider/provider.dart';
import 'package:not_defterim/ekranlar/home.dart';
import 'ekranlar/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Notislem>(
      create: (context)=>Notislem(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(
        ),
      ),
    );
  }

}