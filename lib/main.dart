import 'package:flutter/material.dart';
import 'package:ieatta/enums/connectivity_status.dart';
import 'package:ieatta/screens/authentication/wrapper.dart';
import 'package:ieatta/services/auth_service.dart';
import 'package:ieatta/services/connectivity_service.dart';
import 'package:provider/provider.dart';

import 'models/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User>.value(
          value: AuthService().onAuthStateChanged,
        ),
        StreamProvider<ConnectivityStatus>.value(
          value: ConnectivityService().onConnectivityChanged,
        ),
      ],
      child: MaterialApp(
        title: 'XBudget',
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
