import 'dart:math';
import 'package:flutter/material.dart';
import 'profile.dart';

class Animated extends StatefulWidget {
  @override
  _AnimatedState createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text("Animated Container"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
              child: Hero(
                tag: 'profilepicture',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i1.rgstatic.net/ii/profile.image/958432911835138-1605519621316_Q128/Anthony-Dicky-Rustan-2.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              "Tap Either My Profile Picture Or The Rectangular Below To Know More About My Stateful Widget",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Center(
            child: Container(
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: AnimatedContainer(
                  color: Color.fromARGB(255, random.nextInt(256),
                      random.nextInt(256), random.nextInt(256)),
                  duration: Duration(seconds: 1),
                  width: 80.0 + random.nextInt(101),
                  height: 80.0 + random.nextInt(101),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
