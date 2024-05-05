
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
   // required this.labelText,
  //  required this.myIcon,
    required this.hintText,
    this.traillingIcon,
     this.obscureText = false,
  }) : super(key: key);
  //final String labelText;
 // final IconData myIcon;
  final String hintText;
final Widget? traillingIcon; 
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: 226,
        height: 43,
      child: TextField(  obscureText: obscureText,
        decoration: InputDecoration(
        //  labelText: labelText,
        filled: true,
          fillColor: Color.fromARGB(255, 119, 193, 193),
       
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 27, 47, 108)),
            borderRadius: BorderRadius.circular(10),
          ),suffixIcon: traillingIcon ?? null,
        ),
      ),
    );
  }
}
