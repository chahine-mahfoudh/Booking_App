import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello/utils/app_layout.dart';
import 'package:hello/widgets/column_layout.dart';
import 'package:hello/widgets/layout_builder_widget.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(10)),
        children: [
          Gap(AppLayout.getWidth(60)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                      image: AssetImage(
                          "assets/images/img_1.png"
                      )
                  )
                  
                ),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  Gap(AppLayout.getWidth(2)),
                  Text("New_York", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getWidth(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                              color: Color(0xFF526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,size: 15,
                        ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        const Text("Premium  Status", style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600
                        ),),
                        Gap(AppLayout.getWidth(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      print("You're Tapped");
                    },
                    child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getWidth(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getWidth(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
                ),
              ),
             Positioned(
               right: -45,
                 top: -45,
                 child:  Container(
               padding: EdgeInsets.all(AppLayout.getHeight(30)),
               decoration: BoxDecoration(
                 color: Colors.transparent,
                   shape: BoxShape.circle,
                   border: Border.all(width: 18, color: Color(0xFF264CD2))
               ),
             )
             ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(27), vertical: AppLayout.getHeight(13)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                      size: 35,),
                      maxRadius: 30,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You have got a new award",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,
                          color: Colors.white),
                        ),
                        Text("You have 125 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.9),
                            fontSize: 16

                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ),

            ],
          ),
          Gap(AppLayout.getWidth(25)),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Gap(AppLayout.getWidth(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 1,
                spreadRadius: 1
                 )
              ]
            ),
            child: Column(
              children: [
                Text("158725", style: TextStyle(
                  fontSize: 45,
                  color: Styles.textColor,
                  fontWeight: FontWeight.w600
                  ),
                ),
                Gap(AppLayout.getWidth(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accured", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("11 June 2022", style: Styles.headLineStyle4.copyWith(fontSize: 16),),

                  ],
                ),
                Gap(AppLayout.getWidth(12)),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getWidth(5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppColumnLayout(firstText: "41 1422",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start, isColor: false),
                    Gap(AppLayout.getWidth(30)),
                    const AppColumnLayout(firstText: "Airline CO",
                        secondText: "Recieved from",
                        alignment: CrossAxisAlignment.start, isColor: false)


                  ],
                ),
                Gap(AppLayout.getWidth(12)),
                const AppLayoutBuilderWidget(sections: 12, isColor:false),
                Gap(AppLayout.getWidth(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppColumnLayout(firstText: "25",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start, isColor: false),
                    Gap(AppLayout.getWidth(30)),
                    const AppColumnLayout(firstText: "McDonald's",
                        secondText: "Recieved from",
                        alignment: CrossAxisAlignment.start, isColor: false)


                  ],
                ),
                Gap(AppLayout.getWidth(12)),
                const AppLayoutBuilderWidget(sections: 12, isColor:false),
                Gap(AppLayout.getWidth(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppColumnLayout(firstText: "41 1422",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start, isColor: false),
                    Gap(AppLayout.getWidth(30)),
                    const AppColumnLayout(firstText: "Exuma",
                        secondText: "Recieved from",
                        alignment: CrossAxisAlignment.start, isColor: false)


                  ],
                ),




              ],
            ),
          ),
          Gap(AppLayout.getWidth(20)),
          InkWell(
            onTap: ()=>print("You're Tapped"),
            child: Center(
              child: Text("How to get more miles", style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500
              ),),
            ),
          )


        ],
      ),
    );
  }
}
