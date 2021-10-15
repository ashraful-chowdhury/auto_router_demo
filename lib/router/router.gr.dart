// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/bottom_nav_page.dart' as _i2;
import '../screens/home_page.dart' as _i1;
import '../screens/profile_page.dart' as _i5;
import '../screens/second_page.dart' as _i3;
import '../screens/settings_page.dart' as _i6;
import '../screens/third_page.dart' as _i4;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BottomNavPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BottomNavPage());
    },
    SecondPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SecondPage());
    },
    ThirdPageRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ThirdPage(key: args.key, title: args.title));
    },
    ProfilePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfilePage());
    },
    SettingsPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomePageRoute.name, path: '/'),
        _i7.RouteConfig(BottomNavPageRoute.name,
            path: '/bottom-nav-page',
            children: [
              _i7.RouteConfig(ProfilePageRoute.name, path: 'profile-page'),
              _i7.RouteConfig(SettingsPageRoute.name, path: 'settings-page')
            ]),
        _i7.RouteConfig(SecondPageRoute.name, path: '/second-page'),
        _i7.RouteConfig(ThirdPageRoute.name, path: '/third-page')
      ];
}

/// generated route for [_i1.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i2.BottomNavPage]
class BottomNavPageRoute extends _i7.PageRouteInfo<void> {
  const BottomNavPageRoute({List<_i7.PageRouteInfo>? children})
      : super(name, path: '/bottom-nav-page', initialChildren: children);

  static const String name = 'BottomNavPageRoute';
}

/// generated route for [_i3.SecondPage]
class SecondPageRoute extends _i7.PageRouteInfo<void> {
  const SecondPageRoute() : super(name, path: '/second-page');

  static const String name = 'SecondPageRoute';
}

/// generated route for [_i4.ThirdPage]
class ThirdPageRoute extends _i7.PageRouteInfo<ThirdPageRouteArgs> {
  ThirdPageRoute({_i8.Key? key, required String title})
      : super(name,
            path: '/third-page',
            args: ThirdPageRouteArgs(key: key, title: title));

  static const String name = 'ThirdPageRoute';
}

class ThirdPageRouteArgs {
  const ThirdPageRouteArgs({this.key, required this.title});

  final _i8.Key? key;

  final String title;
}

/// generated route for [_i5.ProfilePage]
class ProfilePageRoute extends _i7.PageRouteInfo<void> {
  const ProfilePageRoute() : super(name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for [_i6.SettingsPage]
class SettingsPageRoute extends _i7.PageRouteInfo<void> {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}
