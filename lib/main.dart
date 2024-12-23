import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  //function that receives the note number & plays them
  void playSound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  // function that accepts note/sound number & background Color
  // returns Expanded-widget
  // you don't have to use curly brackets, but it makes calling function more readable
  Expanded buildKey({required int note, required Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color, // changing background color using received color value
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )),
        onPressed: () {
          // calling function that plays sound
          playSound(1);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // evenly spaces the buttons
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            //calling function to build widget
            // sending sound/note number & color value
            buildKey(note: 1, color: Colors.red),
            buildKey(note: 2, color: Colors.orange),
            buildKey(note: 3, color: Colors.yellow),
            buildKey(note: 4, color: Colors.green),
            buildKey(note: 5, color: Colors.blue),
            buildKey(note: 6, color: Colors.indigo),
            buildKey(note: 7, color: Colors.blueGrey),
          ],
        ),
      ),
    ));
  }
}
