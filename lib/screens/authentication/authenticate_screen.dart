import 'package:flutter/material.dart';
import 'package:ieatta/screens/authentication/onboarding_screen.dart';

class AuthenticateScreen extends StatefulWidget {
  @override
  _AuthenticateScreenState createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  @override
  Widget build(BuildContext context) {
//    final connectionStatus = Provider.of<ConnectivityStatus>(context);
    return OnboardingScreen();
  }
}
