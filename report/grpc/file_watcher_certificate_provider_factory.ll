Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/file_watcher_certificate_provider_factory?download=true
inline.NumInlined: 509
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0

$_ZNK9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvE8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE = comdat any

$_ZNK9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEE8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE = comdat any

$_ZNK9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEE7EmplaceEPv = comdat any

$_ZNK9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEE5ResetEPv = comdat any

$_ZNK9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEE13ElementLoaderEv = comdat any

$_ZN9grpc_core26CertificateProviderFactoryD2Ev = comdat any

$_ZTIN9grpc_core26CertificateProviderFactory6ConfigE = comdat any

$_ZTSN9grpc_core26CertificateProviderFactory6ConfigE = comdat any

$_ZTIN9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE = comdat any

$_ZTSN9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE = comdat any

$_ZTIN9grpc_core19PolymorphicRefCountE = comdat any

$_ZTSN9grpc_core19PolymorphicRefCountE = comdat any

$_ZTIN9grpc_core26CertificateProviderFactoryE = comdat any

$_ZTSN9grpc_core26CertificateProviderFactoryE = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

$_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = comdat any

$_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = comdat any

$_ZTVN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTIN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTSN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTIN9grpc_core11json_detail15LoaderInterfaceE = comdat any

$_ZTSN9grpc_core11json_detail15LoaderInterfaceE = comdat any

$_ZTVN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE = comdat any

$_ZTIN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE = comdat any

$_ZTSN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE = comdat any

$_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE = comdat any

$_ZTIN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE = comdat any

$_ZTSN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE = comdat any

$_ZTVN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE = comdat any

$_ZTIN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE = comdat any

$_ZTSN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE = comdat any

$_ZTVN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE = comdat any

$_ZTIN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE = comdat any

$_ZTSN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE = comdat any

