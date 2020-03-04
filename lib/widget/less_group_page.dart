import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: '如何使用FLutter包和插件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('StatelessWidget与基础组件')),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                  'i am text',
                  style: textStyle,
              ),
              Icon(
                  Icons.android,
                  size: 50,
                  color: Colors.red
              ),
              CloseButton(),
              BackButton(),
              Chip(
                avatar: Icon(Icons.photo),
                label: Text('StatelessWidget与基础组件'),
              ),
              Divider(
                height: 10,
                indent: 10,
                color: Colors.orange,
              ),
              Card(
                color: Colors.blue,
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'i am card',
                    style: textStyle,
                  ),
                ),
              ),
              AlertDialog(
                title: Text('盘他'),
                content: Text('你这个糟老头子坏得很'),
              )
            ],
          ),
        )
      ),

    );
  }

}