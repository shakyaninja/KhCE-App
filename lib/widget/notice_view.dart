import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class NoticeView extends StatefulWidget {
  NoticeView({Key key}) : super(key: key);

  @override
  _NoticeViewState createState() => _NoticeViewState();
}

class _NoticeViewState extends State<NoticeView> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
    print(Key);
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/notice/hs.pdf');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);
    if (value == 1) {
      document = await PDFDocument.fromAsset('assets/notice/hs.pdf');
    } else if (value == 2) {
      document = await PDFDocument.fromURL(
          "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf");
    } else {
      document = await PDFDocument.fromAsset('assets/notice/hs.pdf');
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Notice'),
          backgroundColor: Color.fromRGBO(23, 53, 92, 1),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              SizedBox(height: 36),
              ListTile(
                title: Text('Load from Assets'),
                onTap: () {
                  changePDF(1);
                },
              ),
              ListTile(
                title: Text('Load from URL'),
                onTap: () {
                  changePDF(2);
                },
              ),
              ListTile(
                title: Text('Restore default'),
                onTap: () {
                  changePDF(3);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(
                  document: document,
                  zoomSteps: 1,
                ),
        ),
      );
}
