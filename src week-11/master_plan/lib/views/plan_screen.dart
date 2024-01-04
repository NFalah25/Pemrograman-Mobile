import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '../provider/plan_provider.dart';
// import '../views/plan_creator_screen.dart';

class PlanScreen extends StatefulWidget {
  // Praktikum 2
  // const PlanScreen({super.key});

  // Praktikum 3
  final Plan plan;
  const PlanScreen({Key? key, required this.plan}): super(key: key);

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Praktikum 2
  // Plan plan = const Plan();
  // late ScrollController scrollController;

  // Praktikum 3
  late ScrollController scrollController;
  // Plan get plan => widget.plan;
  late Plan currentPlan;

  // set plan(Plan value) {
  //   setState(() {});
  // }

// Praktikum 1
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("Master Plan Naufal"),
  //     ),
  //     body: _buildList(),
  //     floatingActionButton: _buildAddTaskButton(),
  //   );
  // }

// Prkatikum 2
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Master Plan')),
  //     body: ValueListenableBuilder<Plan>(
  //       valueListenable: PlanProvider.of(context),
  //       builder: (context, plan, child) {
  //         return Column(
  //           children: [
  //             Expanded(child: _buildList(plan)),
  //             SafeArea(child: Text(plan.completenessMessage))
  //           ],
  //         );
  //       },
  //     ),
  //     floatingActionButton: _buildAddTaskButton(context),
  //   );
  // }

// Praktikum 3
  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(currentPlan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          currentPlan = plans.firstWhere((p) => p.name == widget.plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0), // Sesuaikan dengan jumlah margin yang diinginkan
                  child: Text(
                    currentPlan?.completenessMessage ?? 'No completeness message available',
                  ),
                ),
              ),
            ],);},),
      floatingActionButton: _buildAddTaskButton(context,)
      ,);
  }

  // Praktikum 1
  // Widget _buildAddTaskButton() {
  //   return FloatingActionButton(
  //     child: const Icon(Icons.add),
  //     onPressed: () {
  //       setState(() {
  //         plan = Plan(
  //           name: plan.name,
  //           tasks: List<Task>.from(plan.tasks)..add(const Task()),
  //         );
  //       });
  //     },
  //   );
  // }

  //Praktikum 2
  // Widget _buildAddTaskButton(BuildContext context) {
  //   ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
  //   return FloatingActionButton(
  //     child: const Icon(Icons.add),
  //     onPressed: () {
  //       Plan currentPlan = planNotifier.value;
  //       planNotifier.value = Plan(
  //         name: currentPlan.name,
  //         tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
  //       );
  //     },
  //   );
  // }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Plan currentPlan = planNotifier.value.isNotEmpty ? planNotifier.value[0] : Plan(); // Mengambil plan pertama (atau sesuaikan dengan logika aplikasi Anda)
        int planIndex = planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)..add(const Task());
        List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
        updatedPlans[planIndex] = Plan(
          name: currentPlan.name,
          tasks: updatedTasks,
        );

        planNotifier.value = updatedPlans;
      },
    );
  }

// Praktikum 1
  // Widget _buildList() {
  //   return ListView.builder(
  //     itemCount: plan.tasks.length,
  //     itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
  //     controller: scrollController,
  //     keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
  //         ? ScrollViewKeyboardDismissBehavior.onDrag
  //         : ScrollViewKeyboardDismissBehavior.manual,
  //   );
  // }

// Praktikum 2
  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

// Praktikum 1
  // Widget _buildTaskTile(Task task, int index) {
  //   return ListTile(
  //     leading: Checkbox(
  //         value: task.complete,
  //         onChanged: (selected) {
  //           setState(() {
  //             plan = Plan(
  //               name: plan.name,
  //               tasks: List<Task>.from(plan.tasks)
  //                 ..[index] = Task(
  //                   description: task.description,
  //                   complete: selected ?? false,
  //                 ),
  //             );
  //           });
  //         }),
  //     title: TextFormField(
  //       initialValue: task.description,
  //       onChanged: (text) {
  //         setState(() {
  //           plan = Plan(
  //             name: plan.name,
  //             tasks: List<Task>.from(plan.tasks)
  //               ..[index] = Task(
  //                 description: text,
  //                 complete: task.complete,
  //               ),
  //           );
  //         });
  //       },
  //     ),
  //   );
  // }

// Praktikum 2
  // Widget _buildTaskTile(Task task, int index, BuildContext context) {
  //   ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
  //   return ListTile(
  //     leading: Checkbox(
  //         value: task.complete,
  //         onChanged: (selected) {
  //           Plan currentPlan = planNotifier.value;
  //           planNotifier.value = Plan(
  //             name: currentPlan.name,
  //             tasks: List<Task>.from(currentPlan.tasks)
  //               ..[index] = Task(
  //                 description: task.description,
  //                 complete: selected ?? false,
  //               ),
  //           );
  //         }),
  //     title: TextFormField(
  //       initialValue: task.description,
  //       onChanged: (text) {
  //         Plan currentPlan = planNotifier.value;
  //         planNotifier.value = Plan(
  //           name: currentPlan.name,
  //           tasks: List<Task>.from(currentPlan.tasks)
  //             ..[index] = Task(
  //               description: text,
  //               complete: task.complete,
  //             ),
  //         );
  //       },
  //     ),
  //   );
  // }

// Praktikum 3
  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          int planIndex =
          planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan.name,
              tasks: List<Task>.from(currentPlan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          int planIndex =
          planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan.name,
              tasks: List<Task>.from(currentPlan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
        },
      ),
    );
  }
// Praktikum 1
  // @override
  // void initState() {
  //   super.initState();
  //   scrollController = ScrollController()
  //     ..addListener(() {
  //       FocusScope.of(context).requestFocus(FocusNode());
  //     });
  // }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
    currentPlan = widget.plan; // Inisialisasi variabel mutable
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
