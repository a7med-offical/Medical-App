import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Home_screen.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 120,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Detail',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 100, top: 50, bottom: 20, right: 100),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/611857258/vector/doctor-with-medical-icons-in-a-circle.jpg?s=1024x1024&w=is&k=20&c=zHE_ejD6hFxLX2P4KJ8rOcBd7GDFWYoc3jX8-u4o8Z4="),
              radius: 100,
            ),
          ), //CircleAvatar
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Some information :',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 8),
                        child: Icon(Icons.error),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'other',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0, top: 8),
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'mohamed',
                          style: TextStyle(),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0, top: 8),
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          'cancer',
                          style: TextStyle(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 170.0,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.0,
                        ),
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          '9st maadi',
                          style: TextStyle(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.0,
                        ),
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          '22-2-2023',
                          style: TextStyle(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
        ],
      ),
    );
  }
}
