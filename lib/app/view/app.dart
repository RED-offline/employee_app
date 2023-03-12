import 'package:employee_app/candidates/view/candidates_page.dart';
import 'package:employee_app/counter/counter.dart';
import 'package:employee_app/l10n/l10n.dart';
import 'package:employee_app/repositories/candidate/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CandidatesPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CandidateRepository(),
      child: MaterialApp.router(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _router,
        // home: const CounterPage(),
      ),
    );
  }
}
