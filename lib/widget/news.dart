// import 'dart:html';

import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[300],Colors.blue[600],Colors.blue[900]],
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1)
            )
          ),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                LeftNews(title: "Engineering College Student and Korean People combinly visit the Panauti Temple",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20),
                RightNews(title: "COVID-19 be safe and stay alert",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20,),
                LeftNews(title: "Certificate and Prize Distribution Program",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20),
                RightNews(title: "Interaction Program on \"HERITAGE CONSERVATION\"",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20,),
                LeftNews(title: "Engineering College Student and Korean People combinly visit the Panauti Temple",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20),
                RightNews(title: "COVID-19 be safe and stay alert",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20,),
                LeftNews(title: "Certificate and Prize Distribution Program",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20),
                RightNews(title: "Interaction Program on \"HERITAGE CONSERVATION\"",image: "assets/image/news/1.jpg",news: "b0809971-eb4e-5c1f-bd0b-44c4ea17ee2c",),
                SizedBox(height: 20,),
              ],
            ),
          ),
        )
      )
    );
  }
}

class LeftNews extends StatelessWidget{
  LeftNews({Key key,this.title,this.image,this.news}) : super(key:key);
  String title;
  String image;
  String news;
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top:5,bottom:5,right:5),
      height: 120,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(50,20),
                  bottomRight: Radius.elliptical(50,20),
                ),
              child: Image.asset(this.image,width: 140,height: 140,),
            ),
            VerticalDivider(thickness: 2,color: Colors.white,),
            Expanded(
              child:Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Learn more',
                      style: TextStyle(
                        fontSize:10,
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      )
                    )
                  ],
                  ),
              ) 
            
            )
          ],
        )
    );

  }
}

class RightNews extends StatelessWidget{
  RightNews({Key key,this.title,this.image,this.news}) : super(key:key);
  String title;
  String image;
  String news;
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top:5,bottom:5,left:5),
      height: 120,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child:Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Readmore',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 10,
                      )
                    )
                  ],
                  ),
              ) 
            
            ),
            VerticalDivider(thickness: 2,color: Colors.white,),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(50,20),
                  bottomLeft: Radius.elliptical(50,20),
                ),
              child: Image.asset(this.image,width: 140,height: 140,),
            ),
          ],
        )
    );
  }
}
