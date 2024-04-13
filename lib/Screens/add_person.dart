import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/Screens/Home_screen.dart';

class add_ extends StatelessWidget {
  const add_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22.0, top: 22),
                child: Icon(Icons.arrow_back_ios_rounded),
              ),
              SizedBox(
                width: 80,
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  'Add Your Patient',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(),
                ),
                hintText: 'Patient Name',
                prefixIcon: Icon(Icons.person),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(),
                ),
                hintText: 'Date of birth',
                prefixIcon: Icon(Icons.date_range_outlined),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(),
                ),
                hintText: 'Visit Time',
                prefixIcon: Icon(Icons.av_timer),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(),
                ),
                hintText: 'Patient Address',
                prefixIcon: Icon(Icons.place),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                  // prefixIcon: Icon(Icons.text_fields_sharp),
                  hintText: 'Patient Diagnosis',
                  isDense: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              maxLines: 5,
              minLines: 5,
              // controller: cpfcontroller,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const homeScreen();
                    }));
                  },
                  child: const Text(
                    'Add',
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
