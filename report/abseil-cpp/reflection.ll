Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/reflection?download=true
inline.NumInlined: 1163
inline.NumDeleted: 574
begin_hunk_0

$_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE18GetPolicyFunctionsEvE5value = comdat any

@.str = private unnamed_addr constant [62 x i8] c"Inconsistency between flag object and registration for flag '\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"', likely due to duplicate flags or an ODR violation. Relevant files: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Retired flag '\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"' was defined normally in file '\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Flag '\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"' was defined more than once but with differing types. Defined in files '\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"' and '\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"' was defined more than once (in files '\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"').\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Something is wrong with flag '\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"' in file '\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"'. One possibility: file '\00", align 1
@.str.14 = private unnamed_addr constant [179 x i8] c"' is being linked both statically and dynamically into this executable. e.g. some files listed as srcs to a test and also listed as srcs of some shared lib deps of the same test.\00", align 1
@_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry = internal global %"class.absl::lts_20260526::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry = internal global i64 0, align 8
@_ZTVN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObjE = internal constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObjE, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj4NameEv, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8FilenameB5cxx11Ev, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj4HelpB5cxx11Ev, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj9IsRetiredEv, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj12DefaultValueB5cxx11Ev, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj12CurrentValueB5cxx11Ev, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj9ParseFromESt17basic_string_viewIcSt11char_traitsIcEENS1_15FlagSettingModeENS1_11ValueSourceERNSt7__cxx1112basic_stringIcS6_SaIcEEE, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj6TypeIdEv, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj9SaveStateEv, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj4ReadEPv, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj24IsSpecifiedOnCommandLineEv, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj18ValidateInputValueESt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj33CheckDefaultValueParsingRoundtripEv, ptr @_ZNK4absl12lts_2026052615CommandLineFlag8TypeNameEv] }, align 8
@_ZTIN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObjE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObjE, ptr @_ZTIN4absl12lts_2026052615CommandLineFlagE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObjE = internal constant [68 x i8] c"N4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObjE\00", align 1
@_ZTIN4absl12lts_2026052615CommandLineFlagE = external constant ptr
@.str.15 = private unnamed_addr constant [8 x i8] c"RETIRED\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Accessing retired flag '\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTIZN4absl12lts_2026052614flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS0_15CommandLineFlagEE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN4absl12lts_2026052614flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS0_15CommandLineFlagEE_ }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN4absl12lts_2026052614flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS0_15CommandLineFlagEE_ = linkonce_odr dso_local constant [101 x i8] c"ZN4absl12lts_2026052614flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS0_15CommandLineFlagEE_\00", comdat, align 1
@_ZN4absl12lts_2026052618container_internal11kSooControlE = external constant [2 x i8], align 1
@_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE = linkonce_odr dso_local local_unnamed_addr constant [5 x i64] [i64 2611923443488327891, i64 1376283091369227076, i64 -6626703657320631856, i64 589684135938649225, i64 4983270260364809079], comdat, align 64
@_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE18GetPolicyFunctionsEvE5value = linkonce_odr dso_local constant %"struct.absl::lts_20260526::container_internal::PolicyFunctions" { i32 16, i32 24, i32 24, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmPKvPvm, ptr @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm24EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE }, comdat, align 8
@"_ZTIZN4absl12lts_2026052611GetAllFlagsEvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4absl12lts_2026052611GetAllFlagsEvE3$_0" }, align 8
@"_ZTSZN4absl12lts_2026052611GetAllFlagsEvE3$_0" = internal constant [42 x i8] c"ZN4absl12lts_2026052611GetAllFlagsEvE3$_0\00", align 1

