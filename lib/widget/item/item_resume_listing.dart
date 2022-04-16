import 'package:flutter/material.dart';
import 'package:portofolio/data/model/resume_listing_data.dart';
import 'package:portofolio/widget/text/content_text.dart';

import '../../utils/app_color.dart';
import '../../utils/dimen.dart';

class ItemResumeListing extends StatelessWidget {
  final ResumeListingData resumeListingData;

  const ItemResumeListing({
    Key? key,
    required this.resumeListingData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          resumeListingData.title,
          style: TextStyle(
              fontSize: 26,
              color: AppColor.textBlack,
              fontWeight: FontWeight.bold),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resumeListingData.period,
              style: TextStyle(fontSize: 22, color: AppColor.textBlack),
            ),
            const SizedBox(
              width: Dimen.margin,
            ),
            Icon(
              Icons.location_on,
              color: Colors.grey[700],
              size: 18,
            ),
            const SizedBox(
              width: Dimen.padding,
            ),
            ContentText(text: resumeListingData.location)
          ],
        ),
        const SizedBox(
          height: Dimen.margin,
        ),
        ContentText(text: resumeListingData.description)
      ],
    );
  }
}
