class Student extends Person {
  // 定义类的变量
  String _school; /// 私有变量
  String city;
  String country;
  String name;

  /// {this.city} 可选参数  this.country = 'china' 默认参数
  Student(this._school, String name, int age, {this.city, this.country = "China"})
      :
        /// 初始化列表
        name = '$country.$city',
  /// 如果父类没有默认构造方法（无参的构造方法，则需要在初始列表中调用父类的构造方法，进行初始化）
        super(name, age){
    print("构造方法体不是必须的");
  }


  @override
  String toString() {
    return 'Student{name: $name, school: ${this._school}, city: $city, country: $country, ${super.toString()}';
  }

  String get school => _school;

  set school(String value) {
    _school = value;
  }

  // 静态方法
  static doPrint(String str) {
    print('doPrint: $str');
  }

  // 命名构造方法
  Student.cover(Student stu): super(stu.name, stu.age){
    print('命名构造方法');
  }

  /// 命名工厂构造方法： [类名.+方法名]
  /// 它可以有返回值，而且不需要将类的final变量作为参数，是提供一种灵活获取类对象的方式
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }
}


class Person {
  String name;
  int age;
  Person(this.name, this.age); // 初始化类的变量

  /// 多态 重载 // 重写父类的方法
  @override
  String toString() {
    return 'name:$name, age:$age';
  }

}

/// 工厂构造方法
class Logger {
  static Logger _cache;
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache;
  }
  Logger._internal();

  void log(String msg) {
    print(msg);
  }
}

/// 继承抽象类要实现它的抽象方法，否则也需要将自己定义成抽象类
class StudyFlutter extends Study {
  @override
  void study() {
    // TODO: implement study
    print('Learning Flutter');
  }

}

/// 抽象类 不能实例化 抽象类在定义接口时候非常有用
/// 抽象类可以没有抽象方法， 如果一个类有抽象方法，那它必须定义为抽象类
abstract class Study {
 void study();

}

// 为类添加特性： mixins
// mininx 是在多个类层次结构中重用代码的一种方式
/// 要使用mixins, 在with关键字后面跟上一个或多个mixin 的名字(用逗号分隔), 并且with要用在
/// extends关键字之后，
/// mixins的特征： 实现mixin,就创建一个继承Object 类的子类（不能继承其他类），不声明任何构造方法，不调用super

class Test extends Person with Study {
  Test(String name, int age) : super(name, age);

  @override
  void study() {
    // TODO: implement study
  }

}
