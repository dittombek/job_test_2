import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_test_two/notification_service.dart';

class BlocEvent {}

class UseBloc extends Bloc<BlocEvent, int> {
  UseBloc() : super(0) {
    on<BlocEvent>((event, emit) async {
      var currentIncreament = 6;

      for (var i = 0; i < 20; i++) {
        await Future.delayed(const Duration(seconds: 5), () => emit(state + 1));

        if ((i + 1) == currentIncreament) {
          NotificationService().showNotification(
              title: '6 Increaments of the Counter',
              body: 'Current Counter = ${i + 1}');
          currentIncreament += 6;
        }
      }
    });
  }
}
