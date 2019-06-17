class PersonWithPrivate {

  String name;
  int age;
  // 私有属性
  String _sex;

  // 构造函数
  PersonWithPrivate(this.name,this.age);

  // 命名构造函数
  PersonWithPrivate.nameConstructor(String name,int age,{String sex}){
    this.name = name;
    this.age = age;
    this._sex = sex;
  }
  run(){
    print(this.name);
    print(_sex);
  }
}
