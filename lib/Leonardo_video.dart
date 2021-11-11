import 'package:flutter/material.dart';
import 'package:videoplayer/help.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  static String videoID = 'uMvzFzKvAd4';



  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: videoID,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child:Container(
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
                YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.deepOrange,
                  showVideoProgressIndicator: true, //ilerleme çubuğu
                ),


                ElevatedButton(
                  child: Text("help"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>help()));

                  },
                ),


              ],
            ),
          )
      ),

    );
  }
}