@_ZN4absl12lts_202605269FlagSaverC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_202605269FlagSaverC2Ev
@_ZN4absl12lts_202605269FlagSaverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_202605269FlagSaverD2Ev

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load atomic i8, ptr %i.b acquire, align 8, !range !9, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %3, align 8, !tbaa !15 ; 5 uses
  %.sroa.25.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.b, %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i"
  %.018.i = phi i64 [ %.1.i, %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i" ], [ %i.l, %bb.b ] ; 2 uses
  %.sroa.013.017.i = phi ptr [ %.sroa.013.1.i, %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i" ], [ %i.f, %bb.b ] ; 2 uses
  %i.n = lshr i64 %.018.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.013.017.i, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { i64, ptr } %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !23 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.04.0.copyload, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.v = extractvalue { i64, ptr } %i.s, 1
  %i.w = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef readonly %.sroa.25.0.copyload, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.y = sub i64 %i.t, %.sroa.04.0.copyload
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i"

"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i, 0              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = xor i64 %i.n, -1
  %i.ac = add nsw i64 %.018.i, %i.ab
  %.sroa.013.1.i = select i1 %i.z, ptr %i.aa, ptr %.sroa.013.017.i ; 2 uses
  %.1.i = select i1 %i.z, i64 %i.ac, i64 %i.n     ; 2 uses
  %i.ad = icmp sgt i64 %.1.i, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit", !llvm.loop !24

"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit": ; preds = %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i"
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !11
  br label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"

"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit": ; preds = %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit", %bb.b
  %i.ae = phi ptr [ %i.h, %bb.b ], [ %.pre, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit" ]
  %.sroa.013.0.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.013.1.i, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit" ] ; 3 uses
  %.not = icmp eq ptr %.sroa.013.0.lcssa.i, %i.ae
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"
  %i.af = load ptr, ptr %.sroa.013.0.lcssa.i, align 8, !tbaa !19 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call { i64, ptr } %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  %i.al = icmp eq i64 %i.aj, %.sroa.04.0.copyload
  br i1 %i.al, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.am = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.am, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr %i.ak, ptr %.sroa.25.0.copyload, i64 %.sroa.04.0.copyload)
  %i.an = icmp eq i32 %bcmp.i, 0
  br i1 %i.an, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ao = load ptr, ptr %.sroa.013.0.lcssa.i, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit

.critedge.thread:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit", %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
  %i.aq = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIS7_EENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %.critedge.thread
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %.not25 = icmp eq ptr %i.ar, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.av = phi ptr [ %i.au, %bb.f ], [ null, %bb.e ]
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #29
  unreachable

bb.i:                                             ; preds = %.critedge.thread
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit15 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #29
  unreachable

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit15: ; preds = %bb.i
  resume { ptr, i32 } %i.ay

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit: ; preds = %bb.g, %.critedge
  %.1 = phi ptr [ %i.ao, %.critedge ], [ %i.av, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIS7_EENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !29 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !15 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17
  %i.e = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.e, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.f, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.g = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  %2 = and i64 %i.a, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %2         ; 2 uses
  %3 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %4 = sub i64 15, %notmask.i.i.i.i.i
  %5 = select i1 %3, i64 0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = lshr i64 %i.a, 8
  %i.j = and i64 %i.i, 255
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !17
  %i.k = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.j, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.l = load i64, ptr %0, align 8, !noalias !30
  %i.m = and i64 %i.l, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.m   ; 3 uses
  %i.n = xor i64 %notmask.i.i.i.i.i.i.i, -1       ; 4 uses
  %i.o = lshr i64 %i.k, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %.sroa.0.0.copyload.i.i.i.i6 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 6 uses
  %11 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -3
  %12 = sub i64 15, %notmask.i.i.i.i.i.i.i
  %13 = select i1 %11, i64 0, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %13
  %15 = icmp ule ptr %14, %0
  %16 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i6
  %17 = select i1 %15, i1 true, i1 %16
  tail call void @llvm.assume(i1 %17)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.q, align 8, !tbaa !29 ; 4 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i7 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i7.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i7 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i7.fr, 0
  br i1 %i.t, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.sroa.13.0.i.us = phi i64 [ %i.af, %bb.f ], [ 0, %bb.e ]
  %.pn.i10.us = phi i64 [ %i.ag, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.628.0.i.us = and i64 %.pn.i10.us, %i.n   ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.sroa.628.0.i.us
  %i.w = load <16 x i8>, ptr %i.v, align 1, !tbaa !29 ; 2 uses
  %i.x = icmp eq <16 x i8> %i.s, %i.w
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = zext i16 %i.y to i32
  %i.aa = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.z) #30, !srcloc !33 ; 2 uses
  %.not49.i.us = icmp eq i32 %i.aa, 0
  br i1 %.not49.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ab = icmp eq <16 x i8> %i.w, splat (i8 -128)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = zext i16 %i.ac to i32
  %i.ae = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ad) #30, !srcloc !33
  %.not47.i.us = icmp eq i32 %i.ae, 0
  br i1 %.not47.i.us, label %bb.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit, !prof !34

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.af = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ag = add i64 %.sroa.628.0.i.us, %i.af
  br label %.split.us, !llvm.loop !35

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.019.050.i.us.us = phi i32 [ %i.ao, %bb.g ], [ %i.aa, %.split.us ] ; 3 uses
  %i.ah = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.us.us, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nuw i64 %.sroa.628.0.i.us, %i.ai
  %i.ak = and i64 %i.aj, %i.n                     ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.ak ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i11.us.us = load i64, ptr %i.al, align 8, !tbaa !15
  %i.am = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i11.us.us, 0
  br i1 %i.am, label %.thread36.i, label %bb.g, !prof !36

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.an = add i32 %.sroa.019.050.i.us.us, -1
  %i.ao = and i32 %i.an, %.sroa.019.050.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.ao, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.pn.i10 = phi i64 [ %i.bl, %bb.i ], [ %i.k, %bb.e ]
  %.sroa.628.0.i = and i64 %.pn.i10, %i.n         ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.sroa.628.0.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !29 ; 2 uses
  %i.as = icmp eq <16 x i8> %i.s, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = zext i16 %i.at to i32
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #30, !srcloc !33 ; 2 uses
  %.not49.i = icmp eq i32 %i.av, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.019.050.i = phi i32 [ %i.bf, %bb.h ], [ %i.av, %.split ] ; 3 uses
  %i.aw = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nuw i64 %.sroa.628.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.n                     ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.az ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i11 = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bb = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i11, %.sroa.0.0.copyload.i.i.i.i.i.i7.fr
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14, label %bb.h, !prof !36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i13 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i12, align 8, !tbaa !17
  %bcmp.i.i.i.i.i.i.i.i15 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i13, ptr %.sroa.2.0.copyload.i.i.i.i.i.i9, i64 %.sroa.0.0.copyload.i.i.i.i.i.i7.fr)
  %i.bc = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i15, 0
  br i1 %i.bc, label %.thread36.i, label %bb.h

.thread36.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ak, %.lr.ph.i.us.us ], [ %i.az, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14 ]
  %.us-phi20 = phi ptr [ %i.al, %.lr.ph.i.us.us ], [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.us-phi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i6) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14, %.lr.ph.i
  %i.be = add i32 %.sroa.019.050.i, -1
  %i.bf = and i32 %i.be, %.sroa.019.050.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bg = icmp eq <16 x i8> %i.ar, splat (i8 -128)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = zext i16 %i.bh to i32
  %i.bj = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bi) #30, !srcloc !33
  %.not47.i = icmp eq i32 %i.bj, 0
  br i1 %.not47.i, label %bb.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit, !prof !34

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %.sroa.628.0.i, %i.bk
  br label %.split, !llvm.loop !35

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread36.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bd, %.thread36.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi20, %.thread36.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal12FlagRegistry12RegisterFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::basic_string_view<char>, absl::lts_20260526::CommandLineFlag *>>::EmplaceDecomposable", align 8 ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.absl::lts_20260526::FlagsUsageConfig", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"struct.std::pair.15", align 8    ; 6 uses
  %17 = alloca %"struct.std::pair", align 8       ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %22 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %24 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %32 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %40 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %41 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %42 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !17
  %.not.not = icmp eq ptr %2, null
  br i1 %.not.not, label %.critedge140.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN4absl12lts_2026052614flags_internal14GetUsageConfigEv(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::FlagsUsageConfig") align 8 %8)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.e, ptr %5, align 8, !noalias !37
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.f, align 8, !noalias !37
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40, !noalias !37
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.e
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202605266StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEEES7_RKNS0_8AlphaNumESB_SB_SB_SB_DpRKT_:bb.a
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %7, ptr %i.q, align 8
  call void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %8, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605266StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEEES7_RKNS0_8AlphaNumESB_SB_SB_SB_DpRKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(4) %7) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0.0.copyload.i7 = load i64, ptr %2, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i7, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.sroa.2.0.copyload.i9, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.0.0.copyload.i12 = load i64, ptr %3, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i14 = load ptr, ptr %.sroa.2.0..sroa_idx.i13, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i12, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %.sroa.2.0.copyload.i14, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.0.0.copyload.i17 = load i64, ptr %4, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i19 = load ptr, ptr %.sroa.2.0..sroa_idx.i18, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i17, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %.sroa.2.0.copyload.i19, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 64
  %.sroa.0.0.copyload.i22 = load i64, ptr %5, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i22, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %.sroa.2.0.copyload.i24, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.k = load ptr, ptr %6, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  store i64 %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #28
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %7, ptr %i.q, align 8
  call void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %8, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605266StrCatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA179_cEEES7_RKNS0_8AlphaNumESB_SB_SB_SB_DpRKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(179) %7) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0.0.copyload.i7 = load i64, ptr %2, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i7, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.sroa.2.0.copyload.i9, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.0.0.copyload.i12 = load i64, ptr %3, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i14 = load ptr, ptr %.sroa.2.0..sroa_idx.i13, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i12, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %.sroa.2.0.copyload.i14, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.0.0.copyload.i17 = load i64, ptr %4, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i19 = load ptr, ptr %.sroa.2.0..sroa_idx.i18, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i17, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %.sroa.2.0.copyload.i19, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 64
  %.sroa.0.0.copyload.i22 = load i64, ptr %5, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !17
  store i64 %.sroa.0.0.copyload.i22, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %.sroa.2.0.copyload.i24, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.k = load ptr, ptr %6, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  store i64 %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #28
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %7, ptr %i.q, align 8
  call void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %8, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i8 0, i64 64, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal11ForEachFlagESt8functionIFvRNS0_15CommandLineFlagEEE(ptr noundef align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i8 0, i64 64, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  br label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit

_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 48) acquire, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %.loopexit32

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !11 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !11 ; 2 uses
  %.not37 = icmp eq ptr %i.f, %i.g
  br i1 %.not37, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit
  %.sroa.027.038 = phi ptr [ %i.f, %.lr.ph ], [ %i.m, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt25__throw_bad_function_callv() #31
  unreachable

_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %.sroa.027.038, align 8, !tbaa !19
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !64
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !66
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.027.038, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.g
  br i1 %.not, label %.loopexit32, label %bb.e

.loopexit32:                                      ; preds = %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit, %bb.d, %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 56))
  %i.n = load i64, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, align 8 ; 3 uses
  %.not.i.i16 = icmp ult i64 %i.n, 131072
  br i1 %.not.i.i16, label %._crit_edge, label %bb.g, !prof !34

