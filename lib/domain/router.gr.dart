// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/detail/detail_view.dart' as _i2;
import '../ui/home/home_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      final args = routeData.argsAs<HomeViewRouteArgs>(
          orElse: () => const HomeViewRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomeView(key: args.key));
    },
    DetailViewRoute.name: (routeData) {
      final args = routeData.argsAs<DetailViewRouteArgs>(
          orElse: () => const DetailViewRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.DetailView(key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeViewRoute.name, path: '/home-view'),
        _i3.RouteConfig(DetailViewRoute.name, path: '/detail-view')
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i3.PageRouteInfo<HomeViewRouteArgs> {
  HomeViewRoute({_i4.Key? key})
      : super(HomeViewRoute.name,
            path: '/home-view', args: HomeViewRouteArgs(key: key));

  static const String name = 'HomeViewRoute';
}

class HomeViewRouteArgs {
  const HomeViewRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomeViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DetailView]
class DetailViewRoute extends _i3.PageRouteInfo<DetailViewRouteArgs> {
  DetailViewRoute({_i4.Key? key})
      : super(DetailViewRoute.name,
            path: '/detail-view', args: DetailViewRouteArgs(key: key));

  static const String name = 'DetailViewRoute';
}

class DetailViewRouteArgs {
  const DetailViewRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'DetailViewRouteArgs{key: $key}';
  }
}
