// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }
}

Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Mybutton(
          image: Image.asset('images/glogo.png'),
          text: Text(
            'Login with Google',
            style: TextStyle(color: Colors.black87, fontSize: 15.0),
          ),
          color: Colors.white,
          radius: 4.0,
          onPressed: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        ButtonTheme(
          height: 50.0,
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/flogo.png'),
                Text(
                  'Login with Facebook',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('images/glogo.png'),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF334D92),
              minimumSize: Size(100, 50),
            ),
            onPressed: () {},
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ButtonTheme(
          height: 50.0,
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  'Login with Email',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              minimumSize: Size(100, 50),
            ),
            onPressed: () {},
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
      ],
    ),
  );
}
