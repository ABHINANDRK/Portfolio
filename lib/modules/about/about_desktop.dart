import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:portfolio/configs/app_dimensions.dart';
import 'package:portfolio/core/utils/about_utils.dart';
import 'package:portfolio/core/utils/app_theme.dart';
import 'package:portfolio/core/utils/app_typography.dart';
import 'package:portfolio/core/utils/space.dart';
import 'package:portfolio/core/utils/utils.dart';
import 'package:portfolio/core/utils/work_utils.dart';
import 'package:portfolio/widgets/about_me_data.dart';
import 'package:portfolio/widgets/community_button.dart';
import 'package:portfolio/widgets/custom_text_heading.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.coloredPhoto,
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Who am I?',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      Text(
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.y!,
                      Text(
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
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
                          GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10
                          ),
                          shrinkWrap: true,
                          
                          children: AboutUtils.techTools.asMap().entries.map((e) =>  SizedBox(
                            height: 60,
                            child: Card(
                                       child: Center(
                                         child: ListTile(
                                         leading: Image.asset(AboutUtils.techToolsIcons[e.key]),
                                         title: Text(e.value),
                                          ),
                                       ),
                              ),
                          ),
                          ).toList(),
                          ),
                        ],
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AboutMeData(
                                data: "Name",
                                information: "Abhinand R K",
                              ),
                              AboutMeData(
                                data: "Age",
                                information: "26",
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AboutMeData(
                                data: "Email",
                                information: "abhinandrkvatakara.@gmail.com",
                              ),
                              AboutMeData(
                                data: "From",
                                information: "Kochi, India",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Space.y1!,
                      Row(
                        children: [
                          SizedBox(
                            height: AppDimensions.normalize(13),
                            width: AppDimensions.normalize(40),
                            child: OutlinedButton(
                              onPressed: () =>
                                  html.window.open(StaticUtils.resume, 'pdf'),
                              child: const Text(
                                "Resume",
                              ),
                            ),
                          ),
                          Space.x1!,
                       
                          ...WorkUtils.logos.asMap().entries.map(
                                (e) => Expanded(
                                  child: CommunityIconBtn(
                                    icon: e.value,
                                    link: WorkUtils.communityLinks[e.key],
                                    height:
                                        WorkUtils.communityLogoHeight[e.key],
                                  ),
                                ),
                              )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
