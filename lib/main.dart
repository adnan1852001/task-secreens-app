// ignore_for_file: depend_on_referenced_packages

import 'package:egypt_store/layout/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/start_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShopCubit>(create: (context) => ShopCubit()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.yellow,
          fontFamily: 'Sans',

        ),
        home: const StartScreen(),
      ),
    );
  }
}
