// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'candidates_cubit.dart';

class CandidatesState {
  CandidatesState({
    this.loading = false,
    this.candidates = const [],
  });

  final bool loading;
  final List<Candidate> candidates;

  CandidatesState copyWith({
    bool? loading,
    List<Candidate>? candidates,
  }) {
    return CandidatesState(
      loading: loading ?? this.loading,
      candidates: candidates ?? this.candidates,
    );
  }
}
