// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:appjamakademi/models/Akademigorev.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final void Function()? press;
  const TaskCard({
    Key? key,
    required this.task,
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
                        color: Colors.blue, spreadRadius: 2, blurRadius: 5),
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
                            task.month,
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
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              task.task1,
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
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              task.task2,
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
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              task.task3,
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
                            color: Colors.blue,
                            size: 25,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              task.task4,
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
