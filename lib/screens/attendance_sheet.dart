import 'package:flutter/material.dart';
import '../models/attendance.dart';
import '../values/values.dart';

class AttandaceSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: AppColors.secondaryBackground,
          // border: Border.fromBorderSide(Borders.primaryBorder),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: size.width / 5,
                ),
                Text(
                  "Attendance Sheet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontWeight: FontWeight.w400,
                    fontSize: 21,
                    letterSpacing: -0.21,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ListView.builder(
                  itemCount: attandanceLIst.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 120,
                      margin: EdgeInsets.only(top: 13),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        border: Border.fromBorderSide(Borders.primaryBorder),
                        boxShadow: [
                          Shadows.secondaryShadow,
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 113,
                              height: 58,
                              margin: EdgeInsets.only(left: 23, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "${attandanceLIst[index].name}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 82, 111, 247),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 26,
                                          letterSpacing: -0.26,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 113,
                                      height: 19,
                                      margin: EdgeInsets.only(top: 8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(top: 1),
                                              child: Text(
                                                "Employee ID",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 75, 106, 241),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  letterSpacing: -0.14,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(left: 6),
                                              child: Text(
                                                "${attandanceLIst[index].id}",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 95, 67, 232),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  letterSpacing: -0.16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 51,
                            margin:
                                EdgeInsets.only(top: 23, right: 19, bottom: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 51,
                                    height: 50,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Image.asset(
                                            "assets/images/ellipse-1.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        Positioned(
                                          top: 9,
                                          right: 17,
                                          child: Text(
                                            "P",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 248, 248, 249),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 26,
                                              letterSpacing: -0.26,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 3),
                                    child: Text(
                                      "${attandanceLIst[index].absents}%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 75, 106, 241),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        letterSpacing: -0.22,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 51,
                            margin:
                                EdgeInsets.only(top: 23, right: 31, bottom: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 51,
                                    height: 50,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Image.asset(
                                            "assets/images/ellipse-2.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        Positioned(
                                          top: 9,
                                          right: 16,
                                          child: Text(
                                            "A",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 248, 248, 249),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 26,
                                              letterSpacing: -0.26,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 2),
                                    child: Text(
                                      "${attandanceLIst[index].presents}%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 75, 106, 241),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        letterSpacing: -0.22,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
