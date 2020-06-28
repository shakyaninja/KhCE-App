import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:khwopa_app/widget/bus.dart';
import 'package:khwopa_app/widget/department.dart';
import 'package:khwopa_app/widget/enquiry.dart';
import 'package:khwopa_app/widget/login.dart';
import 'package:khwopa_app/widget/notice1.dart';
import 'package:khwopa_app/widget/news.dart';
import 'package:khwopa_app/widget/index.dart';
import 'globals.dart' as globals;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// int currentTab; // to keep track of active tab index

class _HomeState extends State<Home> {
  int currentTab = 0;
  bool login = false;
  bool logged_in = false;
  final List<Widget> screens = [
    IndexPage(),
    Notice(),
    Bus(),
    News(),
    Department(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = IndexPage(); // Our first view in viewport

  Icon check_login() {
    if (login == false && logged_in == true) {
      Fluttertoast.showToast(
          msg: "Logged In succesfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0);
      return (Icon(Icons.home));
    } else if (login == true && logged_in == false) {
      // return (Icon(Icons.add));
      return (Icon(Icons.school));
    } else if (login == false && logged_in == false) {
      // return (Icon(Icons.close));
      return (Icon(Icons.school));
    } else {
      // return (Icon(Icons.add));
      return (Icon(Icons.school));
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: PageStorage(
            child: currentScreen,
            bucket: bucket,
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Enquiry',
            elevation: 2.0,
            backgroundColor: Color.fromRGBO(23, 53, 92, 1),
            onPressed: () {
              // if (login == true) {
              //   setState(() {
              //     currentScreen = LoginPage();
              //   });
              //   login = false;
              // } else {
              //   setState(() {
              //     currentScreen = IndexPage();
              //   });
              //   login = true;
              // }
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Enquiry()));
            },
            child: check_login(),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 4,
            color: Color.fromRGBO(23, 53, 92, 1),
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                          setState(() {
                            currentTab = 0;
                            globals.currentTab = currentTab;
                            globals.main();
                            currentScreen =
                                IndexPage(); // if user taps on this home tab will be active
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.white,
                            ),
                            Text(
                              'Home Page',
                              style: TextStyle(
                                color: currentTab == 0
                                    ? Colors.blue
                                    : Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                          setState(() {
                            currentTab = 1;
                            globals.currentTab = currentTab;
                            globals.main();
                            currentScreen =
                                Notice(); // if user taps on this notice tab will be active
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.notifications_active,
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.white,
                            ),
                            Text(
                              'Notice',
                              style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.blue
                                    : Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Right Tab bar icons

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                          setState(() {
                            currentTab = 2;
                            globals.currentTab = currentTab;
                            globals.main();
                            currentScreen =
                                Bus(); // if user taps on this bus tab will be active
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.white,
                            ),
                            Text(
                              'Our Location',
                              style: TextStyle(
                                color: currentTab == 2
                                    ? Colors.blue
                                    : Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                          setState(() {
                            currentTab = 3;
                            globals.currentTab = currentTab;
                            globals.main();
                            currentScreen =
                                News(); // if user taps on this news tab will be active
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.event_note,
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.white,
                            ),
                            Text(
                              'News',
                              style: TextStyle(
                                color: currentTab == 3
                                    ? Colors.blue
                                    : Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
