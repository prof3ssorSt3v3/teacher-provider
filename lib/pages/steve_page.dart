import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacher_provider/models/teacher_model.dart';
import 'package:teacher_provider/widgets/navigation_bar.dart';

class StevePage extends StatelessWidget {
  const StevePage({super.key, required this.nav, required this.page});
  final Function nav;
  final int page;
  final String Person = 'Steve';

  @override
  Widget build(BuildContext context) {
    return Consumer<TeacherModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Steve'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  '${value.name} is best.',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  //update the value through the context provider
                  if (Person.toUpperCase() != value.name) {
                    final teacher = context.read<TeacherModel>();
                    teacher.name = Person;
                  }
                },
                child: (Person.toUpperCase() == value.name)
                    ? Text('Already BEST')
                    : Text('Set ${Person.toUpperCase()} as Best'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(nav: nav, page: page),
      ),
    );
  }
}
