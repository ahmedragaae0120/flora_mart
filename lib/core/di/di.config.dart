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

import '../../data/datasource_contract/auth_datasource.dart' as _i214;
import '../../data/datasource_impl/auth_datasource_impl.dart' as _i422;
import '../../data/repo_impl/auth_repo_impl.dart' as _i540;
import '../../domain/repo_contract/auth_repo.dart' as _i233;
import '../api/api_manager.dart' as _i1047;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i1047.ApiManager>(() => _i1047.ApiManager());
    gh.factory<_i214.AuthDatasource>(
      () => _i422.AuthDatasourceImpl(gh<_i1047.ApiManager>()),
    );
    gh.factory<_i233.AuthRepo>(
      () => _i540.AuthRepoImpl(gh<_i214.AuthDatasource>()),
    );
    return this;
  }
}
