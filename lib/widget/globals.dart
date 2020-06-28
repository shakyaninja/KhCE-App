library my_prj.globals;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


bool logged_in = false;
int currentTab = 0;
String nameTab = "Home";
// for the MIS login verification
void check_verification(){
  if(true){
    logged_in = true;
    Fluttertoast.showToast(
        msg: "Logged in succesfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
void main(){
  switch (currentTab) {
      case 0:
        nameTab = "Home";
        break;
      case 1:
        nameTab = "Notice";
        break;
      case 2:
        nameTab = "Bus Tracking";
        break;
      case 3:
        nameTab = "News";
        break;
      default:
        nameTab = "News";
      };
}