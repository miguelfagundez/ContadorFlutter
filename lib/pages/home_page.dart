import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context   ) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Titulo Home Page'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Text('Home Page Body'),
        ),
      );
  }
}
