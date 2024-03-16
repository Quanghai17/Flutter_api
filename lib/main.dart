import 'package:flutter/material.dart';
import 'package:flutter_laravel_app_api/providers/AuthProvider.dart';
import 'package:flutter_laravel_app_api/providers/CategoryProvider.dart';
import 'package:flutter_laravel_app_api/providers/PlaceProvider.dart';
import 'package:flutter_laravel_app_api/providers/TransactionProvider.dart';
import 'package:flutter_laravel_app_api/screens/categories.dart';
import 'package:flutter_laravel_app_api/screens/home.dart';
import 'package:flutter_laravel_app_api/screens/login.dart';
import 'package:flutter_laravel_app_api/screens/register.dart';
import 'package:flutter_laravel_app_api/screens/welcome.dart';

import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        child: Consumer<AuthProvider>(builder: (context, authProvider, child) {
          return MultiProvider(
              providers: [
                ChangeNotifierProvider<CategoryProvider>(
                    create: (context) => CategoryProvider(authProvider)),
                ChangeNotifierProvider<TransactionProvider>(
                    create: (context) => TransactionProvider(authProvider)),
                ChangeNotifierProvider<PlaceProvider>(
                    create: (context) => PlaceProvider(authProvider))
              ],
              child: MaterialApp(title: 'Welcome to Flutter', routes: {
                '/': (context) {
                  final authProvider = Provider.of<AuthProvider>(context);
                  if (authProvider.isAuthenticated) {
                    return Home();
                  } else {
                    return Login();
                  }
                },
                '/login': (context) => Login(),
                '/register': (context) => Register(),
                '/home': (context) => Home(),
                '/categories': (context) => Categories(),
              }));
        }));
  }
}
