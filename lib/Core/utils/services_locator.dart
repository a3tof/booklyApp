import 'package:booklyapp/Core/utils/api_services.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
      HomeRepoImplementation(getIt.get<ApiServices>()));
}
