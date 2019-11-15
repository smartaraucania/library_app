import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/c25.jpeg"), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(blurRadius: 7.0, color: Colors.black),
                  ]),
            ),
            clipper: GetClipper(),
          ),
          Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/cm4.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(75.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 7.0, color: Colors.black.withOpacity(0.6)),
                      ]),
                ),
                SizedBox(
                  height: 90.0,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  height: 30,
                  width: 95.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.black.withOpacity(0.6),
                    color: Theme.of(context).accentColor,
                    elevation: 10.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 1.8);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
