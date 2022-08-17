import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/widgets/add_icon.dart';
import 'package:todo_app/screens/task_card.dart';

import '../widgets/add_delete_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                color: Color(0xfff6f6f6),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 32.0, top: 32.0),
                          child: Image(
                            image: AssetImage('assets/images/logo.png'),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView(
                                    children: [
                                      TaskCard(
                                    title: "Get started!",
                                    desc:
                                        "Hello user! Welcome to the My_Todo app, this is a default task that you can edit or delete to start using the app",
                                  ),
                                  TaskCard(),
                                  TaskCard(),
                                  TaskCard(),
                                  TaskCard(),
                                    ],
                                  ),
                              ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                    AddIcon(),
                  ],
                ))));
  }
}
