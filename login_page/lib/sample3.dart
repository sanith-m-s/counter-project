import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(children: []),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * .10,
                      right: MediaQuery.of(context).size.height * .20,
                      child: Container(
                        width: (MediaQuery.of(context).size.width * .25),
                        height: (MediaQuery.of(context).size.height * .15),
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                                side: BorderSide(
                                  width: (MediaQuery.of(context).size.height * .01),
                                  color: Colors.teal.shade50,
                                ))),
                      ),
                    ),
                    Positioned(
                      top: -MediaQuery.of(context).size.height * .058,
                      right: -MediaQuery.of(context).size.height * .058,
                      child: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/football.png'),
                        radius: (MediaQuery.of(context).size.height * .18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text("Welcome to Camect",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              Text("Please sign in to access your Camect Home",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Devices Shared Cameras",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: (MediaQuery.of(context).size.height * .055),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.red, width: 2.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/google.png"),
                      width: 60,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Sign in with Google",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height * .035),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.blue, width: 2.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/facebook.jpg"),
                      width: 60,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .030,
                    ),
                    Text(
                      "Sign in with Facebook",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height * .035),
              ),
              Text("Not sure what Camect is ?Learn More",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height * .25),
            right: (MediaQuery.of(context).size.width * .05),
            child: CircleAvatar(
              radius: (MediaQuery.of(context).size.height * .025),
              backgroundColor: Colors.greenAccent,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .88,
            right: MediaQuery.of(context).size.width * .85,
            child: Container(
              width: (MediaQuery.of(context).size.width * .25),
              height: (MediaQuery.of(context).size.height * .15),
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(
                      side: BorderSide(
                        width: (MediaQuery.of(context).size.height * .01),
                        color: Colors.red.shade50,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
