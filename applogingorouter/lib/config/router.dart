import 'package:applogingorouter/Screens/LoginScreen.dart';
import 'package:applogingorouter/Screens/HomeScreen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [

  GoRoute(
    path: '/',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
  
]);