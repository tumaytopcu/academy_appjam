
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:appjamakademi/models/Akademigorev.dart';

class UnityTaskCard extends StatelessWidget {
  final UnityTask unitytask;
  final void Function()? press;
  const UnityTaskCard({
    Key? key,
    required this.unitytask,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                height: 150,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 2, blurRadius: 5),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 5,
                            bottom: 10,
                          ),
                          child: Text(
                            unitytask.month,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.all_inclusive_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              unitytask.task1,
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.all_inclusive_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              unitytask.task2,
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.all_inclusive_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              unitytask.task3,
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.all_inclusive_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              unitytask.task4,
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
