import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';
import 'icons.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Вопрос-Ответ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title, style: TextStyle(fontSize: 26),)),
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
        height: MediaQuery.of(context).size.height*0.75,
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
  int _qIdx = 0;
  int _aIdx = 0;
  bool _q = true;
  List<String> _questions = new List.of(questions);
  List<String> _answers = new List.of(answers);
  
  Widget _buildRow() {
    return Card(
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
        title: Text(_q ? 'Ответ' : 'Вопрос', style: TextStyle(fontSize: 26.0)),
        subtitle: Text(_qaText, style: TextStyle(fontSize: 22.0)), 
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
            _qIdx += 1;
            if (_qIdx == _questions.length){
              _qIdx = 0;
              _questions.shuffle(_random);
            }
            _qaText = _questions.elementAt(_qIdx);
          } else {
            _aIdx += 1;
            if (_aIdx == _answers.length){
              _aIdx = 0;
              _answers.shuffle(_random);
            }
            _qaText = _answers.elementAt(_aIdx);
          }
          _q = !_q;
          return _buildRow();
        },
      )
    );
  }
} 