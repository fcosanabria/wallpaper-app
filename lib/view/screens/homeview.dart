import 'package:flutter/material.dart';
import 'package:wallpaperapp/view/utils/helpers/color_helper.dart';
import 'package:wallpaperapp/view/utils/helpers/style_helper.dart';
import '../utils/shared/shared_grid_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Generic App Name",
            style: h1,
          ),
          centerTitle: true,
          backgroundColor: whitecolor,
          elevation: 0,
          actions: [IconButton(onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: blackgreyColor,
            ),
          )
          ],
          bottom: const TabBar(
            indicatorColor: Colors.transparent,
              labelColor: pinkcolor,
              unselectedLabelColor: greyColor,
              tabs: [
            Text("Tab",
                style: links),
            Text("Tab",
                style: links),
            Text("Tab",
                style: links),
          ]),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            SharedGridWidget(),
            SharedGridWidget(),
            SharedGridWidget(),
        ],),
      ),
      );

  }
}
