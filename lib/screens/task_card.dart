import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String? title;
  final String? desc;

  const TaskCard({Key? key, this.title, this.desc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ??"(Unnamed Task)",
              style: TextStyle(
                color: Color(0xff211551),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              )),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text(desc?? "No Description Added",
                style: TextStyle(
                  color: Color(0xff86829D),
                  fontSize: 16.0,
                  height: 1.5,
                )
                ),
              ),
          ],
        ));
  }
}
