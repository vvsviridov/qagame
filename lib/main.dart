// Flutter code sample for Card

// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';
import 'icons.dart';
import 'dart:math';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Вопрос-Ответ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.width,
        child: QaListTile(),
      ),
    );
  }
}


class QaListTile extends StatefulWidget {
  @override
  QaListTileState createState() => QaListTileState();
}


class QaListTileState extends State<QaListTile> {

  final _random = new Random();
  String _qaText = '';
  int _idx = 0;
  bool _q = true;
  
  Widget _buildRow() {
    return FractionallySizedBox(
      // widthFactor: 0.7,
      heightFactor: 1.2,
      child: Card(
        child: ListTile(
          leading: Icon(
            IconData(
              myicons.elementAt(_random.nextInt(myicons.length - 1)),
              fontFamily: 'MaterialIcons'
            ),
            size: 36,
            color: Color.fromRGBO(
              _random.nextInt(256),
              _random.nextInt(256),
              _random.nextInt(256),
              100
            ),
          ),
          title: Text(_q ? 'Ответ' : 'Вопрос', style: TextStyle(fontSize: 20.0)),
          subtitle: Text(_qaText, style: TextStyle(fontSize: 18.0)),
          onTap: () {
            setState(() {
              if (_q){
                _idx = _random.nextInt(questions.length - 1);
                _qaText = questions.elementAt(_idx);
              } else {
                _idx = _random.nextInt(answers.length - 1);
                _qaText = answers.elementAt(_idx);
              }
              _q = !_q;
            });
          }
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildRow(),
    );
  }
} 