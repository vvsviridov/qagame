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
  int _q_idx = 0;
  int _a_idx = 0;
  bool _q = true;
  List<String> _questions = new List.of(questions);
  List<String> _answers = new List.of(answers);
  
  
  Widget _buildRow() {
    return FractionallySizedBox(
      // widthFactor: 0.7,
      heightFactor: 1,
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
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    _questions.shuffle(_random);
    _answers.shuffle(_random);
    return Scaffold(
        body: PageView.builder(
          itemBuilder: (context, position) {
              if (_q){
                _q_idx += 1; //_random.nextInt(questions.length - 1);
                if (_q_idx == _questions.length){
                  _q_idx = 0;
                  _questions.shuffle(_random);
                }
                _qaText = _questions.elementAt(_q_idx);
              } else {
                _a_idx += 1; //_random.nextInt(answers.length - 1);
                if (_a_idx == _answers.length){
                  _a_idx = 0;
                  _answers.shuffle(_random);
                }
                _qaText = _answers.elementAt(_a_idx);
              }
              print(position);
              _q = !_q;
            return _buildRow();
          },
        )
    );
  }
} 