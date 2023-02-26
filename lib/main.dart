import 'package:flutter/material.dart';
import 'package:flutter_1/provider/theme_provider.dart';
import 'package:flutter_1/routes.dart';
import 'package:flutter_1/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(context)),
      ],
      child: PMSNApp(),
    );
  }
}

class PMSNApp extends StatelessWidget {
  const PMSNApp({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: theme.getthemeData(),
      routes: getApplicationRoutes(),
      home: LoginScreen(),
    );
  }
}
