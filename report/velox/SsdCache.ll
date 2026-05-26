inline.NumInlined: 1316
inline.NumDeleted: 758
begin_hunk_0
$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZZN8facebook5velox5cache8SsdCacheC1ERKNS2_6ConfigEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.1, i64 42, ptr @.str.2, ptr @.str.3, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/velox/velox/velox/common/caching/SsdCache.cpp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SsdCache\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"filePrefix_.find('/') == 0 || filePrefix_.find(\22faulty:/\22) == 0\00", align 1
@_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = linkonce_odr constant %"class.folly::BasicFixedString" { [8 x i8] c"RUNTIME\00", i64 7 }, comdat, align 8
@_ZN8facebook5velox10error_code13kInvalidStateE = linkonce_odr constant %"class.folly::BasicFixedString.5" { [14 x i8] c"INVALID_STATE\00", i64 13 }, comdat, align 8
@.str.4 = private unnamed_addr constant [72 x i8] c"Ssd path '{}' does not start with '/' that points to local file system.\00", align 1
@_ZZN8facebook5velox5cache8SsdCacheC1ERKNS2_6ConfigEE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.1, i64 43, ptr @.str.2, ptr @.str.5, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"executor_ != nullptr\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[SSDCA] \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"SSD cache config: \00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Checksum read has been disabled as checksum is not enabled.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"{}{}\00", align 1
@_ZZN8facebook5velox5cache8SsdCache10startWriteEvE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.1, i64 93, ptr @.str.10, ptr @.str.11, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"startWrite\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"writesInProgress_ >= 0\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"({} vs. {})\00", align 1
@_ZZN8facebook5velox5cache8SsdCache5writeESt6vectorINS1_8CachePinESaIS4_EEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.1, i64 99, ptr @.str.13, ptr @.str.14, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"numShards_ == writesInProgress_\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"({} vs. {}) startWrite() have not been called\00", align 1
@_ZZN8facebook5velox5cache8SsdCache10checkpointEvE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.1, i64 155, ptr @.str.17, ptr @.str.14, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"checkpoint\00", align 1
@_ZTISt9exception = external constant ptr
@.str.18 = private unnamed_addr constant [44 x i8] c"Error removing file entries from SSD shard \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Ssd cache IO: Write \00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" read \00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" Size \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c" Occupied \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"K entries\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" (max \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"K)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"\0AGroupStats: \00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"SSD cache has already been shutdown\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"SSD cache is shutting down\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"SSD cache has been shutdown\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.34 = private unnamed_addr constant [91 x i8] c"{} shards, capacity {}, checkpoint size {}, file cow {}, checksum {}, read verification {}\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array" zeroinitializer, i8 -1 }, comdat, align 16
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN8facebook5velox5cache8SsdCache22checkNotShutdownLockedEvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.40, i64 185, ptr @.str.41, ptr @.str.42, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.40 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/velox/velox/./velox/common/caching/SsdCache.h\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"checkNotShutdownLocked\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"!shutdown_\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"Unexpected write after SSD cache has been shutdown\00", align 1
@.str.44 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZZNK8facebook5velox5cache8CachePin12addReferenceEvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.45, i64 397, ptr @.str.46, ptr @.str.47, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.45 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/velox/velox/./velox/common/caching/AsyncDataCache.h\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"addReference\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"entry_ != nullptr\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"Ignoring error in SsdFile::write: \00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Wrote {} to SSD, {} bytes/s\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"<dummy FileGroupStats>\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.52 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.61 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@_ZZN3fmt3v116detail7digits2EmE4data = linkonce_odr local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@.str.66 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@__const._ZN3fmt3v116detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.70 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [146 x i8] c"St23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN8facebook5velox5cache8SsdCacheC1ERKNS2_6ConfigE = unnamed_addr alias void (ptr, ptr), ptr @_ZN8facebook5velox5cache8SsdCacheC2ERKNS2_6ConfigE

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache8SsdCacheC2ERKNS2_6ConfigE(ptr noundef nonnull align 8 dereferenceable(133) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.161", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %9 = alloca %"class.std::shared_ptr.6", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %13 = alloca %"struct.facebook::velox::filesystems::DirectoryOptions", align 8 ; 24 uses
  %14 = alloca %"struct.facebook::velox::cache::SsdFile::Config", align 8 ; 18 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::unique_ptr.43", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !15

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #26 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.d, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17
  store i32 %i.p, ptr %i.n, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #26
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  store ptr %i.r, ptr %i.q, align 8, !tbaa !39, !alias.scope !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  store i64 %i.x, ptr %i.v, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(69) %i.y, i8 0, i64 69, i1 false)
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !14  ; 6 uses
  %.not151 = icmp eq i64 %i.aa, 0
  %.pre188 = load ptr, ptr %0, align 8, !tbaa !11, !noalias !47 ; 6 uses
  br i1 %.not151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.f
  %i.ab = tail call ptr @memchr(ptr noundef %.pre188, i32 noundef 47, i64 noundef %i.aa) #27 ; 2 uses
  %.not.i = icmp ne ptr %i.ab, null
  %i.ac = icmp eq ptr %i.ab, %.pre188
  %or.cond153 = and i1 %.not.i, %i.ac
  br i1 %or.cond153, label %.critedge, label %.thread144

.thread144:                                       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.not3339.i.i = icmp ult i64 %i.aa, 8
  br i1 %.not3339.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread144
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre188, i64 %i.aa
  %i.ae = ptrtoint ptr %i.ad to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.g
  %.041.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.am, %bb.g ]
  %.02840.i.i = phi ptr [ %.pre188, %.lr.ph.i.i ], [ %i.ak, %bb.g ]
  %.reass.reass.i.reass.reass.i = add i64 %.041.i.i, -7
  %i.af = tail call ptr @memchr(ptr noundef %.02840.i.i, i32 noundef 102, i64 noundef %.reass.reass.i.reass.reass.i) #27 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.af, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ag = load i64, ptr %i.af, align 1
  %i.ah = icmp ne i64 %i.ag, 3403166009374630246
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.ae, %i.al                    ; 2 uses
  %.not33.i.i = icmp ult i64 %i.am, 8
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.not152 = icmp eq ptr %i.af, %.pre188
  br i1 %.not152, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, !prof !52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.g, %bb.f, %.thread144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !47
  %i.an = ptrtoint ptr %.pre188 to i64
  store i64 %i.an, ptr %2, align 16, !noalias !47
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %.sroa_idx3.i, align 8, !noalias !47
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.4, i64 71, i64 13, ptr nonnull %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !47
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache8SsdCacheC1ERKNS2_6ConfigEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.4) #25
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN8facebook5velox5cache14FileGroupStatsESt14default_deleteIS3_EED2Ev.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn57 = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ch

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.m, label %bb.p, !prof !15

