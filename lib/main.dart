import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Portfolio"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 20, // to apply margin in the main axis of the wrap
              runSpacing: 20,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset('assets/images/image2.jpeg'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image.asset('assets/images/image1.jpeg'),
                      ),
                      Expanded(
                        child: Image.asset('assets/images/image2.jpeg'),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
                  //const EdgeInsets.only(top:50.0,left: 30.0),
                  child: Text(
                    "Chiama Ogechi",
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Mobile Developer',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child: Text(
                        "A quick learner who can absorb new ideas and can communicate clearly and effectively.\nA team player who works with others to create solutions.I'\m keen to opportunity to grow, improve and learn.",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Connect with me on",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/graphics/twitter.png',
                        height: 50, width: 40),
                    Image.asset('assets/graphics/linkedln.png',
                        height: 50, width: 40),
                    Image.asset('assets/graphics/github.png',
                        height: 50, width: 40)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
