import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/add_delete_icon.dart';
import 'package:todo_app/widgets/todo_widget.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 6.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Icon(
                            CupertinoIcons.arrow_left,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter Task title",
                              border: InputBorder.none),
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff211551),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Description for the task",
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 24.0))),
                ),
                TodoWidget(
                  text: "Create your first task",
                  isDone: true,
                  ),
                TodoWidget(
                  text: "Create your first todo as well",
                  isDone: true,
                ),
                TodoWidget(
                  text: "just another Todo",
                  isDone: false
                  ),
                TodoWidget(isDone: false,),
          ],
        ),
                AddDeleteIcon(),              
              ],
            )),
      ),
    );
  }
}
