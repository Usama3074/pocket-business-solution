import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../values/values.dart';

import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(

        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 254, 254),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 109,
            height: size.height * 0.1,
            margin: EdgeInsets.only(top: 35),
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.none,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              width: 326,
              height: 500,
              margin: EdgeInsets.only(top: 58),
              child: Form(
                child: ListView(

                    children: [

                TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please provide a value';
                    }
                    return null;
                  },
              ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please provide a value';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please provide a value';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact No'),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please provide a value';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Designation'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please provide a value';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 252,
                  height: 48,
                  margin: EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                          builder: (_) => HomeScreen()));
                    },
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
                              borderRadius: BorderRadius.all(
                                  Radius.circular(24)),
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          bottom: 9,
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.accentText,
                              fontWeight: FontWeight.w400,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Align(
          alignment: Alignment.topCenter,
          child: InkWell(
              onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
        },
          child: Container(
            margin: EdgeInsets.only(bottom: 60),
            child: Text(
              "Already have account? Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.secondaryText,
                fontWeight: FontWeight.w400,
                fontSize: 14,
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
          margin: EdgeInsets.only(bottom: 2),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 201, 196, 245),
            borderRadius: BorderRadius.all(Radius.circular(4.5)),
          ),
          child: Container(),
        ),
      ),


      ],
    ),
    ),

    ))])));
    }
}

//Align(
//alignment: Alignment.topCenter,
//child: Container(
//width: 252,
//height: 48,
//margin: EdgeInsets.only(bottom: 15),
//child: InkWell(
//onTap: () {
//Navigator.of(context)
//    .push(MaterialPageRoute(builder: (_) => HomeScreen()));
//},
//child: Stack(
//alignment: Alignment.center,
//children: [
//Positioned(
//bottom: 0,
//child: Container(
//width: 252,
//height: 48,
//decoration: BoxDecoration(
//gradient: Gradients.primaryGradient,
//boxShadow: [
//Shadows.primaryShadow,
//],
//borderRadius: BorderRadius.all(Radius.circular(24)),
//),
//child: Container(),
//),
//),
//Positioned(
//bottom: 9,
//child: Text(
//"Sign Up",
//textAlign: TextAlign.center,
//style: TextStyle(
//color: AppColors.accentText,
//fontWeight: FontWeight.w400,
//fontSize: 28,
//),
//),
//),
//],
//),
//),
//),
//),
//Align(
//alignment: Alignment.topCenter,
//child: InkWell(
//onTap: () {
//Navigator.of(context)
//    .push(MaterialPageRoute(builder: (_) => LoginScreen()));
//},
//child: Container(
//margin: EdgeInsets.only(bottom: 90),
//child: Text(
//"Already have account? Sign In",
//textAlign: TextAlign.center,
//style: TextStyle(
//color: AppColors.secondaryText,
//fontWeight: FontWeight.w400,
//fontSize: 14,
//),
//),
//),
//),
//),
//Align(
//alignment: Alignment.topCenter,
//child: Container(
//width: 245,
//height: 9,
//margin: EdgeInsets.only(bottom: 27),
//decoration: BoxDecoration(
//color: Color.fromARGB(255, 201, 196, 245),
//borderRadius: BorderRadius.all(Radius.circular(4.5)),
//),
//child: Container(),
//),
//),