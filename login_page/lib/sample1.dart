import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: 850,
                width: 800,
                child: Stack(
                  children: [
                    Positioned(
                      top: 70,
                      left: 10,
                      height: 150,
                      width: 300,
                      child: Container(
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                                side: BorderSide(
                                  width: 10,
                                  color: Colors.teal.shade50,
                                ))),
                      ),
                    ),
                    Positioned(
                      height: 300,
                      width: 700,
                      top: -50,
                      left: -80,
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/football.png"),
                          ),
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 700,
                      left: -150,
                      height: 150,
                      width: 300,
                      child: Container(
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                                side: BorderSide(
                                  width: 10,
                                  color: Colors.red.shade50,
                                ))),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        left: 190,
                        height: 40,
                        width: 300,
                        child: Container(
                          child: PhysicalShape(
                            color: Colors.green,
                            shadowColor: Colors.green,
                            elevation: 18,
                            clipper: ShapeBorderClipper(shape: CircleBorder()),
                            child: Container(
                              height: 150,
                              width: 150,
                            ),
                          ),
                        )
                    ),
                    Positioned(
                      top: 300,
                      left: 30,
                      child: Container(
                        child: Text(
                          "Welcome to Camect",
                          style:
                          TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 370,
                      left: 45,
                      child: Container(
                        child: Text(
                          "Please sign in to access your Camect",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 390,
                      left: 60,
                      child: Container(
                        child: Text(
                          "Home Devices & Shared Cameras",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 460,
                      left: 45,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                    width: 2.0,
                                    color: Colors.red,
                                  ),
                                  fixedSize: Size(300, 70),
                                  primary: Colors.white,
                                  onPrimary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Wrap(children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 10),
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/google.png"),
                                          height: 45.0,
                                          width: 45.0,
                                        ),
                                      ),
                                      Text(
                                        "Sign in with Google",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ]),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 550,
                      left: 45,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                    width: 2.0,
                                    color: Colors.blueAccent,
                                  ),
                                  fixedSize: Size(300, 70),
                                  primary: Colors.white,
                                  onPrimary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Wrap(children: <Widget>[
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 10),
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/facebook.png"),
                                          height: 50.0,
                                          width: 50.0,
                                        ),
                                      ),
                                      Text(
                                        "Sign in with Facebook",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ]),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 650,
                      left: 30,
                      child: Container(
                        child: Text(
                          "Not sure what Camect is? ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 650,
                      left: 260,
                      child: Container(
                        child: Text(
                          "Learn More",
                          style: TextStyle(fontSize: 20, color: Colors.tealAccent),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 770,
                      left: 160,
                      height: 150,
                      width: 300,
                      child: Container(
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                                side: BorderSide(
                                  width: 10,
                                  color: Colors.blue.shade50,
                                ))),
                      ),
                    ),
                    Positioned(
                      top: 65,
                      left: 20,
                      child: Container(
                        child: Image(
                          image: AssetImage("assets/images/symbol.png"),
                          height: 55.0,
                          width: 50.0,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
