// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names

import 'package:appjamakademi/components/colors.dart';
import 'package:appjamakademi/db/database_provider.dart';
import 'package:appjamakademi/models/note_model.dart';
import 'package:flutter/material.dart';

class Notlar extends StatefulWidget {
  const Notlar({Key? key}) : super(key: key);

  @override
  State<Notlar> createState() => _NotlarState();
}

class _NotlarState extends State<Notlar> {
  Future<List<Map<String, dynamic>>> getNotes() async {
    final notes = await DatabaseProvider.db.getNotes();
    return notes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: toDoBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: toDoBackgroundColor,
        title: Text(
          "Notlar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getNotes(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              {
                return Center(child: CircularProgressIndicator());
              }
            case ConnectionState.done:
              {
                if (snapshot.data == null || snapshot.data!.isEmpty) {
                  return Center(
                    child: Text("Kayıtlı not bulunamadı"),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        String title = snapshot.data![index]['title'];
                        String body = snapshot.data![index]['body'];
                        String creation_date =
                            snapshot.data![index]['creation_date'];
                        int id = snapshot.data![index]['id'];
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, "/display_note",
                                  arguments: NoteModel(
                                      id: id,
                                      title: title,
                                      body: body,
                                      creation_date:
                                          DateTime.parse(creation_date)));
                            },
                            title: Text(title),
                            subtitle: Text(body),
                          ),
                        );
                      },
                    ),
                  );
                }
              }
            default:
              {
                return Container(); // return an empty container or any other widget that you like
              }
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, "/AddNote");
        },
        child: Icon(Icons.note_add,color: Colors.white,),
      ),
    );
  }
}
