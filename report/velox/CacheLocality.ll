inline.NumInlined: 1644
inline.NumDeleted: 799
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0
%"struct.fmt::v11::detail::format_arg_store.36" = type { [1 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::concat.30" = type <{ %"struct.fmt::v11::detail::text", %"struct.fmt::v11::detail::concat.31", [6 x i8] }>
%"struct.fmt::v11::detail::format_arg_store" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { ptr }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.12 }
%union.anon.12 = type { ptr }
%"class.std::tuple.51" = type { %"struct.std::_Tuple_impl.52" }
%"struct.std::_Tuple_impl.52" = type { %"struct.std::_Tuple_impl.53", %"struct.std::_Head_base.57" }
%"struct.std::_Tuple_impl.53" = type { %"struct.std::_Tuple_impl.54", %"struct.std::_Head_base.56" }
%"struct.std::_Tuple_impl.54" = type { %"struct.std::_Head_base.55" }
%"struct.std::_Head_base.55" = type { i64 }
%"struct.std::_Head_base.56" = type { i64 }
%"struct.std::_Head_base.57" = type { i64 }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%struct.cpu_set_t = type { [16 x i64] }
%"class.google::ErrnoLogMessage" = type { %"class.google::LogMessage" }
%"class.google::LogMessage" = type { ptr, ptr, %"struct.google::LogMessageTime" }
%"struct.google::LogMessageTime" = type { %struct.tm, i64, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.google::LogMessageFatal" = type { %"class.google::LogMessage" }

$_ZN5folly13CacheLocalityD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_ = comdat any

$_ZNSt6vectorImSaImEE17_M_default_appendEm = comdat any

$_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA23_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2ERKS1_ = comdat any

$_ZN3fmt3v116detail13copy_noinlineIcPKcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SE_SD_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN3fmt3v116detail13copy_noinlineIcPcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_T0_SD_SC_ = comdat any

$_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt12length_errorEEvOT_ = comdat any

$_ZNSt12length_errorC2EOS_ = comdat any

$_ZNK3fmt3v116detail6concatINS1_5fieldIcmLi0EEENS1_9code_unitIcEEE6formatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJmEEET_SH_DpRKT0_ = comdat any

$_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt18__do_uninit_fill_nIPSt6vectorImSaImEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZN5folly14AccessSpreaderISt6atomicE10initializeERNS2_11GlobalStateE = comdat any

$_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv = comdat any

$_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev = comdat any

$_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt9bad_allocEEvOT_ = comdat any

$_ZZN3fmt3v116detail7digits2EmE4data = comdat any

$_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = comdat any

@_ZZN5folly13CacheLocality6systemISt6atomicEERKS0_vE5cache = internal global %"struct.std::atomic" zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"sys/devices/system/cpu\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to open sysfs: {}\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.6 = private unnamed_addr constant [16 x i8] c"shared_cpu_list\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"unable to load cache sharing info\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cpu{}/cache\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10.const = private unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10.const = private unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@_ZZN3fmt3v116detail7digits2EmE4data = linkonce_odr local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@.str.16 = private unnamed_addr constant [38 x i8] c"unexpected error while opening {}: {}\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"max_size exceeded\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"index{}/\00", align 1
@"__const._ZN3fmt3v116formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_1clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_.compiled" = private unnamed_addr constant { %"struct.fmt::v11::detail::text", %"struct.fmt::v11::detail::concat.31" } { %"struct.fmt::v11::detail::text" { %"class.fmt::v11::basic_string_view" { ptr @.str.19, i64 5 } }, %"struct.fmt::v11::detail::concat.31" { i8 undef, %"struct.fmt::v11::detail::code_unit" { i8 47 } } }, align 8
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"error parsing list '{}'\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"no CPUs parsed from /proc/cpuinfo\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"offline CPUs not supported for /proc/cpuinfo cache locality source\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"no physical ids found\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"no core ids found\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"unable to open /proc/cpuinfo\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"linux-vdso.so.1\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"__vdso_getcpu\00", align 1
@_ZZN5folly18SequentialThreadId3getEvE6global = internal global { i32 } zeroinitializer, align 4
@_ZZN5folly18SequentialThreadId3getEvE5local = internal thread_local unnamed_addr global i32 0, align 4
@_ZN5folly6detail24AccessSpreaderStaticInit8instanceE = local_unnamed_addr global %"struct.folly::detail::AccessSpreaderStaticInit" zeroinitializer, align 1
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.68" } zeroinitializer, comdat, align 8
@_ZZN5folly17LLCAccessSpreader3getEvE8instance = internal global %"class.folly::Indestructible" zeroinitializer, align 8
@_ZGVZN5folly17LLCAccessSpreader3getEvE8instance = internal global i64 0, align 8
@.str.36 = private unnamed_addr constant [86 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/concurrency/CacheLocality.cpp\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"Check failed: sched_getaffinity(0, sizeof(cpuset), &cpuset) == 0 \00", align 1
@_ZZNK5folly17LLCAccessSpreader7currentEvE2tc = internal thread_local unnamed_addr global %struct.ThreadCache zeroinitializer, align 8
@_ZGVZNK5folly17LLCAccessSpreader7currentEvE2tc = internal thread_local unnamed_addr global i1 false, align 1
@_ZZN5folly10coreMallocEmmmE10allocators = internal global [256 x %"class.folly::Indestructible.92"] zeroinitializer, align 16
@_ZGVZN5folly10coreMallocEmmmE10allocators = internal global i64 0, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZN5folly12_GLOBAL__N_119gCoreAllocatorGuardE = internal thread_local unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [46 x i8] c"Check failed: gCoreAllocatorGuard == nullptr \00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"CoreAllocator::Guard cannot be used recursively\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"Check failed: gCoreAllocatorGuard != nullptr \00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"CoreAllocator::allocator called without an active Guard\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_CacheLocality.cpp, ptr null }]

@_ZN5folly13CacheLocalityC1ESt6vectorIS1_ImSaImEESaIS3_EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly13CacheLocalityC2ESt6vectorIS1_ImSaImEESaIS3_EE
@_ZN5folly17LLCAccessSpreaderC1ENS0_10PrivateTagE = unnamed_addr alias void (ptr), ptr @_ZN5folly17LLCAccessSpreaderC2ENS0_10PrivateTagE
@_ZN5folly18CoreAllocatorGuardC1Emm = unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5folly18CoreAllocatorGuardC2Emm
@_ZN5folly18CoreAllocatorGuardD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly18CoreAllocatorGuardD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13CacheLocality22readSystemLocalityInfoEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::CacheLocality") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly13CacheLocality19readFromProcCpuinfoEv(ptr dead_on_unwind writable sret(%"struct.folly::CacheLocality") align 8 %0)
          to label %_ZN5folly13CacheLocality13readFromSysfsEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = tail call ptr @__cxa_begin_catch(ptr %i.b) #35 ; 0 uses
  tail call void @__cxa_end_catch()
  invoke void @_ZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"struct.folly::CacheLocality") align 8 %0, i64 1, ptr nonnull @.str.22)
          to label %_ZN5folly13CacheLocality13readFromSysfsEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #35 ; 0 uses
  tail call void @__cxa_end_catch()
  %i.g = tail call i64 @sysconf(i32 noundef 83) #35 ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  %spec.store.select = select i1 %i.h, i64 32, i64 %i.g
  tail call void @_ZN5folly13CacheLocality7uniformEm(ptr dead_on_unwind writable sret(%"struct.folly::CacheLocality") align 8 %0, i64 noundef %spec.store.select)
  br label %_ZN5folly13CacheLocality13readFromSysfsEv.exit

