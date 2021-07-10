import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_submission_dicoding/main.dart';
import 'main_page.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class LoginPage extends StatelessWidget {
  double smallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double bigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text("Welcoming Page"),
        backgroundColor: Colors.indigo[300],
      ),
      body: Stack(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 350),
          child: Center(
            child: Text(
              "Welcome To My Submission For Beginner Dicoding :)",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Staatliches',
                  fontSize: 35,
                  color: Colors.indigo[300],
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Center(
          child: RaisedButton(
              child: Text(
                "Continue To The App",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              color: Colors.pink[200],
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              }),
        ),
        Positioned(
            right: -bigDiameter(context) / 4,
            bottom: -bigDiameter(context) / 4,
            child: Container(
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple[200],
                      Colors.pink[500],
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            )),
        Positioned(
            right: -bigDiameter(context) / 2,
            bottom: -bigDiameter(context) / 2,
            child: Container(
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple[200],
                      Colors.pink[500],
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            )),
      ]),
    );
  }
}
