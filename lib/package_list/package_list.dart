import 'package:flutter/material.dart';
import 'package_card.dart';
import 'package:flutter_charts_gallery/models/package.dart';

final packages = <Package>[
  Package(
    name: 'flutter_echarts',
    github: 'entronad/flutter_echarts',
    version: '1.0.6',
  ),
  Package(
    name: 'charts_flutter',
    github: 'google/charts',
    version: '0.5.0',
  ),
  Package(
    name: 'flutter_circular_chart',
    github: 'xqwzts/flutter_circular_chart',
    version: '0.1.0',
  ),
  Package(
    name: 'flutter_charts',
    github: 'mzimmerm/flutter_charts',
    version: '0.1.10',
  ),
  Package(
    name: 'fcharts',
    github: 'thekeenant/fcharts',
    version: '0.1.10',
  )
];

class PackageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart Packages'),
      ),
      body: ListView(
        children: packages.map((package) => (
          PackageCard(
            package: package,
            onPressed: (String packageName) {
              Navigator.pushNamed(context, '/demos/$packageName');
            },
          )
        )).toList(),
      )
    );
  }
}
