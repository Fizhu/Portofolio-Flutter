import 'package:portofolio/data/model/project_data.dart';
import 'package:stacked/stacked.dart';

class ProjectViewModel extends BaseViewModel {
  List<ProjectData> listProjectData = [
    ProjectData(
        title: 'The Daily Wash Outlet',
        description:
            'The Daily Wash are android-base apps that use for managing laundry outlet also handling customer transaction. This apps contains creating laundry transaction, Financial reports, Managing customers, and many more. This apps belongs to The Daily Wash Laundromat.',
        image: 'assets/images/tdwoutlet_2.jpg'),
    ProjectData(
        title: 'Waktoo',
        description:
            'Waktoo is a android-based Online Attendance + Employee Monitoring application that provides the best validation and tracking features and calculation of salary and employee deductions.',
        image: 'assets/images/waktoo_1.jpg'),
    ProjectData(
        title: 'Strategic Negotiation',
        description:
            'Strategic Negotiation is an android-based application that use for communication game and negotiate also to apply technology in life cases, this apps belongs to SBM Intitute Technology of Bandung.',
        image: 'assets/images/strego_1.jpg'),
    ProjectData(
        title: 'ChatAja!',
        description:
            'ChatAja is an Indonesian cloud-based and multiplatform instant messaging application. This app belongs to Telkom Indonesia.',
        image: 'assets/images/chataja_2.jpg'),
    ProjectData(
        title: 'Pulsagram',
        description:
            'Pulsagram is an android-based apps that provide services for client to easily buy several products from PT. Bimasakti, this app contains several features like ticketing, payment with schedule, checking the bills and many more.',
        image: 'assets/images/pulsagram_1.jpg'),
    ProjectData(
        title: 'Portal Sekolah - Murid',
        description:
            'Portal Sekolah is android-base app that use for student learning environment. This app contains student assessment, note taking, glossary, learning by subject, schedule, and announcement about the school. This app belongs to PT. Visi Prima Nusantara.',
        image: 'assets/images/ps_1.jpg'),
    ProjectData(
        title: 'The Daily Wash Customer',
        description:
            'The Daily Wash are android-base apps that use for customer laundry transaction. This apps contains creating laundry transaction, history, promos, and many more. This apps belongs to The Daily Wash Laundromat.',
        image: 'assets/images/tdw_1.jpg'),
    ProjectData(
        title: 'SiapKerja Way Kanan',
        description:
            'SiapKerja Way Kanan is a flutter-based e-Office application that contains online attendance, administration management, mailing sistem, and many more. for Way kanan government.',
        image: 'assets/images/ulak_1.jpg'),
    ProjectData(
        title: 'Bike App Concept',
        description:
            'Bike App Concept is a android-based UI/UX Project application, this app is open-source app that I made base on difficult UI component from design that I made by my self.',
        image: 'assets/images/bike_1.jpg'),
    ProjectData(
        title: 'Pressensi',
        description:
            'Pressensi is a android-based Online Attendance application that include other human resource features such as leave management, tracking activities for employee, and many more. This app belongs to PT. Folka Cipta Karya.',
        image: 'assets/images/press_1.jpg'),
    ProjectData(
        title: 'Portal Sekolah - Guru dan Admin',
        description:
            'Portal Sekolah is android-base app that use for teacher and admin of the school for manage school content, attandance tracking, manage assessment, manage subject and other school functionality related to student app and school management. This app belongs to PT. Visi Prima Nusantara.',
        image: 'assets/images/ps_staff1.jpg'),
    ProjectData(
        title: 'JSmart',
        description:
        'JSmart or Jababeka System Management for Advance Report is a android-based social media and reporting application which can be used for the community / tenants in Jababeka to participate in improving services and the creation of Jababeka into a smart city (Smart City). Reports submitted will be forwarded and followed up by related parties and can be monitored online through the Jsmart application.',
        image: 'assets/images/jsmart1.png'),
  ];

  init() {}
}
