import 'package:flutter/material.dart';
import 'package:library_app/util/utils.dart';
import 'package:library_app/screens/main_screen.dart';

class SignUp extends StatelessWidget {
  final Function changePage;
  SignUp(this.changePage);

  @override
  Widget build(BuildContext context) {
    return _buildLoginWidget(context: context);
  }

  Column _buildLoginWidget({context: BuildContext}) {
    return Column(
      children: <Widget>[
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          decoration: textDecoration('Nombre'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.emailAddress,
          decoration: textDecoration('Email'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.phone,
          decoration: textDecoration(
            'Número de teléfono',
          ),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          decoration: textDecoration('Contraseña'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        SizedBox(
          height: 25,
        ),
        FlatButton(
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              side: BorderSide(color: Colors.white)),
          padding: EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          color: Theme.of(context).buttonColor,
          textColor: Colors.black,
          child: Text('Registrarse'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return MainScreen();
                },
              ),
            );
          },
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Text(
            'O',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            '¿Ya tienes una cuenta? Inicia sesión ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onPressed: () {
            changePage(true);
          },
        ),
      ],
    );
  }

  Widget _space() {
    return SizedBox(
      height: 10,
    );
  }
}
