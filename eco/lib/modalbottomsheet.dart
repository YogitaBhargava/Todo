
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home:ModalBottomSheetDemo()));
}

class ModalBottomSheetDemo extends StatefulWidget {
  @override
  _ModalBottomSheetDemoState createState() => _ModalBottomSheetDemoState();
}



class _ModalBottomSheetDemoState extends State<ModalBottomSheetDemo> {

  void _showModalSheet() {
    showModalBottomSheet(context: context, builder: (builder) {
      return Container( height: 280, decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      ), child: Column(
        children: <Widget>[
          Text("Sort by", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
          Text("\nPopular",style: TextStyle(fontSize: 19),),
          Text("\nNewest",textAlign: TextAlign.left,style: TextStyle(fontSize: 19),),
          Text("\n                Customer review",textAlign: TextAlign.left,style: TextStyle(fontSize: 19),),
          Text("\n                    Price: lowest to high",textAlign: TextAlign.left,style: TextStyle(fontSize: 19),),
          Text("\n                    Price: highest to low",textAlign: TextAlign.left,style: TextStyle(fontSize: 19),),
        ],


)

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Modal bottom sheet')
        ),
        body: Center(
            child: RaisedButton(
                onPressed: _showModalSheet,
                child: const Text('Show Modal Bottom Sheet')
            )
        )
    );
  }
}


