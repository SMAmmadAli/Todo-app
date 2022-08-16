import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        child: Icon(
          CupertinoIcons.add,
          size: 40.0,
          color: Color(0xff7349fe),
        ),
    );
  }
}
