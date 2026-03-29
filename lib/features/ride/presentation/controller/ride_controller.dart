import 'package:flutter/material.dart';

import '../../domain/get_dashboard_data.dart';

import '../../domain/ride_entity.dart';

class RideController extends ChangeNotifier {
  final RideRepository repository;

  RideController(this.repository);

  RideEntity? data;
  bool isLoading = false;

  Future<void> loadDashboard() async {
    isLoading = true;
    notifyListeners();

    data = await repository.getDashboardData();

    isLoading = false;
    notifyListeners();
  }
}