import 'package:flutter/material.dart';
import 'package:totalhms/presentation/dashboard/widget/csappbar.dart';
import 'package:totalhms/presentation/dashboard/widget/dashboardWidget.dart';
import 'package:totalhms/presentation/dashboard/widget/popover.dart';
import 'package:totalhms/utils/cssizedbox.dart';

import '../../constants/appImages.dart';
import '../../utils/sizes_helpers.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
  /*    appBar: CustomAppBar(isDashBoardEnable: true, title: '',widget: [
        InkWell(
          onTap: (){
            showDialog(
              context: context,
              builder: (_) => FunkyOverlaylog(),
            );
          },
            child: Image.asset("$appImagesBase${AppImages.search}",height: displayWidth(context) * 0.065,)),
        const Box(width: 0.04,),
        Image.asset("$appImagesBase${AppImages.notifications}",height: displayWidth(context) * 0.065,),
        const Box(width: 0.04,),
        InkWell(
          onTap: (){
            _handleMenuPressed();
          },
            child: Image.asset("$appImagesBase${AppImages.menu}",height: displayWidth(context) * 0.065,)),
        const Box(width: 0.04,),
      ]),*/
      body: const DashBoardWidget(),
    );
  }

  void _handleMenuPressed({controller}) {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      context: context,
      transitionAnimationController: controller,
      isScrollControlled: true,
      builder: (context) {
        return const FractionallySizedBox(
            heightFactor: 0.8,
            child: MenuPopOver()
        );
      },
    );
  }




}
