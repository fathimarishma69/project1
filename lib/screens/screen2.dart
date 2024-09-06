import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  String result;
  String sts;
  String sts1;
  Screen2({super.key, required this.result,required this.sts, required this.sts1});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Center(
            child: Text(
              "BMI Calculator",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 120, top: 10, bottom: 15),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                  child: Container(
                    height: 503,
                    width: 319,
                    decoration: BoxDecoration(
                        color: Color(0xff333244),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10),
                      child: Column(
                        children: [
                          Text(
                           widget.sts,
                            style: TextStyle(
                                color: Color(0xff21BF73),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.result,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 64,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            widget.sts1,
                            style: TextStyle(
                                color: Color(0xff8B8C9E),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 100,
                    width: 360,
                    color: Color(0xffE83D67),
                    child: Center(
                        child: Text(
                          "Re-Calculate",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