bb.g:                                             ; preds = %.loopexit32
  %i.o = and i64 %i.n, 254
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 16), align 8, !tbaa !29
  br label %.lr.ph42

bb.i:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 8), align 8, !tbaa !29, !nonnull !10, !noundef !10 ; 5 uses
  %1 = and i64 %i.n, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %1         ; 2 uses
  %2 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %3 = sub i64 15, %notmask.i.i.i.i.i
  %4 = select i1 %2, i64 0, i64 %3
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %4
  %6 = icmp ule ptr %5, @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry
  %7 = icmp uge ptr %.sroa.0.0.copyload.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24)
  %8 = select i1 %6, i1 true, i1 %7
  tail call void @llvm.assume(i1 %8)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.q = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !67
  %i.r = icmp slt i8 %i.q, -1
  br i1 %i.r, label %.lr.ph.i.i, label %.lr.ph42

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.s = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.i ]
  %i.t = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !67
  %i.x = icmp slt i8 %i.w, -1
  br i1 %i.x, label %.lr.ph.i.i, label %.lr.ph42, !llvm.loop !69

.lr.ph42:                                         ; preds = %.lr.ph.i.i, %bb.h, %bb.i
  %.sroa.6.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.copyload.i.i.i, %bb.i ], [ %i.v, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.h ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ], [ %i.u, %.lr.ph.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %.loopexit32
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 56))
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit: ; preds = %._crit_edge
  ret void

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph42
  %.sroa.022.041 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph42 ], [ %.sroa.022.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ]
  %.sroa.9.040 = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph42 ], [ %.sroa.9.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !40
  %.not.i.i17 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i17, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.9.040, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !64
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19 unwind label %.loopexit, !inline_history !66

_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19: ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.022.041, i64 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.9.040, i64 24 ; 2 uses
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !67  ; 2 uses
  %i.aj = icmp slt i8 %i.ai, -1
  br i1 %i.aj, label %.lr.ph.i.i20, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i20:                                     ; preds = %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19, %.lr.ph.i.i20
  %i.ak = phi ptr [ %i.an, %.lr.ph.i.i20 ], [ %i.ah, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19 ]
  %i.al = phi ptr [ %i.am, %.lr.ph.i.i20 ], [ %i.ag, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !67  ; 2 uses
  %i.ap = icmp slt i8 %i.ao, -1
  br i1 %i.ap, label %.lr.ph.i.i20, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !69

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i20, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19
  %.sroa.9.1 = phi ptr [ %i.ah, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19 ], [ %i.an, %.lr.ph.i.i20 ]
  %.sroa.022.1 = phi ptr [ %i.ag, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19 ], [ %i.am, %.lr.ph.i.i20 ]
  %i.aq = phi i8 [ %i.ai, %_ZNKSt8functionIFvRN4absl12lts_2026052615CommandLineFlagEEEclES3_.exit19 ], [ %i.ao, %.lr.ph.i.i20 ]
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %._crit_edge, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit, !prof !34

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 56))
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit21 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #29
  unreachable

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit21: ; preds = %bb.m
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i8 0, i64 64, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  br label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit

