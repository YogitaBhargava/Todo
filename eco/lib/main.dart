

import 'dart:async';
import 'package:eco/details.dart';

import 'package:eco/pay.dart';
import 'package:eco/pro.dart';

import 'package:eco/brand.dart';
import 'package:eco/cat.dart';
import 'package:eco/check.dart';
import 'package:eco/filter.dart';
import 'package:eco/grid.dart';
import 'package:eco/modalbottomsheet.dart';
import 'package:eco/List.dart';
import 'package:eco/profile.dart';
import 'package:eco/rating.dart';
import 'package:eco/setting.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bag.dart';
import 'order.dart';
import"package:eco/Fav.dart";





void main() => runApp(MaterialApp(home: SplashScreen()));

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
// WidgetsBinding.instance.addPostFrameCallback(( duration){
// Future.delayed(Duration(seconds: 2),(){
//Navigator.of(context)
// .push(MaterialPageRoute(builder: (context) => MyApp()));
// });
// });
    super.initState();

    loadData();
  }

  Future<void> loadData() async {
    await Timer(Duration(seconds: 2), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage('assets/spal.jpg',)),
      ),
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyBottomNavigationBar();
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter r


  }
}

class MyBottomNavigationBar extends StatefulWidget {






  @override
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  var _children = [
Fam(),
    List(),
    Bag(),
    Fav(),
    Sign(),


  ];

  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,

        onTap: _onTappedBar,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home',),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Shop'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.shop,),
            title: Text('Bag'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourites'),
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile',),
          ),

        ],

        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,

      ),

    );
  }
}






class Fam extends StatefulWidget {
  @override
  _FamState createState() => _FamState();
}

class _FamState extends State<Fam> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(alignment: Alignment.topCenter, children: <Widget>[
            Image.asset(
              'assets/girls.jpg',
              height: 503,
              width: 500,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 232,
              left: 2.2,
              height: 146,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cat()),
                      );
                    },
                    child: Text(
                      "   Fashion\n   Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),

                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text('Check'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cat()),
                      );
                    }),
              ]),
            ),
          ]),
          Row(
            children: <Widget>[
              Text(
                "\n  New",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => List()),
                  );
                },
                child:
                Text("View all", style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
          Row(
            children: <Widget>[
              Text("   You've never seen it before!",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            height: 164,
            padding: EdgeInsets.only(right: 13.0, left: 13.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Stack(children: <Widget>[ Container( height:200,width:200,child:
                Image.asset("assets/fe.jpg",fit: BoxFit.cover,),),
                  Positioned(
                    top: 4,
                    child:SizedBox(  width:46, height:25,child:RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('NEW',style: TextStyle(fontSize: 6),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Cat ()),
                          );
                        }),),
                  ),
                ]),
                Stack(children: <Widget>[Container( height:200,width:200,child:
                Image.asset("assets/boyy.jpg",fit: BoxFit.cover,),),
                  Positioned(
                    top: 4,
                    child: SizedBox(  width:46, height:25,child:RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('NEW',style: TextStyle(fontSize: 6),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Cat ()),
                          );
                        }),),
                  ),
                ]),
                Stack(children: <Widget>[Container( height:200,width:200,child:
                Image.asset("assets/babyg.jpg",fit: BoxFit.cover,),),
                  Positioned(
                    top: 4,

                    child: SizedBox(  width:46, height:25,child:RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('NEW',style: TextStyle(fontSize: 6),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Cat ()),
                          );
                        }),),
                  ),
                ]),
                Stack(children: <Widget>[
                  Container( height:200,width:200,child:
                  Image.asset("assets/babyb.jpg",fit: BoxFit.cover,),),
                  Positioned(
                    top: 4,

                    child: SizedBox(  width:46, height:25,child:RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('NEW',style: TextStyle(fontSize: 6),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Cat ()),
                          );
                        }),),
                  ),
                ]),
                Stack(children: <Widget>[Container( height:200,width:200,child:
                Image.asset("assets/gw.jpg",fit: BoxFit.cover,), ),
                  Positioned(
                    top: 4,
                    child: SizedBox(  width:46, height:25,child:RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('NEW',style: TextStyle(fontSize: 6),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Cat ()),
                          );
                        }),),
                  ),
                ]),
                Stack(children: <Widget>[Container( height:200,width:200,child:
                Image.asset("assets/bw.jpg",fit: BoxFit.cover,),),
                  Positioned(
                    top: 4,

                    child: SizedBox(  width:46, height:25,child:RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('NEW',style: TextStyle(fontSize: 6),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Cat ()),
                          );
                        }),),
                  ),
                ]),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}