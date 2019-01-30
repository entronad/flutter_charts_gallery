import 'package:flutter/material.dart';
import 'package:flutter_charts_gallery/models/package.dart';

class PackageCard extends StatelessWidget {
  PackageCard({Key key, @required this.package, @required this.onPressed}):super(key: key);

  final Package package;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle = theme.textTheme.title;
    final TextStyle descriptionStyle = theme.textTheme.body1;

    return Container(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          this.onPressed(this.package.name);
        },
        child: Card(
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: Text(this.package.name, style: titleStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                    child: Text('GitHub:  ${this.package.github}'),
                  ),
                  Text('Version:  ${this.package.version}'),
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}