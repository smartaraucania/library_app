import 'package:flutter/material.dart';
import 'package:library_app/screens/auth/login.dart';
import 'package:library_app/screens/auth/signup.dart';

class Auth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthState();
  }
}

class _AuthState extends State<Auth> {
  bool _isLogin = true;
  void changePage(bool isLogin) {
    setState(() {
      _isLogin = isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              "assets/home1.jpg",
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo.jpg"))),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Library App',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                _isLogin ? Login(changePage) : SignUp(changePage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
