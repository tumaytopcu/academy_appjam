// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:appjamakademi/db/database_provider.dart';
import 'package:appjamakademi/models/note_model.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  late String title;
  late String body;
  late DateTime date;
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  addNote(NoteModel note) async {
    await DatabaseProvider.db.addNewNote(note);
    print("not kaydedildi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Ekle"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Not başlığı giriniz",
              ),
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: TextField(
              controller: bodyController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Not giriniz",
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          setState(() {
            title = titleController.text;
            body = bodyController.text;
            date = DateTime.now();
          });
          NoteModel note =
              NoteModel(id: 0, title: title, body: body, creation_date: date);
          addNote(note);
          Navigator.pop(context);
        },
        label: Text("Kaydet"),
        icon: Icon(Icons.save),
      ),
    );
  }
}
