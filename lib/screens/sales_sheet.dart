import 'package:flutter/material.dart';
import '../values/values.dart';

class SalesSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.secondaryBackground,
            // border: Border.fromBorderSide(Borders.primaryBorder),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 10,left: 20,right:20),
                width: MediaQuery.of(context).size.width,
                height: 35,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 22,
                          height: 10,
                          margin: EdgeInsets.only(top: 14),
                          child: Image.asset(
                            "assets/images/shape-4.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(left: 70,top:5),
                        child: Text(
                          "Salary of Employees",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 249, 249, 249),
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/images/sales_sheet.png',
                    fit: BoxFit.fill,
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
