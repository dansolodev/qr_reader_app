import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader_app/src/pages/home_page.dart';
import 'package:qr_reader_app/src/pages/map_page.dart';
import 'package:qr_reader_app/src/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'map': (_) => const MapPage(),
        },
        theme: ThemeData(
          colorScheme:
              const ColorScheme.light().copyWith(primary: Colors.deepPurple),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
