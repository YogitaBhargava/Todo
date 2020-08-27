import 'package:eco/filter.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Brand extends StatefulWidget {
  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(

      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Brand",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            backgroundColor: Colors.grey,
            centerTitle: true,
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Filter()),
                  );
                },
                child: Icon(Icons.arrow_back_ios,color: Colors.black,)
            ),

          ),

          body: SafeArea(
              child : Center(

                child:Radiobutton(

                ),

              )
          )

      ),
    );
  }
}

class Radiobutton extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget(

  );
}

class RadioButtonWidget extends State {

  String radioItem = '';

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column( children:<Widget>[
        Container(
          height: 54,
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: TextField(

            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 24,
              ),
              border: OutlineInputBorder(),
              labelText: 'Search',
            ),
          ),
        ),


        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 adidas',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 1',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 adidas Originals',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 2',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 Blend',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 3',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 Boutique Moschino',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 4 ',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 Champion',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 5',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 Diesel',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 6',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                Jack & Jones',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 7',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 Naf Naf',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 8',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('                                 Red Valentino',style: TextStyle(fontWeight: FontWeight.bold),),

          value: 'Item 9',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        RadioListTile(

          groupValue: radioItem,
          title: Text('                                 s.oliver',style: TextStyle(fontWeight: FontWeight.bold),),
          value: 'Item 10',

          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),


        Container( child:  Container(color: Colors.grey, height: 100, width: 400,
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
                                builder: (context) => Brand()),
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

      ],
      ),


    );

  }
}
