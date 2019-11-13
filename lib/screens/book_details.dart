import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final String title;
  final String author;
  final String year;
  final String image;
  final String description;
  final String availability;

  const BookDetail({
    Key key,
    @required this.title,
    @required this.image,
    @required this.year,
    @required this.author,
    @required this.description,
    @required this.availability,
  }) : super(key: key);

  Widget _buildContent(size) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAvatar(size),
          _buildInfo(size),
        ],
      ),
    );
  }

  Widget _buildAvatar(size) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage("${this.image}"), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white30),
      ),
      margin: const EdgeInsets.only(top: 32.0, left: 16.0),
      padding: const EdgeInsets.all(3.0),
      width: size.width / 1.3,
      height: size.height / 1.5,
    );
  }

  Widget _buildInfo(size) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Text(
            this.author,
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
            ),
          ),
          Text(
            this.year,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            color: Colors.black87,
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: size.width / 1.1,
            height: 1.0,
          ),
          Text(
            this.description,
            style: TextStyle(
              color: Colors.black,
              height: 1.4,
            ),
          ),
          Container(
            color: Colors.black87,
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: size.width / 1.1,
            height: 1.0,
          ),
          Text(
            this.availability,
            style: TextStyle(
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Image.asset(artist.backdropPhoto, fit: BoxFit.cover),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.white,
              child: _buildContent(MediaQuery.of(context).size),
            ),
          ),
          Positioned(
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                this.title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
