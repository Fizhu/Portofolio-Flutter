import 'package:flutter/material.dart';
import 'package:portofolio/ui/home/about/about_viewmodel.dart';
import 'package:portofolio/ui/home/project/project_viewmodel.dart';
import 'package:portofolio/ui/home/welcome/welcome_viewmodel.dart';
import 'package:portofolio/utils/dimen.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/app_color.dart';
import '../../../utils/ext.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProjectViewModel(),
        onModelReady: (ProjectViewModel viewModel) {
          viewModel.init();
        },
        builder:
            (BuildContext context, ProjectViewModel viewModel, Widget? child) {
          return ListView(
            padding: const EdgeInsets.fromLTRB(
                Dimen.margin_64, 0, Dimen.margin_64, Dimen.margin_64),
            shrinkWrap: true,
            children: [
              Text(
                "Projects",
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
            ],
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
