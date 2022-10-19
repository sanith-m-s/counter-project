import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_project/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Counter>(
            builder: (context, value, child)=>Text('Provider Example App(${value.count})',style: TextStyle(fontSize:25 ),)
        )

      ),
      body: Center(
        child:
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text(
        //         'You have pushed the button this many times: ${context.watch<Counter>().count}'),
        //     Count(),
        //   ],
        // ),
        Consumer<Counter>(
          builder: (context, value, child)=>Text('Count :${value.count}',style: TextStyle(fontSize:50 ),)
        )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('decrement_floatingActionButton'),
            onPressed: () => context.read<Counter>().decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: Key('reset_floatingActionButton'),
            onPressed: () => context.read<Counter>().reset(),
            tooltip: 'Reset',
            child: Icon(Icons.exposure_zero),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            key: Key('increment_floatingActionButton'),
            onPressed: () => context.read<Counter>().increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

// class Count extends StatelessWidget {
//   Count({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text('${context.watch<Counter>().count}',
//         key: Key('counterState'), style: Theme.of(context).textTheme.headline4);
//   }
// }