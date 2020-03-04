import 'package:flutter/material.dart';
import '../models/employee.dart';
import '../values/values.dart';

class DeleteEmployeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                              border:
                                  Border.fromBorderSide(Borders.primaryBorder),
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: 13,
                          top: 30,
                          right: 11,
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
                                    margin: EdgeInsets.only(left: 16, top: 10),
                                    child: Image.asset(
                                      "assets/images/shape-2.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView.separated(
                                  itemCount: employeeList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      leading: Container(
                                        width: 83,
                                        height: 83,
                                        child: Image.asset(
                                          "assets/images/avatar-3.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      trailing: Container(
                                        width: 80,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          gradient: Gradients.secondaryGradient,
                                          boxShadow: [
                                            Shadows.primaryShadow,
                                          ],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(24)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Delete",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 3, 3, 3),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      title: Text(
                                        employeeList[index].name,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 252, 252, 252),
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
                                                      color:
                                                          AppColors.accentText,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      width: 337,
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
                                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 50),
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
