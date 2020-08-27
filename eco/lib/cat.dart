import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/checkout.dart';
import 'package:eco/fav.dart';
import 'package:eco/main.dart';
import 'package:eco/photo.dart';
import 'package:eco/pro.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Cat extends StatefulWidget {
  @override
  _CatState createState() => _CatState();
}

class _CatState extends State<Cat> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Colors.white70,
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
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout()),
                );
              },
              child:Icon(Icons.search,color: Colors.black,)
            )
          ],
        ),
        body: ListView(

          padding: EdgeInsets.only(right: 19.0, left: 19.0),
    children: <Widget>[
      Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[  GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pro()),
          );
        },child:Text("Women",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
        ),),),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cat()),
            );
          },child:
        Text( "Men",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
        ),), ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cat()),
            );
          },child:
        Text("Kids",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
        ),),),

      ],),
      Divider( color: Colors.transparent,),


      Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
          ),

        height: 100,


        child: Center( child: RichText(
          text: TextSpan(

            text: "SUMMER SALES",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(text: '\n              Up to 50% off',style: TextStyle(fontSize: 12,color: Colors.white)),

            ],
          ),
        ),)
      ),
      Divider( color: Colors.transparent,),
      Container(
        decoration: BoxDecoration(
          color: Colors.white70,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),

        height: 100,

        child: Row(children: <Widget>[
          Text("                 New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Image.asset("assets/clot.jpg"),
        ],),
      ),
Divider( color: Colors.transparent,),
      Container(
        decoration: BoxDecoration(
          color: Colors.white70,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),

        height: 100,
        child: Row(children: <Widget>[ GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pro()),
            );
          },
          child:
          Text("                Clothes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
          Spacer(),
          Image.asset("assets/clo.jpg",width: 100,),
        ],),
      ),
      Divider ( color: Colors.transparent,),
      Container(
        decoration: BoxDecoration(
          color: Colors.white70,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),

        height: 100,
        child: Row(children: <Widget>[
          Text("                Shoes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Image.asset("assets/shoes.jpg"),
        ],),
      ),
      Divider( color: Colors.transparent,),
      Container(
        decoration: BoxDecoration(
          color: Colors.white70,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),

        height: 100,
        child: Row(children: <Widget>[
          Text("              Accesories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Image.asset("assets/choker.jpg"),
        ],),
      ),
      Divider( color: Colors.transparent,),
      Container(
        decoration: BoxDecoration(
          color: Colors.white70,

          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),

        height: 100,
        child: Row(children: <Widget>[
          Text("               Bags",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Image.asset("assets/purse.jpg"),
        ],),
      ),
      Divider( color: Colors.transparent,),

    ],
        ),
    );
  }
}

