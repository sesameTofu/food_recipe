import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/ui/sign_in/cubit/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());
}
