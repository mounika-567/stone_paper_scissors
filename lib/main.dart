import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          title: Text('Game'),
          backgroundColor: Colors.cyan,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int Number1=1;
  int Number2=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children:<Widget>[
          SizedBox(
            height:20.0,
            width: 200.0,
          ),
          Expanded(
            child:FlatButton(
              onPressed: (){
                final player = AudioCache();
                player.play('note-1.mp3');
                setState(() {
                  Number1=Random().nextInt(3)+1;

                });
              },
              child:Image.asset('images/fig$Number1.png'),

            ),
          ),

          Text(
            'player-1',
            style:TextStyle(
              fontSize: 30.0,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height:20.0,
            width: 300.0,
            child:Divider(
              color:Colors.teal.shade100,
            ),
          ),
          Expanded(
            child:FlatButton(
              onPressed: (){
                final player = AudioCache();
                player.play('note-1.mp3');
                setState(() {
                  Number2=Random().nextInt(3)+1;
                });
              },
              child:Image.asset('images/fig$Number2.png'),

            ),
          ),
          Text(
            'player-2',
            style:TextStyle(
              fontSize: 30.0,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height:20.0,
            width: 200.0,

          ),
          //  Container();

          if( (Number1 > Number2 || Number1==1 && Number2==3 )&& (Number1!=3 || Number2!=1 ))
            Text(
              'Player-1 won :->',
              style:TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            )
          else if(Number1==Number2)
            Text(
              'Draw match :-|',
              style:TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            )
          else
            Text(
              'Player-2 won :->',
              style:TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
