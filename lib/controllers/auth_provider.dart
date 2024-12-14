part of 'provider.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _userModel;

  UserModel? get userModel => _userModel;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set users(UserModel user) {
    _userModel = user;
    notifyListeners();
  }

  Future<Either<Failure, UserModel>> login({
    required String username,
    required String password,
  }) async {
    _isLoading = true;
    notifyListeners();
    try {
      var result =
          await AuthService().login(username: username, password: password);
      _isLoading = false;
      notifyListeners();
      return Right(result);
    } catch (e, stackTrace) {
      _isLoading = false;
      notifyListeners();
      return Left(Failed(e.toString().trim()));
    }
  }
}
