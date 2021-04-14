import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutterando'),
          ),
          body: GestureDetector(
            child: Center(
              child: Text(
                'estado $contador',
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: () {
              contador++;
              setState(() {
                print('olha clicou $contador');
              });
            },
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                contador++;
              });
            },
          ),
        ),
      ),
    );
  }
}
