// ignore_for_file: prefer_const_constructors

import 'package:appjamakademi/db/database_provider.dart';
import 'package:appjamakademi/models/note_model.dart';
import 'package:flutter/material.dart';

class ShowNote extends StatelessWidget {
  const ShowNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NoteModel note = ModalRoute.of(context)?.settings.arguments as NoteModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Detayı"),
        actions: [
          IconButton(onPressed: () {
            DatabaseProvider.db.deleteNote(note.id);
            Navigator.pushNamedAndRemoveUntil(context, "/Notlar", (route) => false);
          }, icon: Icon(Icons.delete))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              note.title,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              note.body,
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
