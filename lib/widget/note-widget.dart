import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pianoflutterapp/widget/note.dart';
//import 'package:xylophoneflutter/Widgets/note-midi.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({
    Key? key,
    required this.keyheight,
    required this.white,
    required this.keywidth,
  }) : super(key: key);

  final bool white;
  final double keyheight;
  final double keywidth;

  @override
  Widget build(BuildContext context) {
    if (white) {
      //setting our white keys
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /*NoteMidi(
              note: 'Do',
              white: white,
              keyheight: keyheight,
              keywidth: keywidth,
              keyNote: 0),*/
          buildKey('Do', 1, white, keyheight, keywidth),
          buildKey('Ré', 2, white, keyheight, keywidth),
          buildKey('Mi', 3, white, keyheight, keywidth),
          buildKey('Fa', 4, white, keyheight, keywidth),
          buildKey('Sol', 5, white, keyheight, keywidth),
          buildKey('La', 6, white, keyheight, keywidth),
          buildKey('Si', 7, white, keyheight, keywidth),
        ],
      );
    } else {
      //setting our black keys
      return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.2 * keyheight,
            ),
            buildKey('Do', 1, white, keyheight, keywidth),
            SizedBox(
              height: 1.2 * keyheight,
            ),
            buildKey('Ré', 2, white, keyheight, keywidth),
            SizedBox(
              height: 4.4 * keyheight,
            ),
            buildKey('Mi', 3, white, keyheight, keywidth),
            SizedBox(
              height: 1.2 * keyheight,
            ),
            buildKey('Fa', 4, white, keyheight, keywidth),
            SizedBox(
              height: 1.2 * keyheight,
            ),
            buildKey('Sol', 5, white, keyheight, keywidth),
          ],
        ),
      );
    }
  }
}
