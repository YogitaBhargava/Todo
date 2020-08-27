import 'package:eco/filter.dart';
import 'package:eco/main.dart';
import 'package:eco/pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
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
              backgroundColor: Colors.grey,
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
  CheckboxWidgetClass createState() => new CheckboxWidgetClass();
}

class CheckboxWidgetClass extends State<CheckboxWidget> {
  bool isChecked = false;

  void toggleCheckbox(bool value) {
   setState(() {
     isChecked =!isChecked;
   });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
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
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "adidas",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "adidas Originals",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Blend",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Boutique Moschino",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Champion",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Diesel",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                  tristate: false,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Jack & Jones",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Naf Naf",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Red Valentino",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "s.Oliver",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 1.1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    toggleCheckbox(value);
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
              ),
            ]),
        Container(
            color: Colors.grey,
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
      ]),
    );
  }
}
