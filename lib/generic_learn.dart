import 'package:my_flutter_learn/opp_learn.dart';

class TestGeneric{
  void start() {
    Cache<String> cache1 = Cache();
    cache1.setItem('cache1', '11');
    String string1 = cache1.getItem('cache1');
    print(string1);

    Cache<int> cache2 = Cache();
    cache2.setItem('cache1', 123);
    int string2 = cache2.getItem('cache1');
    print(string2);

    Member<Student> member = Member(Student('上海','dd',16));
    print(member.fixedName());
  }
}

// 泛型
/// 泛型主要是解决类，接口，方法的复用性，以及对不特定数据类型的支持
class Cache<T>{
  static final Map<String, Object> _cached = Map();
  void setItem(String key, T value) {
    _cached[key] = value;
  }
  T getItem(String key) {
    return _cached[key];
  }
}

class Member<T extends Person> {
  T _person;

  Member(this._person);

  String fixedName() {
    return 'fixed: ${_person}';
  }

}