_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_2026052614flags_internal12FlagRegistry12RegisterFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal16FinalizeRegistryEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i8 0, i64 64, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  br label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit

_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 56))
  %i.d = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 48) monotonic, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.x, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, align 8 ; 2 uses
  %i.g = lshr i64 %i.f, 17                        ; 3 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !70 ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !72 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !73
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = shl nuw nsw i64 %i.g, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #34
          to label %.noexc unwind label %.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !72 ; 4 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !73
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.e:                                             ; preds = %.noexc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.e, %.noexc
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !70
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #32
  br label %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.g ; 2 uses
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !70
  %.pre = load i64, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, align 8
  br label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.d
  %i.ae = phi ptr [ %i.s, %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.ad, %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.h, %bb.d ]
  %i.ag = phi i64 [ %.pre, %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.f, %bb.d ] ; 3 uses
  %.not.i.i = icmp ult i64 %i.ag, 131072
  br i1 %.not.i.i, label %.loopexit44, label %bb.g, !prof !34

bb.g:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE7reserveEm.exit
  %i.ah = and i64 %i.ag, 254
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 16), align 8, !tbaa !29
  br label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 8), align 8, !tbaa !29, !nonnull !10, !noundef !10 ; 5 uses
  %0 = and i64 %i.ag, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %0         ; 2 uses
  %1 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %2 = sub i64 15, %notmask.i.i.i.i.i
  %3 = select i1 %1, i64 0, i64 %2
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %3
  %5 = icmp ule ptr %4, @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry
  %6 = icmp uge ptr %.sroa.0.0.copyload.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24)
  %7 = select i1 %5, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.aj = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !67
  %i.ak = icmp slt i8 %i.aj, -1
  br i1 %i.ak, label %.lr.ph.i.i, label %.lr.ph.preheader

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.al = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.i ]
  %i.am = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !67
  %i.aq = icmp slt i8 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i.i, label %.lr.ph.preheader, !llvm.loop !69

