import 'package:flutter/material.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/provider/ShrdProvider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return Page2();
                }));
              },
              child: Text(
                "page 1",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 239, 8, 8)),
              ),
            ),
          ),
          Center(child: Text(Provider.of<Shrdprovider>(context).test1)),


          ElevatedButton(
              onPressed: () {
                (Provider.of<Shrdprovider>(context, listen: false)
                    .changeValue("value chnaged "));
              },
              child: Text("chnage value"))
        ],
      ),
    );
  }
}
