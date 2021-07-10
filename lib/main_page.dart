import 'package:flutter/material.dart';
import 'statefull_animated.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.pink[600],
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.lightbulb),
          text: "Stateful Widget",
        ),
        Tab(
          icon: Icon(Icons.satellite),
          text: "Stateless Widget",
        )
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.pink[100],
            appBar: AppBar(
              title: Text("Main Page"),
              backgroundColor: Colors.indigo[300],
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.indigo[600], child: myTabBar)),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(25),
                        child: Text(
                          "I Would Make A Page Route To Show Stateful Widget",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              //fontFamily: 'Oxygen',
                              fontSize: 35,
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      RaisedButton(
                          child: Text(
                            "Statefull Widget",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 30),
                          ),
                          color: Colors.pink[300],
                          shape: StadiumBorder(),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Animated();
                            }));
                          }),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Created By AnthonyKid",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Staatliches',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 400,
                        height: 100,
                        margin: EdgeInsets.all(5),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.dicoding.com/blog/wp-content/uploads/2014/12/dicoding-header-logo.png"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              width: 250,
                              height: 85,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[400],
                                  borderRadius: BorderRadius.circular(15)),
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                "Program terbaru kami\n Bekerja sama dengan partner, kami\n menyelenggarakan beberapa program\n untuk mendukung developer\n Indonesia.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    //fontFamily: 'Oxygen',
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)),
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(top: 10),
                                    child: Icon(Icons.book)),
                                SizedBox(height: 8.0),
                                Text(
                                  "Program \nterbaru",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      //fontFamily: 'Oxygen',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)),
                            margin: EdgeInsets.fromLTRB(30, 20, 0, 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(top: 10),
                                    child: Icon(Icons.adb)),
                                SizedBox(height: 8.0),
                                Text(
                                  "Dicoding \nAcademy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      //fontFamily: 'Oxygen',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigo[400],
                                  borderRadius: BorderRadius.circular(15)),
                              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                "Kenapa Dicoding Academy \nBerbeda Saatnya bijak 0memilih \nsumber belajar. Tak hanya materi \nyang terjamin, Dicoding Academy \njuga memiliki reviewer \nprofesional yang akan \nmengulas kode Anda.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    //fontFamily: 'Oxygen',
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              width: 250,
                              height: 85,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[400],
                                  borderRadius: BorderRadius.circular(15)),
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text(
                                "Kurikulum dikembangkan \n bersama perusahaan \ndan pemilik teknologi \ndunia sesuai kebutuhan \nindustri terkini. ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    //fontFamily: 'Oxygen',
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                          Container(
                            height: 150,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35)),
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(top: 25),
                                    child: Icon(Icons.comment)),
                                SizedBox(height: 8.0),
                                Text(
                                  "Kurikulum \nStandar\nIndustri\nGlobal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      //fontFamily: 'Oxygen',
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Created By AnthonyKid",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Staatliches',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
