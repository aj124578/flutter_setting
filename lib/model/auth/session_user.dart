
import '../user/user.dart';

// 최초 앱이 실행될 때 초기화 되어야 함.
// 1. JWT 존재 유무 확인 (I/O)
// 2. JWT로 회원정보 받아봄 (I/O)
// 3. OK -> loginSuccess() 호출
// 4. FAIL -> loginPage로 이동

class SessionUser{
  User? user;
  String? jwt;
  bool? isLogin;

  // 1. 이 토큰이 유효한지 확인 
  void loginSuccess(User user, String jwt){
    this.user = user;
    this.jwt = jwt;
    this.isLogin = true;
  }

  void logoutSuccess(){ // 로그아웃은 자체적으로 토큰만 날려버리면 됨
    this.user = null;
    this.jwt = null;
    this.isLogin = false;
  }
}