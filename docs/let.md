# let package
> import 
```dart
  // to import all widget inside 
  import 'package:flutter_boost/let.dart';
  //or only let widget
  import 'package:flutter_boost/let.dart';
```
```dart
  import 'dart:convert';    // for json decode

  class Student{
    String name;
    int age;
    Student.fromDynamic(dynamic map) : 
    name = map['name'],
    age  = map['age'];
  }
  var json = [
    {'name':'abc', 'age': 20},
    {'name':'mno', 'age': 21},
    {'name':'xyz', 'age': 22}
  ];
  var students = jsonDecode(json);    // list of dynamic
```
> without let
```dart
  ListView.builder(
    itemCount: students.length, 
      itemBuilder: (BuildContext context, int index) => 
      ListTile(
        title: Text(Student.fromDynamic(students[index]).name),
        subTitle: Text(Student.fromDynamic(students[index]).age.toString()
      ),
    ),
  );
```
> with let (dynamic type)
```dart
  ListView.builder(
    itemCount: students.length, 
    itemBuilder: (BuildContext context, int index) => 
    Let(
      let: Student.fromDynamic(students[index]),
      builder: (student) => 
      ListTile(
        title: Text(student.name),
        subTitle: Text(student.age.toString()),
      ),
    ),
  );
```
> with let (type specific)
```dart
  ListView.builder(
    itemCount: students.length, 
    itemBuilder: (BuildContext context, int index) => 
    Let<Student>(
      let: Student.fromDynamic(students[index]),
      builder: (student) => 
      ListTile(
        title: Text(student.name),
        subTitle: Text(student.age.toString()),
      ),
    ),
  );
```