import 'package:companion_app/views/onboarding/anonymous.dart';
import 'package:companion_app/views/onboarding/onboarding.dart';
import 'package:companion_app/views/onboarding/personal_details.dart';
import 'package:companion_app/views/onboarding/priorityTask_page.dart';
import 'package:companion_app/views/productivity/task_list.dart';
import 'package:companion_app/views/survey/night_checkin_intro_screen.dart';
import 'package:companion_app/views/survey/night_checkin_screen.dart';
import 'package:companion_app/views/survey/survey_intro_screen.dart';
import 'package:companion_app/views/survey/survey_screen.dart';
import 'package:companion_app/views/welcome/auth_page.dart';
import 'package:companion_app/views/welcome/email_verify.dart';
import 'package:companion_app/views/welcome/forgot_password.dart';
import 'package:companion_app/views/welcome/login.dart';
import 'package:companion_app/views/welcome/reset_password.dart';
import 'package:companion_app/views/welcome/signup.dart';
import 'package:companion_app/views/welcome/welcome_page.dart';
import 'package:companion_app/views/main/main_screen.dart';

import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object

  static final routes = [
    GetPage(
        name: '/auth',
        page: () => AuthPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/',
        page: () => const WelcomePage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/sign-up',
        page: () => const SignupPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/log-in',
        page: () => const LoginPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/forgot-password',
        page: () => const ForgotPassword(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/email-verify',
        page: () => const EmailVerify(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/reset-password',
        page: () => const ResetPassword(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/onboarding',
        page: () => const onBoarding(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/personal-details',
        page: () => PersonalDetails(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/anonymous',
        page: () => const Anonymous(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/main-screen',
        page: () =>  MainScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/survey-intro-screen',
        page: () =>  SurveyIntroScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/night-checkin-intro',
        page: () =>  NightCheckinIntroScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/task-list',
        page: () =>  TaskList(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),

    GetPage(
        name: '/survey-screen',
        page: () =>  SurveyScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
    GetPage(
        name: '/night-checkin',
        page: () =>  NightCheckInScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),



    GetPage(
        name: '/priority-task',
        page: () => const PriorityTaskPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 250)),
  ];
}