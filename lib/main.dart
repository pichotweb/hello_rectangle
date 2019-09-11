import 'package:flutter/material.dart';
import 'category.dart';

class HelloRectangle extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.deepPurple,
        width: 400.0,
        height: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Teste!',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teste app Bar!'),
        ),
        body: Category(
          Icons.airport_shuttle,
          Colors.purple,
          'Maluco2!'
        ),
      ),
    ),
  );
}
