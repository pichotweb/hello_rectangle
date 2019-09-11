import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;
  BorderRadius _borderRadius;
  static const num _rowHeight = 100.0;


  Category(this.icon, this.color, this.text){
    _borderRadius = BorderRadius.circular(_rowHeight / 2);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrangeAccent,
      child: Container(
        height: _rowHeight,
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: Colors.blue,
          splashColor: Colors.blueAccent,
          onTap: (){
            print('Tap! Tap!');
          },
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.airport_shuttle,
                  color: Colors.white,
                  semanticLabel: 'Text to announce in accessibility modes',
                  size: 60.0,
                ),
              ),
              Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

}