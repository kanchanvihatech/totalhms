/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totalhms/constants/appImages.dart';
import 'package:totalhms/presentation/dashboard/widget/popover.dart';

import 'package:totalhms/utils/app_colors.dart';
import 'package:totalhms/utils/navigators.dart';
import 'package:totalhms/utils/sizes_helpers.dart';

import '../../../utils/cssizedbox.dart';


class CustomAppBar extends StatefulWidget  with PreferredSizeWidget {

  @override
  final Size preferredSize;
  final Color backgroundColor = AppColors.appWhite;
  final String title;
  final bool ? isTitleCenter;
  final List<Widget> ? widget;
  final bool ? isBackButtonEnable;
  final double ? barHeight;
  final bool ? isBottomEnabled;
  final bool ? isDashBoardEnable;

  CustomAppBar({Key ?  key,required this.title,this.isTitleCenter,this.widget,
    this.isBackButtonEnable,this.barHeight,this.isBottomEnabled,
    this.isDashBoardEnable
  }):
        preferredSize =  Size.fromHeight((barHeight ?? 70)), super(key: key);
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>  {

  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:  SystemUiOverlayStyle(statusBarColor: AppColors.appWhite),
      excludeHeaderSemantics: true,
      primary: true,
      backwardsCompatibility: true,
      leading:
      (widget.isBackButtonEnable ?? false)?
      IconButton(
        padding: const EdgeInsets.only(left: 10),
        onPressed: (){
          pop(context);
        },
        icon: Image.asset("$appImagesBase${AppImages.back}",height: displayWidth(context) * 0.1,),
      ) : IconButton(
        padding: const EdgeInsets.only(left: 10),
        onPressed: (){
          _handleProfilePressed();
        },
        icon: Image.asset("$appImagesBase${AppImages.profile}",height: displayWidth(context) * 0.1,),
      ),
      toolbarHeight: (widget.barHeight ?? 70),
      flexibleSpace: Container(),
      title:
      (widget.isDashBoardEnable ?? false) ?
      Image.asset("$appImagesBase${AppImages.totalhms_title}",height: displayWidth(context) * 0.12,):
      isSearch ?
      searchBar()
          : Text(
        widget.title,
        style: GoogleFonts.roboto(
          textStyle:  TextStyle(color: AppColors.greyText, fontSize: 18,fontWeight: FontWeight.w600),
        ),
      ),
      actions: (widget.isTitleCenter ?? true && (!(widget.isDashBoardEnable ?? false)))? [
        if(!isSearch)InkWell(
            onTap: (){
              setState(() {
                isSearch = true;
              });
            },
            child: Image.asset("$appImagesBase${AppImages.search}",height: displayWidth(context) * 0.065,)),
        const Box(width: 0.04,),
        InkWell(
          onTap: (){
           // _handleFilterPressed();
          },
            child: Image.asset("$appImagesBase${AppImages.search}",height: displayWidth(context) * 0.065,)),
        const Box(width: 0.04,),
        InkWell(
            onTap: (){
              //_handleMorePressed();
            },
            child: Image.asset("$appImagesBase${AppImages.search}",height: displayWidth(context) * 0.065,)),
        const Box(width: 0.04,),
      ] : widget.widget,
      // actions: widget.widget,
      // elevation: 20.0,
      backgroundColor: widget.backgroundColor,
      automaticallyImplyLeading: false,
      centerTitle: widget.isTitleCenter ?? true,
      // bottom:
      // (widget.isBottomEnabled ?? false) ? searchBarTheme() :
      // (widget.isDashBoardEnable ?? false) ? dashBoardTheme((widget.isDashBoardEnable ?? false) ? widget.title : null) :
      // null,
    );
  }

  // PreferredSizeWidget dashBoardTheme(title) => PreferredSize(preferredSize: widget.preferredSize, child: Container(
  //   margin: EdgeInsets.symmetric(horizontal: displayWidth(context) * 0.05),
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Row(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //             padding: const EdgeInsets.all(32),
  //             decoration:
  //             Provider.of<DataProvider>(context, listen: true).dashboardModel?.data?.user?.image != null?
  //               BoxDecoration(
  //                 image:
  //                 DecorationImage(image: NetworkImage(Provider.of<DataProvider>(context, listen: true).dashboardModel?.data?.user?.image)),
  //                 shape: BoxShape.circle
  //             ):
  //             const BoxDecoration(
  //                 image:
  //                 DecorationImage(image: AssetImage("${appImages}profile.png")),
  //                 shape: BoxShape.circle
  //             ),
  //           ),
  //           const Box(width: 0.04,),
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               CustomTextWidget(text: "$title 👋",fontSize: 20,textColor: AppColors.appBlackText,weight: FontWeight.w500,),
  //               CustomTextWidget(text: "welcome_back",fontSize: 14,textColor: AppColors.appGreyText,weight: FontWeight.w400,),
  //             ],
  //           ),
  //           const Spacer(),
  //           GestureDetector(
  //             onTap: (){
  //               goto(context,screenName: const UserNotifications());
  //             },
  //               child: Image.asset("${appImages}notification.png",height: displayWidth(context) * 0.12,))
  //         ],
  //       ),
  //       const Box(height: 0.022,)
  //     ],
  //   ),
  // ));
  //
  //
  //
  // PreferredSizeWidget searchBarTheme() => PreferredSize(preferredSize: widget.preferredSize, child: Container(
  //   margin: EdgeInsets.symmetric(horizontal: displayWidth(context) * 0.05),
  //   child: Column(
  //     children: [
  //       GooglePlaceAutoCompleteTextField(
  //         showError: true,
  //         boxDecoration: BoxDecoration(
  //             border: Border.all(
  //                 color: Colors.transparent, width: 0)),
  //         googleAPIKey:
  //         "AIzaSyCziqe1Q-d4HMC3D9ZyYDFkBtx8ZHrzGzM",
  //         inputDecoration: InputDecoration(
  //           hintText: "Address",
  //           filled: true,
  //           fillColor: AppColors.formFieldColor,
  //           constraints: BoxConstraints(
  //             maxHeight: (displayHeight(context) * 0.08),
  //             // minHeight: ((widget.isMaxLines ?? false) ? null : widget.height ?? displayHeight(context) * 0.08) ?? 0.0,
  //           ),
  //           prefixIconConstraints: BoxConstraints(
  //               minHeight: 25,
  //               minWidth: 50
  //           ),
  //           disabledBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: AppColors.formFieldBorderColor),
  //             borderRadius: BorderRadius.circular(06),
  //           ),
  //           enabledBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: AppColors.formFieldBorderColor),
  //             borderRadius: BorderRadius.circular(06),
  //           ),
  //           focusedBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: AppColors.primaryColor),
  //             borderRadius: BorderRadius.circular(06),
  //           ),
  //           errorBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: AppColors.delRed),
  //             borderRadius: BorderRadius.circular(06),
  //           ),
  //           focusedErrorBorder: OutlineInputBorder(
  //             borderSide: BorderSide(color: AppColors.delRed),
  //             borderRadius: BorderRadius.circular(06),
  //           ),
  //           prefixIcon: Image.asset("${appImages}search_icon.png",height: 25,),
  //           border: OutlineInputBorder(
  //             borderSide: BorderSide(color: AppColors.formFieldBorderColor),
  //             borderRadius: BorderRadius.circular(06),
  //           ),
  //           contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10), // pass the hint text parameter here
  //           hintStyle: const TextStyle(color: Colors.black26,fontSize: 15),
  //         ),
  //         debounceTime: 400,
  //         isLatLngRequired: true,
  //         getPlaceDetailWithLatLng: (Prediction prediction) {
  //           print("placeDetails lat is : ${prediction.lat}");
  //           print("placeDetails lng is : ${prediction.lng}");
  //           setState(() {
  //             Utils.long = prediction.lng.toString();
  //             Utils.lat = prediction.lat.toString();
  //           });
  //         },
  //         itemClick: (Prediction prediction) {
  //           Utils.textEditingController.text =
  //               prediction.description ?? "";
  //           Utils.textEditingController.selection =
  //               TextSelection.fromPosition(TextPosition(
  //                   offset:
  //                   prediction.description?.length ?? 0));
  //         },
  //         // seperatedBuilder: Divider(
  //         //   color: AppColor.appGrayColor,
  //         // ),
  //         itemBuilder: (context, index, Prediction prediction) {
  //           return Container(
  //             color: AppColors.appWhite,
  //             padding: EdgeInsets.all(displayHeight(context) * 0.01),
  //             child: Row(
  //               children: [
  //                 const Icon(
  //                   Icons.location_on,
  //                 ),
  //                 const Box(width: 0.03),
  //                 Expanded(
  //                     child: Text(
  //                       prediction.description ?? "",
  //                     ))
  //               ],
  //             ),
  //           );
  //         },
  //         isCrossBtnShown: false, textEditingController: Utils.textEditingController,
  //       ),
  //       // CsCommonTextFieldWidget(hintText: "adrs".tr(), isPrefixIcon: true),
  //       const Box(height: 0.02,)
  //     ],
  //   ),
  // ));

  void _handleProfilePressed({controller}) {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      context: context,
      transitionAnimationController: controller,
      isScrollControlled: true,
      builder: (context) {
        return const FractionallySizedBox(
            heightFactor: 0.8,
            child: Popover());
      },
    );
  }

  Widget searchBar() => SizedBox(
    height: displayHeight(context) * 0.04,
    child: TextFormField(
      cursorColor: AppColors.primary,
      cursorHeight: 23,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Search",
        labelStyle: GoogleFonts.montserrat(
          textStyle:  const TextStyle(color: Colors.black26, fontSize: 12,fontWeight: FontWeight.w400,),
        ),
        filled: true,
        fillColor: AppColors.appWhite,
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
        hintText: "Search", // pass the hint text parameter here
        hintStyle: GoogleFonts.montserrat(
          textStyle:  TextStyle(color: AppColors.greyText, fontSize: 12,fontWeight: FontWeight.w400),
        ),
      ),
      style: GoogleFonts.montserrat(
        textStyle:  TextStyle(color: AppColors.greyText, fontSize: 12,fontWeight: FontWeight.w500),
      ),
    ),
  );

 */
/* void _handleFilterPressed({controller}) {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      context: context,
      transitionAnimationController: controller,
      isScrollControlled: true,
      builder: (context) {
        return const FractionallySizedBox(
            heightFactor: 0.3,
            child: FilterPOPOver());
      },
    );
  }

  void _handleMorePressed({controller}) {
    showModalBottomSheet<int>(
      backgroundColor: Colors.transparent,
      context: context,
      transitionAnimationController: controller,
      isScrollControlled: true,
      builder: (context) {
        return const FractionallySizedBox(
            heightFactor: 0.6,
            child: MorePOPOver());
      },
    );
  }*//*

}





*/
