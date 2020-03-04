
import 'package:flutter/material.dart';
import './screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'helpers/login.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MultiProvider(
          child: MaterialApp(
        home: SplashScreen(),
      ), providers: [
        ChangeNotifierProvider.value(value: LoginState()),
      ],
    );
  }
}