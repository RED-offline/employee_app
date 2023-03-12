import 'package:employee_app/candidates/cubit/candidates_cubit.dart';
import 'package:employee_app/repositories/candidate/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart';

class CandidatesPage extends StatelessWidget {
  const CandidatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CandidatesCubit(
        candidateRepository:
            RepositoryProvider.of<CandidateRepository>(context),
      ),
      child: const CandidatesView(),
    );
  }
}

class CandidatesView extends StatelessWidget {
  const CandidatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CandidatesCubit, CandidatesState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<CandidatesCubit>(context);
        return Scaffold(
          body: state.loading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: state.candidates.length,
                  itemBuilder: (BuildContext context, int index) {
                    final candidate = state.candidates[index];
                    return ListTile(
                      leading: CachedNetworkImage(
                        imageUrl: candidate.avatar,
                        width: 100,
                        height: 100,
                      ),
                      title: Text(candidate.firstName + candidate.lastName),
                      subtitle: Text(candidate.employment.title),
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: cubit.fetch,
            child: const Icon(Icons.replay_rounded),
          ),
        );
      },
    );
  }
}
