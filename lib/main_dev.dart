import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.dev,
    flavorValues: FlavorValues(
      apiBaseUrl: 'https://dev.main.com',
      appIcon: '',
      appName: 'Shoppi [DEV]',
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  initializeApp();
}
