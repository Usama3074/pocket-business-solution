import 'package:flutter/material.dart';
import '../values/values.dart';

import 'signup_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 14, 77, 141),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container(
            //   height: 17,
            //   margin: EdgeInsets.only(left: 20, top: 9, right: 19),
            //   child: Row(
            //     children: [
            //       Text(
            //         "09:41",
            //         textAlign: TextAlign.left,
            //         style: TextStyle(
            //           color: AppColors.accentText,
            //           fontWeight: FontWeight.w400,
            //           fontSize: 14,
            //         ),
            //       ),
            //       Spacer(),
            //       Container(
            //         width: 14,
            //         height: 12,
            //         margin: EdgeInsets.only(right: 4),
            //         child: Image.asset(
            //           "assets/images/group-5-2.png",
            //           fit: BoxFit.none,
            //         ),
            //       ),
            //       Container(
            //         width: 16,
            //         height: 12,
            //         margin: EdgeInsets.only(right: 5),
            //         child: Image.asset(
            //           "assets/images/group-4-10.png",
            //           fit: BoxFit.none,
            //         ),
            //       ),
            //       Container(
            //         width: 25,
            //         height: 12,
            //         child: Image.asset(
            //           "assets/images/group-6.png",
            //           fit: BoxFit.none,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.orange,
                width: size.width / 1.7,
                height: size.height * 0.2,
                margin: EdgeInsets.only(top: 179),
                child: Image.asset(
                  "assets/images/mz_logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 252,
                height: 48,
                margin: EdgeInsets.only(top: 163),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 0,
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
                      Positioned(
                        top: 6,
                        child: Text(
                          "Next",
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
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 245,
                height: 9,
                margin: EdgeInsets.only(bottom: 27),
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
    );
  }
}
