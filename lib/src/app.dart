import 'package:flutter/material.dart';

import 'package:contador_app/pages/home_page_stateful.dart';
//import 'package:contador_app/pages/home_page.dart';


class MyContadorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: HomePageStateful(),
      ),
    );
  }
}

