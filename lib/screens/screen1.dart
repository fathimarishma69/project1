import 'package:flutter/material.dart';
import 'package:project1/screens/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  double height = 100.0;
  int w = 0;
  int age=0;
  double result = 0.0;
  //String per="";


  void calculateBMI() {
    setState(() {
      String sts="";
      String sts1="";
      if (height > 0) {
        // Convert height from cm to meters
        double heightInMeters = height / 100;
        result = w / (heightInMeters * heightInMeters);
        String bmiResult = result.toStringAsFixed(2);
// if(age<=20&&result<=11.5){
//   sts="Normal";
//   sts1="You Have a Normal BMI. Good Job.";
// }else{
//   sts="not Normal";
//   sts1="You Have a  Not Normal BML.";
// }
        if (age <= 20) {
          if (result <= 18.5) {
            sts = "Underweight";
            sts1 = "You are underweight for your age.";
          } else if (result <= 24.9) {
            sts = "Normal";
            sts1 = "You have a normal BMI. Good job!";
          } else if (result <= 29.9) {
            sts = "Overweight";
            sts1 = "You are overweight for your age.";
          } else {
            sts = "Very Fat";
            sts1 = "You are Very Fat for your age.";
          }
        } else if (age <= 40) {
          if (result <= 18.5) {
            sts = "Underweight";
            sts1 = "You are underweight for your age.";
          } else if (result <= 24.9) {
            sts = "Normal";
            sts1 = "You have a normal BMI. Good job!";
          } else if (result <= 29.9) {
            sts = "Overweight";
            sts1 = "You are overweight for your age.";
          } else {
            sts = "Very Fat";
            sts1 = "You are Vary Fat for your age.";
          }
        } else if (age <= 60) {
          if (result <= 18.5) {
            sts = "Underweight";
            sts1 = "You are underweight for your age.";
          } else if (result <= 24.9) {
            sts = "Normal";
            sts1 = "You have a normal BMI. Good job!";
          } else if (result <= 29.9) {
            sts = "Overweight";
            sts1 = "You are overweight for your age.";
          } else {
            sts = "Very Fat";
            sts1 = "You are Vary Fat for your age.";
          }
        } else {
          if (result <= 18.5) {
            sts = "Underweight";
            sts1 = "You are underweight for your age.";
          } else if (result <= 24.9) {
            sts = "Normal";
            sts1 = "You have a normal BMI. Good job!";
          } else if (result <= 29.9) {
            sts = "Overweight";
            sts1 = "You are overweight for your age.";
          } else {
            sts = "Vary Fat";
            sts1 = "You are Vary Fat for your age.";
          }
        }

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Screen2(result: bmiResult,sts: sts,sts1:sts1),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 155,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color(0xff24263B),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage("assets/male.png"))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 145, left: 50),
                          child: Text(
                            "Male",
                            style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(onTap: () {
                      setState(() {
                       // per="male";
                      });
                    },
                      child: Container(
                        width: 155,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color(0xff24263B),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage("assets/female.png"))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 145, left: 50),
                          child: Text(
                            "Female",
                            style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 189,
                  width: 319,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff333244)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Text(
                          "Height",
                          style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 120),
                        child: Row(
                          children: [
                            Text(
                              height.toStringAsFixed(1),
                              style: TextStyle(fontSize: 40, color: Color(0xffFFFFFF)),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(fontSize: 15, color: Color(0xffFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        value: height,
                        min: 100.0,
                        max: 220.0,
                        activeColor: Color(0xffE83D67),
                        inactiveColor: Color(0xff8B8C9E),
                        onChanged: (double newValue) {
                          setState(() {
                            height = double.parse(newValue.toStringAsFixed(3));
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 155,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xff24263B),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                "Weight",
                                style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                w.toString(),
                                style: TextStyle(color: Colors.white, fontSize: 40),
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (w > 0) w--;
                                    });
                                  },
                                  child: Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8B8C9E),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(image: AssetImage("assets/-.png")),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      w++;
                                    });
                                  },
                                  child: Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8B8C9E),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(image: AssetImage("assets/+.png")),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 155,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xff24263B),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                "Age",
                                style: TextStyle(color: Color(0xff8B8C9E), fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text(
                                age.toString(),
                                style: TextStyle(color: Colors.white, fontSize: 40),
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(onTap: () {
                                  setState(() {
                                    if (age > 0) age--;
                                  });
                                },
                                  child: Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8B8C9E),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(image: AssetImage("assets/-.png")),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                GestureDetector(onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                  child: Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8B8C9E),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(image: AssetImage("assets/+.png")),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: calculateBMI,
                  child: Container(
                    width: double.infinity,
                    height: 90,
                    color: Color(0xffE83D67),
                    child: Center(
                      child: Text(
                        "Calculate",
                        style: TextStyle(color: Colors.white, fontSize: 32),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
