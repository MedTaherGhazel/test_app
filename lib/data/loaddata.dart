import '../domain/affirmation.dart';
import 'app_constants.dart';

List<Affirmation> loaddata() {
  return List<Affirmation>.generate(10, (index) {
    return Affirmation(
      AppConstants.list1[index % AppConstants.list1.length],
      AppConstants.list2[index % AppConstants.list2.length],
    );
  });
}
