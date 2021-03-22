import 'package:flutter/material.dart';
import 'package:not_defterim/modeller/Not_islemleri.dart';
import 'package:provider/provider.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String baslik;
    String icerik;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Not Defterim"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Title",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white ,
            ),
              onChanged: (value){
                baslik=value;
              },
            ),
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Content",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                  ),
                  style:TextStyle(
                    fontSize: 18,
                    color: Colors.white ,
                  ),
                onChanged: (value){
                    icerik=value;
                },
              ),
            ),
            FlatButton(
                onPressed: (){
                  Provider.of<Notislem>(context,listen: false).notOlustur(baslik, icerik);
                  Navigator.pop(context);
                },
                color: Colors.white,
                child: Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue),))
          ],
        ),
      ),
    );
  }
}
