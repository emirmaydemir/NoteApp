
import 'package:flutter/cupertino.dart';
import 'package:not_defterim/modeller/Not.dart';
import 'package:flutter/material.dart';
import 'package:not_defterim/modeller/Not_islemleri.dart';
import 'package:provider/provider.dart';

import 'add.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.lightBlue,
        ),
        backgroundColor: Colors.white,
      ),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Not Defterim"),
            centerTitle: true,
            backgroundColor: Colors.lightBlue,
            expandedHeight: 100,
            floating: true,
          ),
          Consumer<Notislem>(
            builder:(context,Notislem data,child){
              return SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                delegate: SliverChildBuilderDelegate(Notkarti,childCount: Notislem.getNotlar.length),

              );
            },
          ),
        ],
      ),
    );
  }
}
Widget Notkarti(BuildContext context, int index){
  return Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(15),
    height: 250,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Notislem.getNotlar[index].baslik,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 5,
        ),
        Text(Notislem.getNotlar[index].icerik,style: TextStyle(fontSize: 17),),
      ],
    ),
  );
}
