import 'package:flutter/material.dart';

void main() => runApp(const login());

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  static const String _title = 'Site Login Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Color.fromARGB(255, 3, 104, 33),
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 13, 20),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 3, 104, 33),
                    ),
                  ),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 3, 104, 33),
                    ),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
              ),
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 3, 104, 33),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 3, 104, 33),
                  ),
                )),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 3, 104, 33),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
