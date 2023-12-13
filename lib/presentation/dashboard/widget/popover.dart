import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:totalhms/constants/appImages.dart';
import 'package:totalhms/utils/app_colors.dart';
import 'package:totalhms/utils/cssizedbox.dart';
import 'package:totalhms/utils/navigators.dart';
import 'package:totalhms/utils/sizes_helpers.dart';
import 'package:badges/badges.dart' as badges;
import '../../../utils/cstext.dart';


// class Popover extends StatelessWidget {
//   const Popover({
//      Key ? key,
//   }) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//
//     return Container(
//       // clipBehavior: Clip.antiAlias,
//       decoration: BoxDecoration(
//         color: theme.cardColor,
//       ),
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
//         child: Column(
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(alignment: Alignment.center,child: _buildHandle(context)),
//                     const Box(height: 0.02,),
//                     Align(
//                       alignment: Alignment.center,
//                       child: badges.Badge(
//                            badgeStyle: const badges.BadgeStyle(badgeColor: Colors.transparent),
//                           position: badges.BadgePosition.bottomEnd(bottom: -01, end: -10),
//                           showBadge: true,
//                           ignorePointer: false,
//                           badgeContent:
//                           GestureDetector(onTap: (){
//
//                           },child: Image.asset("$appImagesBase${AppImages.edit}",height: displayWidth(context) * 0.06,)),
//                           badgeAnimation: const badges.BadgeAnimation.scale(
//                             animationDuration: Duration(seconds: 2),
//                             colorChangeAnimationDuration: Duration(seconds: 2),
//                             loopAnimation: false,
//                             curve: Curves.linear,
//                             colorChangeAnimationCurve: Curves.linear,
//                           ),
//                           child: Image.asset("$appImagesBase${AppImages.editProfile}",height: displayWidth(context) * 0.25,)),
//                     ),
//                     const Box(height: 0.02,),
//                     CustomTextWidget(text: "Name",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
//                     const Box(height: 0.005,),
//                     CustomTextWidget(text: "Alexender",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                     const Box(height: 0.005,),
//                     const Divider(),
//                     const Box(height: 0.01,),
//                     CustomTextWidget(text: "Email",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
//                     const Box(height: 0.005,),
//                     CustomTextWidget(text: "Alexender@gmail.com",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                     const Box(height: 0.005,),
//                     const Divider(),
//                     const Box(height: 0.01,),
//                     CustomTextWidget(text: "Job Title",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
//                     const Box(height: 0.005,),
//                     CustomTextWidget(text: "Employee",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                     const Box(height: 0.005,),
//                     const Divider(),
//                     const Box(height: 0.01,),
//                     CustomTextWidget(text: "Department",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
//                     const Box(height: 0.005,),
//                     CustomTextWidget(text: "IT",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                     const Box(height: 0.005,),
//                     const Divider(),
//                     const Box(height: 0.01,),
//                     CustomTextWidget(text: "Phone",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
//                     const Box(height: 0.005,),
//                     CustomTextWidget(text: "999 999 999",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                     const Box(height: 0.02,),
//                     CustomTextWidget(text: "Attachments",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
//                     const Box(height: 0.015,),
//                     Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         // color: Colors.red,
//                           borderRadius: BorderRadius.circular(08),
//                           border: Border.all(color: Colors.black26)
//                       ),
//                       child: Column(
//                         // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                   flex: 4,
//                                   child: CustomTextWidget(text: "Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                   flex: 3,
//                                   child: CustomTextWidget(text: "Category",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                   flex: 3,
//                                   child: CustomTextWidget(text: "Source",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                             ],
//                           ),
//                           const Divider(),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                 flex: 4,
//                                   child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                 flex: 3,
//                                   child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                 flex: 3,
//                                   child: Row(
//                                 children: [
//                                   CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                                   const Icon(Icons.attach_file,size: 15,)
//                                 ],
//                               )),
//                             ],
//                           ),
//                           const Divider(),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                   flex: 4,
//                                   child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                   flex: 3,
//                                   child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                   flex: 3,
//                                   child: Row(
//                                     children: [
//                                       CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                                       const Icon(Icons.attach_file,size: 15,)
//                                     ],
//                                   )),
//                             ],
//                           ),
//                           const Divider(),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                   flex: 4,
//                                   child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                   flex: 3,
//                                   child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
//                               Expanded(
//                                   flex: 3,
//                                   child: Row(
//                                     children: [
//                                       CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
//                                       const Icon(Icons.attach_file,size: 15,)
//                                     ],
//                                   )),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Box(height: 0.01,),
//                     InkWell(
//                       onTap: (){},
//                       child: Container(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         alignment: Alignment.center,
//                         height: displayHeight(context) * (0.05),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular((05.0)),
//                             color: AppColors.primary.withOpacity(0.7)),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                              Icon(Icons.attach_file,size: 15,color: AppColors.appWhite),
//                             const Box(width: 0.02,),
//                             Text("Show More Attachments",
//                                 style: GoogleFonts.montserrat(
//                                   textStyle: TextStyle(
//                                       fontSize: 16,
//                                       fontFamily: "spartan",
//                                       fontWeight: FontWeight.w600,
//                                       color: AppColors.appWhite),
//                                 )
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     const Box(height: 0.01,),
//                   ],
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 alignment: Alignment.center,
//                 height: displayHeight(context) * (0.05),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular((05.0)),
//                     color: AppColors.primary.withOpacity(0.7)),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Image.asset("$appImagesBase${AppImages.logout}",height: displayWidth(context) * 0.05,),
//                     const Box(width: 0.02,),
//                     Text("Logout",
//                         style: GoogleFonts.montserrat(
//                           textStyle: TextStyle(
//                               fontSize: 16,
//                               fontFamily: "spartan",
//                               fontWeight: FontWeight.w600,
//                               color: AppColors.appWhite),
//                         )
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

