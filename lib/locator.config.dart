// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'register_module.dart' as _i6;
import 'service/post/post_service.dart' as _i3;
import 'service/post/post_service_2.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.PostService>(() => _i3.PostService(name: get<String>()));
  gh.lazySingleton<_i4.PostService2>(() => _i4.PostService2(get<String>()));
  gh.singleton<_i5.Client>(registerModule.client);
  gh.singleton<String>(registerModule.name);
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}