import 'package:auto_route/auto_route.dart';
import 'package:portofolio/ui/detail/detail_view.dart';
import 'package:portofolio/ui/home/home_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeView),
    AutoRoute(page: DetailView),
    // AutoRoute(path: '/', page: BerandaView, children: [
    //   AutoRoute(page: HomeView),
    //   AutoRoute(page: ClassView),
    //   AutoRoute(page: ChartView),
    //   AutoRoute(page: ProfileView),
    // ]),
    // AutoRoute(page: FaqView),
    // CustomRoute(page: NotificationView, fullscreenDialog: true, opaque: false),
    // AutoRoute(page: RegisterSuccessView),
    // AutoRoute(page: NewPasswordView),
    // AutoRoute(page: ResetPasswordView),
    // AutoRoute(page: ClassDetailView),
    // AutoRoute(page: AboutUsView),
    // AutoRoute(page: PrivacyPolicyView),
    // AutoRoute(page: EditProfileView),
    // AutoRoute(page: DetailChartView),
    // AutoRoute(page: NewChartView),
    // AutoRoute(page: ChartContentView),
  ],
)
class $AppRouter {}
