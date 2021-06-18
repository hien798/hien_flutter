import 'data/data.dart';
import 'bloc/bloc.dart';

class App {
  AppCubit get appCubit => _appCubit;
  late AppCubit _appCubit;

  AuthCubit get authCubit => _authCubit;
  late AuthCubit _authCubit;

  Repository get repository => _repository;
  late Repository _repository;

  UserRepository get userRepository => _userRepository;
  late UserRepository _userRepository;

  late AppApi _api;

  Future<void> setup() async {
    await _setupRepo();
    await _setupBlocs();
  }

  Future<void> _setupRepo() async {
    final userStorage = UserLocalStorage();
    await userStorage.load();
    _api = AppApi(userLocalStorage: userStorage, interceptors: [
      AuthInterceptor(userLocalStorage: userStorage),
      LogInterceptor(),
    ]);
    _userRepository = UserRepository(
      api: _api,
      userApi: _api.getUserApiClient(),
      userStorage: userStorage,
    );
    _repository = Repository();
  }

  Future<void> _setupBlocs() async {
    _appCubit = AppCubit(_repository);
    _authCubit = AuthCubit(_userRepository);
  }
}
