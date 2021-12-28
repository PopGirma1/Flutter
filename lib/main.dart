import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/choose_location.dart';
// format code CTRL + ALT + L
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // you can change this for the testing purpose
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation()
      },
    ));
