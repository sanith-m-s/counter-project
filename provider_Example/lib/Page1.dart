import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/Page2.dart';
import 'package:provider_example/provider/providerDemo.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final provider =
                      Provider.of<ProviderDemo>(context, listen: false);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider.value(
                          value: provider, child: Page2())));
                },
                child: Text('Page1')),
            Consumer<ProviderDemo>(builder: (context, value, child) {
              return Text(value.value);
            }),
            ElevatedButton(
                onPressed: () {
                  Provider.of<ProviderDemo>(context, listen: false)
                      .changeValue();
                },
                child: Text("Change Value")),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter the value',
                ),
                onChanged: (String val) {
                  Provider.of<ProviderDemo>(context, listen: false)
                      .setValue(val);
                }),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content:
                  Text(Provider.of<ProviderDemo>(context).value),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text('Show Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
