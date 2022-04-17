import 'package:flutter/material.dart';
import 'package:portofolio/data/model/project_data.dart';
import 'package:portofolio/utils/app_color.dart';
import 'package:portofolio/utils/dimen.dart';
import 'package:portofolio/widget/bouncing_widget.dart';

class ItemProject extends StatelessWidget {
  final ProjectData projectData;

  const ItemProject({
    Key? key,
    required this.projectData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPress: () {},
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Dimen.margin),
          child: Row(
            children: [
              Image.asset(projectData.image),
              const SizedBox(
                width: Dimen.margin,
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectData.title,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColor.textBlack),
                  ),
                  const SizedBox(
                    height: Dimen.margin,
                  ),
                  Text(
                    projectData.description,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
