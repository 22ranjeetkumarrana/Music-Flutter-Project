import 'package:flutter/material.dart';
import 'package:music_lyrics_flutter_project/FirstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}