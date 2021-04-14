import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(titulo: 'fluterando'));
}

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
        child: GestureDetector(
          child: Text('estado $contador'),
          onTap: () {
            contador++;
            setState(() {
              print('olha clicou $contador');
            });
          },
        ),
      ),
    );
  }
}
