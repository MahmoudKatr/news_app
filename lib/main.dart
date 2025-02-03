import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/layout_cubit/layout_cubit.dart';
import 'package:news_app/views/layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LayoutCubit(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LayoutScreen(),
        ));
  }
}
