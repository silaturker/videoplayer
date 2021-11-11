import 'package:flutter/material.dart';
import 'package:videoplayer/Leonardo_video.dart';




class leo extends StatefulWidget {
  const leo({Key? key}) : super(key: key);

  @override
  _leoState createState() => _leoState();

}

class _leoState extends State<leo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container
        (child:  Text("Leonardo da Vinci[b] (15 April 1452 – 2 May 1519) was an Italian polymath of the High Renaissance who was active as a painter, draughtsman, engineer, scientist, theorist, sculptor and architect.[3] While his fame initially rested on his achievements as a painter, he also became known for his notebooks, in which he made drawings and notes on a variety of subjects, including anatomy, astronomy, botany, cartography, painting, and paleontology. Leonardo's genius epitomized the Renaissance humanist ideal,[4] and his collective works compose a contribution to later generations of artists matched only by that of his younger contemporary, Michelangelo.[3][4]", style: TextStyle(color:Colors.black54, fontSize: 30),)),

    );
  }
}
