import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50], //this is the background of the page
      appBar: AppBar(
        //this is the appbar
        backgroundColor:
            Colors.indigo[300], //this is the background color of the appbar
        title: Text(
          "Profile Animation", //this is text inside the appbar
          style: TextStyle(
              color: Colors.white), //this is the text color inside the appbar
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Hero(
              //im using hero so my new page slides from the widget that we tap
              tag:
                  'profilepicture', //the tag is optional for the name. you can change it but make sure it is the same with the other page
              child: ClipRRect(
                //im using cliprrecyt for cutting the edge of a square picture to make it more goodlooking
                borderRadius: BorderRadius.circular(
                    100), //to cut the rectangle sharp sides
                child: Container(
                  width: 200, //the width of my picture
                  height: 200, //the height of my picture
                  child: Image(
                    fit: BoxFit.cover, //fit my picture inside the cover
                    image: NetworkImage(
                        //im using network image so i can take picture using URL
                        "https://i1.rgstatic.net/ii/profile.image/958432911835138-1605519621316_Q128/Anthony-Dicky-Rustan-2.jpg"),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  child: Text(
                    "My Github Is\n AnthonyKid",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Staatliches',
                        color: Colors.indigo[300]),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "I'm A Beginner \n At Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Staatliches',
                        color: Colors.pink[700]),
                  ),
                ),
              ),
            ],
          ),
          RaisedButton(
              child: Text(
                "Thank From Me",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
              color: Colors.pink[300],
              shape: StadiumBorder(),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Thankyou Very Much For Reviewing My App'),
                      duration: Duration(seconds: 5),
                    ),
                  );
              }),
        ],
      ),
    );
  }
}
