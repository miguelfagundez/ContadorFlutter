import 'package:flutter/material.dart';

void main(){

  runApp(new MyContadorApp());
}

class MyContadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}

