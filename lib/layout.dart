import 'package:flutter/material.dart';
import 'package:mega/helpers/responsiveness.dart';
import 'package:mega/widgets/large_screen.dart';
import 'package:mega/widgets/small_screen.dart';
import 'package:mega/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: const Drawer(),
        body: const ResponsiveWidget(
            largeScreen: LargeScreen(), smallScreen: SmallScreen()));
  }
}
