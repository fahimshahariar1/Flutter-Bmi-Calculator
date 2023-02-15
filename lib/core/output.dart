import 'package:day17/core/uidesign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class OutputPage extends StatelessWidget {


  OutputPage({this.bmiResult, this.inter, this.resultText});

  final String? bmiResult;
  final String? resultText;
  final String? inter;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Color(0xfff6f8fe),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 50),
            height: 500,
            width: 350,
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  "Your BMI Is",
                  style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 40, color: Colors.teal),),
                ),
                SizedBox(height: 50,),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(bmiResult!, style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 80),),),
                   Text(resultText!.toUpperCase(), style: TextStyle(fontSize: 20),),
                   SizedBox(height: 20,),

                   Text(inter!, textAlign: TextAlign.center,style: TextStyle(fontSize: 20, ),),
                 ],
               ),
                Spacer(),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  color: Colors.indigo,
                  minWidth: 250,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Re-Calculate",
                    style: GoogleFonts.righteous(textStyle: TextStyle(fontSize: 25, color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
