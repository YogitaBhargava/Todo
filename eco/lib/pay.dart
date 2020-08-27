import 'package:eco/checkout.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {

  get onPressed => null;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            "Payment methods",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black,)
          ),

        ),
        body: ListView(

        padding: EdgeInsets.only(right: 19.0, left: 19.0),
    children: <Widget>[
      Divider(color: Colors.transparent,),
      Row(
        children: <Widget>[Text("Your payment cards",style: TextStyle(fontWeight: FontWeight.bold),)],
      ),
      Divider(color: Colors.transparent,),
      Row(
        children: <Widget>[
          Image.asset("assets/atm.jpg",fit: BoxFit.cover, width: 300, height: 200,)
        ],
      ),

    SafeArea( child: Center(

    child: CheckboxWidget()),)
    ]
    )
    );}}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetClass createState() => new CheckboxWidgetClass();
}

class CheckboxWidgetClass extends State {

  bool isCheck = false;


  var resultHol = 'Checkbox is UN-CHECKED';

  void toggleCheck(bool value) {
    if (isCheck == false) {
// Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isCheck = true;

      });
    }
    else {
// Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isCheck = false;

      });
    }
  }
  void _showModalSheet(



  ) {

    showModalBottomSheet(context: context, shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),

    ), backgroundColor: Colors.grey,  builder: (builder) {

      return StatefulBuilder(builder:(context, setState) {  return Container(

          padding: EdgeInsets.only(right: 19.0, left: 19.0),

        height: 550,
          child: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Row( children: <Widget>[Text("                     Add new card", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],),
          SizedBox(height: 15,),
          Container(
            height: 50,
            color: Colors.white,

            child: TextField(

              decoration: InputDecoration(

                border: OutlineInputBorder(),
                labelText: 'Name on card',
              ),
            ),
          ),
          SizedBox(height: 12,),
          Container(
            height: 50,
            color: Colors.white,

            child: TextField(


              decoration: InputDecoration(
                suffixIcon: Image.asset("assets/master.jpg",height: 40,),

                border: OutlineInputBorder(),
                labelText: 'Card number',
              ),
            ),
          ),
          SizedBox(height: 12,),
          Container(
            height: 50,
            color: Colors.white,

            child: TextField(

              decoration: InputDecoration(

                border: OutlineInputBorder(),
                labelText: 'Expire Date',
              ),
            ),
          ),
          SizedBox(height: 12,),
          Container(
            height: 50,
            color: Colors.white,

            child: TextField(

              decoration: InputDecoration(
                suffixIcon: Icon(Icons.help_outline),

                border: OutlineInputBorder(),
                labelText: 'CVV',
              ),
            ),
          ),
          Divider(color: Colors.transparent,),
          Row( children: <Widget>[

            Transform.scale(
              scale: 1.1,
              child: Checkbox(



                value: isCheck,
                onChanged: (value) {
                  toggleCheck(value);

                },
                activeColor: Colors.red,
                checkColor: Colors.white,

              ),

            ),
            Text("Set as default payment method",style: TextStyle(fontWeight: FontWeight.bold),),]),
SizedBox(
  width: 370,
  height: 40,
  child:
          RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              textColor: Colors.white,
              color: Colors.red,
              child: Text("ADD CARD"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout()),
                );
              }),

),





])

      ); });


    });
  }




  bool isCh = false;


  var resultHold = 'Checkbox is UN-CHECKED';

  void toggleCh(bool value) {
    if (isCh == false) {
// Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isCh = true;

      });
    }
    else {
// Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isCh = false;

      });
    }
  }
  bool isC = false;


  var resultH = 'Checkbox is UN-CHECKED';

  void toggleC(bool value) {
    if (isC == false) {
// Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isC = true;

      });
    }
    else {
// Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isC = false;

      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(


        child: Column ( children: <Widget>[
          Row( children: <Widget>[

            Transform.scale(
              scale: 1.1,
              child: Checkbox(



                value: isC,
                onChanged: (value) {
                  toggleC(value);
                },
                activeColor: Colors.black,
                checkColor: Colors.white,

              ),

            ),
          Text("Use as default payment method",style: TextStyle(fontWeight: FontWeight.bold),),]),
          Divider(color: Colors.transparent,),

          Row(
            children: <Widget>[
              Image.asset("assets/visa.jpg",fit: BoxFit.cover, width: 300, height: 200,)
            ],
          ),
          Row( children: <Widget>[

            Transform.scale(
              scale: 1.1,
              child: Checkbox(



                value: isCh,
                onChanged: (value) {
                  toggleCh(value);
                },
                activeColor: Colors.black,
                checkColor: Colors.white,

              ),

            ),
            Text("Use as default payment method",style: TextStyle(fontWeight: FontWeight.bold),),]),
          Row(children: <Widget>[
    Container(
    width: 305,
    height: 42,
    child: Row( mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[

    Container(
    height: 50,
    width: 42,
    decoration: BoxDecoration(
    color: Colors.black,
    shape: BoxShape.circle),
    child:GestureDetector(
        onTap: _showModalSheet,

        child:  Icon(
    Icons.add,
    color: Colors.white,
    )),),
          ],)




)
    ]
    )
    ]
    )
    );



  }
}