@.str.1 = private unnamed_addr constant [19 x i8] c"certificate_file=\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"private_key_file=\22\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ca_certificate_file=\22\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"spiffe_bundle_map_file=\22\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"refresh_interval=\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ms}\00", align 1
@_ZZN9grpc_core37FileWatcherCertificateProviderFactory6Config10JsonLoaderERKNS_8JsonArgsEE6loader = internal unnamed_addr global ptr null, align 8
@_ZGVZN9grpc_core37FileWatcherCertificateProviderFactory6Config10JsonLoaderERKNS_8JsonArgsEE6loader = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"certificate_file\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"private_key_file\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ca_certificate_file\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"spiffe_bundle_map_file\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"refresh_interval\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"fields \22certificate_file\22 and \22private_key_file\22 must be both set or both unset\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"GRPC_EXPERIMENTAL_XDS_MTLS_SPIFFE\00", align 1
@.str.16 = private unnamed_addr constant [106 x i8] c"at least one of \22certificate_file\22, \22ca_certificate_file\22, and \22spiffe_bundle_map_file\22 must be specified\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [79 x i8] c"at least one of \22certificate_file\22 and \22ca_certificate_file\22 must be specified\00", align 1
@.str.19 = private unnamed_addr constant [89 x i8] c"/opt-bench/work/grpc/grpc/src/core/xds/grpc/file_watcher_certificate_provider_factory.cc\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Wrong config type Actual:\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c" vs Expected:\00", align 1
@_ZTVN9grpc_core37FileWatcherCertificateProviderFactory6ConfigE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN9grpc_core37FileWatcherCertificateProviderFactory6ConfigE, ptr @_ZN9grpc_core37FileWatcherCertificateProviderFactory6ConfigD2Ev, ptr @_ZN9grpc_core37FileWatcherCertificateProviderFactory6ConfigD0Ev, ptr @_ZNK9grpc_core37FileWatcherCertificateProviderFactory6Config4nameEv, ptr @_ZNK9grpc_core37FileWatcherCertificateProviderFactory6Config8ToStringB5cxx11Ev] }, align 8
@_ZTIN9grpc_core37FileWatcherCertificateProviderFactory6ConfigE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core37FileWatcherCertificateProviderFactory6ConfigE, ptr @_ZTIN9grpc_core26CertificateProviderFactory6ConfigE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core37FileWatcherCertificateProviderFactory6ConfigE = constant [59 x i8] c"N9grpc_core37FileWatcherCertificateProviderFactory6ConfigE\00", align 1
@_ZTIN9grpc_core26CertificateProviderFactory6ConfigE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core26CertificateProviderFactory6ConfigE, ptr @_ZTIN9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE }, comdat, align 8
@_ZTSN9grpc_core26CertificateProviderFactory6ConfigE = linkonce_odr constant [48 x i8] c"N9grpc_core26CertificateProviderFactory6ConfigE\00", comdat, align 1
@_ZTIN9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE, ptr @_ZTIN9grpc_core19PolymorphicRefCountE }, comdat, align 8
@_ZTSN9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE = linkonce_odr constant [108 x i8] c"N9grpc_core10RefCountedINS_26CertificateProviderFactory6ConfigENS_19PolymorphicRefCountENS_11UnrefDeleteEEE\00", comdat, align 1
@_ZTIN9grpc_core19PolymorphicRefCountE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core19PolymorphicRefCountE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core19PolymorphicRefCountE = linkonce_odr constant [34 x i8] c"N9grpc_core19PolymorphicRefCountE\00", comdat, align 1
@_ZTVN9grpc_core37FileWatcherCertificateProviderFactoryE = constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN9grpc_core37FileWatcherCertificateProviderFactoryE, ptr @_ZN9grpc_core26CertificateProviderFactoryD2Ev, ptr @_ZN9grpc_core37FileWatcherCertificateProviderFactoryD0Ev, ptr @_ZNK9grpc_core37FileWatcherCertificateProviderFactory4nameEv, ptr @_ZN9grpc_core37FileWatcherCertificateProviderFactory31CreateCertificateProviderConfigERKNS_12experimental4JsonERKNS_8JsonArgsEPNS_16ValidationErrorsE, ptr @_ZN9grpc_core37FileWatcherCertificateProviderFactory25CreateCertificateProviderENS_13RefCountedPtrINS_26CertificateProviderFactory6ConfigEEE] }, align 8
@_ZTIN9grpc_core37FileWatcherCertificateProviderFactoryE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core37FileWatcherCertificateProviderFactoryE, ptr @_ZTIN9grpc_core26CertificateProviderFactoryE }, align 8
@_ZTSN9grpc_core37FileWatcherCertificateProviderFactoryE = constant [52 x i8] c"N9grpc_core37FileWatcherCertificateProviderFactoryE\00", align 1
@_ZTIN9grpc_core26CertificateProviderFactoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core26CertificateProviderFactoryE }, comdat, align 8
@_ZTSN9grpc_core26CertificateProviderFactoryE = linkonce_odr constant [41 x i8] c"N9grpc_core26CertificateProviderFactoryE\00", comdat, align 1
@_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E), align 8
@_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr global i16 0, comdat, align 2
@_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.116" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.117" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.118" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEEE6value_E), align 8
@_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEEE6value_E = linkonce_odr global %"class.grpc_core::NoDestruct.119" zeroinitializer, comdat, align 8
@_ZGVN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEEE6value_E = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEEE6value_E), align 8
@.str.28 = private unnamed_addr constant [13 x i8] c"file_watcher\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr local_unnamed_addr global %"class.grpc_core::NoDestruct.125" zeroinitializer, comdat, align 8
@_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr global i64 0, comdat, align 8
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZNK9grpc_core11json_detail10LoadScalar8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE, ptr @_ZNK9grpc_core11json_detail10LoadString8IsNumberEv, ptr @_ZNK9grpc_core11json_detail10LoadString8LoadIntoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvPNS_16ValidationErrorsE] }, comdat, align 8
@_ZTIN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN9grpc_core11json_detail10LoadStringE }, comdat, align 8
@_ZTSN9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant [92 x i8] c"N9grpc_core11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTIN9grpc_core11json_detail10LoadStringE = external constant ptr
@_ZTIN9grpc_core11json_detail15LoaderInterfaceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core11json_detail15LoaderInterfaceE }, comdat, align 8
@_ZTSN9grpc_core11json_detail15LoaderInterfaceE = linkonce_odr constant [43 x i8] c"N9grpc_core11json_detail15LoaderInterfaceE\00", comdat, align 1
@_ZTVN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE, ptr @_ZNK9grpc_core11json_detail10LoadScalar8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE, ptr @_ZNK9grpc_core11json_detail12LoadDuration8IsNumberEv, ptr @_ZNK9grpc_core11json_detail12LoadDuration8LoadIntoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvPNS_16ValidationErrorsE] }, comdat, align 8
@_ZTIN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE, ptr @_ZTIN9grpc_core11json_detail12LoadDurationE }, comdat, align 8
@_ZTSN9grpc_core11json_detail10AutoLoaderINS_8DurationEEE = linkonce_odr constant [53 x i8] c"N9grpc_core11json_detail10AutoLoaderINS_8DurationEEE\00", comdat, align 1
@_ZTIN9grpc_core11json_detail12LoadDurationE = external constant ptr
@_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE, ptr @_ZNK9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvE8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE] }, comdat, align 8
@_ZTIN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE, ptr @_ZTIN9grpc_core11json_detail15LoaderInterfaceE }, comdat, align 8
@_ZTSN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE = linkonce_odr constant [109 x i8] c"N9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE\00", comdat, align 1
@_ZTVN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE, ptr @_ZNK9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEE8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE] }, comdat, align 8
@_ZTIN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE, ptr @_ZTIN9grpc_core11json_detail15LoaderInterfaceE }, comdat, align 8
@_ZTSN9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE = linkonce_odr constant [90 x i8] c"N9grpc_core11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEE\00", comdat, align 1
@_ZTVN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE, ptr @_ZNK9grpc_core11json_detail11LoadWrapped8LoadIntoERKNS_12experimental4JsonERKNS_8JsonArgsEPvPNS_16ValidationErrorsE, ptr @_ZNK9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEE7EmplaceEPv, ptr @_ZNK9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEE5ResetEPv, ptr @_ZNK9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEE13ElementLoaderEv] }, comdat, align 8
@_ZTIN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE, ptr @_ZTIN9grpc_core11json_detail11LoadWrappedE }, comdat, align 8
@_ZTSN9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE = linkonce_odr constant [111 x i8] c"N9grpc_core11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEE\00", comdat, align 1
@_ZTIN9grpc_core11json_detail11LoadWrappedE = external constant ptr
@llvm.global_ctors = appending global [7 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.22, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.23, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.24, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.25, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.26, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.27, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEEE6value_E }]
@llvm.used = appending global [7 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_13RefCountedPtrINS_37FileWatcherCertificateProviderFactory6ConfigEEEEEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_37FileWatcherCertificateProviderFactory6ConfigEEEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINS_8DurationEEEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { i64, ptr } @_ZNK9grpc_core37FileWatcherCertificateProviderFactory6Config4nameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret { i64, ptr } { i64 12, ptr @.str.28 }
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core37FileWatcherCertificateProviderFactory6Config8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !11
  store i8 123, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 18, ptr nonnull @.str.1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.j = load i64, ptr %i.f, align 8, !tbaa !15
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.j, ptr %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x, %.thread, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.e:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.018 = phi i8 [ 1, %._crit_edge.i.i ], [ 0, %bb.c ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %5 = trunc nuw i8 %.018 to i1
  br i1 %5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.3)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 18, ptr nonnull @.str.4)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %4, align 8, !tbaa !16
  %i.p = load i64, ptr %i.l, align 8, !tbaa !15
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.p, ptr %i.o)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.2)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.j, %bb.e
  %.119 = phi i8 [ %.018, %bb.e ], [ 0, %bb.j ]   ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %7 = trunc nuw i8 %.119 to i1
  br i1 %7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.3)
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 21, ptr nonnull @.str.5)
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %6, align 8, !tbaa !16
  %i.u = load i64, ptr %i.q, align 8, !tbaa !15
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.u, ptr %i.t)
          to label %bb.p unwind label %bb.d

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.2)
          to label %bb.q unwind label %bb.d

