import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/cat.dart';
import 'package:eco/fav.dart';
import 'package:eco/grid.dart';
import 'package:eco/main.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'filter.dart';

class Pro extends StatefulWidget {
  @override
  _ProState createState() => _ProState();
}

class _ProState extends State<Pro> {
  get onPressed => null;
  void _showModalSheet() {
    showModalBottomSheet(context: context, shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

    ),builder: (builder) {
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
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              title: Text("jh"),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => List()),
                  );
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              title: Text("j"),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bag()),
                  );
                },
                child: Icon(
                  Icons.shop,
                  color: Colors.black,
                ),
              ),
              title: Text("j"),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fav()),
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
              title: Text("j"),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sign()),
                  );
                },
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              title: Text("j"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
      appBar: AppBar(
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
      body: ListView(
          padding: EdgeInsets.only(right: 19.0, left: 19.0),
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
                        MaterialPageRoute(builder: (context) => Pro()),
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
                        MaterialPageRoute(builder: (context) => Pro()),
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
                        MaterialPageRoute(builder: (context) => Pro()),
                      );
                    })
              ],
            ),
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
                    child:
                    Icon(
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
                  ), GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Grid()),
                      );
                    },
                    child:
                  Icon(Icons.view_list),),
                ]),
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
                    color: Colors.white70,
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
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: "        Pullover",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\n            Mango',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                              Text("(3)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16))
                            ],
                          ),
                          Row(children: <Widget>[
                            Text(
                              "51\$",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ]),
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
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ))),
              ],
            ),
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
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/blouse.jpg"),
                      Container(
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: "             Blouse",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\n                  Dorothy Perkins',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star_border,

                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                              Text("(10)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16))
                            ],
                          ),
                          Row(children: <Widget>[
                            Text("12\$",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ]),
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
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ))),
              ],
            ),
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
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/Tsh.jpg"),
                      Container(
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: "      T-Shirt",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\n         Lost Ink',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,


                              ),
                              Text("(10)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16))
                            ],
                          ),
                          Row(children: <Widget>[
                            Text(
                              "12\$",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ]),
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
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ))),
              ],
            ),
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
                    color: Colors.white70,
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
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: "      Shirt",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\n        Topshop',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.grey
                              ),
                              Text("(3)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16))
                            ],
                          ),
                          Row(children: <Widget>[
                            Text(
                              "51\$",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ]),
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
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ))),
              ],
            ),
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
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Image.asset("assets/crop.jpg"),
                      Container(
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  text: "           Crop-tops",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\n                Limeshop',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                              Text("(3)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16))
                            ],
                          ),
                          Row(children: <Widget>[
                            Text(
                              "51\$",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ]),
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
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ))),
              ],
            )
          ]),

    );
  }
}
