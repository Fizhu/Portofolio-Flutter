import 'package:flutter/material.dart';
import 'package:portofolio/ui/detail/detail_viewmodel.dart';
import 'package:portofolio/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../di/locator.dart';
import '../../domain/router.gr.dart';
import '../../utils/dimen.dart';

// ignore: must_be_immutable
class DetailView extends ViewModelBuilderWidget<DetailViewModel> {
  DetailView({Key? key}) : super(key: key);

  var router = locator<AppRouter>();

  @override
  bool get reactive => true;

  @override
  DetailViewModel viewModelBuilder(BuildContext context) => DetailViewModel();

  @override
  void onViewModelReady(DetailViewModel viewModel) => viewModel.init();

  @override
  Widget builder(BuildContext context, DetailViewModel viewModel, Widget? child) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(Dimen.margin),
        children: [
          Text('DETAIL')
        ],
      ),
    ));
  }
}
