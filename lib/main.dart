import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rows and Columns',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Project 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: bodyWidget(counter: _counter),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.calculate),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class bodyWidget extends StatelessWidget {
  const bodyWidget({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          // height: 350,
          color: Colors.blueAccent,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Text('Container Widget 1'),
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                child: Text('Container Widget 2'),
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                child: Text('Container Widget 3'),
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
        Container(
          child: Text('Container Widget 1'),
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
        Container(
          child: Text('Container Widget 2'),
          height: 100,
          width: 100,
          color: Colors.orange,
        ),
        Container(
          child: Text('Container Widget 3'),
          height: 100,
          width: 100,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
