import 'package:portofolio/data/model/resume_listing_data.dart';
import 'package:stacked/stacked.dart';

class AboutViewModel extends BaseViewModel {
  List<ResumeListingData> workExperience = [
    ResumeListingData(
        title: 'Internship as  Android Developer, PT. Kazee Digital Indonesia',
        description:
            'Develop an Android application base on requirements that given by supervisor.',
        location: 'Bandung',
        period: 'Jan 2018 － Mar 2018'),
    ResumeListingData(
        title: 'Android Developer, PT. Kazee Digital Indonesia',
        description:
            'Develop an Android application that suits the business requirements. Develop attendance and HR management application named Waktoo also working on other Android application that need to be maintain.',
        location: 'Bandung',
        period: 'Oct 2019 － Feb 2020'),
    ResumeListingData(
        title: 'Android Developer, PT. Alba Integrasi Solusi',
        description:
            'Develop and maintaining an Android application named Pulsagram base on new design and develop multi level Smart Laundry Management application for The Daily Wash which had two separate application named The Daily Wash and The Daily Wash Outlet. Working with other clients and teams to develop an app from scratch.',
        location: 'Yogyakarta',
        period: 'Mar 2020 － Jun 2021'),
    ResumeListingData(
        title: 'Android Developer, Telkom Indonesia - ChatAja!',
        description:
            'Enhance and bug fixing ChatAja! application which is an Indonesian cloud-based and multi platform instant messaging application. Working with Biz Team which is a team that handle "Nice to have" things for application.',
        location: 'Bandung',
        period: 'Jan 2021 － Jun 2021'),
    ResumeListingData(
        title: 'Android Developer, PT. Visi Prima Nusantara',
        description:
            'Develop an education application which is Portal Sekolah and Portal Sekolah for Guru dan Admin that contain school management and student learning platform application. Collaborate with foreigner team from India that required English for communication.',
        location: 'Jakarta',
        period: 'May 2021 － Present'),
  ];

  var educationData = ResumeListingData(
      title: 'Universitas Lampung, Bachelor Degree - Informatics Engineering',
      description:
      '3 Times received PPA Scholarship,\n3.75 Years study period, 3.67 GPA.',
      location: 'Bandar Lampung',
      period: 'Sep 2015 － Jul 2019');

  init() {}
}
