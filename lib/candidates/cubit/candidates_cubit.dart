import 'package:employee_app/models/candidate.dart';
import 'package:employee_app/repositories/candidate/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'candidates_state.dart';

class CandidatesCubit extends Cubit<CandidatesState> {
  CandidatesCubit({required CandidateRepository candidateRepository})
      : _candidateRepository = candidateRepository,
        super(CandidatesState()) {
    fetch();
  }

  final CandidateRepository _candidateRepository;

  Future<void> fetch() async {
    emit(state.copyWith(loading: true));
    final response = await _candidateRepository.candidates();
    emit(state.copyWith(loading: false, candidates: response));
  }
}
