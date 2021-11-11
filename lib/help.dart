import 'package:flutter/material.dart';
import 'package:videoplayer/main.dart';
import 'package:videoplayer/leonardo_video.dart';


class help extends StatefulWidget {

  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ],
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                ElevatedButton(
                  child: Text("leo"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));

                  },
                ),


              ],
            ),
          )
      ),

    );
  }
}
