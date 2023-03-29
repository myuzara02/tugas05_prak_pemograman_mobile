import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/app_routes.dart';
import '../../models/user.dart';
import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late Size size;

  tapBottomItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HeaderWidget(
              user: widget.user,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SearchFieldWidget(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SectionTitle(
                    label: "Hottest News",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).goNamed(
                        AppRoutes.newsDetailHot,
                      );
                    },
                    child: HottestNewsCard(
                      size: size,
                      pictureUrl:
                          "https://i.postimg.cc/gJW8Fjpf/image-750x-642461ebbb28c.jpg",
                      newsTitle: "FIFA Batalkan Indonesia Jadi . . . ",
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SectionTitle(
                    label: "Latest News",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: LatestNewsIndexCardSection(
                    size: size,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: tapBottomItem,
          items: [
            bottomMenuItem("Home", Icons.home_rounded),
            bottomMenuItem("News", Icons.newspaper_rounded),
            bottomMenuItem("Menu", Icons.menu_rounded),
          ]),
    );
  }

  BottomNavigationBarItem bottomMenuItem(String label, IconData iconData) {
    return BottomNavigationBarItem(
        label: label,
        icon: Icon(
          iconData,
        ));
  }
}
