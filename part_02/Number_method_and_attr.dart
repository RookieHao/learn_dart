void main(){

  /*
   * Number类型的属性和方法
   */

  var a = 25;

  var b = 20;

  // 运算符
  int num1 = a + b;
  int num2 = a - b;
  int num3 = a * b;
  double num4 = a / b;
  int num5 = a % b; // 模
  int num6 = a ~/ b; // 除以的结果向下取整

  print('$a + $b = $num1\n'); // 45
  print('$a - $b = $num2\n'); // 5
  print('$a * $b = $num3\n'); // 500
  print('$a / $b = $num4\n'); // 1.25
  print('$a % $b = $num5\n'); // 5
  print('$a ~/ $b = $num6\n'); // 1

  // 属性和方法

    // 属性

      // int

  final isEvent = num1.isEven;
  print('$num1是偶数么: $isEvent\n');

  final isOdd = num2.isOdd;
  print('$num2是奇数么: $isOdd\n');

  final num3BitLength = num3.bitLength;
  print('存储 $num3 所需的最小位数: $num3BitLength\n'); // 9

      // extend for num

  final isNaN = num3.isNaN;
  print('$num3是NaN么: $isNaN\n'); // false

  final isFinite = num4.isFinite;
  print('$num4是有限的么: $isFinite\n'); //true

  final isInfinite = num5.isInfinite;
  print('$num5是无限的么: $isInfinite\n'); //false

  final isNegative = num6.isNegative;
  print('$num6是负数么: $isNegative\n'); // false

  final num4HashCode = num4.hashCode;
  print('$num4 的hash值是: $num4HashCode\n'); // 4608308319779815424

    // 方法

  final num4ToString = num4.toString();
  print('$num4 转换为字符串 toString() = $num4ToString\n'); // '1.25'

  final num4IsString = num4ToString is String;
  print('$num4ToString 是 String 么: $num4IsString\n'); // true

  final num4Round = num4.round();
  print('$num4 四舍五入 round() = $num4Round\n'); // 1

  final num4Ceil = num4.ceil();
  print('$num4 向上取整 ceil() = $num4Ceil\n');

  final num4Floor = num4.floor();
  print('$num4 向下取整 floor() = $num4Floor\n');

  final num4Abs = (-num4).abs();
  print('-$num4 取绝对值 abs() = $num4Abs\n');


}
