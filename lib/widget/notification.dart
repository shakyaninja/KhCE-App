import 'package:flutter/material.dart';


class FastNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0,0),
          end: Alignment(1, 1),
          colors: [
            Colors.blue[800],Colors.blue,Colors.blue[200]
          ],
           
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text('Fast', style: TextStyle(fontFamily: 'Forte',fontSize: 50,color: Colors.white),textAlign: TextAlign.left,),
          SizedBox(height: 30),
          Text('Notifications', style: TextStyle(fontFamily: 'Forte',fontSize: 50,color: Colors.white),textAlign: TextAlign.left,),
          SizedBox(height: 30),
          Image.asset('assets/image/onboard/2.png'),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
