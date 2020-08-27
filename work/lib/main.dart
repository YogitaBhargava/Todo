import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';

Future<Product> fetchProduct() async {
  final response =
  await http.get("https://raw.githubusercontent.com/boriszv/json/master/random_example.json");

  if (response.statusCode == 200) {
// If the server did return a 200 OK response,
// then parse the JSON.
    return Product.fromJson(json.decode(response.body));
  } else {
// If the server did not return a 200 OK response,
// then throw an exception.
    throw Exception('Failed to load ');
  }
}

class Product {

  final String text;

  Product({this.text});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(

      text: json['text'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() =>
      _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Product>(
            future: futureProduct,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text("snapshot.hasData.text"
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

// By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}