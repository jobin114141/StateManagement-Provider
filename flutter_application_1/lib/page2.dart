import 'package:flutter/material.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/provider/ShrdProvider.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild-1");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Page3();
                  }));
                },
                child: Text(
                  "page 2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 233, 0)),
                )),
          ),
          Consumer<Shrdprovider>(          //Consumer use cheyith baki page full rebuild use cheyyathe ith mathram
                                          //rebuild chyithu;
            builder: (BuildContext context, value, Widget? child) {
              return Text(value.test1);
            },
          ),
          ElevatedButton(
              onPressed: () {
                (Provider.of<Shrdprovider>(context, listen: false)
                    .changeValue("page 2 il ethi"));
              },
              child: Text("Chnage value"))
        ],
      ),
    );
  }
}