bb.q:                                             ; preds = %bb.p, %bb.k
  %.220 = phi i8 [ %.119, %bb.k ], [ 0, %bb.p ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15
  %i.y = icmp eq i64 %i.x, 0
  %8 = trunc nuw i8 %.220 to i1                   ; 2 uses
  br i1 %i.y, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.3)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %bb.s, %bb.r
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 24, ptr nonnull @.str.6)
          to label %bb.u unwind label %bb.d

bb.u:                                             ; preds = %bb.t
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !15
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.aa, ptr %i.z)
          to label %bb.v unwind label %bb.d

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.2)
          to label %.thread unwind label %bb.d

bb.w:                                             ; preds = %bb.q
  br i1 %8, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.v, %bb.w
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.3)
          to label %bb.x unwind label %bb.d

bb.x:                                             ; preds = %.thread, %bb.w
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 17, ptr nonnull @.str.7)
          to label %bb.y unwind label %bb.d

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ae = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %i.ac, ptr noundef nonnull %i.ad)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  store i64 %i.ah, ptr %3, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !11, !alias.scope !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !44
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !17, !noalias !44
  %i.ak = icmp ugt i64 %i.ah, 15
  br i1 %i.ak, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.ae  ; 2 uses

.noexc34:                                         ; preds = %.noexc.i.i
  store ptr %i.al, ptr %2, align 8, !tbaa !16, !alias.scope !44
  %i.am = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !44
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !12, !alias.scope !44
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc34, %bb.z
  %i.an = phi ptr [ %i.al, %.noexc34 ], [ %i.aj, %bb.z ] ; 2 uses
  switch i64 %i.ah, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.ao = load i8, ptr %i.ad, align 8, !tbaa !12
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !12
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 8 %i.ad, i64 %i.ah, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !44 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !15, !alias.scope !44
  %i.ar = load ptr, ptr %2, align 8, !tbaa !16, !alias.scope !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !44
  %i.at = load ptr, ptr %2, align 8, !tbaa !16
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !15
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.au, ptr %i.at)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.av = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.ax = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 3, ptr nonnull @.str.8)
          to label %bb.ah unwind label %bb.d