class Popover extends StatefulWidget {
  const Popover({super.key});

  @override
  State<Popover> createState() => _PopoverState();
}

class _PopoverState extends State<Popover> {

  bool showMore = false;

  final ImagePicker picker = ImagePicker();
  
  File ? pickedImage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      // clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(alignment: Alignment.center,child: _buildHandle(context)),
                    const Box(height: 0.02,),
                    Align(
                      alignment: Alignment.center,
                      child: badges.Badge(
                          badgeStyle: const badges.BadgeStyle(badgeColor: Colors.transparent),
                          position: badges.BadgePosition.bottomEnd(bottom: -01, end: -10),
                          showBadge: true,
                          ignorePointer: false,
                          badgeContent:
                          GestureDetector(onTap: () async{
                            final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                            if(image!.path.isNotEmpty){
                              setState(() {
                                pickedImage = File(image.path);
                              });
                            }
                          },child: Image.asset("$appImagesBase${AppImages.edit}",height: displayWidth(context) * 0.06,)),
                          badgeAnimation: const badges.BadgeAnimation.scale(
                            animationDuration: Duration(seconds: 2),
                            colorChangeAnimationDuration: Duration(seconds: 2),
                            loopAnimation: false,
                            curve: Curves.linear,
                            colorChangeAnimationCurve: Curves.linear,
                          ),
                          child: Image.asset("$appImagesBase${AppImages.editProfile}",height: displayWidth(context) * 0.25,)
                      ),
                    ),
                    const Box(height: 0.02,),
                    CustomTextWidget(text: "Name",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                    const Box(height: 0.005,),
                    CustomTextWidget(text: "Alexender",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                    const Box(height: 0.005,),
                    const Divider(),
                    const Box(height: 0.01,),
                    CustomTextWidget(text: "Email",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                    const Box(height: 0.005,),
                    CustomTextWidget(text: "Alexender@gmail.com",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                    const Box(height: 0.005,),
                    const Divider(),
                    const Box(height: 0.01,),
                    CustomTextWidget(text: "Job Title",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                    const Box(height: 0.005,),
                    CustomTextWidget(text: "Employee",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                    const Box(height: 0.005,),
                    const Divider(),
                    const Box(height: 0.01,),
                    CustomTextWidget(text: "Department",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                    const Box(height: 0.005,),
                    CustomTextWidget(text: "IT",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                    const Box(height: 0.005,),
                    const Divider(),
                    const Box(height: 0.01,),
                    CustomTextWidget(text: "Phone",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                    const Box(height: 0.005,),
                    CustomTextWidget(text: "999 999 999",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                    const Box(height: 0.02,),
                    CustomTextWidget(text: "Attachments",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                    const Box(height: 0.015,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                          borderRadius: BorderRadius.circular(08),
                          border: Border.all(color: Colors.black26)
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: CustomTextWidget(text: "Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "Category",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "Source",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: Row(
                                    children: [
                                      CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                                      const Icon(Icons.attach_file,size: 15,)
                                    ],
                                  )),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: Row(
                                    children: [
                                      CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                                      const Icon(Icons.attach_file,size: 15,)
                                    ],
                                  )),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: Row(
                                    children: [
                                      CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                                      const Icon(Icons.attach_file,size: 15,)
                                    ],
                                  )),
                            ],
                          ),

                          if(showMore)const Divider(),
                          if(showMore)Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 4,
                                  child: Row(
                                    children: [
                                      CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                                      const Icon(Icons.attach_file,size: 15,)
                                    ],
                                  )),
                            ],
                          ),
                          if(showMore)const Divider(),
                          if(showMore)Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: CustomTextWidget(text: "Test Name",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 3,
                                  child: CustomTextWidget(text: "HSE-Activities",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,)),
                              Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      CustomTextWidget(text: "Others",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                                      const Icon(Icons.attach_file,size: 15,)
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Box(height: 0.01,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        height: displayHeight(context) * (0.05),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular((05.0)),
                            color: AppColors.primary.withOpacity(0.7)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.attach_file,size: 15,color: AppColors.appWhite),
                            const Box(width: 0.02,),
                            Text(showMore?"Show Less Attachments" : "Show More Attachments",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "spartan",
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.appWhite),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    const Box(height: 0.01,),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                height: displayHeight(context) * (0.05),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((05.0)),
                    color: AppColors.primary.withOpacity(0.7)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("$appImagesBase${AppImages.logout}",height: displayWidth(context) * 0.05,),
                    const Box(width: 0.02,),
                    Text("Logout",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: "spartan",
                              fontWeight: FontWeight.w600,
                              color: AppColors.appWhite),
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



  Widget _buildHandle(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: (){
        pop(context);
      },
      child: FractionallySizedBox(
        widthFactor: 0.25,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: Container(
            height: 6.0,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: const BorderRadius.all(Radius.circular(2.5)),
            ),
          ),
        ),
      ),
    );
  }

class MyModalBottomButton extends StatefulWidget {
  @override
  _MyModalBottomButtonState createState() => _MyModalBottomButtonState();
}

class _MyModalBottomButtonState extends State<MyModalBottomButton>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller =
        BottomSheet.createAnimationController(this);
    controller.duration = Duration(seconds: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Popover();
  }
}



class MenuPopOver extends StatefulWidget {
  const MenuPopOver({super.key});

  @override
  State<MenuPopOver> createState() => _MenuPopOverState();
}

class _MenuPopOverState extends State<MenuPopOver> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      // clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,child: _buildHandle(context)),
              const Box(height: 0.02,),
              Row(
                children: [
                  Image.asset("$appImagesBase${AppImages.editProfile}",height: displayWidth(context) * 0.16,),
                  const Box(width: 0.05,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(text: "Alexender",fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w600,),
                      CustomTextWidget(text: "Alexender@gmail.com",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                    ],
                  )
                ],
              ),
              const Box(height: 0.05,),
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
              ),
              const Box(height: 0.01,),
            ],
          ),
        ),
      ),
    );
  }
  Widget tileWidget(context,{imgName , tileName}) => Material(
    elevation: 5.0,
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
      child: Column(
        children: [
          SizedBox(child: Image.asset("$appImagesBase${imgName}",height: displayWidth(context) * 0.15,)),
          CustomTextWidget(text: tileName,fontSize: 16,textColor: AppColors.greyText,weight: FontWeight.w500,),
        ],
      ),
    ),
  );
}


