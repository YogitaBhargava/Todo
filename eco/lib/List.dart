import 'package:eco/cat.dart';
import 'package:eco/fav.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bag.dart';
class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Categories",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black,)
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Icon(Icons.search, color: Colors.black,)
            )
          ],
        ),
        body: ListView(

            padding: EdgeInsets.only(right: 19.0, left: 19.0),
            children: <Widget>[
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text('VIEW ALL ITEMS'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cat()),
                    );
                  }),
              Row(children:<Widget>[
                Text("Choose category",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ]),
              Divider( color: Colors.transparent,),

              Row(children:<Widget>[ GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pro()),
                  );
                },
                child:
                Text("    Tops",style: TextStyle(fontWeight: FontWeight.bold),),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Shirt & Blouses",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Cardigans & Sweaters",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Knitwear",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Blazers",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Outerwear",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Pants",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Jeans",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Shorts",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Skirts",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Plazoo",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Dresses",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
              Divider(color: Colors.transparent,),
              Divider(color: Colors.transparent,),
              Row(children:<Widget>[
                Text("    Jumpsuits",style: TextStyle(fontWeight: FontWeight.bold),),
              ]),
            ])
    );
  }}