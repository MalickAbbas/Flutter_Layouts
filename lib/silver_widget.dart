import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widgets Demo'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar'),
              background: Image.network(
                'https://i0.wp.com/css-tricks.com/wp-content/uploads/2022/08/flutter-clouds.jpg?fit=1200%2C600&ssl=1',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                const ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Album'),
                ),
               const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                ),
              ],
            ),
          ),
           SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.pink,
                  child: const Center(
                    child: Text('Sliver Grid Item 1'),
                  ),
                ),
                Container(
                  color: Colors.cyan,
                  child: const Center(
                    child: Text('Sliver Grid Item 2'),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: const Center(
                    child: Text('Sliver Grid Item 3'),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text('Sliver Grid Item 4'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
