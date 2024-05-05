import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects_mangment/Core/resources/widget/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 50, 77),     //.
      body: Column(
        children: [
          Container(
            width: 413.93,  //.
            height: 335,    //.
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Group 34 (1).png"))),
          ),
          MyButton(text: 'Create'),
          SizedBox(       //.
            height: 65,
          ),
          Container(
              width: 283,
              height: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/Rectangle 2.png"))),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 10, 50, 77),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Join",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
