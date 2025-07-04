import 'package:flutter/material.dart';
import 'package:scroll_app/ui/shared/custom_app_menu.dart';
import 'package:scroll_app/ui/views/about_view.dart';
import 'package:scroll_app/ui/views/contact_view.dart';
import 'package:scroll_app/ui/views/location_view.dart';
import 'package:scroll_app/ui/views/pricing_view.dart';
import 'package:scroll_app/ui/views/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(right: 20, top: 20, child: const CustomAppMenu()),
          ],
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        const HomeView(),
        const AboutView(),
        const LocationView(),
        const ContactView(),
        const PricingView(),
      ],
    );
  }
}
