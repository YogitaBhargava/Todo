import 'package:eco/checkout.dart';
import 'package:eco/main.dart';
import 'package:eco/pay.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:eco/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'brand.dart';
import 'cat.dart';

import 'dart:async';

import 'check.dart';
import 'filter.dart';
import 'grid.dart';



class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
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
                          MaterialPageRoute(builder: (context) => Photo()),
                        );
                      }),

                ),





              ])

      );


    });
  }
  bool isChecked = true;

  var resultHolder = 'Checkbox is UN-CHECKED';

  void toggleCheckbox(bool value) {
    if (isChecked == true) {
// Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
      });
    } else {
// Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = true;
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
          title: Text(
            "Rating and reviews",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
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

              SizedBox(
                height: 12,
              ),
              Column(children: <Widget>[

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
                  Text(
                    "With photo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ])
              ]),
              Stack(
                children: <Widget>[
                  Container(height: 370, width: 400),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      height: 330,
                      width: 400,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "      Kim Shine",
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
                                "\nAugust 13, 2019    ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "      I love this  dress so much  as soon \n     as I tried it on . I knew I had  to buy \n     it in  another  color. I  am  5'3 about \n     155lbs and I carry  all  my weight in \n     my  upper body. When  I put it  on I \n     felt like it thinned me put and I got \n     so many compliments. ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.only(right: 18.0, left: 18.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                  Image.asset("assets/fe.jpg"),



                                  Image.asset("assets/black.jpg",width: 100,),
                                Image.asset("assets/bla.jpg",width: 70,),
                                Image.asset("assets/fe.jpg",width: 140),












                              ],
                            ),
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
                  Container(height: 370, width: 400),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      height: 330,
                      width: 400,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "      Pom ynne",
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
                                "\nAugust 22, 2019 ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "      I love this  dress so much  as soon \n     as I tried it on . I knew I had  to buy \n     it in  another  color. I  am  5'3 about \n     155lbs and I carry  all  my weight in \n     my  upper body. When  I put it  on I \n     felt like it thinned me put and I got \n     so many compliments. ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.only(right: 18.0, left: 18.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Image.asset("assets/fe.jpg"),



                                Image.asset("assets/black.jpg",width: 155,),








                              ],
                            ),
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
              ), Stack(
                children: <Widget>[
                  Container(height: 370, width: 400),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      height: 330,
                      width: 400,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "      Toy rtine",
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
                                "\n     July 19, 2019",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "      I love this  dress so much  as soon \n     as I tried it on . I knew I had  to buy \n     it in  another  color. I  am  5'3 about \n     155lbs and I carry  all  my weight in \n     my  upper body. When  I put it  on I \n     felt like it thinned me put and I got \n     so many compliments. ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.only(right: 18.0, left: 18.0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Image.asset("assets/fe.jpg"),



                                Image.asset("assets/black.jpg",width: 155,),








                              ],
                            ),
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

