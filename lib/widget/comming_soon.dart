import 'package:flutter/material.dart';
import 'package:khwopa_app/widget/home.dart';

class CommingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top:130.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Text('This Feature will be added soon.',style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        'For more Info Please Contact College Administration.'),
                        SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'assets/image/khwopa_logo1.png',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('(+977)1-5122094, 5122098'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('info@khwopa.edu.np'),
                    ),
                  ],
                ),
              ),
              
              RaisedButton(
                color: Color.fromRGBO(23, 53, 92, 1),
                child: Text(
                  'Go Back to Homepage',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
