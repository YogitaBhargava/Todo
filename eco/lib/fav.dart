import 'dart:ui';

import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/checkout.dart';
import 'package:eco/filter.dart';
import 'package:eco/gf.dart';
import 'package:eco/main.dart';
import 'package:eco/photo.dart';
import 'package:eco/pro.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
import 'cat.dart';
class Fav extends StatefulWidget {
  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {
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
                    MaterialPageRoute(builder: (context) => Fav()),
                  );
                },
                child:Icon(Icons.search,color: Colors.black,)
            )
          ],
        ),
        body: ListView(

        padding: EdgeInsets.only(right: 19.0, left: 19.0),
    children: <Widget>[
      SizedBox(height: 12,),
      Row(children: <Widget>[
        Text(
          "Favorites",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  MaterialPageRoute(builder: (context) => Fav()),
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
                  MaterialPageRoute(builder: (context) => Fav()),
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
                  MaterialPageRoute(builder: (context) => Fav()),
                );
              })
        ],
      ),
      SizedBox(height: 8,),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Filter()),
                  );
                },
                child:  Icon(
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
                  MaterialPageRoute(builder: (context) => Gf()),
                );
              },
              child: Icon(
                Icons.view_list,
                color: Colors.black,
              ),
            ),
          ]),
      SizedBox(height: 12,),
      Stack(
        children: <Widget>[
          Container(

            height: 115,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),

            ),
          ),
          Container(
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            height: 100,
            child: Row(
              children: <Widget>[
                Image.asset("assets/clot.jpg", ),
                Container(
                  child: Column(children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Text(
                          "LIME",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                        ),
                        SizedBox(
                          width: 124,
                        ),
                        Icon(Icons.close),
                      ],
                    ),
                    Container(
                      width: 220,child:
                    Text(
                      "     Jacket",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                    ),),

SizedBox(height: 4,),
                    Container(
                        width: 213,
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: "     Color :",
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
                        )),
                    SizedBox(height: 6,),
                    Container(
                      width: 220,child:
                   Row(children: <Widget>[
                     Text("      32\$",style: TextStyle(
                         fontSize: 14,
                         color: Colors.black,
                         fontWeight: FontWeight.bold)),
                     SizedBox(width: 35,),

                     Icon(
                       Icons.star,
                       color: Colors.orangeAccent, size: 14,
                     ),
                     Icon(
                       Icons.star,
                       color: Colors.orangeAccent,size: 14,
                     ),
                     Icon(
                       Icons.star,
                       color: Colors.orangeAccent,size: 14,
                     ),
                     Icon(
                       Icons.star,
                       color: Colors.orangeAccent,size: 14,
                     ),
                     Icon(
                       Icons.star,
                       color: Colors.orangeAccent,size: 14,
                     ),
                     Text("(10)",
                         style: TextStyle(
                             color: Colors.grey, fontSize: 12))
                   ],),),



                  ]),
                )
              ],
            ),
          ),
          Positioned(
              top: 57,
              left: 270,
              child: Container(
                  height: 70,
                  width: 42,
                  decoration: BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: Icon(
                    Icons.shop,
                    color: Colors.white,
                  ))),
        ],
      ),
      SizedBox(height: 10,),
        Stack(
          children: <Widget>[
            Container(

              height: 115,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),

              ),
            ),


            Container(
              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              height: 100,
              child: Row(
                children: <Widget>[
                  Image.asset("assets/shirt.jpg"),
                  Container(
                    child: Column(children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Text(
                            "MANGO",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                          ),
                          SizedBox(
                            width: 107,
                          ),
                          Icon(Icons.close),
                        ],
                      ),
                      Container(
                        width: 220,child:
                      Text(
                        "     Shirt",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                      ),),
                      SizedBox(height: 4,),


                      Container(
                          width: 213,
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: "    Color :",
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
                          )),
                      SizedBox(height: 6,),
                      Container(
                        width: 220,child:
                      Row(children: <Widget>[
                        Text("     42\$",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                        SizedBox(width: 35,),

                        Icon(
                          Icons.star_border,
                          color: Colors.grey,size: 14,
                        ),Icon(
                          Icons.star_border,
                          color: Colors.grey,size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.grey,size: 14,
                        ),Icon(
                          Icons.star_border,
                          color: Colors.grey,size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.grey,size: 14,
                        ),
                        Text("(0)",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12))
                      ],),),



                    ]),
                  )
                ],
              ),
            ),

            Positioned(
                top: 57,
                left: 270,
                child: Container(
                    height: 70,
                    width: 42,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
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
                        MaterialPageRoute(builder: (context) => Fav()),
                      );
                    }),),),
          ],
        ), SizedBox(height: 10,),

      Stack(
        children: <Widget>[



          Container(
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            height: 100,
            child: Row(
              children: <Widget>[
                Image.asset("assets/clo.jpg",width: 100,),
                Container(
                  child: Column(children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[


                        Text(
                          "OLIVER",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Icon(Icons.close),
                      ],
                    ),
                    Container(
                      width: 220,child:
                    Text(
                      "     Tee",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                    ),),
                    SizedBox(height: 4,),


                    Container(
                        width: 213,
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: "     Color :",
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
                        )),
                    SizedBox(height: 6,),
                    Container(
                      width: 220,child:
                    Row(children: <Widget>[
                      Text("      52\$",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                      SizedBox(width: 35,),

                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent, size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,size: 14,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,size: 14,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,size: 14,
                      ),
                      Text("(3)",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 12))
                    ],),),


                  ]),
                )
              ],
            ),
          ),

          Container(


            height: 100,
            decoration: BoxDecoration(
color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),


            ),
          ),


        ],
      ),

      Row(children: <Widget>[Text("Sorry, this item is currently sold out",style: TextStyle(color: Colors.grey,fontWeight:
      FontWeight.bold),)],),
     SizedBox(height: 22,),

      Stack(
        children: <Widget>[
          Container(

            height: 115,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),

            ),
          ),


          Container(
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            height: 100,
            child: Row(
              children: <Widget>[
                Image.asset("assets/pullover.jpg"),
                Container(
                  child: Column(children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "&BERRIES",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                        ),
                        SizedBox(
                          width: 98,
                        ),
                        Icon(Icons.close),
                      ],
                    ),
                    Container(
                      width: 220,child:
                    Text(
                      "     Pullover",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16,color: Colors.black),
                    ),),
                    SizedBox(height: 4,),


                    Container(
                        width: 213,
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: "    Color :",
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
                        )),
                    SizedBox(height: 6,),
                    Container(
                      width: 220,child:
                    Row(children: <Widget>[
                      Text("     42\$",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                      SizedBox(width: 35,),

                      Icon(
                        Icons.star_border,
                        color: Colors.grey,size: 14,
                      ),Icon(
                        Icons.star_border,
                        color: Colors.grey,size: 14,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,size: 14,
                      ),Icon(
                        Icons.star_border,
                        color: Colors.grey,size: 14,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,size: 14,
                      ),
                      Text("(0)",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 12))
                    ],),),



                  ]),
                )
              ],
            ),
          ),

          Positioned(
              top: 57,
              left: 270,
              child: Container(
                  height: 70,
                  width: 42,
                  decoration: BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
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
                    MaterialPageRoute(builder: (context) => Fav()),
                  );
                }),),),
        ],
      ),


    ]), );}}