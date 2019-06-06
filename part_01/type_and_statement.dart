void main() {
  /*
   * dart 内置类型包括：Number / String / Boolean / List / Map / Rune / Symbol
   * */

  var a;
  // 没有初始化的变量默认值是null
  // var a = 10; 声明变量有初始值的时候，此时值类型已经确定。
  // 初始赋值为10的int类型，后面不能再更改值类型,如下：赋值为字符串或double类型都会报错

  a = 10;
  // var 声明的没有初始值的变量，可以多次赋值为任意类型的值
  print(a);

  a = "hello world";
  print(a);

  a = 11.2;
  print(a);

  print('\n--------------------------------var_end\n');

  const b = 'const_variable';
  // const 声明编译期常量,声明时必须赋值。且不能在更改。
  print(b);

  print('\n------------------------------const_end\n');

  num c = 10;
  // num 声明指定值为数字类型的变量
  print(c);

  c = 10.5; // 修改为double类型
  print(c);

  print('\n------------------------------num_end\n');

  int d = 10;
  // int 声明指定值为整数类型的变量
  print(d);

  // d= 20.5; // 值修改为double类型会报错

  d = 20;
  print(d);

  print('\n------------------------------int_end\n');

  double e = 10;
  // double 声明指定值为double类型的变量
  print(e); // 输出 10.0

  e = 10.5;
  print(e); // 输出 10.5

  print('\n------------------------------double_end\n');

  String f;
  f = 'hello world';
  // String 声明指定值为字符串类型的变量
  print(f);

  print('\n------------------------------String_end\n');

  final g = 'final';
  // final 声明一个只能被赋值一次的变量
  // 区别于const声明的变量，const声明的变量为编译期常量， final变量在第一次使用的时候初始化
  print(g);

  print('\n------------------------------final_end\n');

  var const_a = const [1, 2, 3];
  // const 关键字不仅仅只用来定义常量，又可以用来创建不变的值。
  // 还能定义构造函数为 const 类型的，这种类型 的构造函数创建的对象是不可改变的。任何变量都可以有一个不变的值。
  print(const_a);

  // const_a[0] = 6666; // 修改会报错
  // print(const_a);

  print('\n------------------------------const_data_end\n');

  bool h = true;
  // bool 声明一个布尔值
  print(h);

  print('\n------------------------------boolean_end\n');

  List i = [123, 'hello', true];
  // List 声明一个数组
  print(i);

  i[0] = 'a';
  print(i);

  List i_const = const [
    'a',
    1,
    true,
    [4, 5, 6]
  ];
  // 声明一个编译时常量数组
  // i_const[1] = 2; // 编译时常量数组，修改数组元素会报错
  print(i_const);

  print('\n------------------------------List_end\n');

  Map j;
  // 声明一个map,键值对相关的对象.键唯一。键值都可以是变量
  j = {'a': 1, 'b': '2', 'c': true};
  print(j);

  print('\n------------------------------map_end\n');

  var clapping = '\u{1f44f}';
  print(clapping);
  // Runes 代表字符串的 UTF-32 code points
  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');

  print(new String.fromCharCodes(input));

  print('\n------------------------------Runes_end\n');
}