bb.m:                                             ; preds = %.critedge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache8SsdCacheC1ERKNS2_6ConfigEE18veloxCheckFailArgs_0) #25
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.p:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.1, i32 noundef 45)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.r unwind label %bb.x       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.6, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.7, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNK8facebook5velox5cache8SsdCache6Config8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.ba = load ptr, ptr %6, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.s
  %i.be = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !53, !range !54, !noundef !55 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  %.not61 = xor i1 %i.bl, true
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !range !54
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond = select i1 %.not61, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.af, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 1)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.v unwind label %bb.ad      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.6, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %bb.v
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.8, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.af

bb.w:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.r, %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.z:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.z
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.bv, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.bt, %bb.x ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.bs, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ch

bb.ac:                                            ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75, %bb.v, %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn44 = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cb, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ch

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.039 = phi i8 [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.cd = load ptr, ptr %0, align 8, !tbaa !11
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN8facebook5velox11filesystems13getFileSystemESt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIKNS0_6config10ConfigBaseEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, i64 %i.ce, ptr %i.cd, ptr noundef nonnull %9)
          to label %bb.ag unwind label %bb.bj

bb.ag:                                            ; preds = %bb.af
  %i.cf = load ptr, ptr %8, align 8, !tbaa !56    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox5cache8CachePinEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN8facebook5velox5cache8CachePinEEvPT_.exit.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !208 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN8facebook5velox5cache8CachePinEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox5cache19AsyncDataCacheEntry7releaseEv(ptr noundef nonnull align 8 dereferenceable(169) %i.e)
          to label %_ZSt8_DestroyIN8facebook5velox5cache8CachePinEEvPT_.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

_ZSt8_DestroyIN8facebook5velox5cache8CachePinEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !284

_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN8facebook5velox5cache8CachePinEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !283
  br label %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.a
  %i.i = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt16allocator_traitsISaIvEE7destroyIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS5_8CachePinESaIS8_EEE9PinHolderEEvRS0_PT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !282
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS5_8CachePinESaIS8_EEE9PinHolderEEvRS0_PT_.exit

