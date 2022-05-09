import 'package:flutter/material.dart';

class MOutlinedButton extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  const MOutlinedButton({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            shadowColor: Colors.grey,
            elevation: 8,
            backgroundColor: const Color(0xFF375E7D)),
        onPressed: onTap ?? () {},
        child: Text(
          title ?? "",
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ));
  }
}
