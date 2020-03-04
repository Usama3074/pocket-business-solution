import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/login.dart';
import '../screens/signup_screen.dart';
import '../values/values.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var loginState = Provider.of<LoginState>(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 19, left: 8, right: 8),
        child: Form(
          key: loginState.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 150,
                  height: 200,
                  margin: EdgeInsets.only(top: 35),
                  child: Image.asset(
                    "assets/images/mz_logo.png",
                    fit: BoxFit.none,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                  child: Column(
                children: <Widget>[
                  TextFormField(
                    onSaved: (value) {
                      loginState.email = value;
                    },
                    validator: (value) =>
                        value.isEmpty ? "Email can't be empty" : null,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    onSaved: (value) {
                      loginState.password = value;
                    },
                    validator: (value) =>
                        value.isEmpty ? "Password can't be empty" : null,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                ],
              )),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(top: 8, right: 8,bottom: 10),
                child: InkWell(
                  onTap: () {
                    //Navigate to forget password screen function will be call here
                  },
                  child: Text(
                    "FORGOT PASSWORD",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              Container(
                width: 252,
                height: 48,
                margin: EdgeInsets.only(bottom: 15),
                child: InkWell(
                  //  onTap: loginState.validateAndSubmit(context),

                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 230,
                          height: 48,
                          decoration: BoxDecoration(
                            gradient: Gradients.primaryGradient,
                            
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Container(),
                        ),
                      ),
                      Positioned(
                        bottom: 9,
                        child: Text(
                          "Sign In",
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
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),

              // InkWell(
              //   // onTap: loginState.validateAndSubmit(context),
              //   child: Stack(
              //     alignment: Alignment.center,
              //     children: [
              //       Positioned(
              //         top: 0,
              //         child: Container(
              //           width: 252,
              //           height: 48,
              //           decoration: BoxDecoration(
              //             gradient: Gradients.primaryGradient,
              //             boxShadow: [
              //               Shadows.primaryShadow,
              //             ],
              //             borderRadius: BorderRadius.all(Radius.circular(24)),
              //           ),
              //           child: Container(),
              //         ),
              //       ),
              //       Positioned(
              //         top: 6,
              //         child: Text(
              //           "Sign In",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //             color: AppColors.accentText,
              //             fontWeight: FontWeight.w400,
              //             fontSize: 28,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 8,
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.of(context).push(
              //         MaterialPageRoute(builder: (_) => SignUpScreen()));
              //   },
              //   child: Container(
              //     margin: EdgeInsets.only(top: 18),
              //     child: Text(
              //       "Sign Up",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         color: AppColors.secondaryText,
              //         fontWeight: FontWeight.w400,
              //         fontSize: 21,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // Container(
              //   width: 245,
              //   height: 9,
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 201, 196, 245),
              //     borderRadius: BorderRadius.all(Radius.circular(4.5)),
              //   ),
              //   child: Container(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
