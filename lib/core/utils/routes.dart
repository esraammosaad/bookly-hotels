import 'package:booking_hotels/features/authentication/presentation/views/forget_password_view.dart';
import 'package:booking_hotels/features/authentication/presentation/views/new_password_view.dart';
import 'package:booking_hotels/features/authentication/presentation/views/sign_in_view.dart';
import 'package:booking_hotels/features/authentication/presentation/views/verify_code_view.dart';
import 'package:booking_hotels/features/splash/presentation/views/splash_view.dart';
import 'package:booking_hotels/features/splash/presentation/views/widgets/custom_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/views/add_information_view.dart';
import '../../features/authentication/presentation/views/sign_up_view.dart';

abstract class AppRoutes {
  static String kPageView = '/customPageView';
  static String kSignInView = '/signInView';
  static String kForgetPasswordView = '/forgetPasswordView';
  static String kVerifyCodeView = '/verifyCodeView';
  static String kNewPasswordView = '/newPasswordView';
  static String kSignUpView = '/signUpView';
  static String kAddInformationView = '/addInformationView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kPageView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(seconds: 5),
              key: state.pageKey,
              child: const CustomPageView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                  child: child,
                );
              });
        },

      ),
      GoRoute(
        path: kSignInView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 500),
              key: state.pageKey,
              child: const SignInView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return SlideTransition(

                  position: Tween(begin: const Offset(1,0),end: Offset.zero).animate(CurvedAnimation(parent: animation, curve: Curves.easeInExpo)),
                  child: child,
                );
              });
        },
      ),

      GoRoute(
        path: kForgetPasswordView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 500),
              key: state.pageKey,
              child: const ForgetPasswordView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return SlideTransition(

                  position: Tween(begin: const Offset(0,1),end:Offset.zero ).animate( CurvedAnimation(curve: Curves.easeInExpo,parent: animation)),
                  child: child,
                );
              });
        },
      ),
      GoRoute(
        path: kVerifyCodeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 500),
              key: state.pageKey,
              child: const VerifyCodeView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return SlideTransition(

                  position: Tween(begin: const Offset(0,1),end:Offset.zero ).animate( CurvedAnimation(curve: Curves.easeInExpo,parent: animation)),
                  child: child,
                );
              });
        },
      ),
      GoRoute(
        path: kNewPasswordView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 500),
              key: state.pageKey,
              child: const NewPasswordView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return SlideTransition(

                  position: Tween(begin: const Offset(0,1),end:Offset.zero ).animate( CurvedAnimation(curve: Curves.easeInExpo,parent: animation)),
                  child: child,
                );
              });
        },
      ),
      GoRoute(
        path: kSignUpView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 500),
              key: state.pageKey,
              child: const SignUpView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return SlideTransition(

                  position: Tween(begin: const Offset(0,1),end:Offset.zero ).animate( CurvedAnimation(curve: Curves.easeInExpo,parent: animation)),
                  child: child,
                );
              });
        },
      ),
      GoRoute(
        path: kAddInformationView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 500),
              key: state.pageKey,
              child: const AddInformationView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return SlideTransition(

                  position: Tween(begin: const Offset(0,1),end:Offset.zero ).animate( CurvedAnimation(curve: Curves.easeInExpo,parent: animation)),
                  child: child,
                );
              });
        },
      ),
    ],
  );
}