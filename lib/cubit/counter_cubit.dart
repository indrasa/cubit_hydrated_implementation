import 'package:hydrated_bloc/hydrated_bloc.dart';

class CounterCubit extends HydratedCubit<int> {
  CounterCubit() : super(0);

  void tambah() => emit(state + 1);

  @override
  int? fromJson(Map<String, dynamic> json) {
    return json['value'] as int;
  }

  @override
  Map<String, dynamic>? toJson(int state) {
    return {'value': state};
  }
}
