import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/checkout.dart';
import 'package:eco/fav.dart';
import 'package:eco/main.dart';
import 'package:eco/order.dart';
import 'package:eco/pay.dart';
import 'package:eco/pro.dart';
import 'package:eco/rating.dart';
import 'package:eco/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showModalSheet() {
    showModalBottomSheet(context: context,shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

    ) , builder: (builder) {
      return Container(height: 420, decoration: BoxDecoration(
        color:Colors.grey ,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ), child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            height: 35,
            width: 340,
            color: Colors.white,

            child: TextField(

              decoration: InputDecoration(
                suffixIcon:  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bag()),
                    );
                  },
                  child: Icon(

                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(),
                labelText: 'Enter your promo code ',
              ),
            ),
          ),
          Row(children: <Widget>[
            Text("   Your Promo Codes",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
          ],),
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
                Image.asset("assets/TEN.png"),
                Container(
                  child: Column(children: <Widget>[
                    Row(

                      children: <Widget>[
                        Text(
                          "                                             6 days remaining",
                          style: TextStyle(
                              fontSize: 12),
                        ),

                      ],
                    ),
                    Container(
                      width: 213,
                      child: Text("Personal offer",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
                    Container(
                      width: 213,
                      height: 42,
                      child: Row(
                        children: <Widget>[

                          Text(
                            "mypromocode2020       ",
                            style: TextStyle(
                                fontSize: 12),
                          ),
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              textColor: Colors.white,
                              color: Colors.red,
                              child: Text('Apply'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Bag()),
                                );
                              }),

                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
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
                Image.asset("assets/155.jpg"),
                Container(
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "                                             23 days remaining",
                          style: TextStyle(
                              fontSize: 12),
                        ),


                      ],
                    ),
                    Container(
                      width: 213,
                      child: Text("Summer Sale",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),

                    Container(
                      width: 213,
                      height: 42,
                      child: Row(
                        children: <Widget>[




                          Text(
                            "summer2020                 ",
                            style: TextStyle(
                                fontSize: 12),
                          ),
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              textColor: Colors.white,
                              color: Colors.red,
                              child: Text('Apply'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Bag()),
                                );
                              }),
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),SizedBox(height: 8,),
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
                Image.asset("assets/22.jpg"),
                Container(
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[ Text(
                        "                                             6 days remaining",
                        style: TextStyle(
                            fontSize: 12),
                      ),

                      ],
                    ),
                    Container(
                      width: 213,
                      child: Text("Personal offer",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
                    Container(
                      width: 213,
                      height: 42,
                      child: Row(
                        children: <Widget>[ Text(
                          "mypromocode2020       ",
                          style: TextStyle(
                              fontSize: 12),
                        ),
                          RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              textColor: Colors.white,
                              color: Colors.red,
                              child: Text('Apply'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Bag()),
                                );
                              }),

                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),

        ],


      )

      );
    });
  }

  get onPressed => null;

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
    MaterialPageRoute(builder: (context) => Profile()),
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
    backgroundColor: Colors.white,
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
    MaterialPageRoute(builder: (context) => Profile()),
    );
    },
    child:Icon(Icons.search,color: Colors.black,)
    )
    ],
    ),
    body: ListView(

        padding: EdgeInsets.only(right: 19.0, left: 19.0),
    children: <Widget>[
      SizedBox(height: 16,),
      Row(children: <Widget>[
        Text("My profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

      ],),
        Divider(color: Colors.transparent,),



      SizedBox( height: 40,),
      Container( child: Row(children: <Widget>[  RichText(
      text: TextSpan(

        text: "My orders",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(text: '\nAlready have 12 orders',style: TextStyle(fontSize: 14,color: Colors.grey)),

        ],
      ),
       ),
        Spacer(), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Order()),
              );
            },
            child:Icon(Icons.arrow_forward_ios,color: Colors.grey,)), ]   ) ,),
      Divider(color: Colors.transparent,),
      Container( child: Row(children: <Widget>[  RichText(
        text: TextSpan(

          text: "Shipping addresses",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(text: '\n3 addresses',style: TextStyle(fontSize: 14,color: Colors.grey)),

          ],
        ),
      ),
        Spacer(), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Checkout()),
              );
            },
            child:Icon(Icons.arrow_forward_ios,color: Colors.grey,)), ]   ) ,),
      Divider(color: Colors.transparent,),
      Container( child: Row(children: <Widget>[  RichText(
        text: TextSpan(

          text: "Payment methods",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(text: '\nvisa **34',style: TextStyle(fontSize: 14,color: Colors.grey)),

          ],
        ),
      ),
        Spacer(), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pay()),
              );
            },
            child:Icon(Icons.arrow_forward_ios, color: Colors.grey,)), ]   ) ,),
      Divider(color: Colors.transparent,),
      Container( child: Row(children: <Widget>[  RichText(
        text: TextSpan(

          text: "Promocodes",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(text: '\nYou have special promocodes',style: TextStyle(fontSize: 14,color: Colors.grey)),

          ],
        ),
      ),
        Spacer(), GestureDetector(
            onTap: _showModalSheet,
            child:Icon(Icons.arrow_forward_ios,color: Colors.grey,)), ]   ) ,),
      Divider(color: Colors.transparent,),
      Container( child: Row(children: <Widget>[  RichText(
        text: TextSpan(

          text: "My reviews",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(text: '\nReviews for 4 items',style: TextStyle(fontSize: 14,color: Colors.grey),),

          ],
        ),
      ),
        Spacer(), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rating()),
              );
            },
            child:Icon(Icons.arrow_forward_ios,color: Colors.grey,)), ]   ) ,),
      Divider(color: Colors.transparent,),
      Container( child: Row(children: <Widget>[  RichText(
        text: TextSpan(

          text: "Setting",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(text: '\nNotifications, password',style: TextStyle(fontSize: 14,color: Colors.grey)),

          ],
        ),
      ),
        Spacer(), GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            child:Icon(Icons.arrow_forward_ios,color: Colors.grey,)), ]   ) ,),







]


        ),



    );
  }}