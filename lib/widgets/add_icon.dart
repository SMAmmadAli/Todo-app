import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/screens/task_screen.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      right: 10.0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TaskPage()));
        },
        child: Container(
          // alignment: Alignment.bottomRight,
          child: Icon(
            CupertinoIcons.add,
            size: 50.0,
            color: Color(0xff7349fe),
          ),
        ),
      ),
    );
  }
}