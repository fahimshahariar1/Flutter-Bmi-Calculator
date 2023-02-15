import 'package:day17/core/output.dart';
import 'package:day17/logic.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int age = 20;
  int weight = 60;
  double height = 160;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xfff6f8fe),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 25),),
                        ),
                        Text(
                          "$age",
                          style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 50),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(15, 70)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                              ),
                              child: Icon(
                                  color: Colors.indigo,
                                  Icons.exposure_minus_1,
                                  size: 40),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(15, 70)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                              ),
                              child: Icon(
                                  color: Colors.indigo,
                                  Icons.plus_one,
                                  size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 25),),
                        ),
                        Text(
                          "$weight",
                          style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 50),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(15, 70)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                              ),
                              child: Icon(
                                  color: Colors.indigo,
                                  Icons.exposure_minus_1,
                                  size: 40),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(15, 70)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                ),
                              ),
                              child: Icon(
                                  color: Colors.indigo,
                                  Icons.plus_one,
                                  size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 25),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 50),),
                      ),
                      Text("cm")
                    ],
                  ),
                  Slider(
                      activeColor: Colors.indigo,
                      value: height,
                      min: 100,
                      max: 200,
                      onChanged: (val) {
                        setState(() {
                          height = val.roundToDouble();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gender",
                    style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 25),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I am",
                        style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 50),),

                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ismale = false;
                              });
                            },
                            child: Icon(
                              size: 60,
                              Icons.woman,
                              color: ismale == false
                                  ? Colors.indigo
                                  : Colors.black,
                            ),
                          ),
                          Text(
                            "Female",
                            style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 20),),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ismale = true;
                              });
                            },
                            child: Icon(
                              size: 60,
                              Icons.man,
                              color:
                                  ismale == true ? Colors.indigo : Colors.black,
                            ),
                          ),
                          Text(
                            "Male",
                            style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 20),),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {

              Logic calc = Logic(height: height.toInt(), weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OutputPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    inter: calc.getInterpretation(),
                  ),
                ),
              );
            },
            color: Colors.indigo,
            minWidth: 250,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text(
              "Calculate",
              style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 25, color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
