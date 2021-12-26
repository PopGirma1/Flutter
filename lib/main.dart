import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA10505),
      appBar: AppBar(
        title: const Text("Papa"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color(0xFF8E0B34),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter=counter+1;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pap.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 200,
              color: Colors.grey[800],
            ),
            Text(
              "Name",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.accents[10],
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Girmay Tadese",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.amberAccent[200],
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "$counter",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.amberAccent[200],
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.green[100],
                ),
                const SizedBox(width: 30),
                const Text(
                  "girmaytadese@gmail.com",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

