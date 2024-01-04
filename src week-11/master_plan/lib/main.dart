//import material.dart
import 'package:flutter/material.dart';
import 'package:master_plan/views/plan_creator_screen.dart';
import './views/plan_screen.dart';
import './provider/plan_provider.dart';
import './models/plan.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Praktikum 1
    // return MaterialApp(
    //  theme: ThemeData(useMaterial3: false, primarySwatch: Colors.purple),
    //  home: const PlanScreen(),
    // );

    // Praktikum 2
    // return MaterialApp(
    //   theme: ThemeData(useMaterial3: false, primarySwatch: Colors.purple),
    //   home: PlanProvider(
    //     notifier: ValueNotifier(List<Plan>.empty(growable: true)),
    //     child: const PlanCreatorScreen(),
    //   ),
    // );

    //Praktikum 3
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: false, primarySwatch: Colors.pink),
        title: 'State Management App',
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
