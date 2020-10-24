import "package:code_builder/code_builder.dart";
import "package:yaml/yaml.dart";

Map<String, Reference> typeOverrideMap(dynamic typeOverrideConfig) {
  if (typeOverrideConfig is YamlMap) {
    return Map.fromEntries(
      typeOverrideConfig.entries.map(
        (entry) => MapEntry(
          entry.key as String,
          Reference(
            entry.value["name"] as String,
            entry.value["import"] as String,
          ),
        ),
      ),
    );
  }
  return {};
}


Map<String, String> enumFallbackMap(final dynamic enumFallbacks) {
  print("hello");
  if (enumFallbacks is YamlMap) {
    return Map.fromEntries(
      enumFallbacks.entries.map(
            (entry) => MapEntry(
          entry.key as String,
          entry.value as String,
        ),
      ),
    );
  }
  return {};
}

Set<Reference> customSerializers(dynamic customSerializersConfig) {
  if (customSerializersConfig is YamlList) {
    return customSerializersConfig
        .map(
          (dynamic configMap) => Reference(
            configMap["name"] as String,
            configMap["import"] as String,
          ),
        )
        .toSet();
  }
  return {};
}
