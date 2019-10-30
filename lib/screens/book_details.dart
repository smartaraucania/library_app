import 'dart:ui';
import 'package:flutter/material.dart';

class BookDetail extends StatefulWidget {
  final String title;
  final String author;
  final String year;
  final String image;
  final String description;

  const BookDetail({
    Key key,
    @required this.title,
    @required this.image,
    @required this.year,
    @required this.author,
    @required this.description,
  }) : super(key: key);

  @override 
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          buildBookInfo(MediaQuery.of(context).size),
          Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }

  Widget buildBookInfo(Size size) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 25,
            child: buildImage(size),
          ),
          //SizedBox(height: 0.0),
          Expanded(
            flex: 0,
            child: buildTitleRow(),
          ),
          Expanded(
            child: buildAuthorYearRow(),
            flex: 0,
          ),
          Expanded(
            child: buildDescriptionRow(),
          )
        ],
      ),
    );
  }

  Widget buildImage(Size size) {
    return Container(
      width: size.width / 1.1,
      height: size.height / 1.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Column(children: <Widget>[
          Container(
            width: size.width / 1.3,
            height: size.height / 1.5,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("${widget.image}"), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30)),
          ),
        ]),
      ),
    );
  }

  Widget buildTitleRow() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            "${widget.title}",
            style: MyTextStyle().titles,
          ),
        ),
      ],
    );
  }

  Widget buildAuthorYearRow() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            "${this.widget}" + " - ${widget.year}",
            style: MyTextStyle().normalText,
          ),
        ),
      ],
    );
  }

  Widget buildDescriptionRow() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Text(
            "${widget.description}",
            style: MyTextStyle().normalText,
          ),
        ),
      ],
    );
  }
}

class MyTextStyle extends TextStyle {
  final TextStyle normalText = TextStyle(
    fontSize: 16,
    color: Colors.black87,
    fontFamily: 'Arvo',
  );

  final TextStyle titles = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black87,
    fontFamily: 'Arvo',
  );
}
