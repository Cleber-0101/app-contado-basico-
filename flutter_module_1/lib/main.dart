import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int totalClicks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha App com State',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Contador de cliques'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Total de Cliques $totalClicks',
                  style: TextStyle(color: Colors.pink),
                ),
                ElevatedButton(
                  onPressed: () {
                    acrescentaMaisUM();
                    print("Seja bem-vindo novo usuário");
                  },
                  child: Text('Clique em mim'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              acrescentaMaisUM();
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.red,
          )),
    );
  }

  void acrescentaMaisUM() {
    setState(() {
      totalClicks++;
    });
  }
}
