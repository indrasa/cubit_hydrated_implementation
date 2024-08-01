import 'package:hydrated_bloc/hydrated_bloc.dart';

class StringCubit extends HydratedCubit<String> {
  StringCubit() : super('en');

  void ganti(String teks) => emit(teks);

  @override
  String? fromJson(Map<String, dynamic> json) {
    return json['value'] as String;
  }

  @override
  Map<String, dynamic>? toJson(String state) {
    return {'value': state};
  }
}
