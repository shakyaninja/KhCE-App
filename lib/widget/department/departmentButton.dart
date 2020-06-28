import 'package:flutter/material.dart';
import 'package:khwopa_app/widget/department/department.dart';

class DepartmentButton extends StatelessWidget {
  DepartmentButton({Key key, this.image, this.name}) : super(key: key);
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        Navigator.of(context).push(_createRoute());
      }, 
      child: Container(
        margin: const EdgeInsets.only(left: 10, top: 30, right: 10),
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.blue[400],
              Colors.blue[600],
              Colors.blue[900],
            ],
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 20),
            Image.asset(
              "assets/image/department_image/" + image,
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                // fontFamily: "Lobster",
              ),
              textScaleFactor: 1.2,
              textAlign: TextAlign.right,
            ),
          ],
        )
      )
    );
     
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DepartmentInfo(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}