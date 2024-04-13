import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image(
          image: NetworkImage(
              'https://t3.ftcdn.net/jpg/01/30/45/54/360_F_130455409_fTuinPO1LXECv5hlk9VBREnL6yowYUo3.jpg'),
        ),
        Text(
          'Sign Up',
          style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 38,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'sign with up to know more',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(),
              ),
              hintText: 'Name',
              prefixIcon: Icon(Icons.person),
              focusedBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(width: 1, color: Colors.blueAccent),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(),
              ),
              hintText: 'Email ',
              prefixIcon: Icon(Icons.email),
              focusedBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(width: 1, color: Colors.blueAccent),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(),
              ),
              hintText: ' Password',
              prefixIcon: Icon(Icons.lock),
              focusedBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(width: 1, color: Colors.blueAccent),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(),
              ),
              hintText: 'Title',
              prefixIcon: Icon(Icons.text_fields),
              focusedBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(width: 1, color: Colors.blueAccent),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(),
              ),
              hintText: 'Address',
              prefixIcon: Icon(Icons.lock),
              focusedBorder: OutlineInputBorder(
                //<-- SEE HERE
                borderSide: BorderSide(width: 1, color: Colors.blueAccent),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        Text(
          'Sign up 👉 ',
          style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
