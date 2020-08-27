import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/cat.dart';
import 'package:eco/checkout.dart';
import 'package:eco/fav.dart';
import 'package:eco/main.dart';
import 'package:eco/order.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:eco/rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text(
            "Order Details",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black,)
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details()),
                  );
                },
                child: Icon(Icons.search, color: Colors.black,)
            )
          ],
        ),
        body: ListView(

            padding: EdgeInsets.only(right: 19.0, left: 19.0),
            children: <Widget>[
              Divider( color: Colors.transparent,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[


                  Text(" Order No:1947034",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('05-12-2019 ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ],),
              Row(children: <Widget>[
                Text("\n Tracking number :",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                Text("\n IW3475453455",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                Text("\n      Delivered",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),

              ],),
              Row(children: <Widget>[Text("\n 3 items",style: TextStyle(fontWeight: FontWeight.bold),)],),
              SizedBox(height: 20,),
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
                        SizedBox(height: 10,),
                        Container( width:220,child:
                            Text(
                              " Pullover",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),

                          ),
                        SizedBox(height: 3,),

                        Container(
                          width: 220,child:
                            Text(
                              " Mango",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14,color: Colors.grey),
                            ),),
                        SizedBox(height: 4,),


                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "Color :",
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
                                      text: '  Size :',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: ' S',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                        SizedBox(height: 5,),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "Units :",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: '                                 51\$',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,

                                        fontWeight: FontWeight.bold,
                                      )),

                                ],
                              ),
                            )),

                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
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
                        SizedBox(height: 10,),
                        Container( width:220,child:
                        Text(
                          " Pullover",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),

                        ),
                        SizedBox(height: 3,),

                        Container(
                          width: 220,child:
                        Text(
                          " Mango",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14,color: Colors.grey),
                        ),),
                        SizedBox(height: 4,),


                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "Color :",
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
                                      text: '  Size :',
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
                        SizedBox(height: 5,),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "Units :",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: '                                 51\$',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,

                                        fontWeight: FontWeight.bold,
                                      )),

                                ],
                              ),
                            )),

                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
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
                        SizedBox(height: 10,),
                        Container( width:220,child:
                        Text(
                          " Pullover",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),

                        ),
                        SizedBox(height: 3,),

                        Container(
                          width: 220,child:
                        Text(
                          " Mango",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14,color: Colors.grey),
                        ),),
                        SizedBox(height: 4,),


                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "Color :",
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
                                      text: '  Size :',
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
                        SizedBox(height: 5,),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "Units :",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' 1',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text: '                                 51\$',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,

                                        fontWeight: FontWeight.bold,
                                      )),

                                ],
                              ),
                            )),

                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(children: <Widget>[Text("Order Information",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)],),
              SizedBox(height: 18,),
              Container(
                  width: 213,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Shipping Address :",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  3 Newbridge Court ,Chino Hills ,\n                                            CA 91709, United States',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),


                      ],
                    ),
                  )),
              SizedBox(height: 18,),
              Row(children: <Widget>[Text("Payment method :  ", style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),),
              Image.asset("assets/master.jpg",width: 29, height: 27,),
              Text(" **** **** **** 3947",  style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ))],),
              SizedBox(height: 18,),
              Container(
                  width: 213,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Delivery method  :",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '   FedEx, 3 days, 15\$ ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),


                      ],
                    ),
                  )),
              SizedBox(height: 18,),
              Container(
                  width: 213,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Discount :",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '                     10%, Personal promo code',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),


                      ],
                    ),
                  )),
              SizedBox(height: 18,),
              Container(
                  width: 213,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Total Amount :",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '           133\$',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),


                      ],
                    ),
                  )),
              SizedBox(height: 2,),
              Container( height: 125,
                  child:
              Row(

                children: <Widget>[
                  SizedBox(
                    width:150, child:

                  RaisedButton(
                    color: Colors.grey,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black),

                      ),
                      textColor: Colors.black,

                      child: Text('Reorder',style: TextStyle(fontWeight: FontWeight.bold),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cat()),
                        );
                      }),),
                  SizedBox(width: 16,),
                  SizedBox(
                    width:150,child:
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Leave feedback'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rating()),
                        );
                      }),),
                ],
              )
              ),

            ]),

    );
  }
}