import 'package:flutter/material.dart';

class SlideLibraryTrend extends StatefulWidget {
  final String img;
  final String name;
  final String description;

  SlideLibraryTrend({
    Key key,
    @required this.name,
    @required this.img,
    @required this.description,
  }) : super(key: key);

  @override
  _SlideLibraryState createState() => _SlideLibraryState();
}

class _SlideLibraryState extends State<SlideLibraryTrend> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.9,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 2.0,
          // child: InkWell(
          //   onTap: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (BuildContext context) {
          //           return BookDetail(
          //               image: "${widget.img}",
          //               title: "${widget.title}",
          //               author: "${widget.author}",
          //               year: "${widget.year}",
          //               description: "${widget.description}",
          //               availability: "${widget.availability}");
          //         },
          //       ),
          //     );
          //   },
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3.7,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          "${widget.img}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "${widget.name}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 7.0),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "${widget.description}",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      // ),
    );
  }
}
