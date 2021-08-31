import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _likethis = false;
  int _indexSelection = 0;
  Color appBarColor = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Bonjour"),
        centerTitle: true,
        leading: IconButton(
          icon: (_likethis == true) ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: (){
            //Todo écrire le code
            like();
          },
        ),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            appBarColor = Colors.green;
          });
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add, size: 50,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assessment),label: "Stat"),
          BottomNavigationBarItem(icon: Icon(Icons.help),label: "Aide"),
        ],
        onTap: (int index){
            setState(() {
              _indexSelection = index;
            });
        },
        currentIndex: _indexSelection,
        selectedItemColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround ,
          children: [
            Text("Quel langage préférez vous ?"),
            Container(
              color: Colors.red,
              height: size.height/10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: size.height/15,width: size.height/15, color: Colors.yellow,),
                  Container(height: size.height/15,width: size.height/15, color: Colors.blue,),
                  Container(height: size.height/15,width: size.height/15, color: Colors.lightBlue,),
                  Container(height: size.height/15,width: size.height/15, color: Colors.green,),
                ],
              ),
            ),
            Container(color: Colors.yellow,height: size.height/10,),
            Container(color: Colors.green,height: size.height/10,),
          ],
        ),
      )
    );
  }

  void like() {
    setState(() {
      _likethis = !_likethis;
      print(_likethis);
    });
  }

}
