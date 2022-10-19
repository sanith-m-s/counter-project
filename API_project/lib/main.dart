import 'package:api_project/add.dart';
import 'package:flutter/material.dart';
import 'package:api_project/get.dart';


// import 'package:cookbooks2/customFont.dart';
// import 'package:cookbooks2/TabsDemo.dart';
// import 'package:cookbooks2/validation.dart';
// import 'package:cookbooks2/textbar.dart';
// import 'package:cookbooks2/parallax.dart';
// import 'package:cookbooks2/retriveText.dart';
// import 'package:cookbooks2/fadeImage.dart';

void main() {
  runApp(MaterialApp(home: const Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Menu'),
        ),
        body: ListView(
          padding: EdgeInsets.all(100.0),
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 40), primary: Colors.blueGrey[100]),
              child: Text("Post Details"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ValidationPage()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 40), primary: Colors.blueGrey[100]),
              child: Text("Get Details"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
