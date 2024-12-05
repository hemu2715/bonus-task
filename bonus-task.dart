class Person
{
  final String name;
  final int age;

  Person(this.name, this.age);
}

class Student extends Person
{
  int grade;

  Student(String name, int age, this.grade) : super(name, age);

  void printDetails()
  {
    print("Student Details: Name: $name, Age: $age, Grade: $grade");
  }
}

class Teacher extends Person
{
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  void printDetails()
  {
    print("Teacher Details: Name: $name, Age: $age, Subject: $subject");
  }
}

class School
{
  static int totalPeople = 0;

  static void addPerson()
  {
    totalPeople++;
  }

  static int getTotalPeople()
  {
    return totalPeople;
  }
}

void main()
{
  Student student1 = Student("Hemang Trivedi", 30, 9);
  Student student2 = Student("anjali Paneri", 30, 10);

  Teacher teacher1 = Teacher("Prakruti vyas", 0, "flutter");
  Teacher teacher2 = Teacher("jaydeep ramanuj", 26, "c++");


  School.addPerson();
  School.addPerson();
  School.addPerson();
  School.addPerson();


  student1.printDetails();
  student2.printDetails();

  teacher1.printDetails();
  teacher2.printDetails();



  print("Total People in School: ${School.getTotalPeople()}");
}