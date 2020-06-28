import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:khwopa_app/widget/bus.dart';
import 'package:khwopa_app/widget/comming_soon.dart';
import 'package:khwopa_app/widget/department.dart';
import 'package:khwopa_app/widget/home.dart';
import 'package:khwopa_app/widget/login.dart';
import 'package:khwopa_app/widget/mis.dart';
import 'package:khwopa_app/widget/notice1.dart';
import 'globals.dart' as globals;

class HiddenMenuPage extends StatefulWidget {
  static final String path = "lib/src/pages/navigation/hiddenmenu.dart";
  _HiddenMenuPageState createState() => _HiddenMenuPageState();
}

class ShapesPainter extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = Color.fromRGBO(33, 97, 140, 0.7);
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 3, size.height / 2);
    var path = Path();

    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
        size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
        size.width * 0.27, size.height * 0.60);
    path.quadraticBezierTo(
        size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
        size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.93, size.width, size.height * 0.60);
    path.lineTo(size.width, size.height);

    path.close();

    paint.color = Color.fromRGBO(41, 128, 185, 0.7);
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
        size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.60);
    path.lineTo(size.width, size.height);
    path.close();

    paint.color = Color.fromRGBO(133, 193, 233, 0.7);
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
        size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.40,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
        size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.90, size.width, 0);
    path.lineTo(size.width, size.height);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class _HiddenMenuPageState extends State<HiddenMenuPage>
    with TickerProviderStateMixin {
  String nameTab;
  bool menuShown = false;
  double appbarHeight = 80.0;
  double menuHeight = 0.0;
  bool onSelected = false;
  Animation<double> openAnimation, closeAnimation;
  AnimationController openController, closeController;

  void initState() {
    super.initState();
    openController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    closeController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    openAnimation = Tween(begin: 0.0, end: 1.0).animate(openController)
      ..addListener(() {
        setState(() {
          menuHeight = openAnimation.value;
        });
      });
    closeAnimation = Tween(begin: 1.0, end: 0.0).animate(closeController)
      ..addListener(() {
        setState(() {
          menuHeight = closeAnimation.value;
        });
      });
  }

  _handleMenuPress() {
    setState(() {
      openController.reset();
      closeController.reset();
      menuShown = !menuShown;
      menuShown ? openController.forward() : closeController.forward();
    });
  }

  @override
  void dispose() {
    openController.dispose();
    closeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 53, 92, 1),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Color.fromRGBO(23, 53, 92, 1),
              height: menuHeight,
              width: 40,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(menuShown ? Icons.cancel : Icons.menu),
                        color: Colors.white,
                        onPressed: _handleMenuPress,
                      ),
                      Text(menuShown ? "Menu" : globals.nameTab,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0))
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 0.0),
                                colors: [
                                  const Color(0xEE5dade2),
                                  const Color(0x00999999)
                                ],
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: FlatButton(
                                  textColor:
                                      onSelected ? Colors.black : Colors.white,
                                  child: Text('Department'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Department()));
                                  },
                                ))
                              ],
                            )),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 0.0),
                                colors: [
                                  const Color(0xEE5dade2),
                                  const Color(0x00999999)
                                ],
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: FlatButton(
                                  textColor:
                                      onSelected ? Colors.black : Colors.white,
                                  child: Text('Notice'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Notice()));
                                  },
                                ))
                              ],
                            )),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 0.0),
                                colors: [
                                  const Color(0xEE5dade2),
                                  const Color(0x00999999)
                                ],
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: FlatButton(
                                  textColor:
                                      onSelected ? Colors.black : Colors.white,
                                  child: Text('Entrance'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CommingSoon()));
                                  },
                                ))
                              ],
                            )),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 0.0),
                                colors: [
                                  const Color(0xEE5dade2),
                                  const Color(0x00999999)
                                ],
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: FlatButton(
                                  textColor:
                                      onSelected ? Colors.black : Colors.white,
                                  child: Text('Bus Tracking'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CommingSoon()));
                                  },
                                ))
                              ],
                            )),
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 0.0),
                                colors: [
                                  const Color(0xEE5dade2),
                                  const Color(0x00999999)
                                ],
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: FlatButton(
                                  textColor:
                                      onSelected ? Colors.black : Colors.white,
                                  child: Text('MIS Login'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
                                ))
                              ],
                            )),
                        CustomPaint(
                          painter: ShapesPainter(),
                          child: Container(
                            height: 360,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  margin: EdgeInsets.only(
                      top: menuHeight * (constraints.maxHeight - 60) + 60),
                  color: Colors.transparent,
                  child: Material(
                    elevation: 16.0,
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(46.0)),
                    ),
                    child: Home(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
