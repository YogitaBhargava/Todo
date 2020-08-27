import 'dart:convert';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: MyHomePage( ),
    );
  }
}

class MyHomePage  extends StatefulWidget
{
  @override
  _MyHomePageState createState() => _MyHomePageState ();
}

class _MyHomePageState extends State<MyHomePage> {

 Future<List<User>> _getUsers() async {
  var data = await http.get( "https://restcountries.eu/rest/v2/all");
  var jsonData = json.decode(data.body);
  List<User> users = [];
  for(var u in jsonData){
    User user = User(u["populaation"], u["populaation"],u["populaation"],u["populaation"],u["populaation"],u["populaation"],u["populaation"],);
    users.add(user);
  }
  print(user.length);
  return users;
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        child:FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context , AsyncSnapshot snapshot){
            return ListView.builder {
              itemCount: snapshot.data.length ,
            itemBuilder:(BuildContext context , int index){
                return ListTile(
                title: Text(snapshot.data[index].name,)
                );
            };
            };
          }
        )

      )



    );

  }
}
class User {
  String name;
  String capital;
  String region;
  String subregion;
  String demonym;

  String nativeName;
  String numericCode;
 int population;

  User(
      { this.name, this.capital, this.region, this.subregion, this.demonym, this.nativeName, this.numericCode,this.population});

  User.fromJson(Map<String, dynamic> json){
    name = json["name"];
    capital = json["capital"];
    region = json["region"];
    subregion = json["subregion"];
    demonym = json["demonym"];
    numericCode = json["numericCode"];
    population = json["population"];
  }
}