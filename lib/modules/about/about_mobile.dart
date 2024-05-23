import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/app_dimensions.dart';
import 'package:portfolio/core/utils/about_utils.dart';
import 'package:portfolio/core/utils/app_theme.dart';
import 'package:portfolio/core/utils/app_typography.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/core/utils/space.dart';
import 'package:portfolio/core/utils/utils.dart';
import 'package:portfolio/widgets/about_me_data.dart';
import 'package:portfolio/widgets/community_button.dart';
import 'package:portfolio/widgets/custom_text_heading.dart';
import 'package:portfolio/widgets/tech_widget.dart';

import 'package:universal_html/html.dart' as html;

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Column(
            children: [
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                shrinkWrap: true,
                children: AboutUtils.techTools
                    .asMap()
                    .entries
                    .map(
                      (e) => SizedBox(
                        height: AppDimensions.normalize(40),
                        child: Card(
                          child: Center(
                            child: ListTile(
                              leading:
                                  Image.asset(AboutUtils.techToolsIcons[e.key],height: 35,width: 35,),
                              title: Text(e.value),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "Abhinand R K",
          ),
          const AboutMeData(
            data: "Email",
            information: "abhinandrkvatakara@gmail.com",
          ),
          Space.y!,
          OutlinedButton(
              child: const Text("Resume"),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              }),
          Space.y!,
          // Wrap(
          //     alignment: WrapAlignment.center,
          //     crossAxisAlignment: WrapCrossAlignment.center,
          //     children: WorkUtils.logos
          //         .asMap()
          //         .entries
          //         .map(
          //           (e) => CommunityIconBtn(
          //             icon: e.value,
          //             link: WorkUtils.communityLinks[e.key],
          //             height: WorkUtils.communityLogoHeight[e.key],
          //           ),
          //         )
          //         .toList()),
        ],
      ),
    );
  }
}
