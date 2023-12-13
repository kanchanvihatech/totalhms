import 'package:flutter/material.dart';

import 'package:totalhms/utils/app_colors.dart';
import 'package:totalhms/utils/cssizedbox.dart';
import 'package:totalhms/utils/navigators.dart';

import '../../../constants/appImages.dart';
import '../../../utils/cstext.dart';
import '../../../utils/sizes_helpers.dart';



class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: displayWidth(context) * 0.05,vertical: displayHeight(context) * 0.03),
      child: Column(
        children: [
          tileWidget(context,imgName: AppImages.employee,tileName: "Employees"),
          const Box(height: 0.018,),
          InkWell(
            onTap: (){
           //   gotoPush(context,screenName: const Task());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 06),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.appWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        SizedBox(child: Image.asset("$appImagesBase${AppImages.task}",height: displayWidth(context) * 0.15,)),
                        CustomTextWidget(text: "Task",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w500,),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: AppColors.greyBar.withOpacity(0.86),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.appWhite,
                        child: Center(child: CustomTextWidget(text: "30",fontSize: 25,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: AppColors.yellowBar,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.appWhite,
                        child: Center(child: CustomTextWidget(text: "12",fontSize: 25,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          const Box(height: 0.018,),
          Row(
            children: [
              Expanded(child:  tileWidget(context,imgName: AppImages.deviations,tileName: "Deviations"),),
              const Box(width: 0.03,),
              Expanded(child:  tileWidget(context,imgName: AppImages.goals,tileName: "Goal"),)
            ],
          ),
          const Box(height: 0.018,),
          Row(
            children: [
              Expanded(child:  tileWidget(context,imgName: AppImages.routine,tileName: "Routine"),),
              const Box(width: 0.03,),
              Expanded(child:  tileWidget(context,imgName: AppImages.ins,tileName: "Instruction"),)
            ],
          ),
          const Box(height: 0.018,),
          Row(
            children: [
              Expanded(child:  tileWidget(context,imgName: AppImages.risk,tileName: "Risk Analysis"),),
              const Box(width: 0.03,),
              Expanded(child:  tileWidget(context,imgName: AppImages.doc,tileName: "Document"),)
            ],
          ),
          const Box(height: 0.018,),
          Row(
            children: [
              Expanded(child:  tileWidget(context,imgName: AppImages.checkList,tileName: "Checklist"),),
              const Box(width: 0.03,),
              Expanded(child:  tileWidget(context,imgName: AppImages.contact,tileName: "Contact"),)
            ],
          )
        ],
      ),
    );
  }


  Widget tileWidget(context,{imgName , tileName}) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 06),
    width: double.infinity,
    decoration: BoxDecoration(
        color: AppColors.appWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            offset: const Offset(
              1.0,
              1.0,
            ),
            blurRadius: 1.0,
            spreadRadius: 1.0,
          )
        ]
    ),
    child: Column(
      children: [
        SizedBox(child: Image.asset("$appImagesBase${imgName}",height: displayWidth(context) * 0.15,)),
        CustomTextWidget(text: tileName,fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w500,),
      ],
    ),
  );

}
