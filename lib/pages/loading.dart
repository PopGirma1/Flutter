import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
  Response response= await get(Uri.parse('https://worldtimeapi.org/api/timezones/Europe/London'));
    Map data=jsonDecode(response.body);
    print(data);
    print(data['id']);

  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("this is the loading screen"),
    );
  }
}
