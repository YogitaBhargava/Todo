
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
  MyApp(),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
   with SingleTickerProviderStateMixin {
  TabController _tabController;

@override
  void initState() {
  super.initState();
   _tabController = TabController(length: 6, vsync: this);
   }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        centerTitle: true,
//        leading: GestureDetector(
//          onTap: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => MyApp()),
//            );
//          },
//          child: Text(
//            "\nMENU",
//            style: TextStyle(
//                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
//          ),
//        ),
//        actions: <Widget>[
//          GestureDetector(
//            onTap: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => MyApp()),
//              );
//            },
//            child: Image.asset(
//              "assets/cart.jpg",
//              height: 42,
//              width: 43,
//            ),
//          ),
//        ],
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        backgroundColor: Colors.red,
//        items: [
////
//          BottomNavigationBarItem(
//            icon: GestureDetector(
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => MyApp()),
//                );
//              },
//              child: Text(
//                "\nMENU",
//                style: TextStyle(
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                    fontSize: 19),
//              ),
//            ),
//            title: Text("j"),
//          ),
//
//          BottomNavigationBarItem(
//            icon: GestureDetector(
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => MyApp()),
//                );
//              },
//              child: Image.asset(
//                "assets/dil.jpg",
//                height: 30,
//                width: 30,
//              ),
//            ),
//            title: Text("j"),
//          ),
//          BottomNavigationBarItem(
//            icon: GestureDetector(
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => MyApp()),
//                );
//              },
//              child: Image.asset(
//                "assets/list.jpg",
//                height: 30,
//                width: 30,
//              ),
//            ),
//            title: Text("j"),
//          ),
//          BottomNavigationBarItem(
//            icon: GestureDetector(
//              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => Pear()),
//                );
//              },
//              child: Image.asset(
//                "assets/user2.jpg",
//                height: 30,
//                width: 30,
//              ),
//            ),
//            title: Text("j"),
//          )
//        ],
//      ),
//      body: SingleChildScrollView(
//          child: Column(children: <Widget>[
//        Container(
//          height: 54,
//          color: Colors.white,
//          padding: EdgeInsets.all(10),
//          child: TextField(
//            decoration: InputDecoration(
//              prefixIcon: Icon(
//                Icons.search,
//                size: 34,
//              ),
//              labelText: 'Search',
//            ),
//          ),
//        ),
//        TabBar(
//          controller: _tabController,
//          indicatorColor: Colors.transparent,
//          labelColor: Colors.red,
//          isScrollable: true,
//          labelPadding: EdgeInsets.only(right: 45.0),
//          unselectedLabelColor: Colors.green,
//          tabs: <Widget>[
//            Tab(
//              child: Text("All"),
//            ),
//            Tab(
//              child: Text("Breakfast"),
//            ),
//            Tab(
//              child: Text("Lunch"),
//            ),
//            Tab(
//              child: Text("Treats"),
//            ),
//            Tab(
//              child: Text("Dessert"),
//            ),
//            Tab(
//              child: Text("Drink"),
//            ),
//          ],
//        ),
//      ])),
//    );
    return  Scaffold(


        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300.0),
          child: AppBar(
            backgroundColor: Colors.pinkAccent,
        title: Padding(padding: EdgeInsets.only(top: 1.0), ),
          actions: <Widget>[
Flex(  children: <Widget>[

            Container(color: Colors.green , child:

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Text("   Samantha Smith",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,),),

               Row(children: <Widget>[ Text(" \n \n \n @imsamanthasmith",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),]),

              ],), ),
            SizedBox(height: 30,),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "1.2m",
                    style: TextStyle(
                        color: Colors.white,

                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[

                      TextSpan(
                          text: '\n  Liked',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,

                          )),
                    ],
                  ),
                ),

                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: " 12.8k",
                    style: TextStyle(
                        color: Colors.white,

                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[

                      TextSpan(
                          text: '\nFollowers',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,

                          )),
                    ],
                  ),
                ), RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: " 1.9k",
                    style: TextStyle(
                        color: Colors.white,

                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[

                      TextSpan(
                          text: '\nFollowing',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,

                          )),
                    ],
                  ),
                ),
              ],),]
          ),
])
        ),
    backgroundColor: Colors.grey,




        body:ListView(children: <Widget>[TabBar(
          controller: _tabController,
         indicatorColor: Colors.transparent,
         labelColor: Colors.red,
         isScrollable: true,
         labelPadding: EdgeInsets.only(right: 45.0),
        unselectedLabelColor: Colors.green,
         tabs: <Widget>[
           Tab(
              child: Text("All"),
            ),
            Tab(
              child: Text("Breakfast"),),
            Tab(
              child: Text("Lunch"),
           ),
            Tab(
              child: Text("Treats"),
           ),
           Tab(
              child:  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>MyApp()),
                    );
                  },
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,)
              ),
            ),
           Tab(
              child: Text("Drink"),
          ),
          ],
      ),
        Stack(children: <Widget>[

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black26,
            child: Container(

            ),
          ),

          Positioned(
              top: 166,
              child: Container(
                  height: MediaQuery.of(context).size.height - 1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(34),topRight: Radius.circular(34)),
                  ),
                  child:Column(children: <Widget>[


                    TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.red,
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(right: 45.0),
                      unselectedLabelColor: Colors.green,
                      tabs: <Widget>[
                        Tab(
                          child: Text("All"),
                        ),
                        Tab(
                          child: Text("Breakfast"),),
                        Tab(
                          child: Text("Lunch"),
                        ),
                        Tab(
                          child: Text("Treats"),
                        ),
                        Tab(
                          child:  GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>MyApp()),
                                );
                              },
                              child: Icon(Icons.arrow_back_ios,color: Colors.black,)
                          ),
                        ),
                        Tab(
                          child: Text("Drink"),
                        ),
                      ],
                    ),
                    Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[
                      Icon(Icons.dashboard,color: Colors.white,), Icon(Icons.favorite_border,color: Colors.white,),Icon(Icons.save_alt,color: Colors.white,)


                    ],),

                    Container(

                      padding: EdgeInsets.only(right: 1.0, left: 1.0),
                      width: MediaQuery.of(context).size.width - 30.0,
                      height: MediaQuery.of(context).size.height - 50.0,
                      child: GridView.count(
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
                                    MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                      MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                      MaterialPageRoute(builder: (context) =>MyHomePage ()),
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
                                    MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                      MaterialPageRoute(builder: (context) =>MyHomePage ()),
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
                                      MaterialPageRoute(builder: (context) =>MyHomePage ()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                      MaterialPageRoute(builder: (context) =>MyHomePage ()),
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
                                    MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
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
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                      );
                                    },
                                    child:  Image.asset("assets/egg2.jpg",fit: BoxFit.cover,height: 124)),

                              ],
                            ),
                          ),


                        ],
                      ),
                    )]) ))
        ])
   ]) );


  }
}
