import 'dart:io';

import 'package:amanmemilih_mobile_app/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:amanmemilih_mobile_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:amanmemilih_mobile_app/features/auth/data/repositories/auth_repository_v1.dart';
import 'package:amanmemilih_mobile_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:amanmemilih_mobile_app/features/auth/domain/usecases/check_credentials_usecase.dart';
import 'package:amanmemilih_mobile_app/features/auth/domain/usecases/generate_recovery_key_usecase.dart';
import 'package:amanmemilih_mobile_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:amanmemilih_mobile_app/features/auth/domain/usecases/logout_usecase.dart';
import 'package:amanmemilih_mobile_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:amanmemilih_mobile_app/features/auth/presentation/cubits/auth/auth_cubit.dart';
import 'package:amanmemilih_mobile_app/features/auth/presentation/cubits/generaterecoverykey/generate_recovery_key_cubit.dart';
import 'package:amanmemilih_mobile_app/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:amanmemilih_mobile_app/features/auth/presentation/cubits/registerpassword/register_password_cubit.dart';
import 'package:amanmemilih_mobile_app/features/auth/presentation/cubits/registerrecoverykey/register_recovery_key_cubit.dart';
import 'package:amanmemilih_mobile_app/features/main/data/datasources/dashboard_remote_data_source.dart';
import 'package:amanmemilih_mobile_app/features/main/data/repositories/dashboard_repository_v1.dart';
import 'package:amanmemilih_mobile_app/features/main/domain/repositories/dashboard_repository.dart';
import 'package:amanmemilih_mobile_app/features/main/domain/usecases/dashboard_usecase.dart';
import 'package:amanmemilih_mobile_app/features/main/presentation/cubits/dashboard/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'core/api/api.dart';
import 'core/api/dio_api.dart';

final getIt = GetIt.instance;

void initialize() {
  // Api
  getIt.registerLazySingleton<Api>(() => DioApi());
  getIt.registerFactory<ApiFormData>(() => DioApiFormData());

  // Data sources
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => ApiAuthRemoteDataSource(getIt()));
  getIt.registerLazySingleton<DashboardRemoteDataSource>(
      () => ApiDashboardRemoteDataSource(getIt()));
  getIt.registerLazySingleton<AuthLocalDataSource>(
      () => HiveAuthLocalDataSource());

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryV1(getIt(), getIt()));
  getIt.registerLazySingleton<DashboardRepository>(
      () => DashboardRepositoryV1(getIt()));

  // Usecases
  getIt.registerLazySingleton(() => CheckCredentialsUseCase(getIt()));
  getIt.registerLazySingleton(() => LoginUseCase(getIt()));
  getIt.registerLazySingleton(() => GenerateRecoveryKeyUseCase(getIt()));
  getIt.registerLazySingleton(() => RegisterUseCase(getIt()));
  getIt.registerLazySingleton(
      () => RegisterPasswordCubit(getIt(), getIt(), getIt()));
  getIt.registerLazySingleton(() => LogoutUseCase(getIt()));
  getIt.registerLazySingleton(() => DashboardUseCase(getIt()));

  // Cubit
  getIt.registerFactory(() => AuthCubit(getIt(), getIt(), getIt()));
  getIt.registerFactory(() => LoginCubit(getIt(), getIt(), getIt()));
  getIt.registerFactory(() => DashboardCubit(getIt()));
  getIt.registerFactory(() => GenerateRecoveryKeyCubit(getIt()));
  getIt.registerFactory(() => RegisterRecoveryKeyCubit(
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
        getIt(),
      ));

  // Others
  getIt.registerFactory(() => TextEditingController());
  getIt.registerFactory(() => ScrollController());
  getIt.registerFactory(() => GlobalKey<FormState>());
  getIt.registerFactory(() => PageController());
  getIt.registerFactory(() => File(''));

  // External
}
