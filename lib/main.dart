import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('I\'m an App'),
          backgroundColor: Colors.red[600],
        ),
        body: const App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Row 1
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('1')),
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('2')),
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('3')),
            ],
          ),
          // Row 2
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('1')),
              //Will expand to fill all remaining space
              Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 40,
                    width: 40,
                    child: const Text('2'))),
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('3')),
            ],
          ),
          //Row 3
          SizedBox(
              height: 100,
              child: Row(
                //Stretches to vertically fill its parent container
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                    height: 40,
                    width: 40,
                    child: const Text('1')),
                  Expanded(
                      child: Container(
                        color: Colors.green,
                        height: 40,
                        width: 40,
                        child: const Text('2'))),
                  Container(
                    color: Colors.blue,
                    height: 40,
                    width: 40,
                    child: const Text('3')),
                ],
              )),
          // Row 4
          Row(
            //Creates even space between each item and their parent container
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('1')),
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('1')),
              Container(
                color: Colors.blue, height: 40, width: 40, child: const Text('3')),
            ],
          )
        ]);
  }
}