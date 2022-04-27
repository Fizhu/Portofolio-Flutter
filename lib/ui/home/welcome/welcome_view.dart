import 'package:flutter/material.dart';
import 'package:portofolio/ui/home/welcome/welcome_viewmodel.dart';
import 'package:portofolio/utils/dimen.dart';
import 'package:portofolio/utils/ext.dart';
import 'package:portofolio/widget/button/default_button.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/app_color.dart';
import '../home_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => WelcomeViewModel(),
        onModelReady: (WelcomeViewModel viewModel) {
          viewModel.init();
        },
        builder:
            (BuildContext context, WelcomeViewModel viewModel, Widget? child) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[200]),
            margin: const EdgeInsets.all(Dimen.margin_64),
            width: double.infinity,
            height: (Ext.matchParentHeight(context) -
                Dimen.margin_64 -
                Dimen.margin_64),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/img_laptop.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          width: ((Ext.matchParentWidth(context) -
                                  Dimen.margin_64 -
                                  Dimen.margin_64) /
                              2.5),
                          padding: const EdgeInsets.all(Dimen.margin_64),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hi, Welcome ✌️",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: Dimen.margin,
                              ),
                              const Text(
                                "Thank you for visiting, with pleasure please see some of the result of my projects and all about me on this site",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    height: 1.5),
                              ),
                              const SizedBox(
                                height: Dimen.margin,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: AppColor.primary,
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Dimen.padding),
                                      )),
                                  onPressed: () {
                                    scrollController.animateTo((1 * height),
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.fastOutSlowIn);
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(Dimen.margin),
                                    child: Text("Explore now"),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
