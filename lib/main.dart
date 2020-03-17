import 'package:covid19/providers/country_provider.dart';
import 'package:covid19/providers/daily_provider.dart';
import 'package:covid19/providers/history_provider.dart';
import 'package:covid19/providers/home_provider.dart';
import 'package:covid19/providers/province_provider.dart';
import 'package:covid19/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => HomeProvider()),
      ChangeNotifierProvider(create: (_) => DailyProvider()),
      ChangeNotifierProvider(create: (_) => ProvinceProvider()),
      ChangeNotifierProvider(create: (_) => CountryProvider()),
      ChangeNotifierProvider(create: (_) => HistoryProvider()),
    ], child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid19',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
