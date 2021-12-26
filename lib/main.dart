import 'package:flutter/material.dart';

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
  List<String> quotes= ['Abebe is the best runner in ethiopia', 'mola is the most known name in ethiopia', 'samidan is the best musician in ethiopia'];
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
          children:quotes.map((quotes) => Text(quotes)).toList(),
        ),
      ),
    );
  }
}
