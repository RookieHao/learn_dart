/**
 *  Function
 *  方法也是对象并且具有一种 类型: Function
 *  方法可以赋值给变量，也可以当做其他方法的参数。
 *  也可以把 Dart 类的实例当做方法来调用
 *  声明方法时可以声明返回值类型也可以不声明
 *
 *  静态作用域:变量的作用域在写代码的时候就确定过了。 基本上大括号里面定义的变量就 只能在大括号里面访问。
 *
 *  所有的函数都返回一个值。如果没有指定返回值，则 默认把语句 return null; 作为函数的最后一个语句执行。
 */

// 无返回值方法
void eat() {
  print('吃早餐');
}

// 返回值为bool类型
bool isEven(num) {
  return num % 2 == 0;
}

// 指定参数类型
String computed(Map user) {
  var firstName = user['firstName'];
  var lastName = user['lastName'];
  return '${firstName + lastName}';
}

// 可选命名参数
enableFlags({bool bold, bool hidden}) {
  print(bold);
}

// 可选位置参数
String say(String from, String msg, [String device]) {
  var result = '$from say: $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 默认参数值
void setDefaultParams({bool bold = false, bool hidden = false}) {
  print([bold, hidden]);
}

// 把方法当做参数调用另外一个方法
printElement(ele) {
  print(ele);
}

// 方法也可以赋值给一个变量
Function loudify = (ele) {
  print(ele);
};

// 闭包 : 一个 闭包 是一个方法对象，不管该对象在何处被调用， 该对象都可以访问其作用域内 的变量。
Function closure(int n) => (int i) => i + n;

void main() {
  eat(); // 调用eat 输出吃早餐

  print(isEven(88)); // true

  print(computed({'firstName': '张', 'lastName': '三'})); // 张三

  enableFlags(); // 输出 null

  print(say('张三', '我要迟到了')); // 张三 says 我要迟到了

  print(say('张三', '我要迟到了', 'iphoneX')); // 张三 say: 我要迟到了 with a iphoneX

  setDefaultParams(); // [false, false]

  setDefaultParams(bold: true, hidden: true); // [true, true]

  var list = [1, 2, 3];
  list.forEach(printElement); // 1   2   3

  list.forEach(loudify); // 1   2   3

  // 匿名方法
  list.forEach((ele) {
    print(ele);
  }); // 1   2   3

  Function sum1 = closure(1);
  Function sum5 = closure(5);
  print(sum1(5)); // 6
  print(sum1(8)); // 9
  print(sum5(30)); // 35
  print(sum5(20)); // 25

}
