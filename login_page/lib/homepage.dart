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
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Stack(children: [
              Container(
                color: Colors.white,
                height: 850,
                width: 800,
                child: Stack(children: [
                  Positioned(
                    right: MediaQuery.of(context).size.height * .20,
                    top: (MediaQuery.of(context).size.height * .10),
                    child: Container(
                      width: (MediaQuery.of(context).size.height * .25),
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
                    top: MediaQuery.of(context).size.height * .8,
                    left: -MediaQuery.of(context).size.height * .15,
                    height: MediaQuery.of(context).size.height * .15,
                    width: MediaQuery.of(context).size.height * .3,
                    child: Container(
                      width: (MediaQuery.of(context).size.height * .25),
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
                  Positioned(
                    top: MediaQuery.of(context).size.height * .8,
                    left: MediaQuery.of(context).size.height * .15,
                    height: MediaQuery.of(context).size.height * .16,
                    width: MediaQuery.of(context).size.height * .3,
                    child: Container(
                      width: (MediaQuery.of(context).size.height * .25),
                      height: (MediaQuery.of(context).size.height * .15),
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: CircleBorder(
                              side: BorderSide(
                                width: (MediaQuery.of(context).size.height * .01),
                                color: Colors.blue.shade50,
                              ))),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .33,
                    left: MediaQuery.of(context).size.width * .180,
                    child: Container(
                      child: Text(
                        "Welcome to Camect",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                  height: 850,
                  width: 800,
                  child: Stack(children: [
                    Positioned(
                      right: -(MediaQuery.of(context).size.height * .05),
                      top: -(MediaQuery.of(context).size.height * .10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.height * .4,
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
                        top: MediaQuery.of(context).size.height * .25,
                        right: -(MediaQuery.of(context).size.height * .13),
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.height * .39,
                        child: Container(
                          child: PhysicalShape(
                            color: Colors.green,
                            shadowColor: Colors.green,
                            elevation: 18,
                            clipper: ShapeBorderClipper(shape: CircleBorder()),
                            child: Container(
                              height: 150,
                            ),
                          ),
                        )),
                    Positioned(
                      top: MediaQuery.of(context).size.height * .40,
                      left: MediaQuery.of(context).size.width * .13,
                      child: Container(
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "Please sign in to access your Camect ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Home Devices & Shared Cameras",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01),
                              child: Positioned(
                                top: MediaQuery.of(context).size.height * .53,
                                left: MediaQuery.of(context).size.width * .120,
                                child: Center(
                                  child: Container(
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                            width: 2.0,
                                            color: Colors.red,
                                          ),
                                          fixedSize: Size(320, 55),
                                          primary: Colors.white,
                                          onPrimary: Colors.red,
                                          shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                              borderRadius:
                                              BorderRadius.circular(10)),
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
                                                ),
                                              ),
                                              Text(
                                                "Sign in with Google",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ]),
                                        onPressed: () {}),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01),
                              child: Positioned(
                                top: MediaQuery.of(context).size.height * .68,
                                left: MediaQuery.of(context).size.width * .120,
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
                                            fixedSize: Size(320, 55),
                                            primary: Colors.white,
                                            onPrimary: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              //to set border radius to button
                                                borderRadius:
                                                BorderRadius.circular(10)),
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
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*.01),
                              child: Positioned(
                                top: MediaQuery.of(context).size.height * .68,
                                left: MediaQuery.of(context).size.width * .120,
                                child: Container(
                                  child: Text(
                                    "Not sure what Camect is? Learn More",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),


                  ]))
            ])
          ])
        ],
      ),
    );
  }
}
