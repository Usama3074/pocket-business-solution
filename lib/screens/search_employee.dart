import 'package:flutter/material.dart';
import '../models/employee.dart';
import '../values/values.dart';

class SearchEmployee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
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
                      height: MediaQuery.of(context).size.height,
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
                        border: Border.fromBorderSide(Borders.primaryBorder),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 26,
                    right: 16,
                    bottom: 27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryElement,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(20, 69, 91, 99),
                                offset: Offset(0, 12),
                                blurRadius: 16,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  width: 16,
                                  height: 14,
                                  margin: EdgeInsets.only(left: 21),
                                  child: Image.asset(
                                    "assets/images/ico.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 24,
                                margin: EdgeInsets.only(left: 19),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryElement,
                                  borderRadius: Radii.k0pxRadius,
                                ),
                                child: Container(),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Text(
                                  "Search Employee",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 69, 79, 99),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 24,
                                height: 24,
                                margin: EdgeInsets.only(right: 16),
                                child: Image.asset(
                                  "assets/images/icons-x.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: employeeList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: ListTile(
                                  leading: Container(
                                    width: 83,
                                    height: 83,
                                    child: Image.asset(
                                      "assets/images/avatar-3.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(
                                    employeeList[index].name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 252, 252, 252),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 32,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        employeeList[index].dept,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 251, 251, 251),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          letterSpacing: -0.2,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 1),
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
                                          // Spacer(),
                                          Text(
                                            "${employeeList[index].id}",
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
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                width: 200,
                                height: 3,
                                margin: EdgeInsets.only(left: 1, top: 10),
                                child: Image.asset(
                                  "assets/images/line-1.png",
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 50),
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
    );
  }
}

// Container(
//                                 height: 89,
//                                 margin: EdgeInsets.only(left: 3, right: 111, bottom: 10),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Container(
//                                         width: 83,
//                                         height: 83,
//                                         margin: EdgeInsets.only(bottom: 6),
//                                         child: Image.asset(
//                                           "assets/images/avatar-8.png",
//                                           fit: BoxFit.none,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Container(
//                                         margin: EdgeInsets.only(left: 8),
//                                         child: Opacity(
//                                           opacity: 0.3,
//                                           child: Text(
//                                             "Employee ID",
//                                             textAlign: TextAlign.center,
//                                             style: TextStyle(
//                                               color: AppColors.accentText,
//                                               fontWeight: FontWeight.w400,
//                                               fontSize: 14,
//                                               letterSpacing: -0.14,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Spacer(),
//                                     Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Text(
//                                         "165275",
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           color: Color.fromARGB(255, 250, 249, 255),
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 16,
//                                           letterSpacing: -0.16,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),

//Divider
//  Container(
//                                 height: 3,
//                                 margin: EdgeInsets.only(left: 3, right: 3, bottom: 97),
//                                 child: Image.asset(
//                                   "assets/images/line-1.png",
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),

//  Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     margin: EdgeInsets.only(top: 74),
//                     child: Text(
//                       "Kinza Ali",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 252, 252, 252),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 32,
//                         letterSpacing: -0.32,
//                       ),
//                     ),
//                   ),
//                 ),

// Align(
//   alignment: Alignment.topCenter,
//   child: Container(
//     margin: EdgeInsets.only(top: 116),
//     child: Text(
//       "Software Engineer",
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         color: Color.fromARGB(255, 251, 251, 251),
//         fontWeight: FontWeight.w400,
//         fontSize: 20,
//         letterSpacing: -0.2,
//       ),
//     ),
//   ),
// ),
