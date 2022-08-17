import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDeleteIcon extends StatelessWidget {
  const AddDeleteIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      right: 10.0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          // alignment: Alignment.bottomRight,
          child: Icon(
            CupertinoIcons.delete,
            size: 40.0,
            color: Color(0xfffe3577),
          ),
        ),
      ),
    );
  }
}
