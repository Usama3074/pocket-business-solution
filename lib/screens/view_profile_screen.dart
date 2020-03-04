import 'package:flutter/material.dart';
import '../values/values.dart';

class ViewProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
                          left: 29,
                          top: 30,
                          right: 58,
                          bottom: 27,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        // print('hello');
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        width: 25,
                                        height: 11,
                                        child: Image.asset(
                                          "assets/images/shape-2.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ),
                                    // Positioned(
                                    //   left: 20,
                                    //   child:
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(top:10),
                                      margin: EdgeInsets.only(left: 62),
                                      child: Text(
                                        "Employee Profile",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 252, 252, 252),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 21,
                                          letterSpacing: -0.21,
                                        ),
                                      ),
                                    ),
                                    // ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 128,
                                  height: 128,
                                  margin: EdgeInsets.only(top: 27, right: 0),
                                  child: Image.asset(
                                    "assets/images/avatar-3.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(top: 6),
                                  child: Text(
                                    "Saba ",
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
                                  margin: EdgeInsets.only(top: 6),
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
                                alignment: Alignment.center,
                                child: Container(
                                  width: 250,
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
                                  margin: EdgeInsets.only(left: 7, top: 25),
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
                                              EdgeInsets.only(left: 4, top: 29),
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
                                              EdgeInsets.only(left: 4, top: 8),
                                          child: Text(
                                            "saba@gmail.com",
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
                                              EdgeInsets.only(left: 4, top: 29),
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
                                          margin: EdgeInsets.only(left:4,top: 8),
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
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 4, bottom: 8),
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
                                      Text(
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
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
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
          ],
        ),
      ),
    );
  }
}
