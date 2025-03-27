// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasource_contract/forget_password_datasource/forget_password_datasource.dart'
    as _i206;
import '../../data/datasource_contract/forget_password_datasource/reset_password_datasource.dart'
    as _i99;
import '../../data/datasource_contract/forget_password_datasource/verify_reset_code_datasource.dart'
    as _i574;
import '../../data/datasource_contract/guest_datasource.dart' as _i623;
import '../../data/datasource_impl/forget_password_datasource_impl/forget_password_datasource_impl.dart'
    as _i319;
import '../../data/datasource_impl/forget_password_datasource_impl/reset_password_datasource_impl.dart'
    as _i486;
import '../../data/datasource_impl/forget_password_datasource_impl/verify_reset_code_datasource_impl.dart'
    as _i353;
import '../../data/datasource_impl/guest_datasource_impl.dart' as _i48;
import '../../data/repo_impl/forget_password_repo_impl/forget_password_repo_impl.dart'
    as _i210;
import '../../data/repo_impl/forget_password_repo_impl/reset_password_repo_impl.dart'
    as _i289;
import '../../data/repo_impl/forget_password_repo_impl/verify_reset_code_repo_impl.dart'
    as _i721;
import '../../data/repo_impl/guest_repo_impl.dart' as _i905;
import '../../domain/repo_contract/forget_password_repo_contract/forget_password_repo.dart'
    as _i976;
import '../../domain/repo_contract/forget_password_repo_contract/reset_password_repo.dart'
    as _i161;
import '../../domain/repo_contract/forget_password_repo_contract/verify_reset_code_repo.dart'
    as _i544;
import '../../domain/repo_contract/guest_repo.dart' as _i234;
import '../../domain/usecase/changeGuest_usecase.dart' as _i285;
import '../../domain/usecase/check_guest_usecase.dart' as _i304;
import '../../domain/usecase/forget_password_usecases/forget_password_usecase.dart'
    as _i418;
import '../../domain/usecase/forget_password_usecases/reset_password_usecase.dart'
    as _i383;
import '../../domain/usecase/forget_password_usecases/verify_reset_code_usecase.dart'
    as _i323;
import '../../presentation/auth/view_model/cubit/auth_cubit.dart' as _i351;
import '../api/api_manager.dart' as _i1047;
import '../cache/shared_pref.dart' as _i299;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i1047.ApiManager>(() => _i1047.ApiManager());
    gh.singleton<_i299.CacheHelper>(() => _i299.CacheHelper());
    gh.factory<_i99.ResetpasswordDataSourceRepo>(() =>
        _i486.Resetpassworddatasourcerepoimpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i574.VerifyresetcodeRepoDataSource>(() =>
        _i353.Verifyresetcoderepodatasourceimpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i623.GuestDatasource>(
        () => _i48.GuestDatasourceImpl(gh<_i299.CacheHelper>()));
    gh.factory<_i206.ForgetpasswordDataSourseRepo>(() =>
        _i319.ForgetpasswordDataSourceRepoImpl(
            apiManager: gh<_i1047.ApiManager>()));
    gh.factory<_i234.GuestRepo>(
        () => _i905.GuestRepoImpl(gh<_i623.GuestDatasource>()));
    gh.factory<_i544.VerifyresetcodeRepo>(() => _i721.Verifyresetcoderepoimpl(
        gh<_i574.VerifyresetcodeRepoDataSource>()));
    gh.factory<_i161.ResetpasswordRepo>(() =>
        _i289.Resetpasswordrepoimpl(gh<_i99.ResetpasswordDataSourceRepo>()));
    gh.factory<_i976.ForgetpasswordRepo>(() => _i210.Forgetpasswordrepoimpl(
        forgetpassword_data_sourse_repo:
            gh<_i206.ForgetpasswordDataSourseRepo>()));
    gh.factory<_i285.ChangeguestUsecase>(
        () => _i285.ChangeguestUsecase(gh<_i234.GuestRepo>()));
    gh.factory<_i304.CheckGuestUseCase>(
        () => _i304.CheckGuestUseCase(gh<_i234.GuestRepo>()));
    gh.factory<_i323.VerifyresetcodeUseCase>(() =>
        _i323.VerifyresetcodeUseCase(repo: gh<_i544.VerifyresetcodeRepo>()));
    gh.factory<_i418.ForgetPasswordUseCase>(() => _i418.ForgetPasswordUseCase(
        forgetPassword: gh<_i976.ForgetpasswordRepo>()));
    gh.factory<_i383.ResetpasswordUsecase>(
        () => _i383.ResetpasswordUsecase(repo: gh<_i161.ResetpasswordRepo>()));
    gh.factory<_i351.AuthCubit>(() => _i351.AuthCubit(
          gh<_i323.VerifyresetcodeUseCase>(),
          gh<_i383.ResetpasswordUsecase>(),
          gh<_i418.ForgetPasswordUseCase>(),
          gh<_i304.CheckGuestUseCase>(),
          gh<_i285.ChangeguestUsecase>(),
        ));
    return this;
  }
}
