import 'package:flutter/material.dart';

class ErrorOccurWidget extends StatelessWidget {
  final IconData icon;
  final String errorMessage;

  const ErrorOccurWidget({Key key, this.icon, this.errorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 80,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Text(
              errorMessage,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
