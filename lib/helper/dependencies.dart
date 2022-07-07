import 'package:e_commerce_food/controllers/popularproduct_controller.dart';
import 'package:e_commerce_food/controllers/recommendedproducts_controller.dart';
import 'package:e_commerce_food/data/API/apiclient.dart';
import 'package:e_commerce_food/data/repository/popularproduct_repo.dart';
import 'package:e_commerce_food/data/repository/recommendedproduct_repo.dart';
import 'package:e_commerce_food/utils/appconstants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //Repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
}
