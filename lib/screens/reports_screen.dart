import 'package:flutter/material.dart';
import '../values/values.dart';
import '../screens/report//week.dart';
import '../screens/report/month.dart';
import '../screens/report/today.dart';
class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
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
  }
}
