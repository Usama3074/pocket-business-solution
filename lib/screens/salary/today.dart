import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<charts.Series<Task, String>> _seriesPieData;
List<charts.Series<Task, String>>s;
  _generateData() {
    var piedata = [
      new Task('Profit', 51, Color(0xff3366cc)),
      new Task('Lose', 23, Color(0xff990099)),
      new Task('Equal', 24, Colors.blue),
//      new Task('TV', 15.6, Color(0xfffdbe19)),
//      new Task('Sleep', 19.2, Color(0xffff9900)),
//      new Task('Other', 10.3, Color(0xffdc3912)),
    ];

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Salary',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue } %',
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _seriesPieData = List<charts.Series<Task, String>>();

    _generateData();
  }

  Widget _SalaryChart() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 400,
      width: 410,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: charts.PieChart(
                    _seriesPieData,
                    animate: true,
                    animationDuration: Duration(seconds: 2),




                    defaultRenderer: new charts.ArcRendererConfig(
                        arcWidth: 20,
                        arcRendererDecorators: [
                          new charts.ArcLabelDecorator(
                              labelPosition: charts.ArcLabelPosition.outside)
                        ]),
//
                    behaviors: [

//                      new charts.DatumLegend(
//                        insideJustification: charts.InsideJustification.topEnd,
//                        horizontalFirst: false,
//                        desiredMaxRows: 3,
//                        cellPadding:
//                        new EdgeInsets.only(right: 5.0, bottom: 10.0),
//                        entryTextStyle: charts.TextStyleSpec(
//
//
//                            fontSize: 18),
//                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget data(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 180,
      width: 410,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: charts.PieChart(
                   _seriesPieData,


                    behaviors: [

                      new charts.DatumLegend(
                        insideJustification: charts.InsideJustification.topEnd,
                        horizontalFirst: false,
                        desiredMaxRows: 3,
                        cellPadding:
                        new EdgeInsets.only(right: 5.0, bottom: 10.0),
                        entryTextStyle: charts.TextStyleSpec(


                            fontSize: 18),
                      )
                    ],
                  ),
                )
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
        child: Column(children: <Widget>[
          _SalaryChart(),
          data(),
        ]),
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
