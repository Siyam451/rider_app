import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/ride/data/ride_repo_impl.dart';
import 'features/ride/presentation/controller/ride_controller.dart';
import 'features/ride/presentation/home/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RideController(RideRepositoryImpl())..loadDashboard(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}