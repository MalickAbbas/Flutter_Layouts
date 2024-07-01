import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widgets Demo'),
      ),
      body: ListView(
        children: [
          // Single-child layout widgets
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
          
          // Multi-child layout widgets
          const Row(
            children: [
              Icon(Icons.star, color: Colors.red),
              Icon(Icons.star, color: Colors.red),
              Icon(Icons.star, color: Colors.red),
            ],
          ),
          const Column(
            children: [
              Text('This is a Column widget'),
              Text('It arranges children vertically'),
            ],
          ),
          Stack(
            children: [
              Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
