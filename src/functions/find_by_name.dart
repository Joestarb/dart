import '../models/Atracctions.dart';

Attraction? findByName(List<Attraction> list, String name, {bool caseInsensitive = true}) {
	return list.firstWhere(
		(a) => caseInsensitive
				? a.name.toLowerCase() == name.toLowerCase()
				: a.name == name,
		orElse: () => null,
	);
}
