import 'package:flutter/material.dart';
import '../screens/add_employee.dart';
import '../screens/search_employee.dart';
import '../screens/view_profile_screen.dart';
import '../values/values.dart';

import 'delete_employee.dart';
import 'edit_employee.dart';

class HrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Human Resource',
          style: TextStyle(color: Color.fromARGB(255, 82, 115, 245)),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            width: size.width,
            child: Opacity(
              opacity: 0.38,
              child: Image.asset(
                "assets/images/jerene-march-2016-hris-shutterstock-700x420.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.15,
                ),
                buildButton(context, size, 'View Employee Profile', () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ViewProfileScreen()));
                }),
                SizedBox(
                  height: size.height * 0.015,
                ),
                buildButton(context, size, 'Add Employee', () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => AddEmployeeScreen()));
                }),
                SizedBox(
                  height: size.height * 0.015,
                ),
                buildButton(context, size, 'Search Employee', () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SearchEmployee()));
                }),
                SizedBox(
                  height: size.height * 0.015,
                ),
                buildButton(context, size, 'Edit Employee', () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => EditEmployee()));
                }),
                buildButton(context, size, 'Delete Employee', () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => DeleteEmployeeScreen()));
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildButton(
    BuildContext context, Size size, String text, Function callBack) {
  return Container(
    width: 252,
    height: 48,
    margin: EdgeInsets.only(bottom: 15),
    child: InkWell(
      onTap: callBack,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 252,
              height: 48,
              decoration: BoxDecoration(
                gradient: Gradients.primaryGradient,
                boxShadow: [
                  Shadows.primaryShadow,
                ],
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Container(),
            ),
          ),
          Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.accentText,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// color: Color.fromARGB(255, 82, 115, 245),

// Positioned(
//                     top: 191,
//                     child: Text(
//                       "Add Employee",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 254, 254),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 266,
//                     child: Text(
//                       "Search Employee",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 254, 254),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 341,
//                     child: Text(
//                       "Edit Employee",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 254, 254),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: size.height * 0.2,
//                     child: Text(
//                       "Delete Employee",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 254, 254),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 120,
//                     right: 487,
//                     child: Text(
//                       "View Employee Profile",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 255, 254, 254),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
