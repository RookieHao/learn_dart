/**
 * class类
 * 每个对象都是一个类的实例，所有的类都继承于 Object.。
 * 基于 Mixin 的继承 意味着每个类（Object 除外） 都只有一个超类，一个类的代码可以在其他 多个类继承中重复使用。
 * 使用 new 关键字和构造函数来创建新的对象。
 * 构造函数名字可以为 ClassName 或者 ClassName.identifier
 * 对象的成员包括方法和属性
 * 注意:私有属性和方法只有类在一个单独dart文件中才生效，在当前文件声明的类中的私有属性和方法还是可以直接使用
 *
 *  非静态方法可以访问非静态和静态属性及方法
 *  静态方法不能访问非静态的方法和属性
 *
 *  每个实例变量都会自动生成一个 getter 方法（隐含的）。 Non-final 实例变量还会自动生成一个 setter 方法。
 */
import 'class_private_methods_and_data.dart';

class Person {
  String name;
  int age;
  static String sex;
  // 构造函数
  Person(this.name, this.age);

  // 命名构造函数
  Person.nameConstructor(String name, int age, {String sex: '女'}) {
    this.name = name;
    this.age = age;
    Person.sex = sex; // 静态属性和方法通过类名去访问
  }

  // 初始化列表 在构造函数之前执行冒号后面的表达式，多个表达式用逗号分隔
  Person.initalList(String name,int age)
      : name = name,
        age = age {
    print('$name---$age');
  }

  static eat(food) {
    // 静态方法
    print('${sex} 吃 $food');
  }

  run() {
    print(this.name);
    print(sex);
  }
}

class Student extends Person{
  Student(String name, int age) : super(name, age);

  @override
  // TODO: implement runtimeType
  Type get runtimeType => super.runtimeType;

  // 覆写父类的方法
  @override
  run() {
    print('The print is $name runing on Student');
  }
}
void main() {
  Person personA = Person('张三', 30);
  personA.run(); // 张三 null
  print(personA.age); // 30

  print(Person.sex); // null

  Person personB = Person.nameConstructor('李四', 28);
  personB.run(); // 李四 女
  print(personB.age); // 28

  print(Person.sex); // 女

  PersonWithPrivate personC =
      PersonWithPrivate.nameConstructor('王五', 18, sex: '男');
  personC.run(); // 王五 男
  print(personC.age); // 18
//  print(personC._sex); // 报错
  Person.eat('苹果');

  Person personD = Person.initalList('dart',20);

  Student bob = Student('bob', 28);
  print(bob.runtimeType);
  bob.run();
}
