import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListExample(),
    ));

class ListExample extends StatefulWidget {
  const ListExample({Key? key}) : super(key: key);

  @override
  State<ListExample> createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  List<Quote> quotes= [
    Quote(author: "Papa", text: "The greatest glory in living lies not in never falling, but in rising every time we fall."),
    Quote(author: "Papa", text: "The way to get started is to quit talking and begin doing."),
    Quote(author: "Papa", text: "Your time is limited, so don't waste it living someone else's life."),
    Quote(author: "Papa", text: "If life were predictable it would cease to be life, and be without flavor.")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA10505),
      appBar: AppBar(
        title: const Text("List of Quotes"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:quotes.map((quotes) => Text('${quotes.text}==>${quotes.author}')).toList(),
        ),
      ),
    );
  }
}
