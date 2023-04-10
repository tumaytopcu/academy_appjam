// ignore_for_file: file_names, prefer_const_constructors, unused_import, must_be_immutable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_web_libraries_in_flutter, prefer_final_fields, annotate_overrides, unused_field

import 'package:appjamakademi/components/colors.dart';
import 'package:appjamakademi/models/Akademigorev.dart';
import 'package:appjamakademi/models/todo.dart';
import 'package:appjamakademi/pages/Gorevler.dart';
import 'package:appjamakademi/pages/details/Academy_details.dart';
import 'package:appjamakademi/pages/details/Unity_Details.dart';
import 'package:appjamakademi/widgets/CustomNavBar.dart';
import 'package:appjamakademi/widgets/task_card.dart';
import 'package:appjamakademi/widgets/todo_item.dart';
import 'package:appjamakademi/widgets/unity_task_card.dart';
import 'package:flutter/material.dart';



class Anasayfa extends StatefulWidget {
  const Anasayfa({
    super.key,
  });

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  bool? complete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: toDoBackgroundColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: toDoBackgroundColor,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset(
                        'lib/assets/logo/task.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Akademi Görevleri",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Flutter",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tasks.length,
                itemBuilder: (context, index) => TaskCard(
                    task: tasks[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AcademyDetails(task: tasks[index])))),
              ),
            ),
            Text(
              "Unity",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tasks.length,
                itemBuilder: (context, index) => UnityTaskCard(
                    unitytask: unitytasks[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UnityAcademyDetails(
                                unitytask: unitytasks[index])))),
              ),
            ),
            
            
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
