import '../domain/affirmation.dart';
import 'app_constants.dart';

List<Affirmation> loaddata() {
  return List<Affirmation>.generate(10, (index) {
    return Affirmation(
      AppConstants.photo[index % AppConstants.photo.length],
      AppConstants.desc[index % AppConstants.desc.length],
    );
  });
}
