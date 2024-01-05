import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int node){
    final player = AudioPlayer();
    player.play(AssetSource('note$node.wav'));
  }
  Expanded buildKey(int i, Color keyColor){
    return Expanded(
      child: ElevatedButton(
        onPressed: () => playSound(i),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(keyColor),
        ),
        child: const Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.pinkAccent),
                buildKey(2, Colors.redAccent),
                buildKey(3, Colors.orangeAccent),
                buildKey(4, Colors.limeAccent),
                buildKey(5, Colors.greenAccent),
                buildKey(6, Colors.tealAccent),
                buildKey(7, Colors.cyanAccent),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
