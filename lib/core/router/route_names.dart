import 'package:clean_folder_project/core/router/auth_services.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash_screen/presentation/screen/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',

    redirect: (context, state) {
      final loggedIn = AuthService.isLoggedIn;

      final loginPage = state.matchedLocation == '/login';

      if (!loggedIn && !loginPage) {
        return '/login';
      }

      if (loggedIn && loginPage) {
        return '/home';
      }

      return null;
    },

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),

      // GoRoute(
      //   path: '/login',
      //   builder: (context, state) {
      //     return const LoginScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/register',
      //   builder: (context, state) {
      //     return const RegisterScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/home',
      //   builder: (context, state) {
      //     return const HomeScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/profile',
      //   builder: (context, state) {
      //     return const ProfileScreen();
      //   },
      // ),

      // GoRoute(
      //   path: '/product/:id',
      //   builder: (context, state) {
      //     final id = state.pathParameters['id']!;

      //     return ProductDetailsScreen(productId: id);
      //   },
      // ),
    ],
  );
}
