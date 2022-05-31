import 'package:get/get.dart';
import 'package:internsforyou/screens/browse/binding.dart';
import 'package:internsforyou/screens/browse/views/browse_interns.dart';
import 'package:internsforyou/screens/intro/views/guest_view.dart';
import 'package:internsforyou/screens/intro/views/selection_view.dart';
import 'package:internsforyou/screens/register/binding.dart';
import 'package:internsforyou/screens/register/views/details_view.dart';
import 'package:internsforyou/screens/register/views/signup_view.dart';

import 'package:internsforyou/setup/setup_main.dart';
//import 'package:internsforyou/screens/browse/views/view_intern.dart';
import 'package:internsforyou/screens/browse/views/view_internship.dart';
import 'package:internsforyou/models/job_listing/job_listing.dart';

import '../../screens/intro/binding.dart';
import '../../screens/intro/views/intro_view.dart';
import '../../screens/login/binding.dart';
import '../../screens/login/view.dart';

class AppRoutes {
  static String detailsFormScreen = '/details';
  static String loginScreen = '/login';
  static String registerScreen = '/register';
  static String introGuestScreen = '/intro/2';
  static String introSelectionScreen = '/intro/1';
  static String introScreen = '/intro';
  static String browseInternScreen = '/browse/intern';
  static String backendWeb = '/backend';
  static String viewInternship = '/view';

  static List<GetPage> pages = [
    GetPage(name: introScreen, page: () => const IntroScreen(), binding: IntroBinding()),
    GetPage(name: introSelectionScreen, page: () => const SelectionScreen(), binding: IntroBinding()),
    GetPage(name: introGuestScreen, page: () => const GuestViewScreen(), binding: IntroBinding()),
    GetPage(name: registerScreen, page: () => RegisterScreen(), binding: RegisterBinding()),
    GetPage(name: detailsFormScreen, page: () => UserDetailsScreen(), binding: RegisterBinding()),
    GetPage(name: loginScreen, page: () => LoginScreen(), binding: LoginBinding()),
    GetPage(name: browseInternScreen, page: () => const BrowseInternScreen(), binding: BrowseBinding()),
    GetPage(name: backendWeb, page: () => sign_it_in(), binding: BrowseBinding()),
    GetPage(name: viewInternship, page: () => InternshipScreen(internship: JobListing(jobTitle: 'Test', jobDescription: 'TestDesc', score: 0)), binding: BrowseBinding()),
  ];
}
