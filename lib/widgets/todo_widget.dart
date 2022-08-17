import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String? text;
  final bool isDone;

  const TodoWidget({Key? key, this.text, required this.isDone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 12.0),
              child: Icon(
                isDone? CupertinoIcons.check_mark: CupertinoIcons.square,
                color: isDone ? Color(0xff7349fe) : Color(0xff86829d),
                size: 20,
              ),
            ),
            Text(
              text ?? "Todo Widget",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
                color: isDone ? Color(0xff211551): Color(0xff86829d),
              ),
            )
          ],
        ));
  }
}
