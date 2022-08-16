import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/widgets/add_icon.dart';
import 'package:todo_app/widgets/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 32.0,
              ),
              color: Color(0xfff6f6f6),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 32.0),
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      TaskCard(
                        title: "Get started!",
                      ),
                      TaskCard(
                        desc: "No Description Added",
                      ),
                      AddIcon(),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
