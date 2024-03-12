import 'package:dalel_app/features/onboarding/presentation/views/on_boarding.dart';
import 'package:go_router/go_router.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/OnBoarding',
    builder: (context, state) => OnBoarding(),
  ),
]);
