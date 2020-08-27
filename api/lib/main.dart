import 'dart:convert';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'detail.dart';
import 'entities/notes.dart';
void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage  extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState ();
}

class _HomePageState extends State<HomePage> {
  List <Note> _notes = List<Note>();




  _launchURL() async {
    const url = 'https://www.google.com/url?sa=t&source=web&rct=j&url=https://www.google.co.in/maps/%4037.0625,-95.677068,2z&ved=2ahUKEwiBsZCBuePqAhUVfX0KHchOAhIQjBAwAXoECAcQCg&usg=AOvVaw3umma-O1sdSWKDgNQSdeHK';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<List<Note>> fetchNotes() async {
    var url = "https://restcountries.eu/rest/v2/all";
    var response = await http.get(url);
    var notes = List<Note>();
    if (response.statusCode == 200)
      {
        var notesJson = json.decode(response.body);
        for ( var noteJson in notesJson) {
          notes.add(Note.fromJson(noteJson));
        }
      }
    return notes;

  }
  @override
  void initState(){
    fetchNotes().then((value) {
      setState(() {
        _notes.addAll(value);
      });


    });
    super.initState();
  }
  @override

  Widget build(BuildContext context) {







    return Scaffold(

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(1.0),child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container( height:100, width: 100,child: SvgPicture.network(_notes[index].flag)),

                Text(   _notes[index].name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.red),),
Row(children: <Widget>[Text("Capital :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
  Text(_notes[index].capital ), ]),

                Row(children: <Widget>[Text("Region :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(_notes[index].region ), ]),


                Row(children: <Widget>[Text("Sub-Region :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(_notes[index].subregion ), ]),

                Row(children: <Widget>[Text("Demonym :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(_notes[index].demonym ), ]),

                Row(children: <Widget>[Text("Numeric-Code:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(_notes[index].numericCode ), ]),
                Row(children: <Widget>[Text("Population:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(_notes[index].population.toString() ), ]),
                Row(children: <Widget>[Text("Top Level Domain:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(_notes[index].topLevelDomain) ]),

Column(children: <Widget>[

  GestureDetector(

    child: Icon(Icons.location_on,size: 32,),
    onTap: (){
      _launchURL( );

    },
  )
],)


              ],
            ) ,),
          );

        },
        itemCount: _notes.length,
      ),
    );

  }

  
}

