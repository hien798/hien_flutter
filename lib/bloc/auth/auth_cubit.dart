import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/data.dart';
import 'bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final UserRepository repo;

  AuthCubit(this.repo) : super(Unauthenticated());
}
