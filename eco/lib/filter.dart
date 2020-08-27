import 'package:eco/check.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'c.dart';
class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pro()),
              );
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)
        ),

      ),
      body: Column(
            children: <Widget>[
              Row(children: <Widget>[Text("Price range",style: TextStyle(fontWeight: FontWeight.bold),)],),
Container(color: Colors.grey, height: 50, width: 400, child: Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
  children: <Widget>[Text("\n\n\$78",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
Text("\n\n\$143",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],),),
              Container( color: Colors.grey, height: 48, width: 400,
                child:Divider( thickness: 3, color: Colors.black )),
              Row(children: <Widget>[Text("Colors",style: TextStyle(fontWeight: FontWeight.bold),)],),
              Container(color: Colors.grey, height: 100, width: 400,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[Container(height: 60,
                  width: 32,
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),),
                  Container(height: 60,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent, shape: BoxShape.circle),),
                  Container(height: 60,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),),
                  Container(height: 60,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent, shape: BoxShape.circle),),
                  Container(height: 60,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent, shape: BoxShape.circle),),
                  Container(height: 60,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple, shape: BoxShape.circle),),],
              )
              ),
              Row(children: <Widget>[Text("Sizes",style: TextStyle(fontWeight: FontWeight.bold),)],),
              Container(color: Colors.grey, height: 100, width: 400,
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[ Container(
                        height: 50,
                        width: 65,
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text('XS',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                            onPressed: () {


                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Filter()),
                              );
                            }

                        )),
                      Container(
                          height: 50,
                          width: 65,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.red,
                              child: Text('S',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                              onPressed: () {


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Filter()),
                                );
                              }

                          )),

                      Container(
                          height: 50,
                          width: 65,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              textColor: Colors.white,
                              color: Colors.red,
                              child: Text('M',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                              onPressed: () {


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Filter()),
                                );
                              }

                          )),
                      Container(
                          height: 50,
                          width: 65,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              textColor: Colors.black,
                              color: Colors.white,
                              child: Text('L',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                              onPressed: () {


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Filter()),
                                );
                              }

                          )),
                      Container(
                          height: 50,
                          width: 65,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              textColor: Colors.black,
                              color: Colors.white,
                              child: Text('XL',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                              onPressed: () {


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Filter()),
                                );
                              }

                          )),

]
              )
    ),
              Row(children: <Widget>[Text("Category",style: TextStyle(fontWeight: FontWeight.bold),)],),
                          Container(color: Colors.grey, height: 55, width: 400,
    child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[ Container(
    height: 50,
    width: 95,
    padding: EdgeInsets.all(10),
    child: RaisedButton(
    textColor: Colors.white,
    color: Colors.red,
    child: Text('All',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
    onPressed: () {


    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Filter()),
    );
    }

    )),
    Container(
    height: 50,
    width: 95,
    padding: EdgeInsets.all(10),
    child: RaisedButton(
    textColor: Colors.black,
    color: Colors.white,
    child: Text('Women',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
    onPressed: () {


    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Filter()),
    );
    }

    )),

    Container(
    height: 50,
    width: 95,
    padding: EdgeInsets.all(10),
    child: RaisedButton(
    textColor: Colors.black,
    color: Colors.white,
    child: Text('Men',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
    onPressed: () {


    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Filter()),
    );
    }

    )),



    ]
    ),


    ),
              Container(color: Colors.grey, height: 55, width: 400,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[ Container(
                        height: 50,
                        width: 95,
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                            textColor: Colors.black,
                            color: Colors.white,
                            child: Text('Boys',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                            onPressed: () {


                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Filter()),
                              );
                            }

                        )),
                      Container(
                          height: 50,
                          width: 95,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              textColor: Colors.black,
                              color: Colors.white,
                              child: Text('Girls',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                              onPressed: () {


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Filter()),
                                );
                              }

                          )),

                      Container(
                          height: 50,
                          width: 95,
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                              textColor: Colors.black,
                              color: Colors.white,
                              child: Text('Kids',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                              onPressed: () {


                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Filter()),
                                );
                              }

                          )),



                    ]
                ),


              ),
              Row(children: <Widget>[Text("Brand",style: TextStyle(fontWeight: FontWeight.bold),)],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text("adidas Originals, Jack & Jones, s.Oliver",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => C()),
                        );
                      },
                      child:   Icon(Icons.arrow_forward_ios)),],),
              Container( child:  Container(color: Colors.grey, height: 130, width: 400,
    child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      SizedBox(
        width: 150,
        height: 30,
        child:
        RaisedButton(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            textColor: Colors.black,
            color: Colors.white,

            child: Text('Discard',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
            onPressed: () {


              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Filter()),
              );
            }

        ),
      ),
    SizedBox(
      width: 150,
      height: 30,
      child:
    RaisedButton(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
    textColor: Colors.white,
    color: Colors.red,

    child: Text('Apply',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
    onPressed: () {


    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Filter()),
    );
    }

    ),
    )
              ]
    )

              ),
    )
    ]
    )
    );
  }
}
