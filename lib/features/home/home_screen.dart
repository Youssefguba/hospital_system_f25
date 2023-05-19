import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system_f25/core/utils/user_cubit/user_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bodyWidget(context);
  }

  Widget _bodyWidget(BuildContext context) {
    final type = context.read<UserCubit>().userType;

    switch (type) {
      case UserType.Doctor:
        return const SizedBox();

      case UserType.Nurse:
        return const SizedBox();

      case UserType.Manager:
        return const SizedBox();

      case UserType.HR:
        return const SizedBox();

      case UserType.Analysis:
        return const SizedBox();

      case UserType.Receptionist:
        return const SizedBox();

      default:
        return const SizedBox();
    }
  }
}
