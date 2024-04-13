import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/Screens/Home_screen.dart';
import 'package:medical_app/Screens/model/sign.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
        return const homeScreen();
      }));
    } else {
      print("valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formstate,
        child: Column(
          children: [
            const Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6')),
            const Text(
              'Medical App',
              style: TextStyle(
                  color: Colors.tealAccent,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'welcome to tha Application',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your user name ";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'User name',
                  prefixIcon: const Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 5, //<-- SEE HERE
                      color: Colors.greenAccent,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Your password is too short';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.remove_red_eye_sharp),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 5, //<-- SEE HERE
                      color: Colors.greenAccent,
                    ),
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 17),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                ),
                onPressed: () {
                  send();
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?',
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sign_up();
                    }));
                  },
                  child: Text(
                    ' Sign Up',
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
