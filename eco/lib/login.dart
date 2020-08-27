import 'dart:ui';

import 'package:eco/checkout.dart';
import 'package:eco/fav.dart';
import 'package:eco/forgot.dart';
import 'package:eco/main.dart';
import 'package:eco/photo.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
import 'cat.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  MaterialPageRoute(builder: (context) => Sign()),
                );
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black,)
          ),


        ),
        body: ListView(
            padding: EdgeInsets.only(right: 19.0, left: 19.0),
            children: <Widget>[
              SizedBox(height: 10,),
              Row(children: <Widget>[
                Text("Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height: 60,),

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
              SizedBox(height: 15,),
              Container(
                height: 60,
                color: Colors.white,

                child: TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),


                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(children: <Widget>[ SizedBox(width: 138,),
                Text("Forgot your password?",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Forgot()),
                      );
                    },
                    child:  Icon(Icons.arrow_forward,color: Colors.red,)),],),
              SizedBox(height: 17,),
              SizedBox(height: 50,
                child:
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('LOGIN'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    }),),
              SizedBox(height: 87,),
              Row
                (children: <Widget>[ SizedBox(width: 48,),Text("Or login with social account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)],),
              SizedBox(height: 10,),
              Row(children: <Widget>[
                SizedBox(width: 52,),
                SizedBox( height:60,width:100,child:
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),

                    color: Colors.white,
                    child: Image.asset("assets/go.jpg",height: 35,width: 50,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    }),),
                SizedBox(width: 15,),
                SizedBox( height:60,width:100,child:
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),

                    color: Colors.white,
                    child: Image.asset("assets/fb.jpg",height: 35,width: 50,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    }),)
              ],)
            ])
    );
  }}