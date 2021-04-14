import 'package:flutter/material.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String titulo;

  const AppWidget({Key key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}