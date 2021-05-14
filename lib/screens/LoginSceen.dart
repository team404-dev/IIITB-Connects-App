import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  /*
  * TODO
  *  - This is supposed to be the login screen.
  *  - It should just contain code for handling UI.
  *  - Network calls should be dealt separately.
  *  - We just need signInWithGoogle button and some texts.
  *  - Deal with UI yourself.
  * */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(child: Text("Login Screen")),
    );
  }
}
