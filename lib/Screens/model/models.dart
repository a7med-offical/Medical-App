// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class Item extends StatelessWidget {
  String? name;
  String? id;

  Item({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 150,
            height: 130,
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
          width: 170,
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
                      '$name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$id',
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
    );
  }
}
