import 'package:flutter/material.dart';
import '../values/values.dart';

class AddEmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
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
                          left: 24,
                          top: 40,
                          right: 24,
                          bottom: 27,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: 23,
                                    height: 11,
                                    margin: EdgeInsets.only(left: 5),
                                    child: Image.asset(
                                      "assets/images/shape-2.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 327,
                                  height: 52,
                                  margin: EdgeInsets.only(top: 88),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(20, 69, 91, 99),
                                        offset: Offset(0, 4),
                                        blurRadius: 16,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 24),
                                        child: Opacity(
                                          opacity: 0.55779,
                                          child: Text(
                                            "Employee Name",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 327,
                                  height: 52,
                                  margin: EdgeInsets.only(top: 33),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(20, 69, 91, 99),
                                        offset: Offset(0, 4),
                                        blurRadius: 16,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 24),
                                        child: Opacity(
                                          opacity: 0.55779,
                                          child: Text(
                                            "Employee Designation",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 327,
                                  height: 52,
                                  margin: EdgeInsets.only(top: 33),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(20, 69, 91, 99),
                                        offset: Offset(0, 4),
                                        blurRadius: 16,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 24),
                                        child: Opacity(
                                          opacity: 0.55779,
                                          child: Text(
                                            "Employee Email",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 327,
                                  height: 52,
                                  margin: EdgeInsets.only(top: 33),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(20, 69, 91, 99),
                                        offset: Offset(0, 4),
                                        blurRadius: 16,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 24),
                                        child: Opacity(
                                          opacity: 0.55779,
                                          child: Text(
                                            "Employee Contact No.",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 327,
                                  height: 52,
                                  margin: EdgeInsets.only(top: 33),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(20, 69, 91, 99),
                                        offset: Offset(0, 4),
                                        blurRadius: 16,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 24),
                                        child: Opacity(
                                          opacity: 0.55779,
                                          child: Text(
                                            "Employee Address",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 252,
                                  height: 48,
                                  margin: EdgeInsets.only(
                                      bottom: size.height * 0.08),
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
                                      "Add Employee",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 10, 10),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
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
                                  margin: EdgeInsets.only(right: 0),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 201, 196, 245),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.5)),
                                  ),
                                  child: Container(),
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
            Positioned(
              top: 30,
              child: Text(
                "Add Employee ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 252, 252, 252),
                  fontWeight: FontWeight.w400,
                  fontSize: 21,
                  letterSpacing: -0.21,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
