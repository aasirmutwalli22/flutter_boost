# flutter_boost

A package for simple and fast flutter development

---
## installing dependecy

```yaml
dependencies:
  flutter_boost:
    git:
      url: https://github.com/aasirmutwalli22/flutter_boost.git
```

### let package
```dart
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
> with out let
```dart
    ListView.builder(
        itemCount: students.length;
        itemBuilder: (context, index) => 
        ListTile(
            title: Text(Student.fromDynamic(students[index]).name),
            subTitle: Text(Student.fromDynamic(students[index]).age.toString())
        )
    );
```
> with let
```dart
    ListView.builder(
        itemCount: students.length;
        itemBuilder: (context, index) => 
        Let(
            let: Student.fromDynamic(students[index]),
            builder: (Student student) => 
            ListTile(
                title: Text(student.name),
                subTitle: Text(student.age.toString())
            )
        );
    );
```