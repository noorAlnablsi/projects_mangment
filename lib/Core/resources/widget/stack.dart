import 'package:flutter/material.dart';
import 'package:projects_mangment/Core/resources/widget/textfield.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
   bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return    Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(44)),
                    ),
                    child: Container(
                      width: 288,
                      height: 360,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 55,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Email"),
                            ),
                            MyTextField(hintText: "Example@gmail.com"),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Password"),
                            ),
                            MyTextField(hintText: "Enter Your Password",
                            obscureText:true,traillingIcon: Icon(Icons.visibility_off),),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Checkbox(

                                     fillColor: MaterialStateProperty.all<Color>(
             Color.fromARGB(243, 193, 193, 192)
            ),
                                  
                                  value: checkBoxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      checkBoxValue = value!;
                                    });
                                  },
                                ),
                                Text("Remember me")
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                  top: -75,
                  left: 75,
                  child: Container(
                    width: 140.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                         color: Color.fromARGB(255, 27, 47, 108),
                       
                      ),
                    ),
                    child: CircleAvatar(
                      child: Image.asset("images/Group 2.png",
                      fit: BoxFit.fill,
                      ),
                      // backgroundColor: Color.fromARGB(255, 27, 47, 108),
                      
                      
                    
                    ),
                  ),
                ),
              ],
            );
  }
}