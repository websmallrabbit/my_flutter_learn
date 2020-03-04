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
                            Row(
                              children: <Widget>[
                                ClipOval(
                                  child: SizedBox(
                                    child: Image.network(
                                      'https://img2.sycdn.imooc.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Opacity(
                                  opacity: 0.6,
                                  child: Image.network(
                                    'https://img2.sycdn.imooc.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
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
                                  contentPadding:
                                      EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  hintText: '请输入',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                            Column(
                              children: <Widget>[
                                FractionallySizedBox(
                                  widthFactor: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent),
                                    child: Text('宽度撑满'),
                                  ),
                                )
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Image.network(
                                  'https://img2.sycdn.imooc.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
                                ),
                                Positioned(
                                  left: 0,
                                  bottom: 0,
                                  child: Image.network(
                                    'https://img2.sycdn.imooc.com/szimg/5c7e6835087ef3d806000338-360-202.jpg',
                                    width: 36,
                                    height: 36,
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: 8, // 水平间距
                              runSpacing: 6, // 垂直间距
                              children: <Widget>[_chip('Flutter')],
                            ),
                            Container(
                                height: 100,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent),
                                child: PhysicalModel(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(6),
                                  clipBehavior: Clip.antiAlias,
                                  child: PageView(
                                    children: <Widget>[
                                      _item('page1', Colors.deepPurple),
                                      _item('page2', Colors.green),
                                      _item('page3', Colors.orange),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  onRefresh: _handleRefresh,
                )
              : Column(
                  children: <Widget>[
                    Text('列表'),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Text('拉伸填满高度'),
                      ),
                    )
                  ],
                )),
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
      child: Text(
        title,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }

  _chip(String label) {
    return Chip(
      label: Text(label),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade900,
        child: Text(
          label.substring(0, 1),
          style: textStyle,
        ),
      ),
    );
  }
}
