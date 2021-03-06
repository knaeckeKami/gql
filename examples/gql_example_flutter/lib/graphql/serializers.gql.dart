import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:gql_example_flutter/src/all_pokemon/graphql/all_pokemon.data.gql.dart'
    show GAllPokemonData, GAllPokemonData_pokemons;
import 'package:gql_example_flutter/src/all_pokemon/graphql/all_pokemon.req.gql.dart'
    show GAllPokemon;
import 'package:gql_example_flutter/src/all_pokemon/graphql/all_pokemon.var.gql.dart'
    show GAllPokemonVars;
import 'package:gql_example_flutter/src/pokemon_card/graphql/nested_fragment.data.gql.dart'
    show GNestedFragmentData;
import 'package:gql_example_flutter/src/pokemon_card/graphql/nested_fragment.var.gql.dart'
    show GNestedFragmentVars;
import 'package:gql_example_flutter/src/pokemon_card/graphql/pokemon_card_fragment.data.gql.dart'
    show GPokemonCardData;
import 'package:gql_example_flutter/src/pokemon_card/graphql/pokemon_card_fragment.var.gql.dart'
    show GPokemonCardVars;
import 'package:gql_example_flutter/src/pokemon_detail/graphql/pokemon_detail.data.gql.dart'
    show
        GPokemonDetailData,
        GPokemonDetailData_pokemon,
        GPokemonDetailData_pokemon_weight,
        GPokemonDetailData_pokemon_height;
import 'package:gql_example_flutter/src/pokemon_detail/graphql/pokemon_detail.req.gql.dart'
    show GPokemonDetail;
import 'package:gql_example_flutter/src/pokemon_detail/graphql/pokemon_detail.var.gql.dart'
    show GPokemonDetailVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GPokemonDetailData,
  GPokemonDetailData_pokemon,
  GPokemonDetailData_pokemon_weight,
  GPokemonDetailData_pokemon_height,
  GNestedFragmentData,
  GPokemonCardData,
  GAllPokemonData,
  GAllPokemonData_pokemons,
  GPokemonDetail,
  GAllPokemon,
  GPokemonDetailVars,
  GNestedFragmentVars,
  GPokemonCardVars,
  GAllPokemonVars
])
final Serializers serializers = _serializersBuilder.build();
