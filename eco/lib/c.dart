import 'package:flutter/material.dart';

import 'check.dart';
import 'filter.dart';



class C extends StatefulWidget {
  @override
  _CState createState() => _CState();
}

class _CState extends State<C> {
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
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              backgroundColor: Colors.white70,
              centerTitle: true,
              leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Filter()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ),
            body: SafeArea(
              child: Center(child: CheckboxWidget()),
            )));
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {

  Map<String, bool> numbers = {
    'adidas' : false,
    'adidas Originals' : false,
    'Blend' : false,
    'Boutique Moschino' : false,
    'Champion' : false,
    'Disel' : false,
    'Jack & Jones' : false,
    'Naf Naf' : false,
    'Red Valentino' : false,
    's.Oliver' : false,

  };

  var holder_1 = [];

  getItems(){

    numbers.forEach((key, value) {
      if(value == true)
      {
        holder_1.add(key);
      }
    });

// Printing all selected items on Terminal screen.
    print(holder_1);
// Here you will get all your selected Checkbox items.

// Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (
        children: <Widget>[

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

      Expanded(
        child :
        ListView(
          children: numbers.keys.map((String key) {
            return new CheckboxListTile(

              title: new Text(key),
              value: numbers[key],
              activeColor: Colors.red,
              checkColor: Colors.white,
              onChanged: (bool value) {
                setState(() {
                  numbers[key] = value;
                });
              },
            );
          }).toList(),
        ),
      ), Container(
              color: Colors.white70,
          height: 100,
          width: 400,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 30,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('Discard',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Check()),
                        );
                      }),
                ),
                SizedBox(
                  width: 150,
                  height: 30,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Apply',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Filter()),
                        );
                      }),
                )
              ])),
    ]);

  }
}