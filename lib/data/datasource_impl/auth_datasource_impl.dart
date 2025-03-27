import 'package:dartz/dartz.dart';
import 'package:flora_mart/core/api/api_manager.dart';
import 'package:flora_mart/core/api/endpoints.dart';
import 'package:flora_mart/data/datasource_contract/auth_datasource.dart';
import 'package:flora_mart/data/model/auth/auth_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDatasource)
class AuthDatasourceImpl extends AuthDatasource {
  final ApiManager apiManager;

  @factoryMethod
  AuthDatasourceImpl(this.apiManager);

  @override
  Future<Either<String, AuthResponse>> postRegister({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
    required String gender,
  }) async {
    try {
      var response = await apiManager.postRequest(
        endpoint: EndPoint.signUpEndpoint,
        body: {
          "firstName": firstName,
          "lastName": lastName,
          "email": email,
          "password": password,
          "rePassword": rePassword,
          "phone": phone,
          "gender": gender,
        },
      );

      AuthResponse registerResponse = AuthResponse.fromJson(response.data);

      if (registerResponse.token != null) {
        return right(registerResponse);
      }

      return left(registerResponse.message ?? "An unknown error occurred");
    } catch (err) {
      return left("Server connection error: ${err.toString()}");
    }
  }
}

