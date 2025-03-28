import 'package:flora_mart/core/api/api_result.dart';
import 'package:flora_mart/data/datasource_contract/auth_datasource.dart';
import 'package:flora_mart/data/model/auth/auth_response.dart';
import 'package:flora_mart/domain/entity/auth/auth_response_entity.dart';
import 'package:flora_mart/domain/repo_contract/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl extends AuthRepo {
  final AuthDatasource authDatasource;

  @factoryMethod
  AuthRepoImpl(this.authDatasource);

  @override
  Future<ApiResult<AuthResponseEntity>> postRegister({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
    required String gender,
  }) async {
    var response = await authDatasource.postRegister(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone,
      gender: gender,
    );

    if (response is SuccessApiResult<AuthResponse>) {
      var successResponse = response;
      return SuccessApiResult(successResponse.data!.toLoginResponseEntity());
    } else {
      return ErrorApiResult((response as ErrorApiResult).exception);
    }
  }
}