_ZN5folly13CacheLocality13readFromSysfsEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13CacheLocality19readFromProcCpuinfoEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::CacheLocality") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.45", align 8    ; 14 uses
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 12 uses
  %i.a = alloca [8192 x i8], align 16             ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull @.str.32, i32 noundef 8)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = and i32 %i.g, 5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.33)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
          to label %bb.ae unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.g:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #35
  br label %bb.aa

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.m = icmp eq i32 %i.g, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.r = phi i64 [ %i.d, %.lr.ph ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.t = load ptr, ptr %1, align 8, !tbaa !27
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 640000
  br i1 %i.x, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !36
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.m
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !43

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc13, %bb.l
  %.0.i.i.i = phi i8 [ %i.ae, %bb.l ], [ %i.ai, %.noexc13 ]
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef 8192, i8 noundef signext %.0.i.i.i)
          to label %_ZNSi7getlineEPcl.exit unwind label %.loopexit ; 0 uses

_ZNSi7getlineEPcl.exit:                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %i.o, ptr %3, align 8, !tbaa !44
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #35 ; 8 uses
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %_ZNSi7getlineEPcl.exit
  %i.am = icmp slt i64 %i.ak, 0
  br i1 %i.am, label %.noexc.i, label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #36
          to label %.noexc16 unwind label %.loopexit.split-lp25

.noexc16:                                         ; preds = %.noexc.i
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.an = add nuw i64 %i.ak, 1                    ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !47

.noexc11.i:                                       ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc17 unwind label %.loopexit.split-lp25

.noexc17:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.o
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #37
          to label %.noexc18 unwind label %.loopexit24 ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ap, ptr %3, align 8, !tbaa !48
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc18, %_ZNSi7getlineEPcl.exit
  %i.aq = phi ptr [ %i.ap, %.noexc18 ], [ %i.o, %_ZNSi7getlineEPcl.exit ] ; 3 uses
  switch i64 %i.ak, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i8, ptr %i.a, align 16, !tbaa !42
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !42
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 16 %i.a, i64 %i.ak, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  store i64 %i.ak, ptr %i.p, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  store i8 0, ptr %i.as, align 1, !tbaa !42
  %.val12 = load i64, ptr %i.p, align 8, !tbaa !50 ; 4 uses
  %i.at = icmp ugt i64 %.val12, 4
  %.pre34 = load ptr, ptr %3, align 8             ; 3 uses
  br i1 %i.at, label %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.r
  %i.au = load i8, ptr %.pre34, align 1, !tbaa !42
  switch i8 %i.au, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit [
    i8 112, label %bb.s
    i8 99, label %bb.s
  ]

bb.s:                                             ; preds = %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !24  ; 7 uses
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !44
  %i.ay = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.o
  br i1 %i.az, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp ult i64 %.val12, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %.val12, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !48
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !42
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.val12, ptr %i.bd, align 8, !tbaa !50
  store ptr %i.o, ptr %3, align 8, !tbaa !48
  store i64 0, ptr %i.p, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.be, ptr %i.n, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit_crit_edge unwind label %bb.w

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit_crit_edge: ; preds = %bb.v
  %.pre = load ptr, ptr %3, align 8, !tbaa !48
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

.loopexit:                                        ; preds = %bb.m, %.noexc13, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit24:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp25:                             ; preds = %.noexc.i, %.noexc11.i
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.o
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !42
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit_crit_edge, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.r
  %i.bk = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit_crit_edge ], [ %.pre34, %_ZN5folly12_GLOBAL__N_123procCpuinfoLineRelevantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.pre34, %bb.r ] ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.o
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
end_hunk_0
