import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:companion_app/controllers/main_screen_controller.dart';
import 'package:companion_app/views/main/home_page.dart';
import 'package:companion_app/views/main/balance_page.dart';
import 'package:companion_app/views/main/specialist_page.dart';
import 'package:companion_app/views/main/profile_page.dart';
import 'package:companion_app/views/main/create_story_option.dart';
import 'package:companion_app/services/size_config.dart';

class MainScreen extends StatelessWidget {
  final MainScreenController controller = Get.put(MainScreenController());

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SpinCircleBottomBarHolder(
      bottomNavigationBar: SCBottomBarDetails(
        circleColors: [
          Colors.white,
          Colors.blue,
          Colors.green,
        ],
        iconTheme: IconThemeData(color: Colors.black45),
        activeIconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        titleStyle: TextStyle(color: Colors.black45, fontSize: 12),
        activeTitleStyle: TextStyle(
            color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
        actionButtonDetails: SCActionButtonDetails(
          color: Colors.blue,
          icon: Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 45,
          ),
          elevation: 0,
        ),
        elevation: 2.0,
        items: [
          SCBottomBarItem(
              icon: Icons.home,
              title: "Home",
              onPressed: () {
                controller.changeTabIndex(0);
              }),
          SCBottomBarItem(
            icon: Icons.self_improvement,
            title: "Balance",
            onPressed: () {
              print('Balance is chosen');
              controller.changeTabIndex(1);
            },
          ),
          SCBottomBarItem(
            icon: Icons.medical_services,
            title: "Specialist",
            onPressed: () {
              print('Notification is chosen');
              controller.changeTabIndex(2);
            },
          ),
          SCBottomBarItem(
            icon: Icons.person_rounded,
            title: "Profile",
            onPressed: () {
              print('Profile is pressed');
              controller.changeTabIndex(3);
            },
          ),
        ],
        circleItems: [
          SCItem(
            icon: Icon(
              Icons.multitrack_audio_rounded,
              color: Colors.blue,
            ),
            onPressed: () {
              print('Audio is chosen');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateStoryOption(),
                ),
              );
            },
          ),
          SCItem(
            icon: Icon(
              Icons.video_camera_front_rounded,
              color: Colors.black45,
            ),
            onPressed: () {
              print('Video is chosen');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateStoryOption(),
                ),
              );
            },
          ),
          SCItem(
            icon: Icon(
              Icons.whatshot,
              color: Colors.green,
            ),
            onPressed: () {
              print('Burst is chosen');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateStoryOption(),
                ),
              );
            },
          ),
        ],
        bnbHeight: 80,
      ),
      child: Scaffold(
        extendBody: true,
        body: Obx(() => _getPage(controller.tabIndex)),
        // Remove the floatingActionButton and its related properties
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return BalancePage();
      case 2:
        return SpecialistPage();
      case 3:
        return ProfilePage(user: Get.arguments);
      default:
        return Container();
    }
  }
}

