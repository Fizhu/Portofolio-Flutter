import 'package:flutter/material.dart';
import 'package:portofolio/ui/home/about/about_view.dart';
import 'package:portofolio/ui/home/home_viewmodel.dart';
import 'package:portofolio/ui/home/project/project_view.dart';
import 'package:portofolio/ui/home/welcome/welcome_view.dart';
import 'package:portofolio/utils/ext.dart';
import 'package:portofolio/widget/text/sub_header_text.dart';
import 'package:stacked/stacked.dart';

import '../../di/locator.dart';
import '../../domain/router.gr.dart';
import '../../utils/dimen.dart';

final scrollController = ScrollController();
var height = 0.0;

// ignore: must_be_immutable
class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  var router = locator<AppRouter>();

  @override
  bool get reactive => true;

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) => viewModel.init();

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    height = Ext.matchParentHeight(context);
    return Scaffold(
        body: SafeArea(
            child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Container(height: Ext.matchParentHeight(context),
        //   width: 86,color: AppColor.softBackground,
        // padding: const EdgeInsets.only(top: Dimen.margin_24, bottom: Dimen.margin_24),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {
        //         scrollController.animateTo((0*height), duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
        //       },
        //       child: const Icon(
        //         Icons.home_outlined,
        //         color: Colors.white,
        //       ),
        //       style: ElevatedButton.styleFrom(
        //           primary: AppColor.primary,
        //           onPrimary: Colors.grey[400],
        //           minimumSize: Size.zero,
        //           padding: const EdgeInsets.all(Dimen.margin),
        //           elevation: 0,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(Dimen.margin),
        //           )),
        //     ),
        //     const SizedBox(height: Dimen.margin,),
        //     ElevatedButton(
        //       onPressed: () {
        //         scrollController.animateTo((1*height), duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
        //       },
        //       child: const Icon(
        //         Icons.person_outline,
        //         color: Colors.white,
        //       ),
        //       style: ElevatedButton.styleFrom(
        //           primary: AppColor.primary,
        //           onPrimary: Colors.grey[400],
        //           minimumSize: Size.zero,
        //           padding: const EdgeInsets.all(Dimen.margin),
        //           elevation: 0,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(Dimen.margin),
        //           )),
        //     ),
        //     const SizedBox(height: Dimen.margin,),
        //     ElevatedButton(
        //       onPressed: () {
        //         scrollController.animateTo(((1*height) + 1000), duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
        //       },
        //       child: const Icon(
        //         Icons.all_inbox_outlined,
        //         color: Colors.white,
        //       ),
        //       style: ElevatedButton.styleFrom(
        //           primary: AppColor.primary,
        //           onPrimary: Colors.grey[400],
        //           minimumSize: Size.zero,
        //           padding: const EdgeInsets.all(Dimen.margin),
        //           elevation: 0,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(Dimen.margin),
        //           )),
        //     ),
        //   ],
        // ),),
        if (Ext.matchParentWidth(context) > 1000)
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              children: const [
                WelcomeView(),
                AboutView(),
                ProjectView(),
                SizedBox(
                  height: Dimen.margin_128,
                )
              ],
            ),
          ),
        if (Ext.matchParentWidth(context) < 1000)
          const Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(Dimen.margin),
                child: SubHeaderText(
                  text:
                      'Opps! sorry, This site is currently not supported for this screen resolution.',
                ),
              ),
            ),
          )
      ],
    )));
  }
}
