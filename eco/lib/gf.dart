import 'dart:ui';

import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/checkout.dart';
import 'package:eco/fav.dart';
import 'package:eco/main.dart';
import 'package:eco/photo.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
import 'cat.dart';
import 'filter.dart';
class Gf extends StatefulWidget {
  @override
  _GfState createState() => _GfState();
}

class _GfState extends State<Gf> {
  get onPressed => null;
  void _showModalSheet() {
    showModalBottomSheet(context: context,shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

    ), builder: (builder) {
      return Container(height: 280, decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ), child: Column(
        children: <Widget>[
          Text("Sort by",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
          Text("\nPopular", style: TextStyle(fontSize: 19),),
          Text("\nNewest", textAlign: TextAlign.left,
            style: TextStyle(fontSize: 19),),
          Text("\n                Customer review", textAlign: TextAlign.left,
            style: TextStyle(fontSize: 19),),
          Text("\n                    Price: lowest to high",
            textAlign: TextAlign.left, style: TextStyle(fontSize: 19),),
          Text("\n                    Price: highest to low",
            textAlign: TextAlign.left, style: TextStyle(fontSize: 19),),
        ],


      )

      );
    });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

    backgroundColor: Colors.white70,
    appBar: AppBar(
      title: Text(
        "Favourites",
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
    MaterialPageRoute(builder: (context) => Gf()),
    );
    },
    child:Icon(Icons.search,color: Colors.black,)
    )
    ],

    ),
    body: ListView(

    children: <Widget>[
    SizedBox(height: 12,),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    ),
    textColor: Colors.white,
    color: Colors.black,
    child: Text('Summer'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Gf()),
    );
    }),
    RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    ),
    textColor: Colors.white,
    color: Colors.black,
    child: Text('T-Shirts'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Gf()),
    );
    }),
    RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    ),
    textColor: Colors.white,
    color: Colors.black,
    child: Text('Shirts'),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Gf()),
    );
    })
    ],
    ),
    SizedBox(height: 8,),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[

        GestureDetector(
        onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Filter()),
    );
    },
      child:   Icon(
    Icons.sort,
    ),),
    Text(
    "Filters",
    style: TextStyle(
    color: Colors.black87,
    ),
    ),
    GestureDetector(
      onTap: _showModalSheet,
    child: Icon(
    Icons.swap_vert,
    color: Colors.black,
    ),
    ),
    Text(
    "Price lowest to high",
    style: TextStyle(
    color: Colors.black87,
    ),
    ),
    GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Fav()),
    );
    },
    child: Icon(
    Icons.view_list,
    color: Colors.black,
    ),
    ),
    ]),SizedBox(height: 15.0),
      Container(

          padding: EdgeInsets.only(right: 21.0, left: 21.0, top: 10),
          width: MediaQuery
              .of(context)
              .size
              .width - 30.0,
          height: MediaQuery
              .of(context)
              .size
              .height - 50.0,
          child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.7,

              children: <Widget>[

                Stack(
                  children: <Widget>[
                    Container(

                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(

                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      height: 250,
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/clot.jpg", height: 130,
                            width: 200,
                            fit: BoxFit.cover,),
                          Row(children: <Widget>[
                            SizedBox(width: 5,),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Text("(10)",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12))
                          ],),
                          Row(
                            children: <Widget>[Text("  LIME",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey), ),],
                          ),
                          Row(
                            children: <Widget>[ Text(
                              " Jacket",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                            ),],
                          ),  Row(

                              children:<Widget>[ RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: " Color :",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Blue',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: '   Size :',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: ' L',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )]),
                          Row(
                            children: <Widget>[Text("  32\$",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),],
                          ),


                        ],
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 110,
                        child: Container(
                            height: 70,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.shop,
                              color: Colors.white,
                            ))),
                    Positioned(
                        top: 2,
                        right: 1,
                        child:Icon(Icons.close)),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(

                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(

                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      height: 250,
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/shirt.jpg", height: 130,
                            width: 200,
                            fit: BoxFit.cover,),
                          Row(children: <Widget>[
                            SizedBox(width: 5,),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon( Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Text("(0)",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12))
                          ],),
                          Row(
                            children: <Widget>[Text("  MANGO",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey), ),],
                          ),
                          Row(
                            children: <Widget>[ Text(
                              " Shirt",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                            ),],
                          ),  Row(

                              children:<Widget>[ RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: " Color :",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Red',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: '   Size :',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: ' M',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )]),
                          Row(
                            children: <Widget>[Text("  42\$",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),],
                          ),

                        ],
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 110,
                        child: Container(
                            height: 70,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.shop,
                              color: Colors.white,
                            ))),
                    Positioned(
                      top: 4,
                      left: 1,
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
                              MaterialPageRoute(builder: (context) => Gf()),
                            );
                          }),),),
                    Positioned(
                        top: 2,
                        right: 1,
                        child:Icon(Icons.close)),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(

                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(

                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      height: 250,
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/clo.jpg", height: 130,
                            width: 200,
                            fit: BoxFit.cover,),

                          Row(children: <Widget>[
                            SizedBox(width: 5,),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon( Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Text("(3)",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12))
                          ],),
                          Row(
                            children: <Widget>[Text(" OLIVER",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey), ),],
                          ),
                          Row(
                            children: <Widget>[ Text(
                              " Tee",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                            ),],
                          ),  Row(

                              children:<Widget>[ RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: " Color :",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Yellow',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: '   Size :',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: ' L',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )]),
                          Row(
                            children: <Widget>[Text(" 52\$",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),],
                          ),


                        ],
                      ),
                    ),
                    Container(



                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      height: 250,
                      width: 200,
                    ),
                    Positioned(
                        top: 100,

                        child:Stack( children: <Widget>[ Container( color: Colors.white.withOpacity(0.5),width: 380, height: 31,
                            child: Text("  Sorry , this item is currently \n  sold out",style: TextStyle(color: Colors.black,fontSize: 12),),),
        Container( color: Colors.white.withOpacity(0.5),width: 380, height: 31,)])),
                    Positioned(
                        top: 2,
                        right: 1,
                        child:Icon(Icons.close,color: Colors.grey,)),

                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(

                      height: 280,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(

                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      height: 250,
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/pullover.jpg", height: 130,
                            width: 200,
                            fit: BoxFit.cover,),
                          Row(children: <Widget>[
                            SizedBox(width: 5,),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon( Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey, size: 14,
                            ),
                            Text("(0)",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12))
                          ],),
                          Row(
                            children: <Widget>[Text("  &BERRIES",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey), ),],
                          ),
                          Row(
                            children: <Widget>[ Text(
                              " Pullover",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                            ),],
                          ),  Row(

                              children:<Widget>[ RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: " Color :",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Black',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: '   Size :',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: ' M',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )]),
                          Row(
                            children: <Widget>[Text("  42\$",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),],
                          ),

                        ],
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 110,
                        child: Container(
                            height: 70,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.shop,
                              color: Colors.white,
                            ))),
                    Positioned(
                      top: 4,
                      left: 1,
                      child: SizedBox(  width:46, height:25,child:RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          textColor: Colors.white,
                          color: Colors.red,
                          child: Text('-30%',style: TextStyle(fontSize: 6),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Gf()),
                            );
                          }),),),
                    Positioned(
                      top: 2,
                      right: 1,
                      child:Icon(Icons.close)),
                  ],
                ),



              ]
          )
      )
    ]
    )
    );
  }
}
