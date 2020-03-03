// 面向对象的编程技巧
/// 一： 封装、继承、多态
/// 、、 善于封装，大到功能模块的封装
/// 不要在一个方法体里面堆砌太多的代码《100
/// 、。点点点的技巧
/// 在一个类的世界里，万物皆对象；，查看对象有哪些方法和属性，点看源码，电探究竟
///

void main() {
  List list;
  /// Dart 编程小技巧. 安全的调用
  /// 对不确定是否为空
//  print(list?.length);

  // Dart编程小技巧2： 设置默认值
  print(list?.length??-1);

  /// Dart 编程小技巧3
  list = [];
  list.add(0);
  list.add('');
  list.add(null);

  if(list[0] == null || list[0] == '' || list[0] == 0) {
    print('list[0] is empoty');
  }
  if([null, '', 0].contains(list[0])) {
    print('list[0] is empoty');
  }
}