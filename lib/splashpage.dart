import 'package:flutter/material.dart';
import 'dart:async';
import 'loginpage.dart';

class splashPage extends StatefulWidget {
  const splashPage({Key? key}) : super(key: key);
  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sports_handball,
            size: 200,
            color: Colors.black54,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Center(
              child: Text(
                'LOSTFOUND APP',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