_ZNSt16allocator_traitsISaIvEE7destroyIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS5_8CachePinESaIS8_EEE9PinHolderEEvRS0_PT_.exit: ; preds = %bb.d, %_ZSt8_DestroyIPN8facebook5velox5cache8CachePinES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS3_8CachePinESaIS6_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !4, i64 40}
!18 = !{!"_ZTSN8facebook5velox5cache8SsdCache6ConfigE", !12, i64 0, !13, i64 32, !4, i64 40, !13, i64 48, !19, i64 56, !19, i64 57, !19, i64 58, !20, i64 64, !13, i64 72}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"p1 _ZTSN5folly8ExecutorE", !10, i64 0}
!21 = !{!22, !4, i64 32}
!22 = !{!"_ZTSN8facebook5velox5cache8SsdCacheE", !12, i64 0, !4, i64 32, !23, i64 40, !20, i64 48, !13, i64 56, !30, i64 64, !32, i64 104, !37, i64 128, !19, i64 132}
!23 = !{!"_ZTSSt10unique_ptrIN8facebook5velox5cache14FileGroupStatsESt14default_deleteIS3_EE", !24, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox5cache14FileGroupStatsESt14default_deleteIS3_ELb1ELb1EE", !25, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox5cache14FileGroupStatsESt14default_deleteIS3_EE", !26, i64 0}
!26 = !{!"_ZTSSt5tupleIJPN8facebook5velox5cache14FileGroupStatsESt14default_deleteIS3_EEE", !27, i64 0}
!27 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox5cache14FileGroupStatsESt14default_deleteIS3_EEE", !28, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox5cache14FileGroupStatsELb0EE", !29, i64 0}
!29 = !{!"p1 _ZTSN8facebook5velox5cache14FileGroupStatsE", !10, i64 0}
!30 = !{!"_ZTSSt5mutex", !31, i64 0}
!31 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!32 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EESaIS7_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EESaIS7_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS3_EE", !10, i64 0}
!37 = !{!"_ZTSSt6atomicIiE", !38, i64 0}
!38 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!39 = !{!29, !29, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZSt11make_uniqueIN8facebook5velox5cache14FileGroupStatsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!42 = distinct !{!42, !"_ZSt11make_uniqueIN8facebook5velox5cache14FileGroupStatsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!43 = !{!18, !20, i64 64}
!44 = !{!22, !20, i64 48}
!45 = !{!18, !13, i64 72}
!46 = !{!22, !13, i64 56}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!49 = distinct !{!49, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!53 = !{!18, !19, i64 58}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox11filesystems10FileSystemELN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0, !59, i64 8}
!58 = !{!"p1 _ZTSN8facebook5velox11filesystems10FileSystemE", !10, i64 0}
!59 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0}
!60 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!63 = distinct !{!63, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!66 = distinct !{!66, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!67 = !{!65, !62}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !70, i64 0, !13, i64 8, !72, i64 16, !13, i64 24, !74, i64 32, !73, i64 48}
!70 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !71, i64 0}
!71 = !{!"any p2 pointer", !10, i64 0}
!72 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !73, i64 0}
!73 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!74 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !75, i64 0, !13, i64 8}
!75 = !{!"float", !5, i64 0}
!76 = !{!69, !13, i64 8}
!77 = !{!74, !75, i64 0}
!78 = !{!79, !19, i64 8}
!79 = !{!"_ZTSSt22_Optional_payload_baseIlE", !5, i64 0, !19, i64 8}
!80 = !{!81, !19, i64 80}
!81 = !{!"_ZTSN8facebook5velox11filesystems11FileOptionsE", !82, i64 0, !83, i64 56, !84, i64 64, !19, i64 80, !19, i64 81, !19, i64 82, !87, i64 88, !92, i64 152, !93, i64 160, !84, i64 176, !96, i64 192, !99, i64 208}
!82 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !69, i64 0}
!83 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!84 = !{!"_ZTSSt8optionalIlE", !85, i64 0}
!85 = !{!"_ZTSSt14_Optional_baseIlLb1ELb1EE", !86, i64 0}
!86 = !{!"_ZTSSt17_Optional_payloadIlLb1ELb1ELb1EE", !79, i64 0}
!87 = !{!"_ZTSSt8optionalISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE", !88, i64 0}
!88 = !{!"_ZTSSt14_Optional_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEELb0ELb0EE", !89, i64 0}
!89 = !{!"_ZTSSt17_Optional_payloadISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEELb0ELb0ELb0EE", !90, i64 0}
!90 = !{!"_ZTSSt17_Optional_payloadISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEELb1ELb0ELb0EE", !91, i64 0}
!91 = !{!"_ZTSSt22_Optional_payload_baseISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S6_EEEE", !5, i64 0, !19, i64 56}
!92 = !{!"p1 _ZTSN8facebook5velox7IoStatsE", !10, i64 0}
!93 = !{!"_ZTSSt10shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !94, i64 0}
!94 = !{!"_ZTSSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE", !95, i64 0, !59, i64 8}
!95 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!96 = !{!"_ZTSSt10shared_ptrIN8facebook5velox11filesystems13TokenProviderEE", !97, i64 0}
!97 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox11filesystems13TokenProviderELN9__gnu_cxx12_Lock_policyE2EE", !98, i64 0, !59, i64 8}
!98 = !{!"p1 _ZTSN8facebook5velox11filesystems13TokenProviderE", !10, i64 0}
!99 = !{!"_ZTSN5folly10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S6_EEEE", !100, i64 0}
!100 = !{!"_ZTSN5folly3f146detail16F14VectorMapImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_S8_EESt17integral_constantIbLb1EEEE", !101, i64 0}
!101 = !{!"_ZTSN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEEE", !102, i64 0}
!102 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEEE", !103, i64 0, !105, i64 8, !106, i64 16}
!103 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_vvvSt17integral_constantIbLb1EEEE", !104, i64 0}
!104 = !{!"p1 _ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !10, i64 0}
!105 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIjEE", !10, i64 0}
!106 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEELb0EEE", !107, i64 0}
!107 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !13, i64 0}
!108 = !{!81, !19, i64 81}
!109 = !{!81, !19, i64 82}
!110 = !{!91, !19, i64 56}
!111 = !{!102, !105, i64 8}
!112 = !{!107, !13, i64 0}
!113 = !{!114, !19, i64 232}
!114 = !{!"_ZTSN8facebook5velox11filesystems16DirectoryOptionsE", !81, i64 0, !19, i64 232}
!115 = !{!116, !116, i64 0}
!116 = !{!"vtable pointer", !6, i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!119 = !{!59, !60, i64 0}
!120 = !{!121, !4, i64 8}
!121 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!122 = !{!121, !4, i64 12}
!123 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox11filesystems10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!124 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox6config10ConfigBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!125 = !{!35, !36, i64 16}
!126 = !{!35, !36, i64 0}
!127 = !{!35, !36, i64 8}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!130 = distinct !{!130, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTSN8facebook5velox5cache7SsdFileE", !10, i64 0}
!135 = !{!132, !136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!129, !139}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !51, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = !{!"branch_weights", i32 4, i32 12}
!144 = distinct !{!144, !51, !141, !142}
!145 = distinct !{!145, !51, !141}
!146 = !{!18, !13, i64 32}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES7_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!149 = distinct !{!149, !"_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEES7_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!150 = !{!18, !13, i64 48}
!151 = !{!18, !19, i64 56}
!152 = !{!18, !19, i64 57}
!153 = !{!154, !4, i64 32}
!154 = !{!"_ZTSN8facebook5velox5cache7SsdFile6ConfigE", !12, i64 0, !4, i64 32, !4, i64 36, !13, i64 40, !19, i64 48, !19, i64 49, !19, i64 50, !13, i64 56, !20, i64 64}
!155 = !{!154, !4, i64 36}
!156 = !{!154, !13, i64 40}
!157 = !{!154, !19, i64 48}
!158 = !{!154, !19, i64 49}
!159 = !{!154, !19, i64 50}
!160 = !{!154, !13, i64 56}
!161 = !{!154, !20, i64 64}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZSt11make_uniqueIN8facebook5velox5cache7SsdFileEJRKNS3_6ConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!164 = distinct !{!164, !"_ZSt11make_uniqueIN8facebook5velox5cache7SsdFileEJRKNS3_6ConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!167 = distinct !{!167, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox5cache7SsdFileESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!170 = !{!169, !171}
!171 = distinct !{!171, !172}
!172 = distinct !{!172, !"LVerDomain"}
!173 = !{!166, !174}
!174 = distinct !{!174, !172}
!175 = distinct !{!175, !51, !141, !142}
!176 = distinct !{!176, !51, !141, !142}
!177 = distinct !{!177, !51, !141}
!178 = distinct !{!178, !51}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN3fmt3v116formatIJRKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PKcSB_SB_EEES9_NS0_7fstringIJDpT_EE1tEDpOSD_: argument 0"}
!181 = distinct !{!181, !"_ZN3fmt3v116formatIJRKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PKcSB_SB_EEES9_NS0_7fstringIJDpT_EE1tEDpOSD_"}
!182 = distinct !{null, null, null}
!183 = distinct !{null, null, null}
!184 = distinct !{null, null}
!185 = distinct !{!185, !51}
!186 = !{!22, !19, i64 132}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN8facebook5velox12errorMessageIJSt6atomicIiEiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!189 = distinct !{!189, !"_ZN8facebook5velox12errorMessageIJSt6atomicIiEiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKSt6atomicIiEKiELi2ELi0ELy31EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!192 = distinct !{!192, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKSt6atomicIiEKiELi2ELi0ELy31EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!193 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN8facebook5velox12errorMessageIJiSt6atomicIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!196 = distinct !{!196, !"_ZN8facebook5velox12errorMessageIJiSt6atomicIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKSt6atomicIiEELi2ELi0ELy241EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!199 = distinct !{!199, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKSt6atomicIiEELi2ELi0ELy241EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!200 = !{!198, !195}
!201 = !{!202, !203, i64 0}
!202 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN8facebook5velox5cache8CachePinESaIS4_EESaIS6_EE17_Vector_impl_dataE", !203, i64 0, !203, i64 8, !203, i64 16}
!203 = !{!"p1 _ZTSSt6vectorIN8facebook5velox5cache8CachePinESaIS3_EE", !10, i64 0}
!204 = !{!202, !203, i64 16}
!205 = !{!202, !203, i64 8}
!206 = !{!207, !207, i64 0}
!207 = !{!"p1 _ZTSN8facebook5velox5cache8CachePinE", !10, i64 0}
!208 = !{!209, !210, i64 0}
!209 = !{!"_ZTSN8facebook5velox5cache8CachePinE", !210, i64 0}
!210 = !{!"p1 _ZTSN8facebook5velox5cache19AsyncDataCacheEntryE", !10, i64 0}
!211 = !{!212, !4, i64 112}
!212 = !{!"_ZTSN8facebook5velox5cache19AsyncDataCacheEntryE", !213, i64 0, !216, i64 24, !217, i64 32, !12, i64 72, !223, i64 104, !4, i64 112, !37, i64 116, !230, i64 120, !19, i64 128, !231, i64 129, !13, i64 136, !233, i64 144, !134, i64 152, !13, i64 160, !231, i64 168}
!213 = !{!"_ZTSN8facebook5velox5cache12FileCacheKeyE", !214, i64 0, !13, i64 16}
!214 = !{!"_ZTSN8facebook5velox13StringIdLeaseE", !215, i64 0, !13, i64 8}
!215 = !{!"p1 _ZTSN8facebook5velox11StringIdMapE", !10, i64 0}
!216 = !{!"p1 _ZTSN8facebook5velox5cache10CacheShardE", !10, i64 0}
!217 = !{!"_ZTSN8facebook5velox6memory10AllocationE", !83, i64 0, !218, i64 8, !4, i64 32}
!218 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !219, i64 0}
!219 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !220, i64 0}
!220 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_Vector_implE", !221, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_Vector_impl_dataE", !222, i64 0, !222, i64 8, !222, i64 16}
!222 = !{!"p1 _ZTSN8facebook5velox6memory10Allocation7PageRunE", !10, i64 0}
!223 = !{!"_ZTSSt10unique_ptrIN5folly13SharedPromiseIbEESt14default_deleteIS2_EE", !224, i64 0}
!224 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly13SharedPromiseIbEESt14default_deleteIS2_ELb1ELb1EE", !225, i64 0}
!225 = !{!"_ZTSSt15__uniq_ptr_implIN5folly13SharedPromiseIbEESt14default_deleteIS2_EE", !226, i64 0}
!226 = !{!"_ZTSSt5tupleIJPN5folly13SharedPromiseIbEESt14default_deleteIS2_EEE", !227, i64 0}
!227 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly13SharedPromiseIbEESt14default_deleteIS2_EEE", !228, i64 0}
!228 = !{!"_ZTSSt10_Head_baseILm0EPN5folly13SharedPromiseIbEELb0EE", !229, i64 0}
!229 = !{!"p1 _ZTSN5folly13SharedPromiseIbEE", !10, i64 0}
!230 = !{!"_ZTSN8facebook5velox5cache11AccessStatsE", !4, i64 0, !4, i64 4}
!231 = !{!"_ZTSSt6atomicIbE", !232, i64 0}
!232 = !{!"_ZTSSt13__atomic_baseIbE", !19, i64 0}
!233 = !{!"_ZTSN8facebook5velox5cache10TrackingIdE", !4, i64 0}
!234 = !{!214, !13, i64 8}
!235 = !{!236, !4, i64 40}
!236 = !{!"_ZTSN8facebook5velox5cache7SsdFileE", !12, i64 0, !4, i64 32, !19, i64 36, !19, i64 37, !19, i64 38, !4, i64 40, !13, i64 48, !20, i64 56, !237, i64 64, !4, i64 120, !19, i64 124, !239, i64 128, !239, i64 152, !244, i64 176, !248, i64 200, !244, i64 232, !254, i64 256, !260, i64 280, !262, i64 288, !13, i64 304, !263, i64 312, !270, i64 320, !270, i64 328, !270, i64 336, !277, i64 344, !13, i64 512, !278, i64 520, !19, i64 528, !10, i64 536, !4, i64 544}
!237 = !{!"_ZTSSt12shared_mutex", !238, i64 0}
!238 = !{!"_ZTSSt22__shared_mutex_pthread", !5, i64 0}
!239 = !{!"_ZTSSt6vectorIjSaIjEE", !240, i64 0}
!240 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !241, i64 0}
!241 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !242, i64 0}
!242 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !243, i64 0, !243, i64 8, !243, i64 16}
!243 = !{!"p1 int", !10, i64 0}
!244 = !{!"_ZTSSt6vectorIiSaIiEE", !245, i64 0}
!245 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !246, i64 0}
!246 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !247, i64 0}
!247 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !243, i64 0, !243, i64 8, !243, i64 16}
!248 = !{!"_ZTSN8facebook5velox5cache14SsdFileTrackerE", !249, i64 0, !13, i64 24}
!249 = !{!"_ZTSSt6vectorIdSaIdEE", !250, i64 0}
!250 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !251, i64 0}
!251 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !252, i64 0}
!252 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !253, i64 0, !253, i64 8, !253, i64 16}
!253 = !{!"p1 double", !10, i64 0}
!254 = !{!"_ZTSN5folly10F14FastMapIN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S5_EEEE", !255, i64 0}
!255 = !{!"_ZTSN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEEE", !256, i64 0}
!256 = !{!"_ZTSN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEEE", !257, i64 0}
!257 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEEE", !258, i64 0, !105, i64 8, !106, i64 16}
!258 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEEE", !259, i64 0}
!259 = !{!"p1 _ZTSSt4pairIKN8facebook5velox5cache12FileCacheKeyENS2_6SsdRunEE", !10, i64 0}
!260 = !{!"_ZTSSt6atomicIN8facebook5velox5cache7SsdFile5StateEE", !261, i64 0}
!261 = !{!"_ZTSN8facebook5velox5cache7SsdFile5StateE", !5, i64 0}
!262 = !{!"_ZTSSt10shared_ptrIN8facebook5velox11filesystems10FileSystemEE", !57, i64 0}
!263 = !{!"_ZTSSt10unique_ptrIN8facebook5velox8ReadFileESt14default_deleteIS2_EE", !264, i64 0}
!264 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox8ReadFileESt14default_deleteIS2_ELb1ELb1EE", !265, i64 0}
!265 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox8ReadFileESt14default_deleteIS2_EE", !266, i64 0}
!266 = !{!"_ZTSSt5tupleIJPN8facebook5velox8ReadFileESt14default_deleteIS2_EEE", !267, i64 0}
!267 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox8ReadFileESt14default_deleteIS2_EEE", !268, i64 0}
!268 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox8ReadFileELb0EE", !269, i64 0}
!269 = !{!"p1 _ZTSN8facebook5velox8ReadFileE", !10, i64 0}
!270 = !{!"_ZTSSt10unique_ptrIN8facebook5velox9WriteFileESt14default_deleteIS2_EE", !271, i64 0}
!271 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox9WriteFileESt14default_deleteIS2_ELb1ELb1EE", !272, i64 0}
!272 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox9WriteFileESt14default_deleteIS2_EE", !273, i64 0}
!273 = !{!"_ZTSSt5tupleIJPN8facebook5velox9WriteFileESt14default_deleteIS2_EEE", !274, i64 0}
!274 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox9WriteFileESt14default_deleteIS2_EEE", !275, i64 0}
!275 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox9WriteFileELb0EE", !276, i64 0}
!276 = !{!"p1 _ZTSN8facebook5velox9WriteFileE", !10, i64 0}
!277 = !{!"_ZTSN8facebook5velox5cache13SsdCacheStatsE", !13, i64 0, !13, i64 8, !13, i64 16, !4, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164}
!278 = !{!"_ZTSSt6atomicImE", !279, i64 0}
!279 = !{!"_ZTSSt13__atomic_baseImE", !13, i64 0}
!280 = !{!281, !207, i64 8}
!281 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox5cache8CachePinESaIS3_EE17_Vector_impl_dataE", !207, i64 0, !207, i64 8, !207, i64 16}
!282 = !{!281, !207, i64 16}
!283 = !{!281, !207, i64 0}
!284 = distinct !{!284, !51}
!285 = distinct !{!285, !51}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZSt11make_sharedIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderJS7_EESt10shared_ptrIT_EDpOT0_: argument 0"}
!288 = distinct !{!288, !"_ZSt11make_sharedIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderJS7_EESt10shared_ptrIT_EDpOT0_"}
!289 = !{!290, !291, i64 0}
!290 = !{!"_ZTSSt12__shared_ptrIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderLN9__gnu_cxx12_Lock_policyE2EE", !291, i64 0, !59, i64 8}
!291 = !{!"p1 _ZTSZN8facebook5velox5cache8SsdCache5writeESt6vectorINS1_8CachePinESaIS4_EEE9PinHolder", !10, i64 0}
!292 = !{!293, !10, i64 48}
!293 = !{!"_ZTSN5folly8FunctionIFvvEEE", !5, i64 0, !10, i64 48, !10, i64 56}
!294 = !{!293, !10, i64 56}
!295 = distinct !{null, null}
!296 = distinct !{ptr @_ZNSt12__shared_ptrIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!297 = distinct !{!297, !51}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN8facebook5velox12errorMessageIJiSt6atomicIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!300 = distinct !{!300, !"_ZN8facebook5velox12errorMessageIJiSt6atomicIiEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKSt6atomicIiEELi2ELi0ELy241EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!303 = distinct !{!303, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKSt6atomicIiEELi2ELi0ELy241EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!304 = !{!302, !299}
!305 = !{!306, !306, i64 0}
!306 = !{!"p1 _ZTSN8facebook5velox5cache8SsdCacheE", !10, i64 0}
!307 = distinct !{!307, !51}
!308 = distinct !{!308, !51}
!309 = !{!36, !36, i64 0}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZNK8facebook5velox5cache8SsdCache5statsEv: argument 0"}
!312 = distinct !{!312, !"_ZNK8facebook5velox5cache8SsdCache5statsEv"}
!313 = !{!236, !4, i64 32}
!314 = !{!277, !13, i64 40}
!315 = !{!277, !13, i64 72}
!316 = !{!277, !13, i64 16}
!317 = !{!277, !13, i64 0}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN8facebook5velox5cache14FileGroupStats8toStringB5cxx11Em: argument 0"}
!320 = distinct !{!320, !"_ZN8facebook5velox5cache14FileGroupStats8toStringB5cxx11Em"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!323 = distinct !{!323, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!326 = distinct !{!326, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!327 = !{!325, !322}
!328 = !{!329, !9, i64 40}
!329 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !330, i64 56}
!330 = !{!"_ZTSSt6locale", !331, i64 0}
!331 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!332 = !{!329, !9, i64 32}
!333 = !{!334, !13, i64 8}
!334 = !{!"_ZTSSi", !13, i64 8}
!335 = !{!336, !13, i64 0}
!336 = !{!"_ZTS8timespec", !13, i64 0, !13, i64 8}
!337 = !{!336, !13, i64 8}
!338 = distinct !{!338, !51}
!339 = distinct !{!339, !51}
!340 = distinct !{!340, !51}
!341 = !{!342, !5, i64 15}
!342 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !343, i64 0, !5, i64 15}
!343 = !{!"_ZTSSt5arrayIhLm15EE", !5, i64 0}
!344 = !{!103, !104, i64 0}
!345 = distinct !{!345, !51}
!346 = distinct !{null}
!347 = !{!69, !73, i64 16}
!348 = !{!72, !73, i64 0}
!349 = distinct !{!349, !51}
!350 = !{!351}
!351 = distinct !{!351, !352, !"_ZSt19__relocate_object_aIN8facebook5velox5cache8CachePinES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!352 = distinct !{!352, !"_ZSt19__relocate_object_aIN8facebook5velox5cache8CachePinES3_SaIS3_EEvPT_PT0_RT1_"}
!353 = !{!354}
!354 = distinct !{!354, !352, !"_ZSt19__relocate_object_aIN8facebook5velox5cache8CachePinES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!355 = !{!354, !356}
!356 = distinct !{!356, !357}
!357 = distinct !{!357, !"LVerDomain"}
!358 = !{!351, !359}
!359 = distinct !{!359, !357}
!360 = distinct !{!360, !51, !141, !142}
!361 = distinct !{!361, !51, !141, !142}
!362 = distinct !{!362, !51, !141}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZSt19__relocate_object_aIN8facebook5velox5cache8CachePinES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!365 = distinct !{!365, !"_ZSt19__relocate_object_aIN8facebook5velox5cache8CachePinES3_SaIS3_EEvPT_PT0_RT1_"}
!366 = !{!367}
!367 = distinct !{!367, !365, !"_ZSt19__relocate_object_aIN8facebook5velox5cache8CachePinES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!368 = !{!367, !369}
!369 = distinct !{!369, !370}
!370 = distinct !{!370, !"LVerDomain"}
!371 = !{!364, !372}
!372 = distinct !{!372, !370}
!373 = distinct !{!373, !51, !141, !142}
!374 = distinct !{!374, !51, !141, !142}
!375 = distinct !{!375, !51, !141}
!376 = !{!377, !306, i64 0}
!377 = !{!"_ZTSZN8facebook5velox5cache8SsdCache5writeESt6vectorINS1_8CachePinESaIS4_EEE3$_0", !306, i64 0, !4, i64 8, !378, i64 16, !13, i64 32, !13, i64 40}
!378 = !{!"_ZTSSt10shared_ptrIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderE", !290, i64 0}
!379 = !{!377, !4, i64 8}
!380 = distinct !{null}
!381 = !{!377, !13, i64 32}
!382 = !{!377, !13, i64 40}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!385 = distinct !{!385, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!386 = !{!10, !10, i64 0}
!387 = distinct !{ptr @"_ZZN8facebook5velox5cache8SsdCache5writeESt6vectorINS1_8CachePinESaIS4_EEEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrIZN8facebook5velox5cache8SsdCache5writeESt6vectorINS2_8CachePinESaIS5_EEE9PinHolderLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!388 = !{!389, !306, i64 0}
!389 = !{!"_ZTSZN8facebook5velox5cache8SsdCache10checkpointEvE3$_0", !306, i64 0, !4, i64 8}
!390 = !{!389, !4, i64 8}
!391 = !{!276, !276, i64 0}
!392 = distinct !{null, null}
!393 = !{!269, !269, i64 0}
!394 = distinct !{null, null}
!395 = !{!247, !243, i64 0}
!396 = !{!247, !243, i64 16}
!397 = !{!252, !253, i64 0}
!398 = !{!252, !253, i64 16}
!399 = !{!242, !243, i64 0}
!400 = !{!242, !243, i64 16}
!401 = !{!257, !105, i64 8}
!402 = !{!258, !259, i64 0}
!403 = !{!214, !215, i64 0}
!404 = distinct !{!404, !51}
!405 = !{!406, !4, i64 0}
!406 = !{!"_ZTSN3fmt3v1111basic_specsE", !4, i64 0, !5, i64 4}
!407 = !{!408, !4, i64 12}
!408 = !{!"_ZTSN3fmt3v1112format_specsE", !406, i64 0, !4, i64 8, !4, i64 12}
!409 = !{!410, !9, i64 0}
!410 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !9, i64 0, !13, i64 8}
!411 = !{!410, !13, i64 8}
!412 = distinct !{!412, !51}
!413 = !{!414, !414, i64 0}
!414 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !5, i64 0}
!415 = distinct !{!415, !51}
!416 = !{!417, !4, i64 16}
!417 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !410, i64 0, !4, i64 16}
!418 = !{!419, !419, i64 0}
!419 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !10, i64 0}
!420 = !{!421, !421, i64 0}
!421 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !10, i64 0}
!422 = !{!423, !421, i64 8}
!423 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !419, i64 0, !421, i64 8, !10, i64 16}
!424 = !{i64 8}
!425 = !{!423, !10, i64 16}
!426 = !{i64 4}
!427 = !{!423, !419, i64 0}
!428 = distinct !{!428, !51}
!429 = !{!430, !430, i64 0}
!430 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !10, i64 0}
!431 = !{!432, !434, i64 16}
!432 = !{!"_ZTSN3fmt3v1116basic_format_argINS0_7contextEEE", !433, i64 0, !434, i64 16}
!433 = !{!"_ZTSN3fmt3v116detail5valueINS0_7contextEEE", !5, i64 0}
!434 = !{!"_ZTSN3fmt3v116detail4typeE", !5, i64 0}
!435 = distinct !{!435, !51}
!436 = distinct !{!436, !51}
!437 = !{!438, !19, i64 0}
!438 = !{!"_ZTSZN3fmt3v116detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !19, i64 0, !5, i64 1}
!439 = !{!438, !5, i64 1}
!440 = !{!408, !4, i64 8}
!441 = !{!442, !13, i64 8}
!442 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !9, i64 0, !13, i64 8, !13, i64 16, !10, i64 24}
!443 = !{!442, !13, i64 16}
!444 = !{!442, !10, i64 24}
!445 = distinct !{null, null}
!446 = distinct !{null, null, null}
!447 = !{!442, !9, i64 0}
!448 = distinct !{!448, !51, !141, !142}
!449 = !{!"branch_weights", i32 8, i32 120}
!450 = distinct !{!450, !51, !141, !142}
!451 = distinct !{!451, !452}
!452 = !{!"llvm.loop.unroll.disable"}
!453 = distinct !{!453, !51}
!454 = distinct !{!454, !51, !141}
!455 = distinct !{null, null, null}
!456 = distinct !{!456, !51}
!457 = !{!458, !4, i64 0}
!458 = !{!"_ZTSZN3fmt3v116detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEEUlS4_E_", !4, i64 0, !4, i64 4, !9, i64 8, !9, i64 16}
!459 = !{!458, !4, i64 4}
!460 = !{!458, !9, i64 8}
!461 = !{!458, !9, i64 16}
!462 = distinct !{null, null, null, null}
!463 = distinct !{null, null, null, null}
!464 = distinct !{!464, !51}
!465 = distinct !{!465, !51, !141, !142}
!466 = distinct !{!466, !51, !141, !142}
!467 = distinct !{!467, !452}
!468 = distinct !{!468, !51, !141}
!469 = distinct !{!469, !51}
!470 = !{!471, !9, i64 0}
!471 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !9, i64 0, !9, i64 8, !4, i64 16}
!472 = !{!471, !9, i64 8}
!473 = !{!471, !4, i64 16}
!474 = distinct !{null, null, null}
!475 = distinct !{null, null, null, null, null}
!476 = distinct !{!476, !51}
!477 = distinct !{null, null, null, null}
!478 = distinct !{!478, !51, !141, !142}
!479 = distinct !{!479, !51, !141, !142}
!480 = distinct !{!480, !452}
!481 = distinct !{!481, !51, !141}
!482 = distinct !{null, null, null, null}
!483 = distinct !{!483, !51}
!484 = !{!485, !486, i64 0}
!485 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !486, i64 0, !5, i64 8}
!486 = !{!"long long", !5, i64 0}
!487 = !{!488, !490}
!488 = distinct !{!488, !489, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!489 = distinct !{!489, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!490 = distinct !{!490, !491, !"_ZNK3fmt3v117context3argEi: argument 0"}
!491 = distinct !{!491, !"_ZNK3fmt3v117context3argEi"}
!492 = !{!9, !9, i64 0}
!493 = !{!13, !13, i64 0}
!494 = !{!495, !497}
!495 = distinct !{!495, !496, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!496 = distinct !{!496, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!497 = distinct !{!497, !498, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!498 = distinct !{!498, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!499 = !{!500, !13, i64 8}
!500 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !501, i64 0, !13, i64 8}
!501 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !10, i64 0}
!502 = !{!500, !501, i64 0}
!503 = distinct !{!503, !51}
!504 = !{!505, !9, i64 0}
!505 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !9, i64 0, !4, i64 8}
!506 = !{!505, !4, i64 8}
!507 = !{!434, !434, i64 0}
!508 = !{!509, !9, i64 8}
!509 = !{!"_ZTSSt9type_info", !9, i64 8}
end_hunk_1
