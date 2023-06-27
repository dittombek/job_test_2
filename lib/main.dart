import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_test_two/bloc.dart';
import 'package:job_test_two/task.dart';

import 'notification_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UseBloc(),
      child: const MaterialApp(
        home: Task(),
      ),
    );
  }
}
