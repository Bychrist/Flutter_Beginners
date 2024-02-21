import 'package:flutter/Material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[200],
      ),
      body: Center(
        child: Image(image: AssetImage('assets/test.jpeg')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click',
            style: TextStyle(
                color: Colors.white,
                fontSize: 10.00,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red[200],
      ),
    );
  }
}
