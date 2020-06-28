import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  bool _pinned = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
            Image.asset('assets/image/college.jpg',width: MediaQuery.of(context).size.width,),
            Container(
              width: MediaQuery.of(context).size.width,
              // color: Color.fromRGBO(120, 100, 150, 0.2),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color.fromRGBO(100, 120, 150, 0.2), Color.fromRGBO(100, 150, 150, 0.7)],
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1))),
              child: Column(children: <Widget>[
                SizedBox(height: 20),
                Image.asset('assets/image/khwopa_logo1.png',
                    width: 80, height: 80),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome to KhCE',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text('Affliated to Tribhuvan University, Estd. 2008',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                Text('(Dedicated to People & Country)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
                SizedBox(height: 10)
              ]),
            ),
          ]),
          Container(
              padding:
                  EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
              child: Text(
                "\tKhCE is community-based engineering college, undertaken by Bhaktapur Municipality. It is centrally located at culturally rich city Bhaktapur. KhCE will, in every regard, be the right destination for those who aspire to become professional engineers at affordable fees.\n\n\tWith a distant vision of maintaining Bhaktapur's hard-won glory, the college aims to produce highly skilled engineers that will have blends of both indigenous and modern-day technologies. In this regard, the college is aiming to provide quality education in the engineering in the engineering fields which are of prime importance for the development of country.",
                textAlign: TextAlign.justify,
                textScaleFactor: 1.10,
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Chairman's Appeal",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Image.asset(
                    'assets/image/index_image/SunilPrajapati.jpg',
                    width: 300,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Mr. Sunil Prajapati'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "The quality education, in our motto, implies linking education with productive labor, enabling new generation to lead 21st century and encouraging them to serve people and country alike. The Desire of the people of Bhaktapur is to have ' One graduate in each family' and 'Intellectualization of whole society'.",
                      style: TextStyle(
                        fontSize: 14,
                        wordSpacing: 4,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Principal's Voice",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Image.asset(
                    'assets/image/index_image/ErSD.jpg',
                    width: 300,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Er. Sunil Duwal'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "With the primary objective of providing quality education at affordable fee Khwopa College of Engineering was established and undertaken by Bhaktapur Municipality. From the beginning years, it started to maintain its pristine environment and raised to one of the prominent engineering college in the country.",
                      style: TextStyle(
                        fontSize: 14,
                        wordSpacing: 4,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
