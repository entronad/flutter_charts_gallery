// from fcharts/example

import 'package:flutter/material.dart';
import 'animated_pie_chart_example.dart';
import 'animated_radial_chart_example.dart';
import 'animated_random_radial_chart_example.dart';

// void main() => runApp(new FChartsExampleApp());
final entry = () => App();

class ChartExample {
  ChartExample(
    this.name,
    this.widget,
    this.description,
  );

  final String name;
  final Widget widget;
  final String description;
}

final charts = [
  new ChartExample(
    'Pie Chart',
    new AnimatedPieChartExample(),
    '',
  ),
  new ChartExample(
    'Radial Chart',
    new AnimatedRadialChartExample(),
    '',
  ),
  new ChartExample(
    'Random Radial Chart',
    new RandomizedRadialChartExample(),
    '',
  ),
];

class App extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<App> {
  var _chartIndex = 0;

  @override
  Widget build(BuildContext context) {
    final chart = charts[_chartIndex % charts.length];

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Example: ${chart.name}'),
        ),
        body: new Container(
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: new Column(
            children: [
              new Padding(
                padding: new EdgeInsets.all(30.0),
                child: new Text(
                  chart.description,
                  textAlign: TextAlign.center,
                ),
              ),
              new Padding(
                  padding: new EdgeInsets.all(20.0),
                  child: new Container(
                    child: chart.widget,
                  )),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            setState(() => _chartIndex++);
          },
          child: new Icon(Icons.refresh),
        ),
      ),
    );
  }
}
