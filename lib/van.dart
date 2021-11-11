import 'package:flutter/material.dart';



class van extends StatefulWidget {
  const van({Key? key}) : super(key: key);

  @override
  _vanState createState() => _vanState();

}

class _vanState extends State<van> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Vincent Willem van Gogh (Dutch: [ˈvɪnsənt ˈʋɪləm vɑŋ ˈɣɔx] (About this soundlisten);[note 1] 30 March 1853 – 29 July 1890) was a Dutch Post-Impressionist painter who posthumously became one of the most famous and influential figures in Western art history. In a decade, he created about 2,100 artworks, including around 860 oil paintings, most of which date from the last two years of his life. They include landscapes, still lifes, portraits and self-portraits, and are characterised by bold colours and dramatic, impulsive and expressive brushwork that contributed to the foundations of modern art. Not commercially successful, he struggled with severe depression and poverty, eventually leading to his suicide at age thirty-seven.", style: TextStyle(color:Colors.black54, fontSize: 30),),

    );
  }
}
