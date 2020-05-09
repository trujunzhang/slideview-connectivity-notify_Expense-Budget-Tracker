import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ieatta/shared/constants.dart';

class OfflineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: backgroundGradient,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SpinKitWave(
                color: Colors.purple,
                size: 40.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Waiting for Connectivity...',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rome'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
