import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.staging,
    flavorValues: FlavorValues(
      apiBaseUrl: 'https://staging.main.com',
      appIcon: '',
      appName: 'Shoppi [STAGING]',
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.test);
  initializeApp();
}
