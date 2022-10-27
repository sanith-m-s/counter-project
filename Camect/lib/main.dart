import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.width * 9 / 16,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: MediaQuery.of(context).size.width * 9 / 16,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50)),
                      // Make rounded corner
                      child: Center(
                          child: Icon(
                        Icons.keyboard_arrow_up,
                        size: 17,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          constraints:
                              BoxConstraints(maxHeight: 35, maxWidth: 35),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Icon(
                            Icons.keyboard_arrow_left_rounded,
                            size: 17,
                            color: Colors.white,
                          )),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Container(
                          constraints:
                              BoxConstraints(maxHeight: 35, maxWidth: 35),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            size: 17,
                            color: Colors.white,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Container(
                      constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                      width: 35,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 17,
                        color: Colors.white,
                      )),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25.0,
                        ),
                      ],
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Icon(
                    Icons.image_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 50),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25.0,
                        ),
                      ],
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Icon(
                    Icons.access_time_rounded,
                    size: 20,
                    color: Colors.white,
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Icon(
                    Icons.zoom_in_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20, bottom: 35),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                  width: 35,
                  height: 35,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Icon(
                    Icons.zoom_out_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
