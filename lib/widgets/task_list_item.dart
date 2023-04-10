// ignore_for_file: must_be_immutable, library_private_types_in_public_api, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../db/local_storage.dart';
import '../main.dart';
import '../models/task_model.dart';

class TaskItem extends StatefulWidget {
  Task task;
  TaskItem({Key? key, required this.task}) : super(key: key);

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  final TextEditingController _taskNameController = TextEditingController();
  late LocalStorage _localStorage;
  @override
  void initState() {
    super.initState();
    _localStorage = locator<LocalStorage>();


  }

  @override
  Widget build(BuildContext context) {
    _taskNameController.text = widget.task.name;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.3),
                blurRadius: 10,
                offset: const Offset(0, 8)),
          ]),
      child: ListTile(
        leading: GestureDetector(
          onTap: () {
            widget.task.isCompleted = !widget.task.isCompleted;
            _localStorage.updateTask(task: widget.task);
            setState(() {});
          },
          child: Container(
            child: const Icon(
              Icons.check,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: widget.task.isCompleted ? Colors.green : Colors.white,
                border: Border.all(color: Colors.grey, width: 0.8),
                shape: BoxShape.circle),
          ),
        ),
        title: widget.task.isCompleted
            ? Text(
          widget.task.name,
          style: const TextStyle(
              decoration: TextDecoration.lineThrough, color: Colors.grey),
        )
            : TextField(
          controller: _taskNameController,
          minLines: 1,
          maxLines: null,
          textInputAction: TextInputAction.done,
          decoration: const InputDecoration(border: InputBorder.none),
          onSubmitted: (yeniDeger) {
            if (yeniDeger.length > 3) {
              widget.task.name = yeniDeger;
              _localStorage.updateTask(task: widget.task);
            }
          },
        ),
        trailing: Text(
          DateFormat('hh:mm a').format(widget.task.createdAt),
          style: const TextStyle(fontSize: 14, color: Colors.blueAccent),
        ),
      ),
    );
  }
}
