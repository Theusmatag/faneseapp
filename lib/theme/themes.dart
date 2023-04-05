import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData get ligththeme => ThemeData(
      fontFamily: 'Century Gothic',
      textTheme: TextTheme(
        titleLarge: TextStyle(color: _lightColorScheme.secondary),
        titleMedium: TextStyle(color: _lightColorScheme.secondary),
        titleSmall: TextStyle(color: _lightColorScheme.secondary),
        bodyLarge: TextStyle(color: _lightColorScheme.secondary),
        bodyMedium: TextStyle(color: _lightColorScheme.secondary),
        bodySmall: TextStyle(color: _lightColorScheme.secondary),
        headlineLarge: TextStyle(color: _lightColorScheme.secondary),
        headlineMedium: TextStyle(color: _lightColorScheme.secondary),
        headlineSmall: TextStyle(color: _lightColorScheme.secondary),
      ),
      scaffoldBackgroundColor: _lightColorScheme.primary,
      cardTheme: CardTheme(color: _lightColorScheme.primaryContainer),
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: _lightColorScheme.secondary,
        prefixIconColor: _lightColorScheme.secondary,
        iconColor: _lightColorScheme.secondary,
        labelStyle: TextStyle(color: _lightColorScheme.secondary, fontSize: 12),
        border: const UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _lightColorScheme.secondary)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _lightColorScheme.secondary)),
        floatingLabelStyle: TextStyle(
          color: _lightColorScheme.secondary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
              width: 0.5, color: Color.fromARGB(255, 24, 179, 76)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => _lightColorScheme.secondary),
        ),
      ),
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: _lightColorScheme.error),
        centerTitle: true,
        backgroundColor: _lightColorScheme.primaryContainer,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
      ),
    );

ThemeData get darktheme => ThemeData(
      fontFamily: 'Century Gothic',
      textTheme: TextTheme(
        titleLarge: TextStyle(color: _darkColorScheme.secondary),
        titleMedium: TextStyle(color: _darkColorScheme.secondary),
        titleSmall: TextStyle(color: _darkColorScheme.secondary),
        bodyLarge: TextStyle(color: _darkColorScheme.secondary),
        bodyMedium: TextStyle(color: _darkColorScheme.secondary),
        bodySmall: TextStyle(color: _darkColorScheme.secondary),
      ),
      scaffoldBackgroundColor: _darkColorScheme.onPrimary,
      cardTheme: CardTheme(color: _darkColorScheme.primaryContainer),
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: _darkColorScheme.secondary),
        centerTitle: true,
        backgroundColor: _darkColorScheme.primaryContainer,
      ),
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: _darkColorScheme.secondary,
        prefixIconColor: _darkColorScheme.secondary,
        iconColor: _darkColorScheme.secondary,
        labelStyle: TextStyle(color: _darkColorScheme.secondary, fontSize: 12),
        border: const UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _darkColorScheme.secondary)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _darkColorScheme.secondary)),
        floatingLabelStyle: TextStyle(
          color: _darkColorScheme.secondary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 0.5, color: _darkColorScheme.secondary),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.resolveWith<Color>(
              (states) => _darkColorScheme.secondary),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => _darkColorScheme.secondary),
        ),
      ),
    );
