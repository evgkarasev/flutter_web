import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text('My Web App'),
          backgroundColor: Colors.blueGrey[500],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://miningzimbabwe.com/wp-content/uploads/2019/01/Alrosa.jpg'),
          ),
        ),
      ),
    ),
  );
}
