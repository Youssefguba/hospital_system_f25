import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

enum UserType { Doctor, Nurse, Manager, HR, Analysis, Receptionist }

class UserCubit extends Cubit<UserState> {

  UserType? userType;


  UserCubit() : super(UserInitial());

  void chooseUserType(UserType type) {
    userType = type;
    // Save to SharedPrefs
    // UserType.Doctor
    // Prefs.set('USERTYPE', type.name);
  }

  bool getUserType() {

    // if (prefs.get(USERTYPE) != null ) {
    //  userType = prefs.get(USERTYPE)
    //  return false;
    // }
    return true;

  }


}
