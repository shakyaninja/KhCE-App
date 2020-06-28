import 'package:flutter/material.dart';
import 'package:khwopa_app/widget/department/departmentButton.dart';

class Department extends StatefulWidget {
  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Departments'),
          backgroundColor: Color.fromRGBO(23, 53, 92, 1),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
            child: Column(children: <Widget>[
              SizedBox(
                height: 40,
              ),
              DepartmentButton(
                  image: "science/science.png", name: "Science Deparment"),
              DepartmentButton(
                  image: "civil/civil.png", name: "Civil Deparment"),
              DepartmentButton(
                  image: "computer/computer.png", name: "Computer Deparment"),
              DepartmentButton(
                  image: "electrical/electrical.png",
                  name: "Electrical Deparment"),
            ]),
          ),
        ));
  }
}
