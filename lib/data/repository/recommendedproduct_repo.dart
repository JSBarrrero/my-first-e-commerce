import 'package:e_commerce_food/data/API/apiclient.dart';
import 'package:e_commerce_food/utils/appconstants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMEND_PRODUCT_URI);
  }
}
