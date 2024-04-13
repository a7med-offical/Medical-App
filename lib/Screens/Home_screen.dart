import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/Screens/Details.dart';
import 'package:medical_app/Screens/add_person.dart';
import 'package:medical_app/Screens/profile.dart';
import 'package:medical_app/Screens/setting.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return add_();
          }));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            if (currentIndex == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return profile_page();
              }));
            }
            if (currentIndex == 2) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return setting();
              }));
            }
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 13, left: 14),
                child: Icon(Icons.notifications_none),
              ),
              Text(
                'Home Screen',
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(right: 14, top: 14),
                child: Icon(
                  Icons.logout_outlined,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(),
                ),
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 3, color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Details();
                  }));
                },
                child: Container(
                    width: 110,
                    height: 150,
                    child: const Image(
                      image: NetworkImage(
                        'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                      ),
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (BuildContext) {
                                return Details();
                              }));
                            },
                            child: const Text(
                              'mohamed',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            '19-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 150,
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'asmaa',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '22-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 150,
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'yousef',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '21-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 150,
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Norhan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '20-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 150,
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmed',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '20-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 150,
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kareem',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '19-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 110,
                  height: 150,
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?w=360&t=st=1676973684~exp=1676974284~hmac=de3b7848c48cb9f90b3fc765369eeefceb84245e4db4c1c5dbdc6785397a8db6',
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.lightBlue[200],
                width: 210,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ali',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '20-2-2023',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}
