import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: CalculatorNeuApp(),
    );
  }
}
const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class CalculatorNeuApp extends StatefulWidget {
  const CalculatorNeuApp({Key? key}) : super(key: key);

  @override
  State<CalculatorNeuApp> createState() => _CalculatorNeuAppState();
}

class _CalculatorNeuAppState extends State<CalculatorNeuApp> {
  bool darkMode=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark: colorLight,
      body: SafeArea(
        child: Container(
          child: Center(
            child: NeuContainer(),
          ),
        ),
      ),
    );
  }
}
class NeuContainer extends StatefulWidget {

  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  NeuContainer({ this.darkMode,  this.child,  this.borderRadius, this.padding});

  @override
  State<NeuContainer> createState() => _NeuContainerState();
}


class _NeuContainerState extends State<NeuContainer> {
  bool _isPressed = false;
  void _onPointerDown(PointerDownEvent event){
    setState((){
      _isPressed =true;
    });}
    void _onPointerUp(PointerUpEvent event){
      setState((){
        _isPressed =false;
      });

    }
  @override
  Widget build(BuildContext context) {
    bool darkMode= widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration:BoxDecoration(
          color: darkMode ? colorDark: colorLight,
              borderRadius: BorderRadius.circular(10),
          boxShadow: _isPressed ? null:[BoxShadow(color: darkMode ? Colors.black54:Colors.blueGrey.shade200,offset: Offset(4.0,4.0),blurRadius: 15.0,spreadRadius: 1.0,),
          BoxShadow(
            color: Colors.white,offset: Offset(-4.0,-4.0),blurRadius: 15.0,spreadRadius: 1.0,),
          ]

        ) ,
        child: Icon(Icons.android,size: 100,),
      ),
    );
  }
}

