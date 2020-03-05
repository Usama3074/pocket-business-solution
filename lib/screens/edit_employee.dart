import 'package:flutter/material.dart';
import '../screens/update_employee_screen.dart';
import '../values/values.dart';

class EditEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Edit Employee'),backgroundColor:  Color.fromARGB(255, 83, 111, 247),),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 772,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.64143, 0.5),
                                end: Alignment(0.17773, 0.87724),
                                stops: [
                                  0,
                                  1,
                                ],
                                colors: [
                                  Color.fromARGB(255, 83, 111, 247),
                                  Color.fromARGB(255, 42, 56, 124),
                                ],
                              ),
                              border:
                                  Border.fromBorderSide(Borders.primaryBorder),
                            ),
                            child: Container(),
                          ),
                        ),


                        Positioned(
                          left: 29,
                          top: 0,
                          right: 30,
                          bottom: 20,
                          child: ListView(
                            scrollDirection: Axis.vertical,
//                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
//                              Align(
//                                alignment: Alignment.topLeft,
//                                child: InkWell(
//                                  onTap: () {
//                                    Navigator.of(context).pop();
//                                  },
//                                  child: Container(
//                                    width: 23,
//                                    height: 11,
//                                    margin: EdgeInsets.only(top: 10, left: 1),
//                                    child: Image.asset(
//                                      "assets/images/shape-2.png",
//                                      fit: BoxFit.none,
//                                    ),
//                                  ),
//                                ),
//                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 128,
                                  height: 128,
                                  margin: EdgeInsets.only(top: 40, right: 0),
                                  child: Image.asset(
                                    "assets/images/avatar-3.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  child: Text(
                                    "Saba",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 252, 252, 252),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 32,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  child: Text(
                                    "Software Engineer",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 251, 251, 251),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      letterSpacing: -0.2,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 256,
                                  height: 1,
                                  margin: EdgeInsets.only(top: 15),
                                  decoration: BoxDecoration(
                                    color: AppColors.accentElement,
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 251,
                                  height: 267,
                                  margin: EdgeInsets.only(left: 7, top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 4),
                                          child: Opacity(
                                            opacity: 0.3,
                                            child: Text(
                                              "Employee ID",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColors.accentText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(left: 3, top: 8),
                                          child: Text(
                                            "165275",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 250, 249, 255),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              letterSpacing: -0.16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(left: 4, top: 10),
                                          child: Opacity(
                                            opacity: 0.3,
                                            child: Text(
                                              "Email",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColors.accentText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(left: 4, top: 10),
                                          child: Text(
                                            "sabagmail.com",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 250, 249, 255),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              letterSpacing: -0.16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(left: 4, top: 10),
                                          child: Opacity(
                                            opacity: 0.3,
                                            child: Text(
                                              "Contact No",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColors.accentText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(left: 4, top: 10),
                                          child: Text(
                                            "+923232525259",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 250, 249, 255),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              letterSpacing: -0.16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin:
                                              EdgeInsets.only(top: 10, left: 4),
                                          child: Opacity(
                                            opacity: 0.3,
                                            child: Text(
                                              "Address",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColors.accentText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4, top: 10),
                                        child: Text(
                                          "House#6,Street12,DHAII,islamabad",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 250, 249, 255),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: -0.16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Spacer(),
                              Align(
                                alignment: Alignment.topCenter,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                UpdateEmployeeScreen()));
                                  },
                                  child: Container(
                                    width: 252,
                                    height: 48,
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      gradient: Gradients.secondaryGradient,
                                      boxShadow: [
                                        Shadows.primaryShadow,
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(24)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Edit Employee",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 10, 10, 10),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 245,
                                  height: 9,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 201, 196, 245),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.5)),
                                  ),
                                  child: Center(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
