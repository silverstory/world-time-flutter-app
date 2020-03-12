import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    // get
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(response.body);
    print(data['title']);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Loading Screen'));
  }
}
