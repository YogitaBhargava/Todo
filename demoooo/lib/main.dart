

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
         appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.0),
      child: AppBar(

          backgroundColor: Colors.pinkAccent,
          title: Padding(padding: EdgeInsets.only(top: 15.0), ),
leading:Container( height: 198, width: 123, color: Colors.green,  alignment: Alignment.center,
  child: CircleAvatar(
    backgroundImage: ExactAssetImage("assets/profile.jpg"),
    maxRadius: 70,
    minRadius: 60,
  ),
),
          actions: <Widget>[Row(
              mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[Text("liby")]
      ),


          ])),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),

          slivers: <Widget>[


            SliverToBoxAdapter(
              child: TabBar(
                tabs: [
                  Tab(child:Icon(Icons.dashboard,color: Colors.black,size: 32,) ),
                 Tab(child: Icon(Icons.favorite_border,color: Colors.black, size: 32,),),
                  Tab(child: Icon(Icons.save_alt,color: Colors.black, size: 32,),),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Container(

                    padding: EdgeInsets.only(right: 1.0, left: 1.0),
                    width: MediaQuery.of(context).size.width - 30.0,
                    height: MediaQuery.of(context).size.height - 50.0,
                    child: GridView.count(
                      physics:const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      primary: false,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 0.8,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child:
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp()),
                                );
                              },
                              child:  Image.asset("assets/pizza.jpg",fit: BoxFit.cover,height: 134,)),

                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyApp()),
                                  );
                                },
                                child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 130),  ),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 124),)

                            ],
                          ),
                        ), Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child:
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp()),
                                );
                              },
                              child:  Image.asset("assets/pizza.jpg",fit: BoxFit.cover,height: 134,)),

                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 124),)

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/pizza.jpg",fit: BoxFit.cover,height: 124),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/coo.jpg",fit: BoxFit.cover,height: 124),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/coo.jpg",fit: BoxFit.cover,height: 124),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/thali.jpg",fit: BoxFit.cover,height: 124),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/coo.jpg",fit: BoxFit.cover,height: 124),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 124),)

                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>MyApp ()),
                                  );
                                },
                                child: Image.asset("assets/pot.jpg",fit: BoxFit.cover,height: 124),)

                            ],
                          ),
                        ), Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child:
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp()),
                                );
                              },
                              child:  Image.asset("assets/pizza.jpg",fit: BoxFit.cover,height: 134,)),

                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),
                       Container(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                  child: Image.asset("assets/mag.jpg",fit: BoxFit.cover,height: 124)),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text('Yogita')),
                      ListTile(title: Text('Yogita')),
                      ListTile(title: Text('Yogita')),
                      ListTile(title: Text('Yogita')),

                    ],
                  ),
                  ListView(
                    children: <Widget>[
                      ListTile(title: Text('Yogita')),
                      ListTile(title: Text('Yogita')),
                      ListTile(title: Text('Yogita')),
                      ListTile(title: Text('Yogita')),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
