// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tren_boong_app/domain/bloc/authentication/login/login_event.dart';
// import 'package:tren_boong_app/domain/bloc/authentication/login/login_state.dart';

// import '../../../../infrastucture/repository/user_repository.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   //pass value to state to reponse to UI

//   LoginBloc({required UserRepository userRepository})
//       : _userRepository = userRepository,
//         super(LoginInitialState()) {
//     on<LoginByGoogleEvent>(fetchUserEvent);
//   }

//   final UserRepository _userRepository;

//   Future<void> fetchUserEvent(
//       LoginByGoogleEvent event, Emitter<LoginState> state) async {
//     await Future.delayed(const Duration(seconds: 1));
//     var user = _userRepository.fetchUserById('id');
//     emit(LoginSuccessState(user));
//     try {
//       emit(LoginSuccessState(user));
//     } catch (e) {
//       emit(LoginFailedState());
//     }
//   }
// }
