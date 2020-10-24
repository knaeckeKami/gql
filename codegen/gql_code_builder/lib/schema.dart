import "package:code_builder/code_builder.dart";
import "package:gql_code_builder/src/schema.dart";
import "package:gql_code_builder/source.dart";

Library buildSchemaLibrary(
  SourceNode schemaSource,
  String partUrl,
  Map<String, Reference> typeOverrides,
  bool globalEnumFallbacks,
) {
  final lib = buildSchema(
    schemaSource,
    typeOverrides,
      globalEnumFallbacks
  ) as Library;

  return lib.rebuild(
    (b) => b
      ..directives.add(
        Directive.part(partUrl),
      ),
  );
}
