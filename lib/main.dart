import 'package:flutter/material.dart';
import 'package:food_app_with_sqflite/utils/card_provider.dart';
import 'package:food_app_with_sqflite/utils/favorite_provider.dart';
import 'package:food_app_with_sqflite/utils/theme_provider.dart';
import 'package:food_app_with_sqflite/view_page/login_view/splash_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyFirstApp());
}
class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => CartProvider()),
          ChangeNotifierProvider(create: (context) => FavoriteProvider()),
        ],
            child: Builder(
              builder:(BuildContext context) {
                //final themeProvider = Provider.of<ThemeProvider>(context);
                return Consumer<ThemeProvider>(builder: (context, value, child) {
                  return  MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme:value.themeData,
                    home:const SplashScreen() ,
                  );
                },);
              }),
    );
  }
}

