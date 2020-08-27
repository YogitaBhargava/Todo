import 'package:eco/checkout.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:eco/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cat.dart';
import 'fav.dart';
class Bag extends StatefulWidget {
  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  get onPressed => null;

int _n=0;
void add ( ) {
setState((){
_n++;
});}

void minus ( ) {
setState((){
if (_n !=0)
_n--;

});}
int _m=0;
void addd ( ) {
setState((){
_m++;
});}

void minuss ( ) {
setState((){
if (_m!=0)
_m--;

});}

int _a=0;
void ad ( ) {
setState((){
_a++;
});}

void minu ( ) {
setState((){
if (_a !=0)
_a--;

});}

int _b=0;
void plus ( ) {
setState((){
_b++;
});}

void sub ( ) {
setState((){
if (_b !=0)
_b--;

});}



  void _showModalSheet() {
    showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

        ),
        builder: (builder) {
          return Container(height: 420, decoration: BoxDecoration(
             color: Colors.grey[350],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ), child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Stack(children: <Widget>[ Container(
                color: Colors.white, height: 40, width: 320,


                child: TextField(

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    labelText: 'Enter your promo code ',
                  ),
                ),
              ), Positioned(right: 0, bottom: 0, top: 1, child: Container(
                height: 50,
                width: 42,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle), child: GestureDetector(
                onTap: _showModalSheet,

                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),),)),
              ]),
               SizedBox(height:6),
              Row(children: <Widget>[
                Text("     Your Promo Codes",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height:6),
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
                width:320,
                child: Row(
                  children: <Widget>[
               Container( height:200,width:90, child:Image.asset("assets/da.jpg",fit: BoxFit.cover,),),
                    Container(
                      child: Column(children: <Widget>[
                        Row(

                          children: <Widget>[
                            Text(
                              "                                            6 days remaining",
                              style: TextStyle(
                                  fontSize: 12,color:Colors.grey),
                            ),

                          ],
                        ),
                        Container(
                          width: 213,
                          child: Text("Personal offer", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),),),
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
                                      MaterialPageRoute(
                                          builder: (context) => Bag()),
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
                width:320,
                child: Row(
                  children: <Widget>[
                   Container( height:200,width:90, child:Image.asset("assets/pan.jpg",fit: BoxFit.cover,),),
                    Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "                                           23 days remaining",
                              style: TextStyle(
                                  fontSize: 12,color:Colors.grey),
                            ),


                          ],
                        ),
                        Container(
                          width: 213,
                          child: Text("Summer Sale", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),),),

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
                                      MaterialPageRoute(
                                          builder: (context) => Bag()),
                                    );
                                  }),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ), SizedBox(height: 8,),
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
                width:320,
                child: Row(
                  children: <Widget>[
                    Container( height:200,width:90, child:Image.asset("assets/pach.jpg",fit: BoxFit.cover,),),
                    Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[ Text(
                            "                                            6 days remaining",
                            style: TextStyle(
                                fontSize: 12,color:Colors.grey),
                          ),

                          ],
                        ),
                        Container(
                          width: 213,
                          child: Text("Personal offer", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),),),
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
                                      MaterialPageRoute(
                                          builder: (context) => Bag()),
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


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[350],
          centerTitle: true,
          elevation: 0.0,
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
              Row(
                children: <Widget>[
                  Text(
                    " My Bag",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),

              Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
boxShadow:[
BoxShadow(
color:Colors.grey,
offset:Offset(0.0,6.0),
blurRadius:6.0,)]
                ),
                height: 100,
                child: Row(
                  children: <Widget>[
                    ClipRRect(borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),

                      bottomLeft: Radius.circular(10),
                    ), child: Image.asset("assets/pullover.jpg"),),

                    Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "  Pullover",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              width: 110,
                            ),

                            PopupMenuButton<int>(
                                              itemBuilder: (context) => [
                                                    PopupMenuItem(
                                                      value: 1,
                                                      child: Text("Add to favourites"),
                                                    ),
 const    PopupMenuDivider(),
                                                    PopupMenuItem(
                                                      value: 2,
                                                      child: Text("Delete from the last"),
                                                    ),

                                                  ],
   child:  Icon(Icons.more_vert),


                                            )
                          ],
                        ),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "   Color :",
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
                        Container(
                          width: 213,
                          height: 42,
                          child: Row(
                            children: <Widget>[
 FloatingActionButton(                             onPressed :minus,
                             elevation:4.0,
                             child:Icon(Icons.remove, color: Colors.grey,),
                             mini:false,
                             backgroundColor:Colors.white,
                             ),
                              Text(
                                " $_n ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
 FloatingActionButton(
                             elevation:4.0,
                             child:Icon(Icons.add, color: Colors.grey,),
                             mini:false,
                             backgroundColor:Colors.white,
                             onPressed:add),
                              Text(
                                "        58\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                      boxShadow:[
                      BoxShadow(
                      color:Colors.grey,
                      offset:Offset(0.0,6.0),
                      blurRadius:6.0,)]

                ),
                height: 100,
                child: Row(
                  children: <Widget>[ClipRRect(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),

                    bottomLeft: Radius.circular(10),
                  ), child:
                  Image.asset("assets/clot.jpg"),),
                    Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              " Denim",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              width: 124,
                            ),
                             PopupMenuButton<int>(
                                                                          itemBuilder: (context) => [
                                                                                PopupMenuItem(
                                                                                  value: 1,
                                                                                  child: Text("Add to favourites"),
                                                                                ),
                             const    PopupMenuDivider(),
                                                                                PopupMenuItem(
                                                                                  value: 2,
                                                                                  child: Text("Delete from the list"),
                                                                                ),

                                                                              ],
                               child:  Icon(Icons.more_vert),


                                                                        ),
                          ],
                        ),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "  Color :",
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
                        Container(
                          width: 213,
                          height: 42,
                          child: Row(
                            children: <Widget>[
                               FloatingActionButton(
                                                           elevation:4.0,
                                                           child:Icon(Icons.remove, color: Colors.grey,),
                                                           mini:false,
                                                           backgroundColor:Colors.white,
                                                           onPressed:minuss),
                                                           Text(
                                                             " $_m ",
                                                             style: TextStyle(
                                                                 fontWeight: FontWeight.bold, fontSize: 18),
                                                           ),
                             FloatingActionButton(
                                                         elevation:4.0,
                                                         child:Icon(Icons.add, color: Colors.grey,),
                                                         mini:false,
                                                         backgroundColor:Colors.white,
                                                         onPressed:addd),
                              Text(
                                "        51\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                                            boxShadow:[
                                            BoxShadow(
                                            color:Colors.grey,
                                            offset:Offset(0.0,6.0),
                                            blurRadius:6.0,)]

                ),
                height: 100,
                child: Row(
                  children: <Widget>[ClipRRect(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),

                    bottomLeft: Radius.circular(10),
                  ), child:
                  Image.asset("assets/Tsh.jpg"),),
                    Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "  T-shirt",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              width: 124,
                            ),
 PopupMenuButton<int>(
                                              itemBuilder: (context) => [
                                                    PopupMenuItem(
                                                      value: 1,
                                                      child: Text("Add to favourites"),
                                                    ),
 const    PopupMenuDivider(),
                                                    PopupMenuItem(
                                                      value: 2,
                                                      child: Text("Delete from the list"),
                                                    ),

                                                  ],
   child:  Icon(Icons.more_vert),


                                            )
                          ],
                        ),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "   Color :",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Grey',
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
                        Container(
                          width: 213,
                          height: 42,
                          child: Row(
                            children: <Widget> [
                             FloatingActionButton(
                             elevation:4.0,
                             child:Icon(Icons.remove, color: Colors.grey,),
                             mini:false,
                             backgroundColor:Colors.white,
                             onPressed:minu),
                              Text(
                                                                                           " $_a ",
                                                                                           style: TextStyle(
                                                                                               fontWeight: FontWeight.bold, fontSize: 18),
                                                                                         ),
                               FloatingActionButton(
                                                           elevation:4.0,
                                                           child:Icon(Icons.add, color: Colors.grey,),
                                                           mini:false,
                                                           backgroundColor:Colors.white,
                                                           onPressed:ad),

                              Text(
                                "        30\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                                            boxShadow:[
                                            BoxShadow(
                                            color:Colors.grey,
                                            offset:Offset(0.0,6.0),
                                            blurRadius:6.0,)]

                ),
                height: 100,
                child: Row(
                  children: <Widget>[ClipRRect(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),

                    bottomLeft: Radius.circular(10),
                  ), child:
                  Image.asset("assets/crop.jpg"),),
                    Container(
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "  Crop",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              width: 142,
                            ),
                             PopupMenuButton<int>(
                                                                          itemBuilder: (context) => [
                                                                                PopupMenuItem(
                                                                                  value: 1,
                                                                                  child: Text("Add to favourites"),
                                                                                ),
                             const    PopupMenuDivider(),
                                                                                PopupMenuItem(
                                                                                  value: 2,
                                                                                  child: Text("Delete from the list"),
                                                                                ),

                                                                              ],
                               child:  Icon(Icons.more_vert),


                                                                        )
                          ],
                        ),
                        Container(
                            width: 213,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                text: "   Color :",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' White',
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
                        Container(
                          width: 213,
                          height: 42,
                          child: Row(
                            children: <Widget>[
                              FloatingActionButton(
                                                          elevation:4.0,
                                                          child:Icon(Icons.remove, color: Colors.grey,),
                                                          mini:false,
                                                          backgroundColor:Colors.white,
                                                          onPressed:sub),
Text(
                                                             " $_b ",
                                                             style: TextStyle(
                                                                 fontWeight: FontWeight.bold, fontSize: 18),
                                                           ),
 FloatingActionButton(
                             elevation:4.0,
                             child:Icon(Icons.add, color: Colors.grey,),
                             mini:false,
                             backgroundColor:Colors.white,
                             onPressed:plus),
                              Text(
                                "         43\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.transparent,),
              Stack(children: <Widget>[ Container(
                color: Colors.white, height: 40, width: 300,


                child: TextField(

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    labelText: 'Enter your promo code ',
                  ),
                ),
              ), Positioned(right: 0, bottom: 0, top: 1, child: Container(
                height: 50,
                width: 42,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle), child: GestureDetector(
                onTap: _showModalSheet,

                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),),)),
              ]),
              Divider(color: Colors.transparent,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Text("Total amount :", style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.bold,),),
                  Text("182\$", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold,),),
                ],),


              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text('CHECK OUT'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Checkout()),
                    );
                  }),
            ]));
  }
}
Widget _simplePopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Add to favourites"),
                ),
            const    PopupMenuDivider(),
                PopupMenuItem(
                  value: 2,
                  child: Text("Delete from the list"),
                ),
              ],
        );