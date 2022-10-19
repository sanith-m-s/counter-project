import 'package:flutter/material.dart';
import 'package:provider_example/Page1.dart';
import 'package:provider_example/provider/providerDemo.dart';
import 'package:provider/provider.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Text('Page3')),
            Text(Provider.of<ProviderDemo>(context).test1),

          ],
        ),
      ),
    );
  }
}
