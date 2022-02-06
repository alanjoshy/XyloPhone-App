// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sn) {
    final player = AudioCache();

    // call this method when desired
    player.play('note$sn.wav');
    print('clicked');
  }

  Expanded keyMaker({Color color, int soundNumber}){ 
      return Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: color,
                  onPressed: () {
                     playsound( soundNumber);
                  },
                  
                ),
              );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // ignore: deprecated_member_use
              keyMaker(color:Colors.red ,  soundNumber: 1),
              keyMaker(color:Colors.orange ,  soundNumber: 2),
              keyMaker(color:Colors.green ,  soundNumber: 3),
              keyMaker(color:Colors.green.shade50 ,  soundNumber: 4),
              keyMaker(color:Colors.lightBlue ,  soundNumber: 5),
              keyMaker(color:Colors.pinkAccent ,  soundNumber: 6),
              keyMaker(color:Colors.yellowAccent ,  soundNumber: 7),
              
              
              

          
              // ignore: deprecated_member_use
              
            ],
          ),
        ),
      ),
    );
  }
}
