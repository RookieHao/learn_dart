void main(){
  /*
   * String类型的属性和方法
   */

  String str = 'dart';
  String str1 = 'hello dart ';

    // 运算符

  String str2 = str + DateTime.now().toString();
  print('''
    +号拼接字符串
    $str + DateTime().now() = 
    $str2\n
  '''); // dart2019-06-15 00:25:56.445659

  String str3 = str * 3;
  print('$str 复制3遍 = $str3\n'); // dartdartdart

  // 操作符 []
  String strIndex = str1[4];
  print('$str1 的第5位是: $strIndex\n'); // o

    // 属性
  int strLength = str1.length;
  print('$str1 的长度是: $strLength\n'); //

  bool strIsEmpty = str1.isEmpty;
  print('$str1 是空的么: $strIsEmpty\n'); // false

    // 方法

  String strTrim = str1.trim();
  print('$str1 去除两头空格 trim() = $strTrim\n'); // 'hello dart'

  List strSplit = str1.split('');
  print('$str1 拆分成List spilit() = $strSplit\n');



}