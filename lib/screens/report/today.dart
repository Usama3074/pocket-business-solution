import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<charts.Series> seriesListVertically;
  List<charts.Series> seriesListHorizontally;

  static List<charts.Series<Report, String>> _seriesData() {
    final reportData = [
      Report('10', 300),
      Report('15', 350),
      Report('20', 250),
      Report('25', 400),
      Report('30', 160),
    ];
    return [
      charts.Series<Report, String>(
        id: 'Report',
        domainFn: (Report report, _) => report.repo,
        measureFn: (Report report, _) => report.len,
        data: reportData,
        fillColorFn: (Report report, _) {
          return (report.repo == '30')
              ? charts.MaterialPalette.gray.shadeDefault
              : charts.MaterialPalette.blue.shadeDefault;
        },
      )
    ];
  }

  static List<charts.Series<Report, String>> _seriesDataHorizontally() {
    final reportData = [
      Report('10', 300),
      Report('15', 350),
      Report('20', 250),
      Report('25', 400),
      Report('30', 160),
    ];
    return [
      charts.Series<Report, String>(
        id: 'Report Ho',
        domainFn: (Report report, _) => report.repo,
        measureFn: (Report report, _) => report.len,
        data: reportData,
        fillColorFn: (Report report, _) {
          return (report.repo == '30')
              ? charts.MaterialPalette.gray.shadeDefault
              : charts.MaterialPalette.blue.shadeDefault;
        },
      )
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    seriesListVertically = _seriesData();
    seriesListHorizontally = _seriesDataHorizontally();
  }

  Widget _MyReportVertically() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 70,
      width: 300,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Payement',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: 450,
                  height: 3,
                  margin: EdgeInsets.only(left: 1, top: 20, bottom: 10),
                  child: Image.asset(
                    "assets/images/line-1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 4,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '342K ',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'RS',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: charts.BarChart(
                    seriesListVertically,
                    animate: true,
                    vertical: true,
                      animationDuration: Duration(seconds: 2),
                      defaultRenderer: new charts.BarRendererConfig(

                          cornerStrategy: const charts.ConstCornerStrategy(30))
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _MyReportHorizontally() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 70,
      width: 300,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: charts.BarChart(
                    seriesListHorizontally,
                    animate: true,
                    vertical: false,
                    animationDuration: Duration(seconds: 2),
                    defaultRenderer: new charts.BarRendererConfig(

                        cornerStrategy: const charts.ConstCornerStrategy(30)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 500.0),
              child: _MyReportVertically(),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(12),
              child: Text(
                'Orders',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.expand(height: 300.0),
              child: _MyReportHorizontally(),
            ),
          ],
        ),
      ),
    );
  }
}

class Report {
  String repo;
  int len;

  Report(this.repo, this.len);
}
