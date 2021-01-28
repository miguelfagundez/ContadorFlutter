import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  // Text
  final bodyText = 'Number of clicks: ';
  final appText = 'Contador App';

  //Styles
  final estilo = TextStyle( fontSize: 25.0);

  @override
  Widget build(BuildContext context   ) {
      return Scaffold(
        appBar: AppBar(
          title: Text(appText),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(bodyText, style: estilo,),
              Text('0', style: estilo,),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Pressed');
          },
          child: Icon(Icons.plus_one),
        ),
      );
  }
}
