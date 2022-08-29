import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "checkbox and list",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 100, vertical: 300),
          color: Colors.black12,
          child: Text(
            "choose your color",
            style: TextStyle(
                fontFamily: 'DancingScript', fontSize: 30, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 200,
          
            color: Colors.black12,
            
           child: Column(children: [ CheckboxListTile(
              secondary: CircleAvatar(backgroundColor: Colors.pink,
                child: Text("pink", style: TextStyle(fontFamily: 'DancingScript', color: Colors.black),),),
                title: Text("Shapes of Pink", style: TextStyle(fontFamily: 'DancingScript', color: Colors.black,fontSize: 20)),
                subtitle: Text("view them down below", style: TextStyle(fontFamily: 'DancingScript', color: Colors.black,)),
                activeColor: Colors.pink,
                checkColor: Colors.black,
                isThreeLine: true,
              value: check1,
              onChanged: (val) {
                setState(() {
                  check1 = val!;
                });
                
              },
              
            ),
             CheckboxListTile(
              secondary: CircleAvatar(backgroundColor: Colors.black,
                child: Text("Black", style: TextStyle(fontFamily: 'DancingScript', color: Colors.pink),),),
                title: Text("Shapes of Black", style: TextStyle(fontFamily: 'DancingScript', color: Colors.pink,fontSize: 20)),
                subtitle: Text("view them here", style: TextStyle(fontFamily: 'DancingScript', color: Colors.pink,)),
                activeColor: Colors.black,
                checkColor: Colors.pink,
                isThreeLine: true,
              value: check2,
              onChanged: (val) {
                setState(() {
                  check2 = val!;
                });
                
              },
              
            ),
            
            
            ],),
            
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black26,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black38,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black45,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.black54,
          ),
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 239, 16, 90),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 231, 46, 108),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 236, 74, 128),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 229, 117, 154),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
