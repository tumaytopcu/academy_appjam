// ignore_for_file: non_constant_identifier_names

class NoteModel {
  int id;
  String title;
  String body;
  DateTime creation_date;

  NoteModel({required this.id, required this.title, required this.body, required this.creation_date});

  Map<String, dynamic> toMap() {
    return ({
      "id": id,
      "title": title,
      "body": body,
      "creation_date": creation_date.toString()
    });
  }
}