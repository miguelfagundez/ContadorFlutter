import 'package:flutter/material.dart';

class HomePageStateful extends StatefulWidget{

  @override
  createState(){
    return _HomePageStateful();
  }
}

class _HomePageStateful extends State<HomePageStateful>{

  // Text
  final bodyText = 'Number of clicks: ';
  final appText = 'Contador App';

  //Styles
  final estilo = TextStyle( fontSize: 25.0);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
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
            Text('$_conteo', style: estilo,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _createFloatingActionButtons(),
    );
  }

  Widget _createFloatingActionButtons(){
    /*return FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: ()
    {
      _conteo++;
      setState(() {

      });
    });*/
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.autorenew),
            onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.exposure_minus_1),
            onPressed: _minus),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.plus_one),
            onPressed: _add),
      ],
    );
  }

  void _add(){
    setState(() {
      _conteo++;
    });
  }

  void _minus(){
    setState(() {
      if (_conteo > 0) _conteo--;
    });
  }

  void _reset(){
    setState(() {
      _conteo=0;
    });
  }

}