import 'package:eco/bag.dart';
import 'package:eco/main.dart';
import 'package:eco/pay.dart';
import 'package:eco/pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
        title: Text(
        "Checkout",
        style: TextStyle(
        fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    backgroundColor: Colors.grey,
    centerTitle: true,
    leading: GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Bag()),
    );
    },
    child: Icon(Icons.arrow_back_ios, color: Colors.black,)
    ),

    ),
        body: ListView(

        padding: EdgeInsets.only(right: 19.0, left: 19.0),
    children: <Widget>[
      Divider( color: Colors.grey,),
      Row(children: <Widget>[Text("Shipping address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)],),
      Divider(color: Colors.transparent,),
      Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: Column( children:<Widget>[Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

          Text("    Jane Doe",style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Change       ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),),
        ],),
          Row(children: <Widget>[
            Text("\n    3 Newbridge Court"),
          ],),
          Row(children: <Widget>[Text("\n    Chino Hills, CA 91709, United States")],)
        ]),


      ),
      SizedBox(height: 45,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text("    Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pay()),
              );
            },
            child:   Text('Change       ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),),),
        ],),
      Divider( color: Colors.transparent,),
      Row(children:<Widget>[
        Image.asset("assets/master.jpg",width: 100, height: 45,),
        Text("**** **** **** 3947",style: TextStyle(fontWeight: FontWeight.bold),),
      ]),
      SizedBox(height: 45,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text("    Delivery method",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),]),
          Divider( color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            Container(
              width: 90,
              height: 68,
              color: Colors.white,
              child: Column(
                children: <Widget>[Image.asset("assets/fed.jpg"),
                Text("2-3 days",style: TextStyle(color: Colors.grey),)],
              ),
            ),
                Container(
                  width: 90,
                  height: 68,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[Image.asset("assets/us.jpg"),
                      Text("2-3 days",style: TextStyle(color: Colors.grey),)],
                  ),
                ),
                Container(
                  width: 90,
                  height: 68,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[Image.asset("assets/pra.jpg",alignment: Alignment.bottomLeft,),
                      Text("2-3 days",style: TextStyle(color: Colors.grey),)],
                  ),
                ),
            ]
            ),
      SizedBox(height: 40,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text("  Order:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text('112\$     ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),),
        ],),
      Divider(color: Colors.transparent,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text("  Delivery:   ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text('15\$       ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),),
        ],),
      Divider( color: Colors.transparent,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Text("  Summary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text('127\$     ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),),
        ],),
      SizedBox(height: 30,),
      RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          textColor: Colors.white,
          color: Colors.red,
          child: Text('SUBMIT ORDER'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          }),








    ])
    );
  }}
