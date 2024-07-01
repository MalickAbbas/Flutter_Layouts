import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Layout Widgets Demo'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue[50],
            child: const Text('This is a Container widget'),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('This is a Padding widget'),
          ),
          const Center(
            child: Text('This is a Center widget'),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text('This is an Align widget'),
          ),
        ],
      ),
    );
  }
}
