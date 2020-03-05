import 'package:flutter/material.dart';
import 'package:pocket_bussiness_solution/main.dart';
import '../values/values.dart';
import '../screens/salary/week.dart';
import '../screens/salary/month.dart';
import '../screens/salary/today.dart';

class SalesSheet extends StatefulWidget {
  @override
  _SalesSheetState createState() => _SalesSheetState();
}

class _SalesSheetState extends State<SalesSheet> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      // initialIndex: 0,

      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.secondaryBackground,
          title: Text('Salary of Employees'),
          bottom: TabBar(

            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(

                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white),

             indicatorColor: Colors.white,
//             labelColor: AppColors.accentElement,


            // labelStyle: TextStyle(color: Colors.black),
            tabs: <Widget> [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("TODAY"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("WEEK"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("MONTH"),
                ),
              ),
            ]
          ),
        ),
        body:TabBarView(children: <Widget>[
          Today(),
          Week(),
          Month(),
        ],),
      ),
    );
//    return Scaffold(
//        appBar: AppBar(title: Text('Salary of Employees'),backgroundColor: AppColors.secondaryBackground,centerTitle: true,),
//        body: _UpperTabBar(),


//      body: Container(
//        constraints: BoxConstraints.expand(),
//        decoration: BoxDecoration(
//          color: Color.fromARGB(255, 255, 255, 255),
//        ),
//        child: Container(
//          padding: EdgeInsets.symmetric(horizontal: 0),
//          height: MediaQuery.of(context).size.height,
//          decoration: BoxDecoration(
//            color: AppColors.secondaryBackground,
//            // border: Border.fromBorderSide(Borders.primaryBorder),
//          ),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: [
//              Container(
//                margin: EdgeInsets.only(top: 40, bottom: 10,left: 20,right:20),
//                width: MediaQuery.of(context).size.width,
//                height: 35,
//                child: Row(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: [
//                    Align(
//                      alignment: Alignment.topLeft,
//                      child: InkWell(
//                        onTap: () {
//                          Navigator.pop(context);
//                        },
//                        child: Container(
//                          width: 22,
//                          height: 10,
//                          margin: EdgeInsets.only(top: 14),
//                          child: Image.asset(
//                            "assets/images/shape-4.png",
//                            fit: BoxFit.none,
//                          ),
//                        ),
//                      ),
//                    ),
//                    Align(
//                      alignment: Alignment.topCenter,
//                      child: Container(
//                        margin: EdgeInsets.only(left: 70,top:5),
//                        child: Text(
//                          "Salary of Employees",
//                          textAlign: TextAlign.center,
//                          style: TextStyle(
//                            color: Color.fromARGB(255, 249, 249, 249),
//                            fontWeight: FontWeight.w400,
//                            fontSize: 23,
//                          ),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Expanded(
//                child: Container(
//                  child: Image.asset(
//                    'assets/images/sales_sheet.png',
//                    fit: BoxFit.fill,
//                  ),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
  }
}