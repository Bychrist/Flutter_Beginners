import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.amber[600],
        title: const Text(
          'Ninga ID',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'),
              ),
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Gabriel Valentine Nzete',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'CURRENT NIJA LEVEL',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              ninjaLevel.toString(),
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 12.0),
                Text('ordained07@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[600],
        onPressed: () => {
          setState(() {
            if (ninjaLevel == 10) {
              ninjaLevel = 0;
            } else {
              ninjaLevel += 1;
            }
          })
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          weight: 50.0,
        ),
      ),
    );
  }
}
