import 'package:e_commerce_app/root_screen.dart';
import 'package:e_commerce_app/screens/auth/forgot_password.dart';
import 'package:e_commerce_app/screens/auth/login.dart';
import 'package:e_commerce_app/screens/auth/register.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/screens/inner_screen/orders/orders_screen.dart';
import 'package:e_commerce_app/screens/inner_screen/product_details.dart';
import 'package:e_commerce_app/screens/inner_screen/viewed_recently.dart';
import 'package:e_commerce_app/screens/inner_screen/whish_list.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes =
     <String, WidgetBuilder>{
            RootScreen.routName: (context) => const RootScreen(),
            ForgotPasswordScreen.routName: (context) => const ForgotPasswordScreen(),
            ProductDetailsScreens.routName: (context) =>
                const ProductDetailsScreens(),
            WhishListScreen.routName: (context) => const WhishListScreen(),
            ViewedRecentlyScreen.routName: (context) =>
                const ViewedRecentlyScreen(),
            RegisterScreen.routName: (context) => const RegisterScreen(),
            LoginScreen.routName: (context) => const LoginScreen(),
            HomeScreen.routName: (context) => const HomeScreen(),
            OrdersScreenFree.routName: (context) => const OrdersScreenFree(),
          };
