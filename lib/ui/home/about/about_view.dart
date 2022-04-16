import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/ui/home/about/about_viewmodel.dart';
import 'package:portofolio/utils/app_color.dart';
import 'package:portofolio/utils/dimen.dart';
import 'package:portofolio/widget/item/item_resume_listing.dart';
import 'package:portofolio/widget/text/content_text.dart';
import 'package:portofolio/widget/text/main_header_text.dart';
import 'package:portofolio/widget/text/sub_header_text.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AboutViewModel(),
        onModelReady: (AboutViewModel viewModel) {
          viewModel.init();
        },
        builder:
            (BuildContext context, AboutViewModel viewModel, Widget? child) {
          return ListView(
            padding: const EdgeInsets.fromLTRB(
                Dimen.margin_64, 0, Dimen.margin_64, Dimen.margin_64),
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: Dimen.margin_64,
              ),
              Text(
                "About me️",
                style: TextStyle(fontSize: 38, color: AppColor.textBlack),
              ),
              const SizedBox(
                height: Dimen.margin,
              ),
              Divider(
                color: AppColor.textBlack,
              ),
              const SizedBox(
                height: Dimen.margin_64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Dimen.margin_64),
                          child: Image.asset(
                            'assets/images/img_profile_cropped.JPG',
                            height: Dimen.margin_128,
                            width: Dimen.margin_128,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: Dimen.margin_64,
                        ),
                        const MainHeaderText(text: 'Contact'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'Address'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Jakarta, Indonesia'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'Phone'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: '+62-899 4660 004'),
                        const ContentText(text: '+62-812 7906 4335'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'Email'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(
                            text: 'hafizhanbiya.personal@gmail.com'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'Date / Place of Birth'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Bandung, 15 September 1996'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'Nationality'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Indonesia'),
                        const SizedBox(
                          height: Dimen.margin_64,
                        ),
                        const MainHeaderText(text: 'Links'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'Github'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'https://github.com/Fizhu',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Alilato',
                                  color: Colors.grey[700],
                                  height: 1.5),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  if (await canLaunch(
                                      'https://github.com/Fizhu')) {
                                    launch('https://github.com/Fizhu');
                                  }
                                }),
                        ),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const SubHeaderText(text: 'LinkedIn'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'https://www.linkedin.com/in/hafizhanbiya',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.grey[700],
                                  fontFamily: 'Alilato',
                                  height: 1.5),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  if (await canLaunch(
                                      'https://www.linkedin.com/in/hafizhanbiya')) {
                                    launch(
                                        'https://www.linkedin.com/in/hafizhanbiya');
                                  }
                                }),
                        ),
                        const SizedBox(
                          height: Dimen.margin_64,
                        ),
                        const MainHeaderText(text: 'Skills'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const ContentText(text: 'Android App Development'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Flutter App Development'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Kotlin, Java, Dart'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Communication'),
                        const SizedBox(
                          height: Dimen.padding,
                        ),
                        const ContentText(text: 'Leadership and Teamwork'),
                        const SizedBox(
                          height: Dimen.margin_64,
                        ),
                        const MainHeaderText(text: 'Languages'),
                        const SizedBox(
                          height: Dimen.margin_24,
                        ),
                        const ContentText(text: 'Bahasa, English'),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'M. Hafizh Anbiya',
                        style: TextStyle(
                            fontSize: 44,
                            color: AppColor.textBlack,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: Dimen.margin,
                      ),
                      SelectableText(
                        'Software Engineer',
                        style:
                            TextStyle(fontSize: 24, color: AppColor.textBlack),
                      ),
                      const SizedBox(
                        height: 92,
                      ),
                      const MainHeaderText(text: 'Profile'),
                      const SizedBox(
                        height: Dimen.margin_24,
                      ),
                      const ContentText(
                          text:
                              'Software Engineer specializing in Mobile Development with 3+ year of experience. Highly interested in Technology and Design.'),
                      const SizedBox(
                        height: Dimen.margin_64,
                      ),
                      const MainHeaderText(text: 'Work Experience'),
                      const SizedBox(
                        height: Dimen.margin_24,
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const ClampingScrollPhysics(),
                          itemCount: viewModel.workExperience.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: Dimen.margin_32),
                          itemBuilder: (context, index) => ItemResumeListing(
                              resumeListingData:
                                  viewModel.workExperience[index])),
                      const SizedBox(
                        height: Dimen.margin_64,
                      ),
                      const MainHeaderText(text: 'Education'),
                      const SizedBox(
                        height: Dimen.margin_24,
                      ),
                      ItemResumeListing(
                          resumeListingData: viewModel.educationData)
                    ],
                  ))
                ],
              )
            ],
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
