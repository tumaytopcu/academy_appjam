// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:appjamakademi/models/Akademigorev.dart';

import 'package:flutter/material.dart';

class AcademyDetails extends StatelessWidget {
  final Task task;
  const AcademyDetails({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "NoteSlack",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          
          iconTheme: IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                  child: Stack(
                    children: [
                      Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right:15.0),
                            child: Image.asset(
                        "lib/assets/logo/flutter.png",
                        height: 80,
                        width: 80,
                      ),
                          ))
                    ],
                  ),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue, spreadRadius: 2, blurRadius: 5),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              task.month,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.yellow,
                          color: Colors.white,
                          child: Container(
                            height: 50,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(task.task1),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.yellow,
                          color: Colors.white,
                          child: Container(
                            height: 50,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(task.task2,textAlign: TextAlign.center,),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.yellow,
                          color: Colors.white,
                          child: Container(
                            height: 50,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(task.task3),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.yellow,
                          color: Colors.white,
                          child: Container(
                            height: 50,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(task.task4),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
