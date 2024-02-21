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
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.mail,
          ),
          label: const Text('Mail Me'),
        ),
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
