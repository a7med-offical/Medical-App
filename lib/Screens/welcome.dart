import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_app/Screens/home_page.dart';

// ignore: camel_case_types
class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

// ignore: camel_case_types
class _welcomeState extends State<welcome> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), navigator);
  }

  void navigator() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const homePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffF4F4F4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'https://aanmc.org/wp-content/uploads/2017/05/Becoming-an-ND.jpg',
            ),
            const CircularProgressIndicator(
              backgroundColor: Colors.blue,
              strokeWidth: 6,
              color: Colors.white,
            ),
            Column(
              children: const [
                Text(
                  'WeLcOmE ',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 60,
                      fontWeight: FontWeight.w300),
                ),
                Text('Made by Ahmed Abd Elnasser',
                    style: TextStyle(color: Colors.grey))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
