import 'package:flutter/material.dart';
import '../values/values.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.secondaryBackground,
            // border: Border.fromBorderSide(Borders.primaryBorder),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 30),
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
                        margin: EdgeInsets.only(left: 100),
                        child: Text(
                          "Orders",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 249, 249, 249),
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return buildSingleOrder();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSingleOrder() {
    return Container(
      width: 326,
      height: 138,
      margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        color: AppColors.primaryBackground,
        boxShadow: [
          Shadows.secondaryShadow,
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            // alignment: Alignment.centerLeft,
            child: Container(
              width: 106,
              height: 83,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/box-new-used-gaylord-boxes-for-sale-reliable-industries-llc-22.png",
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(
            width: 114,
            height: 117,
            margin: EdgeInsets.only(right: 53),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  left: 0,
                  child: Text(
                    "\$49.00",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 55, 74, 190),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Gray MM",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 67, 67, 67),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 4),
                          child: Text(
                            "Bata",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromARGB(255, 145, 145, 145),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 42,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 0,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 39,
                                      decoration: BoxDecoration(
                                        color: AppColors.accentElement,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 0,
                                    right: 9,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "-",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 86, 86, 86),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(top: 7),
                                            child: Text(
                                              "+",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 86, 86, 86),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              child: Text(
                                "1",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 86, 86, 86),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
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
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 13,
              height: 13,
              margin: EdgeInsets.only(top: 10, right: 10),
              child: Image.asset(
                "assets/images/cencel-icon.png",
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
