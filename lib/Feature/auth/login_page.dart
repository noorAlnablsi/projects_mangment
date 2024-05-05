import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projects_mangment/Core/resources/widget/button.dart';
import 'package:projects_mangment/Core/resources/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 50, 77),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90,)
,            Stack(
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
            ),
            SizedBox(height: 80,),
            MyButton(text: 'Login'),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don’t have an account ?  ",
              style: TextStyle(color: Colors.white),),
              
              TextButton(onPressed: (){}, child:Text(" Sign Up",
              style: TextStyle(color: Color.fromARGB(249, 163, 249, 249),
              fontWeight: FontWeight.w400,fontSize: 15),))
            ],)
          ],
        ),
      ),
    );
  }
}
