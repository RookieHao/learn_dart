void main() {
  /*
   * List类型的属性和方法
   */

  List fruits = ['苹果', '香蕉', '哈密瓜'];

  // 运算符

  List newFruits = fruits + [1, 2, 3];
  print(newFruits); // [苹果, 香蕉, 哈密瓜, 1, 2, 3]

  // 操作符 []

  var ele = fruits[2];
  print('$ele\n'); // 哈密瓜

  // 属性

  var first = fruits.first;
  print('$first\n'); // 苹果

  var last = fruits.last;
  print('$last\n'); // 哈密瓜

  var reversed = fruits.reversed;
  print('${reversed.toList()}\n'); // [哈密瓜, 香蕉, 苹果]

  // 方法

  fruits.add('葡萄');
  print(fruits); // [苹果, 香蕉, 哈密瓜, 葡萄]

  fruits.addAll(['猕猴桃', '火龙果', '榴莲']);
  print(fruits); // [苹果, 香蕉, 哈密瓜, 葡萄, 猕猴桃, 火龙果, 榴莲]

  fruits.insert(2, '柚子');
  print(fruits); // [苹果, 香蕉, 柚子, 哈密瓜, 葡萄, 猕猴桃, 火龙果, 榴莲]

  fruits.insertAll(3, ['西红柿', '波罗蜜']);
  print(fruits); // [苹果, 香蕉, 柚子, 西红柿, 波罗蜜, 哈密瓜, 葡萄, 猕猴桃, 火龙果, 榴莲]

  fruits.remove('葡萄');
  print(fruits); // [苹果, 香蕉, 哈密瓜, 猕猴桃, 火龙果, 榴莲]

  fruits.removeLast();
  print(fruits); // [苹果, 香蕉, 哈密瓜, 猕猴桃, 火龙果]

  fruits.removeWhere((ele) => ele == '哈密瓜');
  print(fruits); // [苹果, 香蕉, 猕猴桃, 火龙果]
}
