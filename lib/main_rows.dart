import 'package:flutter/Material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[200],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Hello I am Gabriel Nzete doing futter'),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('send mail'),
            icon: const Icon(Icons.mail),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            color: Colors.amber[300],
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'CLick Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[200],
        child: const Text(
          'Click',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.00,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
