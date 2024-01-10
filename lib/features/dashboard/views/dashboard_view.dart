import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tars_mobile/constants/svg_constants.dart';
import 'package:tars_mobile/features/dashboard/views/create_view.dart';
import 'package:tars_mobile/features/dashboard/views/market_view.dart';
import 'package:tars_mobile/features/dashboard/views/messages_view.dart';
import 'package:tars_mobile/features/dashboard/views/notifications_view.dart';

import '../../../common/providers/theme_provider.dart';
import '../../../constants/color_constants.dart';
import 'home_view.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  final screens = const [
    HomeView(),
    MarketView(),
    CreateView(),
    MessagesView(),
    NotificationsView(),
  ];

  int currentView = 0;

  void changeView(int i) {
    setState(() {
      currentView = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeController = ref.watch(themeProvider);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: SvgPicture.asset(
            SvgConstants.tarsLogo,
            height: 45,
            colorFilter: ColorFilter.mode(
                themeController == ThemeMode.light
                    ? ColorConstants.black
                    : ColorConstants.white,
                BlendMode.srcIn),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16, bottom: 6),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  SvgConstants.searchIcon,
                  height: 19,
                  colorFilter: ColorFilter.mode(
                      themeController == ThemeMode.light
                          ? ColorConstants.black
                          : ColorConstants.white,
                      BlendMode.srcIn),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 16, bottom: 6),
              child: CircleAvatar(
                radius: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
              ),
            ),
          ],
        ),
        body: screens[currentView],
        bottomNavigationBar: Material(
          color: themeController == ThemeMode.light
              ? ColorConstants.white
              : ColorConstants.black,
          child: TabBar(
            onTap: (i) => changeView(i),
            labelColor: themeController == ThemeMode.light
                ? ColorConstants.black
                : ColorConstants.white,
            unselectedLabelColor: ColorConstants.grey,
            indicator: TopIndicator(),
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.shopping_bag_rounded), text: 'Market'),
              Tab(icon: Icon(Icons.add), text: 'Create'),
              Tab(icon: Icon(Icons.chat), text: 'Messages'),
              Tab(icon: Icon(Icons.notifications), text: 'Notifications'),
            ],
          ),
        ),
        // BottomNavigationBar(
        //   currentIndex: currentView,
        //   onTap: (i) => changeView(i),
        //   unselectedItemColor: Colors.grey.shade700,
        //   selectedItemColor: Colors.black,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //       activeIcon: Container(
        //         decoration: BoxDecoration(
        //           border: Border(
        //             top: BorderSide(color: Colors.red, width: 3),
        //           ),
        //         ),
        //         child: Icon(Icons.home),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_bag),
        //       label: 'Market',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.add),
        //       label: 'Create',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.chat),
        //       label: 'Messages',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.notifications),
        //       label: 'Notifications',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), _paint);
  }
}
