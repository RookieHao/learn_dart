void main() {
  /*
   * Map类型的属性和方法
   */

  Map userInfo = {'name': '张三', 'age': 20, 'sex': '男'};

  // 操作符

  var userName = userInfo['name'];
  print(userName); // 张三

  // 属性

  var mapLength = userInfo.length;
  print(mapLength); // 3

  var mapKeys = userInfo.keys;
  print(mapKeys); // (name, age, sex)

  var mapValues = userInfo.values;
  print(mapValues); // (张三, 20, 男)

  var mapEntries = userInfo.entries;
  print(
      mapEntries); // (MapEntry(name: 张三), MapEntry(age: 20), MapEntry(sex: 男))
  mapEntries.forEach((e) {
    print('${e.key}----${e.value}');
  }); // name----张三 age----20 sex----男

  var mapIsEmpty = userInfo.isEmpty;
  print(mapIsEmpty); // false

  // 方法

  var hasKeyName = userInfo.containsKey('name');
  print(hasKeyName); // true

  var hasValue5 = userInfo.containsValue(5);
  print(hasValue5); // false

  userInfo.addEntries([MapEntry('score', 88)]);
  print(userInfo); // {name: 张三, age: 20, sex: 男, score: 88}

  userInfo.addAll({'address': '湖北省武汉市', 'tel': 18888888888});
  print(userInfo); // {name: 张三, age: 20, sex: 男, score: 88, address: 湖北省武汉市, tel: 18888888888}

  userInfo.remove('score');
  print(userInfo); // {name: 张三, age: 20, sex: 男, address: 湖北省武汉市, tel: 18888888888}
  
  userInfo.removeWhere((key,value){
    return key == 'address';
  });
  print(userInfo); // {name: 张三, age: 20, sex: 男, tel: 18888888888}
}
