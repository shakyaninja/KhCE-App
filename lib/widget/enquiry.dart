import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khwopa_app/widget/fee.dart';

class Enquiry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Enquiry')),
        backgroundColor: Color.fromRGBO(23, 53, 92, 1),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset('assets/image/khwopa_logo1.png'),
                        radius: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Khwopa College of Engineering',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/image/department_image/computer/computer.png',
                                    width: 30,
                                  ),
                                  //  Icon(FontAwesomeIcons.laptopCode,size: 32,color: Colors.red,),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BCT',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/image/department_image/electrical/electrical.png',
                                    width: 40,
                                  ),

                                  //  Icon(FontAwesomeIcons.solidLightbulb,size: 32,color: Colors.yellow,),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BEL',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/image/department_image/civil/civil.png',
                                    width: 55,
                                  ),

                                  // Icon(
                                  //   FontAwesomeIcons.home,
                                  //   size: 32,
                                  //   color: Colors.lightBlue,
                                  // ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'BCE',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('(+977)1-5122094, 5122098'),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text('info@khwopa.edu.np'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blue[200],
                          ),
                          Icon(
                            FontAwesomeIcons.googlePlus,
                            color: Colors.redAccent,
                          ),
                          Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue[600],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: RaisedButton(
                          color: Colors.blue[900],
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> Fee()));
                          },
                          child: Text(
                            'Fee Structures',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
