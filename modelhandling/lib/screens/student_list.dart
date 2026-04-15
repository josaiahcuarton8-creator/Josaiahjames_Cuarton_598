import 'package:flutter/material.dart';
import 'package:modelhandling/model/student_model.dart';
import 'package:modelhandling/model_folder/student_data.dart';


class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  final StudentService _studentService= StudentService();
  List<Student> students = [];

  bool isloading = true;
  String? errormessage;

  Future<void> loadStudents() async {
    try{
      final loadstudent = await  _studentService.fetchStudents();
      setState(() {
        students = loadstudent;
        isloading = false;
      });
    }
    catch(e) {
      setState(() {
        isloading = false;
        errormessage = 'Failed to load student data $e';
      });
    }
  }

  @override
  void initState() {
    loadStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index){
        final student = students[index];
        return ListTile(
          title: Text("${student.name}"),
          subtitle: Text("${student.age} | ${student.gpa}"),
        );
      }),
    );
  }


}