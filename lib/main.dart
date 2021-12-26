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

  Widget quoteStyle(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children:<Widget> [
           Text(
             quote.text,
             style: TextStyle(
               fontSize: 18.0,
               color: Colors.grey[600]
             ),
           ),
           const SizedBox(height: 6.0),

           Text(
             quote.author,
             style: TextStyle(
               fontSize: 14.0,
               color: Colors.grey[800]
             ),
           )
         ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF574E4E),
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
          children:quotes.map((quotes) => quoteStyle(quotes)).toList(),
        ),
      ),
    );
  }
}
