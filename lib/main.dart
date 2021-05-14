import 'package:flutter/material.dart';
import 'package:iiitb_connects/screens/HomeScreen.dart';
import 'package:iiitb_connects/screens/LoginSceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Future<bool> checkUserLogin() async {
    /*
    * TODO
    *  - Check user login status
    *  - What I typically do is, check the stored token.
    *  - If present and has not expired then true else false.
    *  - Also, if its true, load data for the user.
    *  - For now just sending true.
    * */
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IIITB Connects',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: FutureBuilder<bool>(
            future: checkUserLogin(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text("Something went wrong!"));
              } else {
                if(snapshot.data!)
                  return HomeScreen();
                else
                  return LoginScreen();
              }
            },
          ),
        ));
  }
}
