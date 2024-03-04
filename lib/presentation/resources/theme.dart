import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFFB2292B),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDAD7),
  onPrimaryContainer: Color(0xFF410004),
  secondary: Color(0xFF9C4144),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDAD9),
  onSecondaryContainer: Color(0xFF410008),
  tertiary: Color(0xFF4958A9),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFDEE0FF),
  onTertiaryContainer: Color(0xFF00105B),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF030865),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF030865),
  surfaceVariant: Color(0xFFF5DDDB),
  onSurfaceVariant: Color(0xFF534342),
  outline: Color(0xFF857371),
  onInverseSurface: Color(0xFFF1EFFF),
  inverseSurface: Color(0xFF1E2578),
  inversePrimary: Color(0xFFFFB3AD),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB2292B),
  outlineVariant: Color(0xFFD8C2BF),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB3AD),
  onPrimary: Color(0xFF68000A),
  primaryContainer: Color(0xFF900B16),
  onPrimaryContainer: Color(0xFFFFDAD7),
  secondary: Color(0xFFFFB3B2),
  onSecondary: Color(0xFF5F131A),
  secondaryContainer: Color(0xFF7E2A2E),
  onSecondaryContainer: Color(0xFFFFDAD9),
  tertiary: Color(0xFFBAC3FF),
  onTertiary: Color(0xFF162778),
  tertiaryContainer: Color(0xFF303F90),
  onTertiaryContainer: Color(0xFFDEE0FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF030865),
  onBackground: Color(0xFFE0E0FF),
  surface: Color(0xFF030865),
  onSurface: Color(0xFFE0E0FF),
  surfaceVariant: Color(0xFF534342),
  onSurfaceVariant: Color(0xFFD8C2BF),
  outline: Color(0xFFA08C8A),
  onInverseSurface: Color(0xFF030865),
  inverseSurface: Color(0xFFE0E0FF),
  inversePrimary: Color(0xFFB2292B),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB3AD),
  outlineVariant: Color(0xFF534342),
  scrim: Color(0xFF000000),
);

class CustomTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: lightColorScheme,
      // actionIconTheme: ActionIconThemeData(
      //   backButtonIconBuilder: (BuildContext context) => Image.asset(backOutline)
      // ),

      // hoverColor: Colors.green.shade200,

      // dividerColor: Colors.purple,

      /// Icon theme
      // iconTheme: const IconThemeData(
      //     color: Colors.orange,
      //     fill: 0.0,
      //     opacity: 1.0,
      //     // size: 40,
      //     weight: 100,
      //     opticalSize: 20,
      //
      //     /// Optical sizes range from 20dp to 48dp. we can maintain
      //     /// the stroke width common while resizing or on increase of the icon size
      //     grade:
      //         0 // (For light and dart themes) To make strokes heavier and more emphasized, use positive value grade, such as when representing an active icon state.
      //     ),

      /// Card Theme
      // cardTheme: CardTheme(
      //     color: Colors.white ?? Colors.green.shade50,
      //     margin: EdgeInsets.all(16),
      //     shadowColor: Colors.greenAccent,
      //     elevation: 5,
      //     surfaceTintColor: Colors.white),

      /// Text Theme data
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
        displayMedium: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
        displaySmall: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
        titleLarge: GoogleFonts.poppins(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        labelLarge: GoogleFonts.poppins(
          fontSize: 18,
          color: Colors.black,
        ),
        labelMedium: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.black,
        ),
        labelSmall: GoogleFonts.poppins(
          fontSize: 10,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      // appBarTheme: const AppBarTheme(
      //     color: Colors.green,
      //     shadowColor: Colors.red,
      //     elevation: 5,
      //     foregroundColor: Colors.white),

        // inputDecorationTheme: InputDecorationTheme(
        //   contentPadding: const EdgeInsets.only(left: 16, right: 16),
        //   focusedBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(16),
        //       borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5)),
        //   enabledBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(16),
        //       borderSide: const BorderSide(color: AppColors.veryLightGrey, width: 1.5)),
        //   // filled: true,
        //   // fillColor: Colors.grey.withOpacity(0.1))
        // ),

      // textButtonTheme: TextButtonThemeData(
      //     style: ButtonStyle(
      //         shadowColor:
      //             MaterialStateProperty.all<Color>(Colors.lightGreenAccent),
      //         foregroundColor: MaterialStateProperty.all(Colors.white))),

      // navigationRailTheme: NavigationRailThemeData(
      //   elevation: 5,
      //   useIndicator: true,
      //   indicatorColor: Colors.orange.shade100,
      //   indicatorShape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      //   // labelType: NavigationRailLabelType.selected,
      //   selectedIconTheme: IconThemeData(
      //     color: Colors.orange,
      //     weight: 100,
      //   ),
      //   selectedLabelTextStyle: GoogleFonts.robotoSlab(
      //       color: Colors.orange.shade500, fontWeight: FontWeight.bold),
      //   unselectedLabelTextStyle:
      //       GoogleFonts.robotoSlab(color: Colors.green.shade500),
      // ),

      // dialogTheme: DialogTheme(iconColor: Colors.orange),

      // snackBarTheme: SnackBarThemeData(
      //     backgroundColor: Colors.black,
      //     contentTextStyle: Theme.of(context)
      //         .textTheme
      //         .titleMedium
      //         ?.apply(color: Colors.white)),

      // bannerTheme: MaterialBannerThemeData(
      //     backgroundColor: Colors.red,
      //     contentTextStyle: Theme.of(context)
      //         .textTheme
      //         .titleMedium
      //         ?.apply(color: Colors.white),
      //     padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      //     leadingPadding: EdgeInsets.all(0),
      //     elevation: 5),

      // dataTableTheme: DataTableThemeData(
      //   decoration: BoxDecoration(
      //     color: Colors.grey.withOpacity(0.1),
      //     borderRadius: const BorderRadius.all(Radius.circular(10)),
      //   ),
      //   dataRowColor: MaterialStateProperty.resolveWith(
      //     (states) {
      //       if (states.contains(MaterialState.hovered)) {
      //         return Colors.green;
      //       } else {
      //         return Colors.white;
      //       }
      //     },
      //   ),
      //   headingTextStyle: GoogleFonts.aBeeZee(
      //     fontWeight: FontWeight.bold,
      //     color: Colors.black,
      //   ),
      //   dataTextStyle: GoogleFonts.abhayaLibre(
      //     color: Colors.black,
      //   ),
      //   headingRowColor: MaterialStateProperty.resolveWith(
      //     (states) {
      //       if (states.contains(MaterialState.hovered)) {
      //         return Colors.green;
      //       } else {
      //         return Colors.blueAccent.withOpacity(0.5);
      //       }
      //     },
      //   ),
      // ),

      // dropdownMenuTheme: DropdownMenuThemeData(
      //     textStyle: TextStyle(fontWeight: FontWeight.w100)),

      useMaterial3: true,
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: darkColorScheme,
      // cardTheme: CardTheme(margin: EdgeInsets.all(16), elevation: 5),
      // appBarTheme: AppBarTheme(elevation: 5),

      /// Icon theme
      // iconTheme: const IconThemeData(
      //     color: Colors.orange,
      //     fill: 0.0,
      //     opacity: 1.0,
      //     // size: 40,
      //     weight: 100,
      //     opticalSize: 20,
      //
      //     /// Optical sizes range from 20dp to 48dp. we can maintain
      //     /// the stroke width common while resizing or on increase of the icon size
      //     grade:
      //         0 // (For light and dart themes) To make strokes heavier and more emphasized, use positive value grade, such as when representing an active icon state.
      //     ),
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }
}
