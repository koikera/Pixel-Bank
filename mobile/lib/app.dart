import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/theme/app_theme.dart';
import 'package:mobile/presentation/pages/login/home_page.dart';
import 'package:mobile/presentation/pages/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  Future<String> _getInitialRoute() async {

    return '/home';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getInitialRoute(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        final initialRoute = snapshot.data!;

        final _router = GoRouter(
          initialLocation: initialRoute,
          routes: [
            GoRoute(path: '/', builder: (context, state) => const LoginPage()),
            GoRoute(path: '/home', builder: (context, state) => const HomePage()),
            
          ],
        );

        return MaterialApp.router(
          title: 'Flutter App',
          theme: AppTheme.light,
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}