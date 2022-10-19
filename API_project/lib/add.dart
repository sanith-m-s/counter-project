import 'dart:convert';
import 'dart:developer';

import 'package:api_project/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ValidationPage extends StatefulWidget {
  const ValidationPage({Key? key}) : super(key: key);

  @override
  State<ValidationPage> createState() => _ValidationPageState();
}

// Future<DataModel> submitData() async{
//   var response= awiat http.post(Uri.https(reqeres.in))
// }
class _ValidationPageState extends State<ValidationPage> {
  get _formKey => null;

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Enter product details';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var id = null;
    var name = null;
    var data = null;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              id = value;
              // return null;
            },
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter product name';
              }
              name = value;
              // return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  final product = Product(name: name, id: id);

                  log(data.toString());
                  http.Response response = await http.post(
                      Uri.parse('https://apimocha.com/sanith/post'),
                      body: jsonEncode(product.toJson()));
                  log(response.body);
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
