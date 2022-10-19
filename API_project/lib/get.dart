import 'dart:convert';
import 'package:api_project/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:developer';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url = "https://apimocha.com/sanith/get";
  List<Product> products = [];

  void fetchPosts() async {
    // try {
    final response = await get(Uri.parse(url));
    final jsonData = jsonDecode(response.body) as List;

    setState(() {
      products =     jsonData.map((productJson) => Product.fromJson(productJson)).toList();

    });
    // }catch(err){}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) {
          final product = products[i];
          return Row(children: [
            Text("Name: ${product.name}\n id: ${product.id}\n\n"),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
              child: Text("Delete"),
              onPressed: () async {
                http.Response response = await http
                    .delete(Uri.parse('https://apimocha.com/sanith/delete'));
                log(response.body);
                final snackBar = SnackBar(
                  content: const Text('Product Deleted Sucessfully!!!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
          child: Text("Edit"),
                onPressed: () async {
                  http.Response response = await http
                      .put(Uri.parse('https://apimocha.com/sanith/put'));
                  log(response.body);
                  final snackBar = SnackBar(
                    content: const Text('Status Updated Sucessfully!!!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                ),
          ]);
        },
      )),
    );
  }
}
