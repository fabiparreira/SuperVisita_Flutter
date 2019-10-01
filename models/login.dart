// CLASSE LOGIN
class Login {
  final String usuarioLogin;
  final String senhaLogin;

  Login(
    this.usuarioLogin,
    this.senhaLogin,
  );

  @override
  String toString() {
    return 'Login{usuarioLogin: $usuarioLogin, senhaLogin: $senhaLogin}';
  }
}
