import 'package:eco/checkout.dart';
import 'package:eco/login.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:eco/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  void _showModalSheet(



      ) {

    showModalBottomSheet(context: context, shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

    ), backgroundColor: Colors.grey,  builder: (builder) {

      return Container(
          padding: EdgeInsets.only(right: 19.0, left: 19.0),

          height: 550,
          child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Row( children: <Widget>[Text("                Password Change", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],),
                SizedBox(height: 15,),
                Container(
                  height: 54,
                  color: Colors.white,

                  child: TextField(
                    obscureText: true,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),


                      labelText: 'Old Password',
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[Text("Forgot Password?")],),
                SizedBox(height: 12,),
                Container(
                  height: 54,
                  color: Colors.white,

                  child: TextField(
                    obscureText: true,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),


                      labelText: 'New Password',
                    ),
                  ),
                ),
                SizedBox(height: 38,),
                Container(
                  height: 54,
                  color: Colors.white,

                  child: TextField(
                    obscureText: true,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),


                      labelText: 'Repeat New Password',
                    ),
                  ),
                ),
                SizedBox(height: 12,),

                Divider(color: Colors.transparent,),

SizedBox(
  width: 300,
      child:
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("SAVE PASSWORD"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }),
)






              ])

      );


    });
  }
  bool isSwitched = false;
  bool isS = false;
  bool isSw = false;

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white70,

        appBar: AppBar(


          backgroundColor: Colors.white70,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black,)
          ),
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                },
                child: Icon(Icons.search, color: Colors.black,)
            )
          ],
        ),
        body: ListView(

            padding: EdgeInsets.only(right: 19.0, left: 19.0),
            children: <Widget>[
              SizedBox(height: 30,),
              Row(children: <Widget>[Text("Settings",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            ]),
              Divider(
                color: Colors.transparent,
              ),
              Row(children: <Widget>[Text("Personal Information",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              ]),
              Divider(
                color: Colors.transparent,
              ),
              Container(
                height: 54,
                color: Colors.white,

                child: TextField(

                  decoration: InputDecoration(


                    border: OutlineInputBorder(),

                    labelText: 'Full name',
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Container(
                height: 54,
                color: Colors.white,

                child: TextField(

                  decoration: InputDecoration(


                    border: OutlineInputBorder(),

                    labelText: 'Date of Birth',
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[Text("Password", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: _showModalSheet,
                  child:
                  Text("Change",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueGrey),) ),],),
              Divider(color: Colors.transparent,),
              Container(
                height: 54,
                color: Colors.white,

                child: TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),


                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(children: <Widget>[
                Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],),
              Divider(color: Colors.transparent,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                Switch(
                  value: isS,
                  onChanged: (value){
                    setState(() {isS=value;
                    print(isS);

                    });
                  },
                  activeTrackColor: Colors.white,
                  activeColor: Colors.green,
                )
              ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("New arrivals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  Switch(
                    value: isSwitched,
                    onChanged: (value){
                      setState(() {isSwitched=value;
                      print(isSwitched);

                      });
                    },
                    activeTrackColor: Colors.white,
                    activeColor: Colors.green,
                  )
                ],),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Delivery status changes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                  Switch(
                    value: isSw,
                    onChanged: (value){
                      setState(() {isSw=value;
                      print(isS);

                      });
                    },
                    activeTrackColor: Colors.white,
                    activeColor: Colors.green,
                  )
                ],),
    ]
        )
    );
  }}
