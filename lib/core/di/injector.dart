
import 'package:get_it/get_it.dart';

import '../service/api_service.dart';

final GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {


  // ---------------- Api Service ---------------- //
  // injector.registerSingleton<ApiService>(ApiService());



  // ---------------- UseCases ---------------- //

  // 1. Auth
  // injector.registerSingleton<OTPRequestUseCase>(OTPRequestUseCase(injector()));
  // injector.registerSingleton<VerifyOTPUseCase>(VerifyOTPUseCase(injector()));

  // 2. Profile



  // ---------------- Bloc injectors ---------------- //
  // injector.registerFactory<AuthCubit>(() => AuthCubit(injector(), injector()),);
  // injector.registerFactory<DiagnosisCubit>(() => DiagnosisCubit(injector(), injector(), injector()));
  // injector.registerFactory<SymptomCubit>(() => SymptomCubit(injector(), injector(), injector()));

}