.loopexit44:                                      ; preds = %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE7reserveEm.exit
  %.pre60 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !11
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i, %bb.h, %bb.i
  %.sroa.6.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.copyload.i.i.i, %bb.i ], [ %i.ao, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.h ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ], [ %i.an, %.lr.ph.i.i ]
  %.pre6080 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !11
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i
  %.pre59 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit44, %._crit_edge.loopexit
  %i.ar = phi ptr [ %i.cw, %._crit_edge.loopexit ], [ %.pre60, %.loopexit44 ] ; 6 uses
  %i.as = phi ptr [ %.pre59, %._crit_edge.loopexit ], [ %i.ae, %.loopexit44 ] ; 6 uses
  %.not.i.i22 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i22, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = xor i64 %i.ay, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_SG_T0_T1_"(ptr %i.as, ptr %i.ar, i64 noundef %i.az)
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.j
  %i.ba = icmp sgt i64 %i.av, 128
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.noexc23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 128 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_SG_T0_"(ptr %i.as, ptr nonnull %i.bb)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.k
  %.not6.i.i.i.i = icmp eq ptr %i.bb, %i.ar
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc24, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.bu, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.bb, %.noexc24 ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !19 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.m ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bd = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke { i64, ptr } %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %.noexc25 unwind label %.loopexit, !inline_history !74 ; 2 uses

