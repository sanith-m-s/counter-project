import 'package:flutter/material.dart';
import 'package:provider_example/Page3.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/providerDemo.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                          value: provider, child: Page3())));
                },
                child: Text('Page2')),
            Text(Provider.of<ProviderDemo>(context).value)
          ],
        ),
      ),
    );
  }
}
