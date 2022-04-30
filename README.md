# pianoflutterapp

This project is an easy way of implementing a piano octave to your app.

## Getting Started

-   First you need to download your audio/assets for piano keys. I couldn't find all needed audios so I added some dummy ones. You can use a midi package as well with a sound font to get the right note frequency. 
-   Download an audio player that works perfectly for andorid and IOS. I chose [AudioPlayers](https://pub.dev/packages/audioplayers). 

## Package needed

- [AudioPlayers](https://pub.dev/packages/audioplayers)

## Structure 

1.  The **```note.dart ```** class includes the key widget. It is a text button that plays the sound on pressed.
2.  The **```note-widget.dart```** class includes the list of all the keys needed, black and white keys. 
3.  The **```main.dart```**  calls the NoteWidget for black and white keys. They are set in Stack which helps to overlap the keys in a simple way

To make this interface more intresting, you can try to use MIDI files and packages,

For any question or clarification, feel free to contact me via email.