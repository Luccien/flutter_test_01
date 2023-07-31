import 'package:flutter/material.dart';
import 'alligator_model.dart';







class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Alligator> alligators = [
    Alligator(
      name: 'Crunchy',
      description: 'A fierce Alligator with many teeth.',
    ),
    Alligator(
      name: 'Munchy',
      description: 'Has a big belly, eats a lot.',
    ),
    Alligator(
      name: 'Grunchy',
      description: 'Scaly Alligator that looks menacing.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My favourite Alligators'),
      ),
      body: Column(
          children: alligators
              .map((Alligator alligator) => Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(alligator.name),
                  subtitle: Text(alligator.description),
                ),
              ],
            ),
          ))
              .toList()
      ),
    );
  }
}