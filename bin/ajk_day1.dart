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
  late Address address;
  String? mobile;

  Student({
    required super.name,
    required super.gender,
    required super.dob,
    required this.uni,
    required this.address,
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
  late Address address; // has a relationship

  Beggar({
    required super.name,
    required super.gender,
    required super.dob,
    required this.address,
    required this.dailyIncome,
});

  @override
  void display(){
    super.display();
    print('Income: $dailyIncome');
  }
}

class Address {
  late String houseNum;
  late String streetNum;
  late String city;
  
  Address({required this.houseNum, required this.streetNum, required this.city});
}

void main() {
  Student s = Student(name: "Ali", gender: "M", dob: "2 May", uni: "AJK", address: Address(houseNum: '1', streetNum: '20', city: 'PSH'));
  s.display();

  print("********************");
  Beggar khan = Beggar(name: "SS", gender: "M", dob: "2 Nov", dailyIncome: 2000, address: Address(houseNum: '7', streetNum: '9', city: "MZD"));
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
