import 'package:eco/checkout.dart';
import 'package:eco/main.dart';
import 'package:eco/photo.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
import 'cat.dart';

import 'dart:async';



class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  get onPressed => null;

  void _showModalSheet(



      ) {

    showModalBottomSheet(context: context, shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

    ), backgroundColor: Colors.grey,  builder: (builder) {

      return Container(
          padding: EdgeInsets.only(right: 19.0, left: 19.0),

          height: 550,
          child: Column(
              children: <Widget>[
                SizedBox(height: 7,),
                Row( children: <Widget>[Text("                What is you rate ?", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],),
                SizedBox(height: 8,),
                Row(children: <Widget>[ SizedBox(width: 42,),Icon(Icons.star_border,color: Colors.black,size: 40,),SizedBox(width: 10,),Icon(Icons.star_border,color: Colors.black,size: 40,),SizedBox(width: 10,),Icon(Icons.star_border,color: Colors.black,size: 40,),SizedBox(width: 10,),Icon(Icons.star_border,color: Colors.black,size: 40,),SizedBox(width: 10,),Icon(Icons.star_border,color: Colors.black,size: 40,)],),
                SizedBox(height: 7,),
                Row(children: <Widget>[Text("              Please share your opinion \n                     about the product",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)],),
                SizedBox(height: 8,),
                Container(
                  height: 115,
                  color: Colors.white,

                  child: TextField( style: TextStyle(height: 7,),

                    decoration: InputDecoration(



                      hintText: "Your review",
                    ),
                  ),
                ),
                SizedBox(height: 14,),
                Row(children: <Widget>[
                  Stack(children: <Widget>[
                  Container( height:90, width:100,color: Colors.white ),
          Positioned(top:9, right:13,child:
          Container(
                      height: 64,
                      width: 74,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          shape: BoxShape.circle),
                      child: Icon(

                        Icons.camera_alt,
                        color: Colors.white,
                        size: 35,
                      )), ),
                    Positioned( top:75, right:4,child: Text("Add your photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),)
                ],),]),
                SizedBox(height: 15,),


                SizedBox(
                  width: 330,
                  height: 35
                  ,
                  child:
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("SEND REVIEW"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Rating()),
                        );
                      }),

                ),





              ])

      );


    });
  }
  bool isChecked = false;

  var resultHolder = 'Checkbox is UN-CHECKED';

  void toggleCheckbox(bool value) {
    if (isChecked == false) {
// Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
      });
    } else {
// Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: SizedBox(width: 140, height: 40, child: FloatingActionButton(
          backgroundColor: Colors.red,


          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(18.0),

          ),
          child: Row (  mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[
            Icon(Icons.edit,size: 20,),Text('  Write a review',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),],),
          onPressed: _showModalSheet,
        ),),
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
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: ListView(
          padding: EdgeInsets.only(right: 19.0, left: 19.0),
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Rating & Reviews",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "4.3   ",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 10,
                    width: 140,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text("12"),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "23 ratings   ",
                    style: TextStyle(fontSize: 15, color: Colors.yellowAccent),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 10,
                    width: 65,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 92,
                  ),
                  Text("5"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 88,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 10,
                    width: 46,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 109,
                  ),
                  Text("4"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 105,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    height: 10,
                    width: 26,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 128,
                  ),
                  Text("2"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 119,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    height: 10,
                    width: 11,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 142,
                  ),
                  Text("0"),
                ],
              ),
              Row(children: <Widget>[
                Text(
                  "8 reviews                    ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Transform.scale(
                  scale: 1.1,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      toggleCheckbox(value);
                    },
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Photo()),
                    );
                  },
                  child:Text(
                  "With photo",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),),
              ])
            ]),
            Stack(
              children: <Widget>[
                Container(height: 340, width: 400),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    height: 300,
                    width: 400,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "      Helene Moore",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.black,
                              size: 15,
                            ),
                            SizedBox(width: 120),
                            Text(
                              "\nJune 5, 2019",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "      The dress is great! Very classy and \n      comfortable. It fit perfectly! .I'm 5'7 \n      and 130 pounds . I am a 348 chest. \n      This  dress  would  be too  long for \n      those who are shorter but could be \n      hemmed. I wouldn't recommended \n      it  for  those  big  chested  as  I am \n      smaller   chested  and   it   fit   me \n      perfectly.The underarms were not \n      too  wide and the  dress was made \n      well.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                        Row(children: <Widget>[ SizedBox(width: 224,),Text("Helpful  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                        Icon(Icons.thumb_up,color: Colors.grey,size: 19,)],)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  child: CircleAvatar(
                    backgroundImage: ExactAssetImage("assets/dp.jpg"),
                    maxRadius: 20,
                    minRadius: 20,
                  ),
                )
              ],
            ),

            Stack(
              children: <Widget>[
                Container(height: 340, width: 400),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    height: 300,
                    width: 400,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "      Yeleme yoore",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.black,
                              size: 15,
                            ),
                            SizedBox(width: 120),
                            Text(
                              "\nJune 9, 2019",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "      The dress is great! Very classy and \n      comfortable. It fit perfectly! .I'm 5'7 \n      and 130 pounds . I am a 348 chest. \n      This  dress  would  be too  long for \n      those who are shorter but could be \n      hemmed. I wouldn't recommended \n      it  for  those  big  chested  as  I am \n      smaller   chested  and   it   fit   me \n      perfectly.The underarms were not \n      too  wide and the  dress was made \n      well.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                        Row(children: <Widget>[ SizedBox(width: 224,),Text("Helpful  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                          Icon(Icons.thumb_up,color: Colors.grey,size: 19,)],)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  child: CircleAvatar(
                    backgroundImage: ExactAssetImage("assets/pic2.jpg"),
                    maxRadius: 20,
                    minRadius: 20,
                  ),
                )
              ],
            ),

            Stack(
              children: <Widget>[
                Container(height: 340, width: 400),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    height: 300,
                    width: 400,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "      Malyne Looye",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 22,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.black,
                              size: 15,
                            ),
                            SizedBox(width: 120),
                            Text(
                              "\nJuly 9, 2019",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "      The dress is great! Very classy and \n      comfortable. It fit perfectly! .I'm 5'7 \n      and 130 pounds . I am a 348 chest. \n      This  dress  would  be too  long for \n      those who are shorter but could be \n      hemmed. I wouldn't recommended \n      it  for  those  big  chested  as  I am \n      smaller   chested  and   it   fit   me \n      perfectly.The underarms were not \n      too  wide and the  dress was made \n      well.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                        Row(children: <Widget>[ SizedBox(width: 224,),Text("Helpful  ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                          Icon(Icons.thumb_up,color: Colors.grey,size: 19,)],)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  child: CircleAvatar(
                    backgroundImage: ExactAssetImage("assets/pic.jpg"),
                    maxRadius: 20,
                    minRadius: 20,
                  ),
                )
              ],
            ),

           ])
    );
  }
}