.noexc25:                                         ; preds = %bb.l
  %i.bh = extractvalue { i64, ptr } %i.bg, 0      ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !21
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke { i64, ptr } %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %.noexc26 unwind label %.loopexit, !inline_history !74 ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bh) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc26
  %i.bn = extractvalue { i64, ptr } %i.bk, 1
  %i.bo = extractvalue { i64, ptr } %i.bg, 1
  %i.bp = tail call i32 @memcmp(ptr noundef %i.bo, ptr noundef %i.bn, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #28 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2026052614flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.noexc26
  %i.br = sub i64 %i.bh, %i.bl
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2026052614flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2026052614flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.m, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2026052614flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"
  %i.bt = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !19
  store ptr %i.bt, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !19
  br label %bb.l, !llvm.loop !75

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2026052614flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"
  store ptr %i.bc, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !76

bb.n:                                             ; preds = %.noexc23
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_SG_T0_"(ptr %i.as, ptr %i.ar)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit" unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.l, %.noexc25
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i, %bb.j, %bb.k, %bb.n, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph.preheader
  %i.bv = phi ptr [ %i.ae, %.lr.ph.preheader ], [ %i.cu, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 5 uses
  %i.bw = phi ptr [ %i.af, %.lr.ph.preheader ], [ %i.cv, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %i.bx = phi ptr [ %.pre6080, %.lr.ph.preheader ], [ %i.cw, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %.sroa.035.052 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph.preheader ], [ %.sroa.035.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ]
  %.sroa.9.051 = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph.preheader ], [ %.sroa.9.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.9.051, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !73
  br label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %.lr.ph
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 5 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.q, label %_ZNKSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #31
          to label %.noexc29 unwind label %.loopexit.split-lp40

.noexc29:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #34
          to label %.noexc30 unwind label %.loopexit39 ; 5 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !19
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !19
  %i.co = icmp sgt i64 %i.cd, 0
  br i1 %i.co, label %bb.r, label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.r:                                             ; preds = %.noexc30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %i.bv, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.r, %.noexc30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !70
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cs) #32
  br label %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIPN4absl12lts_2026052615CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !72
  store ptr %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !73
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202605269FlagSaverD2Ev
define dso_local void @_ZN4absl12lts_202605269FlagSaverD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.noexc
  %.sroa.04.08.i = phi ptr [ %i.i, %.noexc ], [ %i.b, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.e, !inline_history !90

.noexc:                                           ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i, label %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit, label %.lr.ph.i

_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit: ; preds = %.noexc
  %.pre = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.j = icmp eq ptr %.pre, null
  br i1 %i.j, label %bb.d, label %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread

_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread: ; preds = %bb.b, %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit
  %i.k = phi ptr [ %.pre, %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit ], [ %i.a, %bb.b ] ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread, %_ZSt8_DestroyISt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.l, %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread ] ; 2 uses
  %i.o = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4absl12lts_2026052614flags_internal18FlagStateInterfaceEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4absl12lts_2026052614flags_internal18FlagStateInterfaceEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #28, !inline_history !94
  br label %_ZSt8_DestroyISt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052614flags_internal18FlagStateInterfaceEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.k, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.l, %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2026052614flags_internal13FlagSaverImplD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #32
  br label %_ZN4absl12lts_2026052614flags_internal13FlagSaverImplD2Ev.exit

_ZN4absl12lts_2026052614flags_internal13FlagSaverImplD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4absl12lts_2026052614flags_internal18FlagStateInterfaceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 24) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052614flags_internal13FlagSaverImplD2Ev.exit, %_ZNO4absl12lts_2026052614flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052619FindCommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i8 0, i64 64, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #28
  br label %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit

_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.e = tail call noundef ptr @_ZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 %0, ptr %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit
  %.0 = phi ptr [ %i.e, %_ZN4absl12lts_2026052614flags_internal12FlagRegistry14GlobalRegistryEv.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8 initializes((0, 8)) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.17", align 8  ; 9 uses
  store i64 0, ptr %0, align 8
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %1, align 8, !tbaa !97
  store ptr @"_ZNSt17_Function_handlerIFvRN4absl12lts_2026052615CommandLineFlagEEZNS1_11GetAllFlagsEvE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.c, align 8, !tbaa !64
  store ptr @"_ZNSt17_Function_handlerIFvRN4absl12lts_2026052615CommandLineFlagEEZNS1_11GetAllFlagsEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.b, align 8, !tbaa !40
  invoke void @_ZN4absl12lts_2026052614flags_internal11ForEachFlagESt8functionIFvRNS0_15CommandLineFlagEEE(ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 8 uses
  %1 = xor i64 %notmask.i.i.i.i, -1
  %i.c = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE15destructor_implEv.exit, label %2

2:                                                ; preds = %bb.a
  %3 = and i64 %i.a, 65536                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %3, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !29 ; 5 uses
  br i1 %.not.i.i.i.i, label %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE5infozEv.exit_crit_edge.i.i, label %4

._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE5infozEv.exit_crit_edge.i.i: ; preds = %2
  %.pre.i.i = sub nsw i64 15, %notmask.i.i.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  %6 = sub nsw i64 15, %notmask.i.i.i.i           ; 2 uses
  %7 = select i1 %5, i64 0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 %7
  %9 = icmp ule ptr %8, %0
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = icmp ule ptr %10, %.sroa.0.0.copyload.i.i.i2.pre.i.i
  %12 = select i1 %9, i1 true, i1 %11
  tail call void @llvm.assume(i1 %12)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i: ; preds = %4, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE5infozEv.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE5infozEv.exit_crit_edge.i.i ], [ %6, %4 ]
  %13 = icmp samesign ugt i64 %notmask.i.i.i.i, -3
  %14 = select i1 %13, i64 0, i64 %.pre-phi.i.i
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 %14
  %16 = icmp ule ptr %15, %0
  %.phi.trans.insert.i.i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %17 = icmp ule ptr %.phi.trans.insert.i.i.a, %.sroa.0.0.copyload.i.i.i2.pre.i.i
  %18 = select i1 %16, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  %i.h = icmp ne i64 %3, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %i.h)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE15destructor_implEv.exit unwind label %bb.b

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i
  ret void

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE7deallocEv.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

declare void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, ptr } @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj4NameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %i.c, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %i.b, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8FilenameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.d, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj4HelpB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj9IsRetiredEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj12DefaultValueB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj12CurrentValueB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj9ParseFromESt17basic_string_viewIcSt11char_traitsIcEENS1_15FlagSettingModeENS1_11ValueSourceERNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj6TypeIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !81
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj9SaveStateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj4ReadEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj24IsSpecifiedOnCommandLineEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj18ValidateInputValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj33CheckDefaultValueParsingRoundtripEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret void
}

declare { i64, ptr } @_ZNK4absl12lts_2026052615CommandLineFlag8TypeNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK4absl12lts_2026052614flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %2 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 24, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.16, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202605268AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.8.val) #28
  br label %_ZN4absl12lts_202605268AlphaNumC2EPKc.exit

