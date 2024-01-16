import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }

  runApp(
    ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (ctx, child) {
          return EasyLocalization(
              supportedLocales: const [
                Locale('ru', 'RU'),
              ],
              path: 'assets/translation',
              fallbackLocale: const Locale('ru', 'RU'),
              startLocale: const Locale('ru', 'RU'),
              saveLocale: true,
              child: const MyApp());
        }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(useMaterial3: true),
      builder: EasyLoading.init(),
      onGenerateRoute: (settings) => AppRoutes.main(),
    );
  }
}

/// bloc logger
class LogBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print("\n----------$bloc Changed-----------\n");
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print("-------$bloc closed--------------");
    }
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print("------$bloc created---------------");
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print('---------Event------------${bloc.runtimeType} $event');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (kDebugMode) {
      print('---------Error------------${bloc.runtimeType} $error');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print("--------------$bloc Transition---------------------");
    }
  }
}
