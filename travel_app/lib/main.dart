import 'package:flutter/material.dart';
import 'package:travel_app/app/app.dart';
import 'package:travel_app/app/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator().initAppModeule();
  runApp(const MyApp());
}