_ZN4absl12lts_202605268AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.8.val, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 1, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.17, ptr %i.d, align 8
  call void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.e = load ptr, ptr %0, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  invoke void @_ZN4absl12lts_2026052614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.g, ptr %i.e, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.d

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm:bb.a
  %.0.copyload.i4.i.i = load i32, ptr %i.g, align 1
  %i.h = zext i32 %.0.copyload.i4.i.i to i64
  %i.i = or disjoint i64 %i.e, %i.h
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %1, align 1, !tbaa !29
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = getelementptr i8, ptr %1, i64 %2
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !29
  %i.p = zext i8 %i.o to i64
  %i.q = or disjoint i64 %i.l, %i.p
  %i.r = lshr i64 %2, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.q, %i.v
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.w, %bb.e ], [ 87, %bb.d ]
  %i.x = xor i64 %.0.copyload.i.i.i, %.0.i.i
  %i.y = xor i64 %i.x, %0
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.f:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %2, 17
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i38.i = load i64, ptr %i.af, align 1
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i2.i.i = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i38.i, %.0.copyload.i.i.i.i
  %i.aj = xor i64 %i.ai, %0
  %i.ak = xor i64 %.0.copyload.i.i2.i.i, 8779197792823184629
  %i.al = zext i64 %i.aj to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.al, %i.am               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %2, 33
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i42.i = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i42.i, %0        ; 2 uses
  %.0.copyload.i.i43.i = load i64, ptr %1, align 1
  %i.au = xor i64 %.0.copyload.i.i43.i, 1376283091369227076
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i44.i = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.i44.i, %i.at
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.0.copyload.i.i48.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i.i48.i, 589684135938649225
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i49.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i49.i, %i.at
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = xor i128 %i.bh, %i.az
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.az, %i.bj
  %i.bl = xor i128 %i.bk, %i.bh
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #19

