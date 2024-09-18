import 'package:get/get.dart';
import 'package:travel_diary/models/countri_model.dart';
import '../services/api_service.dart';

class CountriController extends GetxController {
  var countries = <Countri>[].obs;
  var isLoading = true.obs;
  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    try {
      isLoading(true);
      var countriList = await apiService.fetchCountries();
      countries.value = countriList;
    } finally {
      isLoading(false);
    }
  }
}
