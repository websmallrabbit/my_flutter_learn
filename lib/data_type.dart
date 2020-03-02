import 'package:flutter/material.dart';

class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _listType();
    _MapType();
    _tips();
    return Container(
      child: Text('常用数据类型，请查看控制台输出'),
    );
  }

  void _numType() {
    num num1 = -0.2;
    num num2 = 1;
    int int1 = 3;
    double d1 = 0.32212;
    print("num1: $num1 num2: $num2 int1: $int1 d1: $d1");
    print(num1.abs());
    print(num1.toInt());
    print(int1.toDouble());
  }

  void _stringType() {
    String str1 = '1', str2 = '你好', str3 = '3/zxcd';
    print('str: $str1, $str2, $str3');
    print('str:'+ str1 + ',' + str2 + ',' + str3);
    String str4 = '常用数据类型，请看控制台输出';
    print(str4.substring(1,3));
    print(str4.indexOf('数据'));
  }

  void _listType() {
    print('listType');
    List list = [1,2,3, '集合'];
    print(list);

    List<int>list2 = [];
//    list2 = list;
//    print(list2);


    List list3 = [];
    list3.add('list3');
    list3.addAll(list);

    print(list3);

    List list4 = List.generate(3, (index) => index * 3);
    print(list4);


    // 遍历

    for(var i = 0; i< list.length; i++ ) {
      print(list[i]);
    }

    for (var o in list) {
      print(o);
    }

    list.forEach((v){
      print(v);
    });

    print(list.removeLast());
    print(list);
    list.insert(1, '223');
    print(list);
    List list5 = list.sublist(2);
    print(list5);


  }

  void _MapType() {
    print('mapType');
    Map name = {'a': 'A', 'b': "B"};
    print(name);

    Map ages = {};
    ages['a'] = 15;
    ages['b'] = 20;
    print(ages);

    // Map遍历
    ages.forEach((k,v){
      print('$k, $v');
    });

    Map ages2 = ages.map((k, v) {
      return MapEntry(v, k);
    });

    print(ages2);

    for(var key in ages.keys) {
//      print(key);
        print('$key, ${ages[key]}');
    }


    print(ages.containsKey('c'));


  }
  // 科普小知识 dynamic(动态数据类型) var Object的区别
  void _tips() {
    print('-----dynamic------');
    dynamic x = 'hall';
    print(x.runtimeType);
    print(x);
  }


}
