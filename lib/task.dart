import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_test_two/bloc.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() {
    return _TaskState();
  }
}

class _TaskState extends State<Task> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    UseBloc bloc = BlocProvider.of<UseBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Test 2'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder(
              bloc: bloc,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                bloc.add(BlocEvent());
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
