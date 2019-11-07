import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeDemo(),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.redAccent,
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RegisterFormDemo(),
          ],
        ),
      ),
    );
  }
}

class RegisterFormDemo extends StatefulWidget {
  @override
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {

  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void _registerForm () {

    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      debugPrint('username = $username, password = $password');
    }else {
      setState(() {
        autovalidate = true;
      });
    }

  }

  String _validateUsername (value) {
    if (value.isEmpty) {
      return 'Username is Required';
    }
    return null;
  }

  String _validatePassword (value) {
    if (value.isEmpty) {
      return 'Password is Required';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: _validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Passwrod',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: _validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 20.0),
          Container(
            height: 40.0,
            width: double.infinity,
            child: RaisedButton(
              child: Text('Register'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: _registerForm,
            ),
          ),
        ],
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(
        () {
          debugPrint('input : ${textEditingController.text}');
        }
    );

  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value) {
//        debugPrint('input: $value');
//      },
      onSubmitted: (value) {
        debugPrint('submited: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.phone),
        labelText: 'Phone',
          hintText: 'Enter phone number',
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}
