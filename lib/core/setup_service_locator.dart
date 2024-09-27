
import 'package:booksapp/core/api_service/api_services.dart';
import 'package:booksapp/features/home/data/data_sources/home_local_data_source.dart';
import 'package:booksapp/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:booksapp/features/home/data/repos/home_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;
void setUpSreviceLocator() {
   getIt.registerSingleton<HomeRepoImplementaion>(
    HomeRepoImplementaion(
      HomeRemoteDataSourceImplementation(ApiServices(Dio())),
      HomeLocalDataSourceImplementaion(),
    ),
  );
}