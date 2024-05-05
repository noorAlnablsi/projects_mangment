import 'package:flutter/material.dart';

class RowAccount extends StatelessWidget {
  RowAccount({
    super.key,
    required this.firstText,
    required this.secondText,
  });
  String firstText;
  String secondText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(color: Colors.white),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              secondText,
              style: TextStyle(
                  color: Color.fromARGB(249, 163, 249, 249),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ))
      ],
    );
  }
}
