import 'package:flutter/material.dart';
import 'package:flutter_laravel_app_api/models/place.dart';
import 'package:flutter_laravel_app_api/providers/AuthProvider.dart';
import 'package:flutter_laravel_app_api/services/api.dart';

class PlaceProvider extends ChangeNotifier {
  List<Place> places = [];
  late ApiService apiService;
  late AuthProvider authProvider;

  PlaceProvider(AuthProvider authProvider) {
    this.authProvider = authProvider;
    this.apiService = ApiService(authProvider.token);

    init();
  }

  Future<void> init() async {
    try {
      places = await apiService.fetchPlaces();
      notifyListeners();
    } catch (error) {
      print('Error fetching places: $error');
    }
  }
}
