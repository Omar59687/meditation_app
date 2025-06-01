import 'package:flutter/material.dart';
import 'package:meditation_app/common_widget/tab_button.dart';
import 'package:meditation_app/screen/home/home_screen.dart';

class MainTabviewScreen extends StatefulWidget {
  const MainTabviewScreen({super.key});

  @override
  State<MainTabviewScreen> createState() => _MainTabviewScreenState();
}

class _MainTabviewScreenState extends State<MainTabviewScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
        const HomeScreen(),
        Container(),
        Container(),
        Container(),
        Container(
          color: Colors.red,
        )
      ]),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.only(top: 15, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12, blurRadius: 4, offset: Offset(0, -4))
            ],
          ),
          child: SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  icon: "assets/images/home_tab.png",
                  title: "Home",
                  isSelect: selectTab == 0,
                  onPressed: () {
                    changeTab(0);
                  }),
              TabButton(
                  icon: "assets/images/sleep_tab.png",
                  title: "Sleep",
                  isSelect: selectTab == 1,
                  onPressed: () {
                    changeTab(1);
                  }),
              TabButton(
                  icon: "assets/images/meditate_tab.png",
                  title: "Meditate",
                  isSelect: selectTab == 2,
                  onPressed: () {
                    changeTab(2);
                  }),
              TabButton(
                  icon: "assets/images/music_tab.png",
                  title: "Music",
                  isSelect: selectTab == 3,
                  onPressed: () {
                    changeTab(3);
                  }),
              TabButton(
                  icon: "assets/images/profile_tab.png",
                  title: "Afsar",
                  isSelect: selectTab == 4,
                  onPressed: () {
                    changeTab(4);
                  }),
            ],
          ))),
    );
  }

  void changeTab(int index) {
    selectTab = index;
    controller?.animateTo(index);
    setState(() {});
  }
}
