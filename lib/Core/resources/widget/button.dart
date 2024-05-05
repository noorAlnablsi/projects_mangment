import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 234, 205),
        borderRadius: BorderRadius.circular(50.0),
      ),
      width: 283,
      height: 60,
      child:ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
           Color.fromARGB(249, 255, 234, 205),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ))),
        onPressed: () {},
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30,color: Color.fromARGB(255, 10, 50, 77)
         ),
        )),
      ),
    );
  }
}
