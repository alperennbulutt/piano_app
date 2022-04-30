import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

playLocal(int number) async {
  // to use this function we need to get the Audioplayers package or any similar package of your choice
  final player = AudioCache();
  player.play("note$number.wav");
}

buildKey(
    String note, int index, bool white, double keyheight, double keywidth) {
  return SizedBox(
    width: white ? keywidth : keywidth / 2,
    height: white ? keyheight * 1.6 : keyheight * 2,
    child: TextButton(
      onPressed: () => playLocal(index),
      style: ButtonStyle(
        backgroundColor: white
            ? MaterialStateProperty.all(Colors.white)
            : MaterialStateProperty.all(Colors.black), // to set the key colors
        shape: MaterialStateProperty.all(
          // to give our button a more realistic look
          RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      child: Text(
        note,
      ),
    ),
  );
}
