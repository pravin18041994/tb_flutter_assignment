import 'package:flutter/material.dart';

class MTextFormField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final bool? obscureText;
  const MTextFormField(
      {Key? key, this.textEditingController, this.hintText, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), border: Border.all()),
      child: TextFormField(
        cursorWidth: 1,
        obscureText: obscureText ?? false,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold),
        cursorColor: Colors.transparent,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
