import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:elevate_challenge/shared/Cubit/products_cubit.dart';
import 'package:elevate_challenge/shared/network/remote/dio_helper.dart';
import 'package:elevate_challenge/Screens/products_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.initializeDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit()..getAllProducts(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: products_screen(),
      ),
    );
  }
}