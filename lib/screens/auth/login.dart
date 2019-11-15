import 'package:flutter/material.dart';
import 'package:library_app/screens/main_screen.dart';
import 'package:library_app/util/utils.dart';

class Login extends StatefulWidget {
  final Function changePage;

  Login(this.changePage);

  @override
  State<StatefulWidget> createState() {
    return _LoginState(changePage);
  }
}

class _LoginState extends State<Login> {
  final Function _changePage;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _loginData = {'email': null, 'password': Null};
  _LoginState(this._changePage);

  @override
  Widget build(BuildContext context) {
    return _buildLoginWidget(_formKey, context: context);
  }

  Form _buildLoginWidget(GlobalKey formkey, {context: BuildContext}) {
    Widget _buildEmailField() {
      return TextFormField(
        // autovalidate: true,
        validator: (String value) {
          if (!isEmail(value) || value.trim().isEmpty)
            return 'Por favor ingresa un email valido.';
        },

        style: TextStyle(color: Colors.white),
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Email'),
        onSaved: (String value) {
          _loginData['email'] = value;
        },
      );
    }

    Widget _buildPasswordField() {
      return TextFormField(
        initialValue: '', // used to set the initial value
        validator: (String value) {
          if (value.trim().isEmpty) return 'Por favor ingresa tu contraseña.';
        },
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Contraseña'),
        onSaved: (String value) {
          _loginData['password'] = value;
        },
      );
    }

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _buildEmailField(),
          SizedBox(
            height: 15,
          ),
          _buildPasswordField(),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 25, right: 5),
              child: Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(color: Colors.white),
              ),
            ),
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
            child: Text('Iniciar Sesión'),
            onPressed: () {
              _formKey.currentState.save();

              if (!_formKey.currentState.validate()) {
                return;
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return MainScreen();
                    },
                  ),
                );
              }
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
              'Crea una nueva cuenta, Registrarse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: () {
              _changePage(false);
            },
          ),
        ],
      ),
    );
  }
}
