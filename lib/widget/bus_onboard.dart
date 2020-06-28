import 'package:flutter/material.dart';


class BusOnboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5,0),
          end: Alignment(1, 0.8),
          colors: [
            Colors.blue[800],Colors.blue,Colors.blue[200]
          ],
           
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
          Text('Bus Tracking', style: TextStyle(fontFamily: 'Forte',fontSize: 50,color: Colors.white),textAlign: TextAlign.left,),
          SizedBox(height: 20),
          Text('Feature', style: TextStyle(fontFamily: 'Forte',fontSize: 50,color: Colors.white),),
          SizedBox(height: 20),
          Text('Locate your Bus', style: TextStyle(fontFamily: 'Forte',fontSize: 30,color: Colors.white),textAlign: TextAlign.left,),
          SizedBox(height: 20),
          Text('(Comming soon !)', style: TextStyle(fontFamily: 'Forte',fontSize: 30,color: Colors.white),textAlign: TextAlign.left,),
          Image.asset('assets/image/onboard/1.png'),
        ],
      ),
    );
  }
}
