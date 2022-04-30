import 'package:flutter/material.dart';
import 'package:pianoflutterapp/widget/note-widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PianoNotes(),
    );
  }
}

class PianoNotes extends StatelessWidget {
  const PianoNotes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final whiteKeySize =
            constraints.maxWidth / 7; // to specify the height of the white key
        final blackKeySize =
            whiteKeySize / 2; // to specify the height of the black keys
        final keywidth = MediaQuery.of(context).size.width;
        return Stack(
          //stack helps to overlap several children in a simple way
          children: [
            NoteWidget(
              // NoteWidget is a dart class that contains these 3 primary keys
              keyheight: whiteKeySize,
              white: true,
              keywidth: keywidth,
            ),
            NoteWidget(
              keyheight: blackKeySize,
              white: false,
              keywidth: keywidth,
            ),
          ],
        );
      },
    );
  }
}
