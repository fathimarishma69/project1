import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "English",
                      style:
                          TextStyle(color: Color(0xff000000), fontSize: 17),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 26,
                      height: 3,
                      color: Colors.blue,
                    )
                  ],
                ),
                Container(
                  height: 42,
                  width: 112,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 4), // Changes position of shadow
                        ),
                      ]),
                  child: Center(
                      child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
            SizedBox(height: 14,),
            Container(
              width: 300.88,
              height: 247.88,
              // top:-34,
              // left:1989,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/1.png"),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              width: 338,
              height: 65,
              decoration: BoxDecoration(
                color: Color(0xffEAF0F7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "   Enter Email",
                      style: TextStyle(fontSize: 18, color: Color(0xff4F555A)),
                    ),
                  ),
                  // SizedBox(width: 210),
                  // Icon(Icons.account_circle)
                ],
              ),
            ),

            //TextField(),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              width: 338,
              height: 65,
              decoration: BoxDecoration(
                color: Color(0xffEAF0F7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(children: [
                Text(
                  "   •••••••",
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(width: 200),
                Icon(Icons.visibility_off_outlined)
              ]),
            ),
            SizedBox(height: 15),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Text("Recover password?",
                    style: TextStyle(fontSize: 14, color: Color(0xffACADAC))),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              // Navigator.pop(context);
            },
              child:  Container(
                width: 338.33,
                height: 65.13,
                decoration: BoxDecoration(
                  color: Color(0xFF42A5F5),
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontStyle: FontStyle.normal),
                )),

                // ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 65.13,
              width: 338.33,
              child: Center(
                child: Text("----------or continue with----------",
                    style: TextStyle(fontSize: 14, color: Color(0xffACADAC))),
              ),
            ),
            SizedBox(height: 10),
            Row(children: [
              SizedBox(width: 20),
              Container(
                alignment: Alignment.topLeft,
                height: 50.75,
                width: 98.96,
                decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffDDDFDD), width: 2.0),
                    image: DecorationImage(
                      image: AssetImage("assets/google.png"),
                    )),
              ),
              SizedBox(width: 20),
              Container(
                height: 50.75,
                width: 98.96,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 6,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                  image: DecorationImage(image: AssetImage("assets/ios1.png")),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50.75,
                width: 98.96,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffDDDFDD), width: 2.0),
                  image: DecorationImage(
                    image: AssetImage("assets/facebook1.png"),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    ));
  }
}
