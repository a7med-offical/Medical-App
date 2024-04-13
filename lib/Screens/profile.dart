import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/Screens/Home_screen.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 14),
            child: Icon(Icons.notifications_none),
          ),
          Text(
            'Profile Screen',
            style: TextStyle(
                color: Colors.brown, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(right: 14, top: 10),
            child: Icon(
              Icons.logout_outlined,
            ),
          )
        ],
      ),

      const Padding(
        padding: EdgeInsets.only(left: 100, top: 50, bottom: 20, right: 100),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6'),
          radius: 100,
        ),
      ), //CircleAvatar

      const Padding(
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
      const SizedBox(
        height: 10,
      ),
      const Padding(
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
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
            ),
            hintText: 'New Password',
            prefixIcon: Icon(Icons.lock),
            focusedBorder: OutlineInputBorder(
              //<-- SEE HERE
              borderSide: BorderSide(width: 1, color: Colors.blueAccent),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
            ),
            hintText: 'Doctor',
            prefixIcon: Icon(Icons.text_fields),
            focusedBorder: OutlineInputBorder(
              //<-- SEE HERE
              borderSide: BorderSide(width: 1, color: Colors.blueAccent),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
            ),
            hintText: 'Address',
            prefixIcon: Icon(Icons.add_location_rounded),
            focusedBorder: OutlineInputBorder(
              //<-- SEE HERE
              borderSide: BorderSide(width: 1, color: Colors.blueAccent),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),

      Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const homeScreen();
                }));
              },
              child: const Text(
                'Update',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              )))
    ]));
  }
}
