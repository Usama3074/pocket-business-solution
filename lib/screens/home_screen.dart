import 'package:flutter/material.dart';
import '../screens/attendance_sheet.dart';
import '../screens/employee_salary.dart';
import '../screens/hr_screen.dart';
import '../screens/my_orders.dart';
import '../screens/notifications_screen.dart';
import '../screens/reports_screen.dart';
import '../screens/sales_sheet.dart';
import '../values/values.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // margin: EdgeInsets.only(bottom:30),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 247, 250),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Opacity(
              opacity: 0.71,
              child: Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/fabrica-cajas-4.png"),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.3,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 57,
                          height: 55,
                          margin: EdgeInsets.only(top: 2, left: 20),
                          child: Image.asset(
                            "assets/images/mz_logo.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 188,
                          height: 47,
                          margin: EdgeInsets.only(left: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "MZ Packages",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  // color: Colors.blue,
                                  color: AppColors.accentText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2),
                                child: Opacity(
                                  opacity: 0.71941,
                                  child: Text(
                                    "Best Solutions For Every One",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.accentText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.5,
              margin: EdgeInsets.only(top: 7),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.49,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0.22744),
                          end: Alignment(0.5, 0.81769),
                          stops: [
                            0,
                            1,
                          ],
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 247, 247, 250),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Photos & Videos",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 69, 79, 99),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Opacity(
                                opacity: 0.56,
                                child: Text(
                                  "269 shots",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 69, 79, 99),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        width: 157,
                                        height: 340,
                                        child: Image.asset(
                                          "assets/images/photo-2.png",
                                          fit: BoxFit.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 155,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Container(
                                              width: 155,
                                              height: size.height * 0.2,
                                              child: Image.asset(
                                                "assets/images/photo-3.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 155,
                                            height: size.height * 0.2,
                                            child: Image.asset(
                                              "assets/images/photo.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              height: 59,
          
             

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  singleTab(
                    image: 'assets/images/icons8-human-resources-100-1.png',
                    text: 'HR',
                    onClick: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => HrScreen()));
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 0,
                      height: 48,
                      margin: EdgeInsets.only(left: 6),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  singleTab(
                    image: 'assets/images/icons8-attendance-100.png',
                    text: 'Attendance',
                    onClick: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => AttandaceSheet()));
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 0,
                      height: 48,
                      margin: EdgeInsets.only(left: 6),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  singleTab(
                    image: 'assets/images/icons8-sales-performance-100.png',
                    text: 'Sales',
                    onClick: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SalesSheet()));
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 0,
                      height: 48,
                      margin: EdgeInsets.only(left: 6),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  singleTab(
                    image: 'assets/images/bulk-order-icon-1.png',
                    text: 'Orders',
                    onClick: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MyOrders()));
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 0,
                      height: 48,
                      margin: EdgeInsets.only(left: 6),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  singleTab(
                    image: 'assets/images/74-512.png',
                    text: 'Notifications',
                    onClick: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => NotificationsScreen()));
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 0,
                      height: 48,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  singleTab(
                    image:
                        'assets/images/report-online-business-reporting-512.png',
                    text: 'Report',
                    onClick: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ReportsScreen()));
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 1,
                      height: 48,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  singleTab(
                    image:
                        'assets/images/financial-icon-png-buy-this-icon-for--0-48-2.png',
                    text: 'Finance',
                    onClick: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => EmployeeSalary()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleTab({
    String image,
    String text,
    Function onClick,
  }) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: 51,
        margin: EdgeInsets.only(top: 6, right: 2, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 23,
                height: 23,
                child: Image.asset(
                  image,
                  fit: BoxFit.none,
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
