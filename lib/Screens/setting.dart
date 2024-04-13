// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:medical_app/Screens/terms%20.dart';
import 'package:provider/provider.dart';
class setting extends StatelessWidget {
  setting({super.key});
  IconData Icondata = Icons.dark_mode;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Model>(context);

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 14),
                child: Icon(Icons.notifications_none),
              ),
              Text(
                'Setting',
                style: TextStyle(
                    color: Colors.red[300],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14, top: 10),
                child: IconButton(
                    onPressed: () {
                      provider.toggle();
                    },
                    icon: const Icon(Icons.mode_night_outlined)),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 30),
                child: SizedBox(
                  width: 10,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Icon(Icons.language),
              ),
              Text(
                ' Change Languge',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                'English',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'allow Notfication ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(
                Icons.toggle_on,
                color: Colors.blueAccent,
                size: 50,
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.my_library_books_outlined,
                  color: Colors.blueAccent,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const term();
                  }));
                },
                child: const Text(
                  'terms',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.call,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                'contact us',
                style: TextStyle(color: Colors.black, fontSize: 18),
              )
            ],
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}

class Model extends ChangeNotifier {
  ThemeData _them = ThemeData.dark();
  ThemeData get them => _them;
  void toggle() {
    final isDark = _them == ThemeData.dark();
    if (isDark) {
      _them = ThemeData.light();
    } else {
      _them = ThemeData.dark();
    }
    notifyListeners();
  }
}