declare void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableEJSt4pairIKS8_SA_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSH_DpOSI_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.b = load ptr, ptr %1, align 8, !tbaa !124, !noalias !121, !nonnull !10, !align !126 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.c = load i64, ptr %i.b, align 8, !noalias !130 ; 2 uses
  %i.d = and i64 %i.c, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %.not.i.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !29, !noalias !134 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !15, !noalias !134 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !134
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !15, !noalias !134
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !noalias !134
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i), !noalias !134
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !134
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !134
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.j, align 8, !tbaa !56, !alias.scope !134
  br label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !134
  store ptr %i.b, ptr %3, align 8, !tbaa !135, !noalias !134
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !137, !noalias !134
  %i.l = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !134 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  store ptr %i.m, ptr %0, align 8, !alias.scope !134
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !134
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.o, align 8, !tbaa !56, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !134
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !56, !range !9, !alias.scope !121
  %i.p = trunc nuw i8 %.pre.i to i1
  br i1 %i.p, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i
  %.sroa.2.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert, align 8, !alias.scope !121
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge ], [ %i.n, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !139
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !19
  store ptr %i.r, ptr %i.q, align 8, !tbaa !140
  br label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit

_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !29 ; 3 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %3 = and i64 %i.b, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %3         ; 2 uses
  %4 = icmp samesign ugt i64 %notmask.i.i.i.i.i, -3
  %5 = sub i64 15, %notmask.i.i.i.i.i
  %6 = select i1 %4, i64 0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %6
  %8 = icmp ule ptr %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %10 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i
  %11 = select i1 %8, i1 true, i1 %10
  tail call void @llvm.assume(i1 %11)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !17
  %i.e = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.f = load i64, ptr %1, align 8, !noalias !142
  %i.g = and i64 %i.f, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.g     ; 5 uses
  %i.h = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !29 ; 5 uses
  %12 = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -3
  %13 = sub i64 15, %notmask.i.i.i.i.i.i          ; 3 uses
  %14 = select i1 %12, i64 0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %14
  %16 = icmp ule ptr %15, %1
  %17 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i
  %18 = select i1 %16, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.k, align 8, !tbaa !29 ; 4 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.e, %bb.a ], [ %i.ak, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.h               ; 5 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.n, i32 0, i32 3, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !29 ; 2 uses
  %i.q = icmp eq <16 x i8> %i.m, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32
  %i.t = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #30, !srcloc !33 ; 2 uses
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !15 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !17
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.t, %.lr.ph ], [ %i.ad, %.critedge.i ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.sroa.639.0, %i.w
  %i.y = and i64 %i.x, %i.h                       ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.y ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !15
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !17
  %i.aa = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.aa, label %bb.d, label %.critedge.i, !prof !36

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ac = add i32 %.sroa.024.069, -1
  %i.ad = and i32 %i.ac, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit: ; preds = %.critedge.i, %bb.b
  %i.ae = icmp eq <16 x i8> %i.p, splat (i8 -128)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ag) #30, !srcloc !33 ; 2 uses
  %.not62 = icmp eq i32 %i.ah, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit
  %i.ai = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i32 %i.ah, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  %.pre = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.k, align 8, !tbaa !29
  %.pre76 = and i64 %.pre, 255
  %.pre77 = shl nsw i64 -1, %.pre76               ; 2 uses
  %.pre78 = sub i64 15, %.pre77
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit
  %i.aj = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.pre-phi79 = phi i64 [ %.pre78, %bb.e ], [ %13, %bb.d ], [ %13, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %notmask.i.i.i.i.i8.pre-phi = phi i64 [ %.pre77, %bb.e ], [ %notmask.i.i.i.i.i.i, %bb.d ], [ %notmask.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.349.ph = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %19 = icmp samesign ugt i64 %notmask.i.i.i.i.i8.pre-phi, -3
  %20 = select i1 %19, i64 0, i64 %.pre-phi79
  %21 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %20
  %22 = icmp ule ptr %21, %1
  %23 = icmp ule ptr %9, %.sroa.0.0.copyload.i.i.i.i7
  %24 = select i1 %22, i1 true, i1 %23
  tail call void @llvm.assume(i1 %24)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.al, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.an, align 8, !tbaa !56
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !17
  %i.a = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %2, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i)
  ret i64 %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm24EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #23 comdat {
bb.a:
  %i.a = mul i64 %3, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 3 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !29 ; 5 uses
  %5 = sub i64 15, %notmask.i.i
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %5
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #30, !srcloc !33 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.sroa.052.061 = phi i32 [ %i.dm, %bb.s ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.x ; 3 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !15 ; 14 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !17 ; 11 uses
  %i.ac = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 9
  br i1 %i.ac, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.ad, align 1
  %i.ae = icmp samesign ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 3
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i34.i.i = load i32, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.af = zext i32 %.0.copyload.i.i34.i.i to i64
  %i.ag = shl nuw i64 %i.af, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %.0.copyload.i4.i.i.i = load i32, ptr %i.ai, align 1
  %i.aj = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16
  %i.ao = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = or disjoint i64 %i.as, %i.ax
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %i.ay, %bb.g ], [ 87, %bb.f ]
  %i.az = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.ba = xor i64 %i.az, %i.ab
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw nsw i128 %i.bb, 8779197792823184629 ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bg = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 17
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %.0.copyload.i.i38.i.i = load i64, ptr %i.bh, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.bj, align 1
  %i.bk = xor i64 %.0.copyload.i.i38.i.i, %.0.copyload.i.i.i.i.i
  %i.bl = xor i64 %i.bk, %i.ab
  %i.bm = xor i64 %.0.copyload.i.i2.i.i.i, 8779197792823184629
  %i.bn = zext i64 %i.bl to i128
  %i.bo = zext i64 %i.bm to i128
  %i.bp = mul nuw i128 %i.bn, %i.bo               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 33
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %.0.copyload.i.i42.i.i = load i64, ptr %i.bu, align 1
  %i.bv = xor i64 %.0.copyload.i.i42.i.i, %i.ab   ; 2 uses
  %.0.copyload.i.i43.i.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.bw = xor i64 %.0.copyload.i.i43.i.i, 1376283091369227076
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i44.i.i = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i.i44.i.i, %i.bv
  %i.bz = zext i64 %i.bw to i128
  %i.ca = zext i64 %i.by to i128
  %i.cb = mul nuw i128 %i.ca, %i.bz               ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -16
  %.0.copyload.i.i48.i.i = load i64, ptr %i.cd, align 1
  %i.ce = xor i64 %.0.copyload.i.i48.i.i, 589684135938649225
  %i.cf = getelementptr i8, ptr %i.cc, i64 -8
  %.0.copyload.i.i49.i.i = load i64, ptr %i.cf, align 1
  %i.cg = xor i64 %.0.copyload.i.i49.i.i, %i.bv
  %i.ch = zext i64 %i.ce to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = xor i128 %i.cj, %i.cb
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = xor i128 %i.cb, %i.cl
  %i.cn = xor i128 %i.cm, %i.cj
  %i.co = trunc i128 %i.cn to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.l:                                             ; preds = %bb.j
  %i.cp = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %i.ab, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bf, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i ], [ %i.bs, %bb.i ], [ %i.co, %bb.k ], [ %i.cp, %bb.l ] ; 6 uses
  %i.cq = lshr i64 %.0.i.i, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8           ; 2 uses
  %i.cs = sub i64 %i.x, %.0.i.i                   ; 2 uses
  %i.ct = and i64 %i.i, %i.cs
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.m, label %bb.n, !prof !146

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cv = and i64 %i.cs, 15
  %i.cw = add i64 %i.cv, %.0.i.i
  %i.cx = and i64 %i.cw, %i.c
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cy = and i64 %.0.i.i, %i.d
  %.not.i = icmp ult i64 %i.cy, %i.x
  br i1 %.not.i, label %bb.o, label %bb.q, !prof !146

bb.o:                                             ; preds = %bb.n
  %i.cz = and i64 %.0.i.i, %i.c                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.cz
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !29
  %i.dc = icmp slt <16 x i8> %i.db, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = zext i16 %i.dd to i32
  %i.df = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.de) #30, !srcloc !33 ; 2 uses
  %.not26.i = icmp eq i32 %i.df, 0
  br i1 %.not26.i, label %bb.q, label %bb.p, !prof !34

bb.p:                                             ; preds = %bb.o
  %i.dg = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.df, i1 true)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = add nuw i64 %i.cz, %i.dh
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cr, i64 noundef %i.x, i64 noundef %.0.i.i)
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.m
  %.sink27.i = phi i64 [ %i.di, %bb.p ], [ %i.cx, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
end_hunk_3
