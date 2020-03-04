import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFullGroup extends StatefulWidget {
  @override
  _StateFullGroupState createState() => _StateFullGroupState();
}

class _StateFullGroupState extends State<StateFullGroup> {
  int _currentIndex = 0;
  TextStyle textStyle = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '如何使用StatefulWidget与基础组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('如何使用StatefulWidget与基础组件')),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  activeIcon: Icon(Icons.home, color: Colors.blue),
                  title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  activeIcon: Icon(Icons.home, color: Colors.blue),
                  title: Text('列表')),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Text('点我'),
          ),
          body: _currentIndex == 0
              ? RefreshIndicator(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'i am text',
                              style: textStyle,
                            ),
                            Icon(Icons.android, size: 50, color: Colors.red),
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
                            ),
                            Image.network(
                              'https://img2.sycdn.imooc.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
                              width: 100,
                              height: 100,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                hintText: '请输入',
                                hintStyle: TextStyle(fontSize: 15)
                              ),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(color: Colors.lightBlueAccent),
                              child: PageView(
                                children: <Widget>[
                                  _item('page1', Colors.deepPurple),
                                  _item('page2', Colors.green),
                                  _item('page3', Colors.orange),
                                 ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  onRefresh: _handleRefresh,
                )
              : Text('list')),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(microseconds: 200));
    return null;
  }

  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(title, style: TextStyle(fontSize: 22, color: Colors.white),),
    );
  }
}
