import 'package:eco/List.dart';
import 'package:eco/bag.dart';
import 'package:eco/checkout.dart';
import 'package:eco/details.dart';
import 'package:eco/fav.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cat.dart';
class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.black,)
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order()),
                  );
                },
                child:Icon(Icons.search,color: Colors.black,)
            )
          ],
        ),
        body: ListView(

        padding: EdgeInsets.only(right: 19.0, left: 19.0),
    children: <Widget>[
      Row(children: <Widget>[Text("My Orders",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),)],),
      Divider( color: Colors.transparent,),
      Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[  GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Order()),
          );
        },child:Text("Delivered",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
      ),),),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Order()),
            );
          },child:
        Text( "Processing",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
        ),), ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Order()),
            );
          },child:
        Text("Cancelled",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
        ),),),

      ],),
      Divider( color: Colors.transparent,),
      Divider( color: Colors.transparent,),
      Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: Column( children:<Widget>
        [ Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            Text("    Order No:1947034",style: TextStyle(fontWeight: FontWeight.bold),),
            Text('05-12-2019      ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
          ],),
          Row(children: <Widget>[
            Text("\n    Tracking number :",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            Text("\n IW3475453455",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],),
          Divider(color: Colors.transparent,),
          Row(children: <Widget>[RichText(
          textAlign: TextAlign.left,
            text: TextSpan(
              text: "    Quantity:",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '  3',
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '           Total Amount:',
                    style: TextStyle(

                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '  112\$',
                    style: TextStyle(

                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),],),
          Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black),

                  ),
                  textColor: Colors.black,

                  child: Text('Details',style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  }),
              Text("                                               Delivered",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold ),),
            ],
          )
        ]),


      ),
      SizedBox(height: 18,),
      Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: Column( children:<Widget>
        [ Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[


              Text("    Order No:1947034",style: TextStyle(fontWeight: FontWeight.bold),),
              Text('05-12-2019      ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ],),
          Row(children: <Widget>[
            Text("\n    Tracking number :",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            Text("\n IW3475453455",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],),
          Divider(color: Colors.transparent,),
          Row(children: <Widget>[RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "    Quantity:",
              style: TextStyle(
                  color: Colors.grey,

                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '  3',
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '           Total Amount:',
                    style: TextStyle(

                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '  112\$',
                    style: TextStyle(

                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),],),
          Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black),

                  ),
                  textColor: Colors.black,

                  child: Text('Details',style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  }),
              Text("                                               Delivered",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold ),),
            ],
          )
        ]),


      ),
      SizedBox(height: 18,),
      Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: Column( children:<Widget>
        [ Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[


              Text("    Order No:1947034",style: TextStyle(fontWeight: FontWeight.bold),),
              Text('05-12-2019      ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ],),
          Row(children: <Widget>[
            Text("\n    Tracking number :",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            Text("\n IW3475453455",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],),
          Divider(color: Colors.transparent,),
          Row(children: <Widget>[RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "    Quantity:",
              style: TextStyle(
                  color: Colors.grey,

                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '  3',
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '           Total Amount:',
                    style: TextStyle(

                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '  112\$',
                    style: TextStyle(

                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),],),
          Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black),

                  ),
                  textColor: Colors.black,

                  child: Text('Details',style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  }),
              Text("                                               Delivered",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold ),),
            ],
          )
        ]),


      ),
      SizedBox(height: 18,),
      Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: Column( children:<Widget>
        [ Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[


              Text("    Order No:1947034",style: TextStyle(fontWeight: FontWeight.bold),),
              Text('05-12-2019      ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ],),
          Row(children: <Widget>[
            Text("\n    Tracking number :",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            Text("\n IW3475453455",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],),
          Divider(color: Colors.transparent,),
          Row(children: <Widget>[RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: "    Quantity:",
              style: TextStyle(
                  color: Colors.grey,

                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '  3',
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '           Total Amount:',
                    style: TextStyle(

                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: '  112\$',
                    style: TextStyle(

                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),],),
          Divider(color: Colors.transparent,),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black),

                  ),
                  textColor: Colors.black,

                  child: Text('Details',style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  }),
              Text("                                               Delivered",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold ),),
            ],
          )
        ]),


      ),


    ])
    );}}