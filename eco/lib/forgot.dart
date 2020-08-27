import 'dart:ui';

import 'package:eco/checkout.dart';
import 'package:eco/fav.dart';
import 'package:eco/login.dart';
import 'package:eco/main.dart';
import 'package:eco/photo.dart';
import 'package:eco/pro.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
import 'cat.dart';
class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        backgroundColor: Colors.white70,
        appBar: AppBar(


          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black,)
          ),


        ),
        body: ListView(
            padding: EdgeInsets.only(right: 19.0, left: 19.0),
            children: <Widget>[
              SizedBox(height: 15,),
              Row(children: <Widget>[
                Text("Forgot password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height: 60,),

              Row(children: <Widget>[
                Text(" Please  ,   enter   your   email  address  .  You  will \n receive a link to create a new password via email.",
                  style: TextStyle( fontWeight: FontWeight.bold,fontSize: 14),)
              ],),
SizedBox(height: 10,),
              Container(
                height: 60,
                color: Colors.white,

                child: TextField(

                  decoration: InputDecoration(


                    border: OutlineInputBorder(),

                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 70,),

              SizedBox(height: 50,
                child:
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('SEND'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sign()),
                      );
                    }),),

              ],)

    );
  }}