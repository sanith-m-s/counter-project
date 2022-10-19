
import 'package:provider/provider.dart';
import 'package:provider_example/Page1.dart';
import 'package:flutter/material.dart';
import 'package:provider_example/provider/providerDemo.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context)=>ProviderDemo(),child: Page1()),
    );
  }
}
