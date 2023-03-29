import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan5/config/app_routes.dart';
import 'package:pertemuan5/models/user.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Size size;
  final User user = User.dummy();
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    Future.delayed(
      const Duration(seconds: 1),
      () {
        //TODO: Go to Home
        GoRouter.of(context).goNamed(
          AppRoutes.home,
          extra: user,
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
