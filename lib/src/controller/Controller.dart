
import '../model/Model.dart';

class UserController {
  void registerUser(User user) {
    // Add your logic to register the user, such as making an API call or saving to a database
    print('Registering user: ${user.username}, ${user.email}, ${user.password}');
  }
}