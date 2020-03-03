class TestFunction {
  FunctionLearn functionLearn = FunctionLearn();
  void start() {
    print(functionLearn.sum(1, 2));
    print(functionLearn._learn());
    functionLearn.anonymousFunction();
  }
}

class FunctionLearn {
  /// 方法构成
  /// 返回值类型+方法名+参数
  /// 其中：返回值类型可缺省， 也可以为void 或具体的类型
  /// 方法名： 匿名方法不需要方法名
  /// 参数： 参数类型和参数名。 参数类型可缺省， 另外，参数可选参数，默认参数

  int sum(int val1, int val2) {
    return val1 + val2;
  }

  /// 通常用_ 表示私有方法
  /// 作用域在当前文件
  _learn() {
    print('私有方法');
  }

  anonymousFunction() {
    var list = ['私有方法', '匿名方法'];
    list.forEach((i) {
      print(list.indexOf(i).toString() + ':'  + i);
    });
  }


}

