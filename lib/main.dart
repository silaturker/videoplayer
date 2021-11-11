import 'package:flutter/material.dart';
import 'package:videoplayer/leonardo_video.dart';
import 'package:videoplayer/help.dart';
import 'package:videoplayer/van.dart';
import 'package:videoplayer/leo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Painting Exhibition',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:  Anasayfa(),
    );
  }
}

  class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _MainState();
}

class _MainState extends State<Anasayfa> {
  var PaintingList = [van(), leo(), Video(), help()];
  int paintingIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Painting Exhibition"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>help()));
              },

              child: Icon(
                Icons.help,
                size: 26.0,
              ),
            ),
          ),

        ],



      ),
      body: PaintingList[paintingIndex],

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

              child: Text("Painting Exhibition",style: TextStyle(color:Colors.white,fontSize: 30),),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),

            ),
            ListTile(
              title: Text("Vincent van Gogh"),
              leading:  Icon(Icons.looks_one, color: Colors.deepOrange,),
              onTap: (){
                setState(() {
                  paintingIndex=0;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text("Leonardo da Vinci"),
              leading:  Icon(Icons.looks_two, color: Colors.deepOrange,),
              onTap: (){
                setState(() {
                  paintingIndex=1;
                });
                Navigator.pop(context);
              },
            ),



            ListTile(
              title: Text("Leonardo da Vinci / Video"),
              leading:  Icon(Icons.ondemand_video, color: Colors.deepOrange,),
              onTap: (){
                setState(() {
                  paintingIndex=2;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text("Help Page"),
              leading:  Icon(Icons.help, color: Colors.deepOrange,),
              onTap: (){
                setState(() {
                  paintingIndex=3;
                });
                Navigator.pop(context);
              },
            ),



          ],
        ),
      ),

    );
  }
}