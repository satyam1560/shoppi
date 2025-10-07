import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.prod,
    flavorValues: FlavorValues(
      apiBaseUrl: 'https://prod.main.com',
      appIcon: '',
      appName: 'Shoppi',
    ),
  );
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies(Environment.prod);
  initializeApp();
}
