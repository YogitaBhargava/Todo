import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE\n d MMM').format(now);
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(

          body: TabBarView(
            children: [

              Center(child: Text(formattedDate,textAlign: TextAlign.center,style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),

            ],
          ),
        ),
      ),
    );
  }
}



