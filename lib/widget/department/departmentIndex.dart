import 'package:flutter/material.dart';

class DepartmentIndex extends StatefulWidget {
  const DepartmentIndex({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DepartmentIndexState();
}

class _DepartmentIndexState extends State<DepartmentIndex> {
  bool _pinned = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue.shade600,Colors.blue.shade400],begin: Alignment(0.5, 0),end: Alignment(0.5, 1))),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Image.asset('assets/image/khwopa_logo1.png',width:80,height:80),
                SizedBox(height: 10,),
                Text('Welcome to Computer Department',textAlign: TextAlign.center,style: TextStyle(color:Colors.white,fontSize: 20),),
                Text('Affliated to Tribhuvan University, Estd. 2008',textAlign: TextAlign.center,style: TextStyle(color:Colors.white,fontSize: 15)),
                Text('(Dedicated to People & Country)',textAlign: TextAlign.center,style: TextStyle(color:Colors.white)),
                SizedBox(height: 20)
              ]
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:15,left:10,right: 10,bottom: 10),
            child: Text(
                "Computer engineering is a driving force behind innovation and technologies that are changing the world, pushing computing power and capabilities to the edge. Bridging hardware (e.g. microprocessors, tablets) and software, computer engineering has implications across many industries, ranging from technology to health care, green energy to aeronautics. The following guide serves as a high-level overview of the computer engineering profession, including insight into various career paths, emerging industries, employment opportunities, companies that are hiring computer engineers, skills and knowledge categories, as well as tips for preparing for computer engineering careers.",
                textAlign: TextAlign.justify,
                textScaleFactor: 1.05,
              )
          )
        ]
      ),
    );
  }
}
