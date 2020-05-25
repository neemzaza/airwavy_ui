import 'package:flutter/material.dart';

main() {
  runApp(QuoteApp());
}
class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airwavy News' ,
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airwavy News'),
        ),
        body: ListView(
          children: <Widget>[
            
        AirwavyCard('Hello World','Is Spider Man','assets/images/World.jpg'),
        AirwavyCard('Starting point of Airwavy','Beginning to final point!','assets/images/Face.jpg'), 
        AirwavyCard('Feature of Airwavy!','NULL','assets/images/Logo.png')
    ],
        ),
    );

   
  }
}

class AirwavyCard extends StatelessWidget {
  final String text;
  final String _author;
  final String _imageMy;

  const AirwavyCard(this.text,this._author,this._imageMy,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card (
      margin: EdgeInsets.all(20),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Container(
          height: 300,
          decoration: BoxDecoration (
            
            image: DecorationImage(
              
              image: AssetImage(_imageMy),
              )
          )
        ),

      Container (
        alignment: Alignment(-1, 0),
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '"$text"',
          style: TextStyle(
            fontSize: 50),
          ),
      ),

    Padding (
      padding: const EdgeInsets.all(8.0),
      child: Text(
          '"$_author"'),
    ),
    ],
      
      ),
    );
  }
}