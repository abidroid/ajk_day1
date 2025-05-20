class Person {
  late String name;
  late String gender;
  late String dob;

  Person({required this.name, required this.gender, required this.dob});

  void display() {
    print("Name: $name");
    print("Gender: $gender");
    print("DOB     $dob");
  }
}

class Student extends Person {
  late String uni;
  String? mobile;

  Student({
    required super.name,
    required super.gender,
    required super.dob,
    required this.uni,
    this.mobile,
  });

  @override
  void display() {
    super.display();
    print("UNI: $uni");
    print("MOB: $mobile");
  }
}

class Beggar extends Person {
  late int dailyIncome;

  Beggar({
    required super.name,
    required super.gender,
    required super.dob,
    required this.dailyIncome,
});

  @override
  void display(){
    super.display();
    print('Income: $dailyIncome');
  }
}


void main() {
  Student s = Student(name: "Ali", gender: "M", dob: "2 May", uni: "AJK");
  s.display();

  print("********************");
  Beggar khan = Beggar(name: "SS", gender: "M", dob: "2 Nov", dailyIncome: 2000);
  khan.display();

  List<Person> personList = [
    s,
    khan,
  ];
}

class Container {
  late double width;
  late double height;
  String? color;

  Container({required this.width, required this.height, this.color});
}