bb.ae:                                            ; preds = %.noexc.i.i, %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.af:                                            ; preds = %bb.ac
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aj
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.af
  %i.bd = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.az, %bb.ae ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ba, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.b
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ag
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !12
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  resume { ptr, i32 } %.pn22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9grpc_core37FileWatcherCertificateProviderFactory6Config10JsonLoaderERKNS_8JsonArgsE(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core37FileWatcherCertificateProviderFactory6Config10JsonLoaderERKNS_8JsonArgsEE6loader acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core37FileWatcherCertificateProviderFactory6Config10JsonLoaderERKNS_8JsonArgsEE6loader) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #25
          to label %bb.d unwind label %bb.f       ; 27 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN9grpc_core11json_detail24FinishedJsonObjectLoaderINS_37FileWatcherCertificateProviderFactory6ConfigELm5EvEE, i64 16), ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %i.e, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 16, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 1, ptr %.sroa.657.0..sroa_idx, align 2
  %.sroa.859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @.str.9, ptr %.sroa.859.0..sroa_idx, align 8
  %.sroa.960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.960.0..sroa_idx, align 8
  %.sroa.1061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %.sroa.1061.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i16 48, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  store i8 1, ptr %.sroa.1262.0..sroa_idx, align 2
  %.sroa.1464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @.str.10, ptr %.sroa.1464.0..sroa_idx, align 8
  %.sroa.1565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr null, ptr %.sroa.1565.0..sroa_idx, align 8
  %.sroa.1666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %.sroa.1666.0..sroa_idx, align 8
  %.sroa.1767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i16 80, ptr %.sroa.1767.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 1, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.2069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @.str.11, ptr %.sroa.2069.0..sroa_idx, align 8
  %.sroa.2170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr null, ptr %.sroa.2170.0..sroa_idx, align 8
  %.sroa.2271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @_ZN9grpc_core19NoDestructSingletonINS_11json_detail10AutoLoaderINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE6value_E, ptr %.sroa.2271.0..sroa_idx, align 8
  %.sroa.2372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i16 112, ptr %.sroa.2372.0..sroa_idx, align 8
  %.sroa.2473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 114
  store i8 1, ptr %.sroa.2473.0..sroa_idx, align 2
  %.sroa.2674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr @.str.12, ptr %.sroa.2674.0..sroa_idx, align 8
  %.sroa.2775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr null, ptr %.sroa.2775.0..sroa_idx, align 8
end_hunk_0
