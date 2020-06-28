import 'package:flutter/material.dart';
import 'package:khwopa_app/widget/department.dart';
import 'package:khwopa_app/widget/menu.dart';
import 'package:khwopa_app/widget/mis.dart';
import 'package:khwopa_app/widget/news.dart';
import 'package:khwopa_app/widget/notice1.dart';
import 'package:khwopa_app/widget/splash.dart';
import 'package:khwopa_app/widget/bus.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khwopa College of Engineering',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/menu': (BuildContext context) => HiddenMenuPage(),
        '/department': (BuildContext context) => Department(),
        '/notice': (BuildContext context) => Notice(),
        '/news': (BuildContext context) => News(),
        '/bus': (BuildContext context) => Bus(),
        '/mis': (BuildContext context) => Mis(),
      },
    );
  }
}
