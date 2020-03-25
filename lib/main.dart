import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/manmakarov.jpg'),
              ),
              Text(
                'Piter Norton',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                'OUT OF THE BOX THINKER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w200,
                  fontSize: 15,
                  letterSpacing: 2.5,
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.teal.shade700,
                  ),
                  title: Text(
                    '+44 123 456 7890',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25,
                    color: Colors.teal.shade700,
                  ),
                  title: Text(
                    'piter.norton@outlook.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.teal.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
