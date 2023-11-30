class Student {
  String _name;
  int _age;
  String _grade;

  Student(this._name, this._age, this._grade);

  String get name => _name;
  set name(String name) => _name = name;

  int get age => _age;
  set age(int age) => _age = age;

  String get grade => _grade;
  set grade(String grade) => _grade = grade;

  void study() {
    print('$_name is his name.');
  }
}

void main() {
  // Creating instances of the Student class
  var student1 = Student('John Doe', 20, 'A');
  var student2 = Student('Ashaba Peruth', 21, 'A');

  // Accessing and modifying private attributes using getter and setter methods
  student1.name = 'John Doe';
  student1.age = 20;
  student1.grade = 'A';

  // Accessing private attributes using getter methods
  print('${student1.name} is ${student1.age} years old and has an ${student1.grade}.');
  print('${student2.name} is ${student2.age} years old and has an ${student2.grade}.');

  // Calling a method on a Student instance
  student1.study();
  student2.study();
}
