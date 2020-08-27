import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/cat.dart';
import 'package:eco/filter.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fav.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
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
            "Women's tops",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => List()),
                );
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
        body:
        ListView(
            children: <Widget>[
              Row(children: <Widget>[
                Text(
                  "Women's tops",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
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
                      child: Text('T-shirts'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Grid()),
                        );
                      }),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('Crop tops'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Grid()),
                        );
                      }),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('Sleeveless'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Grid()),
                        );
                      })
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[ GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                    child:
                    Icon(
                      Icons.sort,
                    ),),
                    Text(
                      "Filter",
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
                          MaterialPageRoute(builder: (context) => Pro()),
                        );
                      },
                      child: Icon(
                        Icons.view_list,
                        color: Colors.black,
                      ),
                    ),
                  ]),
              SizedBox(height: 15.0),
              Container(
                  color: Colors.pinkAccent,
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
                                    "assets/pullover.jpg", height: 130,
                                    width: 200,
                                    fit: BoxFit.cover,),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("T-Shirt SPANISH")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    "assets/crop.jpg", height: 130,
                                    width: 200,
                                    fit: BoxFit.cover,),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Dorothy Perkins")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Blouse")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("14\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Shirt")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    "assets/crop.jpg", height: 130,
                                    width: 200,
                                    fit: BoxFit.cover,),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("T-Shirt SPANISH")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Shirt")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
                          ],
                        ),  Stack(
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Shirt")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Shirt")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Shirt")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
                                  ),


                                ],
                              ),
                            ),
                            Positioned(
                                top: 80,
                                left: 110,
                                child: Container(
                                    height: 70,
                                    width: 42,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Mango")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Shirt")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("9\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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
                                    "assets/crop.jpg", height: 130,
                                    width: 200,
                                    fit: BoxFit.cover,),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent, size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.grey, size: 18,
                                    ),
                                    Text("(3)",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14))
                                  ],),
                                  Row(
                                    children: <Widget>[Text("Dorothy Perkins")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("Blouse")],
                                  ),
                                  Row(
                                    children: <Widget>[Text("14\$")],
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
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    ))),
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

