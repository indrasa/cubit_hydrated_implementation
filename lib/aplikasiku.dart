import 'package:cubit_hydrated_implementation/cubit/counter_cubit.dart';
import 'package:cubit_hydrated_implementation/cubit/string_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Aplikasiku extends StatefulWidget {
  Aplikasiku({super.key});

  @override
  State<Aplikasiku> createState() => _AplikasikuState();
}

class _AplikasikuState extends State<Aplikasiku> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coba Cubit Hydrated"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Ini Integer",
              style: TextStyle(fontSize: 24),
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text("$state");
              },
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterCubit>().tambah();
                },
                child: const Text("Tambah")),
            const Text(
              "Ini String",
              style: TextStyle(fontSize: 24),
            ),
            BlocBuilder<StringCubit, String>(
              builder: (context, state) {
                return Text(state);
              },
            ),
            TextField(
              controller: _controller,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<StringCubit>().ganti(_controller.text);
                },
                child: const Text("Ganti"))
          ],
        ),
      ),
    );
  }
}
