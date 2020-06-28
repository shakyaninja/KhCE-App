import 'package:flutter/material.dart';
import 'package:khwopa_app/widget/notice_view.dart';

class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Cards(
                name:
                    "Self - Assessment Awareness: Survey on COVID - 19 Pandemic"),
            Cards(name: "लकडाउनको भोलिपल्टसम्म कलेज बन्द हुनेबारे । सूचना"),
            Cards(name: "कलेज बन्द हुनेबारे सूचना !"),
            Cards(name: "बिलम्ब शुल्क नलाग्ने बारे जरुरी सूचना ।"),
            Cards(
                name:
                    "प्राध्यापक /प्रयोगशाला सहायकहरुलाई बिदा हुनेबारे सूचना !"),
            Cards(name: "पठन पाठन नहुने बारे । सूचना"),
            Cards(name: "बिलम्ब शुल्क नलाग्ने बारे जरुरी सूचना ।"),
            Cards(
                name:
                    "प्राध्यापक /प्रयोगशाला सहायकहरुलाई बिदा हुनेबारे सूचना !"),
            Cards(name: "पठन पाठन नहुने बारे । सूचना"),
            Cards(
                name:
                    "Self - Assessment Awareness: Survey on COVID - 19 Pandemic"),
            Cards(name: "लकडाउनको भोलिपल्टसम्म कलेज बन्द हुनेबारे । सूचना"),
            Cards(name: "कलेज बन्द हुनेबारे सूचना !"),
            Cards(name: "बिलम्ब शुल्क नलाग्ने बारे जरुरी सूचना ।"),
            Cards(
                name:
                    "प्राध्यापक /प्रयोगशाला सहायकहरुलाई बिदा हुनेबारे सूचना !"),
            Cards(name: "पठन पाठन नहुने बारे । सूचना"),
            Cards(name: "बिलम्ब शुल्क नलाग्ने बारे जरुरी सूचना ।"),
            Cards(
                name:
                    "प्राध्यापक /प्रयोगशाला सहायकहरुलाई बिदा हुनेबारे सूचना !"),
            Cards(name: "पठन पाठन नहुने बारे । सूचना"),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  Cards({Key key, this.name}) : super(key: key);
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset.fromDirection(90, 3),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20),
            Container(
              width: 200,
              child: Text(
                name,
                textScaleFactor: 0.8,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              // width: 40,
              color: Colors.blue[200],
              child: IconButton(
                icon: Icon(
                  Icons.remove_red_eye,
                ),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NoticeView()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.blue[800],
              ),
              width: 50,
              child: IconButton(
                icon: Icon(
                  Icons.file_download,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