class FunkyOverlaylog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlaylogState();
}

class FunkyOverlaylogState extends State<FunkyOverlaylog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  DateTime  date = DateTime.now();

  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            width: displayWidth(context),
            height: displayHeight(context),
            padding: const EdgeInsets.all(15),
            margin: EdgeInsets.only(top: displayHeight(context) * 0.10,bottom: displayHeight(context) * 0.35),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(onPressed: (){
                    pop(context);
                  }, icon: Icon(Icons.clear,color: AppColors.greyText,size: 30,)),
                ),
                const Box(height: 0.02,),
                searchBar(),
                const Box(height: 0.01,),
                CustomTextWidget(text: "Deviations",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                const Box(height: 0.005,),
                const Divider(),
                const Box(height: 0.005,),
                CustomTextWidget(text: "Task",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                const Box(height: 0.005,),
                const Divider(),
                const Box(height: 0.005,),
                CustomTextWidget(text: "Risk Analysis",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                const Box(height: 0.005,),
                const Divider(),
                const Box(height: 0.005,),
                CustomTextWidget(text: "Checklist",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                const Box(height: 0.005,),
                const Divider(),
                const Box(height: 0.005,),
                CustomTextWidget(text: "Routine",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                const Box(height: 0.005,),
                const Divider(),
                const Box(height: 0.005,),
                CustomTextWidget(text: "Document",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
                const Divider(),
                const Box(height: 0.005,),
                CustomTextWidget(text: "Goal",fontSize: 14,textColor: AppColors.greyText,weight: FontWeight.w500,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchBar() => TextFormField(
    cursorColor: AppColors.primary,
    cursorHeight: 23,
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: "Search",
      labelStyle: GoogleFonts.montserrat(
        textStyle:  TextStyle(color: AppColors.primary, fontSize: 12,fontWeight: FontWeight.w400,),
      ),
      filled: true,
      fillColor: AppColors.appWhite,
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        borderRadius: BorderRadius.circular(06),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        borderRadius: BorderRadius.circular(06),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        borderRadius: BorderRadius.circular(06),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        borderRadius: BorderRadius.circular(06),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black26),
        borderRadius: BorderRadius.circular(06),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary),
        borderRadius: BorderRadius.circular(06),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      hintText: "Devaiations", // pass the hint text parameter here
      hintStyle: GoogleFonts.montserrat(
        textStyle:  TextStyle(color: AppColors.greyText, fontSize: 12,fontWeight: FontWeight.w400),
      ),
    ),
    style: GoogleFonts.montserrat(
      textStyle:  TextStyle(color: AppColors.greyText, fontSize: 12,fontWeight: FontWeight.w500),
    ),
  );
}





