import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_recipe/ui/introduction/cubit/introduction_state.dart';

class IntroductionCubit extends Cubit<IntroductionState> {
  IntroductionCubit() : super(IntroductionInitial());
}
