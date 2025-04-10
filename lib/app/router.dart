part of 'app.dart';

class _Paths {
  static const initial = '/';

  static const dashboard = '/dashboard';
  static const home = '/home';
}

GoRouter _router = () {
  return GoRouter(
    routes: [
      GoRoute(path: _Paths.initial, builder: (context, state) => SearchPage()),
      GoRoute(
        path: _Paths.dashboard,
        builder: (context, state) => BottombarPage(user: state.extra as GitHubUser,),
      ),
      GoRoute(
        path: _Paths.home,
        builder: (context, state) => HomeScreen(
          
        ),
      ),
    ],
  );
}();

extension RouterExt on BuildContext {
  GoRouter get router => GoRouter.of(this);
}

extension NavigatorExt on GoRouter {
  Future<void> showSearchScreen({Object? extra}) =>
      push(_Paths.initial, extra: extra);

  Future<void> showDashbboardScreen({Object? extra}) =>
      push(_Paths.dashboard, extra: extra);
}
