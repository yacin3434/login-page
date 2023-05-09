import 'package:flutter/material.dart';

import 'login.dart';

class hello extends StatelessWidget {
  const hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 104, 33),
          title: Text(
            "HELLO",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "myfont",
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 3, 104, 33),
                  ),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ));
  }
}
