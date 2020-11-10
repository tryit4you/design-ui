

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Center(child: Text('Xin Chào Hương Hell!'),),
        ),
      ),
    );
  }
}