import 'package:flutter/material.dart';
import 'package:my_flutter_learn/data_type.dart';
import 'package:my_flutter_learn/function_learn.dart';
import 'package:my_flutter_learn/generic_learn.dart';
import 'package:my_flutter_learn/opp_learn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dart 基础知识学习',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'dart基础知识学习q'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
//    _oopLearn();
    _functionLearn();
    _genericLearn();
    _skillLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
//            DataType()
          ],
        )
      ),
    );
  }

  void _oopLearn() {
      Logger log1 = Logger();
      Logger log2 = Logger();
      print(log1 == log2);

      Student.doPrint('_opplearn');

      Student stu1 = Student('清华', 'jack', 19);
      stu1.school = '985';
      print(stu1.toString());


      Student stu2 = Student('北大', 'jacks', 19, city: 'sh', country: '中国');
      stu2.school = '985';
      print(stu2.toString());

      StudyFlutter studyFlutter = StudyFlutter();
      studyFlutter.study();
  }

  void _functionLearn() {
    TestFunction testFunction = TestFunction();
    testFunction.start();
  }

  void _genericLearn() {
    TestGeneric testGeneric = TestGeneric();
    testGeneric.start();
  }

  void _skillLearn() {
//    main();
  }
}


