import 'package:flutter/material.dart';
import 'loginpagina.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPagina(),
    );
  }
}
