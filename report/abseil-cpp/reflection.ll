Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/reflection?download=true
inline.NumInlined: 1163
inline.NumDeleted: 574
begin_hunk_0_@_ZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %3, align 8, !tbaa !19 ; 5 uses
  %.sroa.25.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !21 ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { i64, ptr } %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !83 ; 2 uses
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
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit", !llvm.loop !84

"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit": ; preds = %"_ZZN4absl12lts_2026052614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i"
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"

"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit": ; preds = %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit", %bb.b
  %i.ae = phi ptr [ %i.h, %bb.b ], [ %.pre, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit" ]
  %.sroa.013.0.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.013.1.i, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit" ] ; 3 uses
  %.not = icmp eq ptr %.sroa.013.0.lcssa.i, %i.ae
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2026052615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"
  %i.af = load ptr, ptr %.sroa.013.0.lcssa.i, align 8, !tbaa !23 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
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
  %i.ao = load ptr, ptr %.sroa.013.0.lcssa.i, align 8, !tbaa !23
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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29
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
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_smallIS7_EENSB_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !30 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !19 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !21
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !21
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
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = lshr i64 %i.a, 8
  %i.j = and i64 %i.i, 255
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21
  %i.k = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.j, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.l = load i64, ptr %0, align 8, !noalias !88
  %i.m = and i64 %i.l, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i.i.i.i.i.i.i, -1       ; 4 uses
  %i.o = lshr i64 %i.k, 57
  %i.p = trunc nuw nsw i64 %i.o to i8
  %.sroa.0.0.copyload.i.i.i.i6 = load ptr, ptr %i.h, align 8, !tbaa !30 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.q, align 8, !tbaa !30 ; 4 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i7 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i7.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i7 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i9 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.t = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i7.fr, 0
  br i1 %i.t, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.g
  %.sroa.13.0.i.us = phi i64 [ %i.an, %bb.g ], [ 0, %bb.e ]
  %.pn.i10.us = phi i64 [ %i.ao, %bb.g ], [ %i.k, %bb.e ]
  %.sroa.628.0.i.us = and i64 %.pn.i10.us, %i.n   ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.sroa.628.0.i.us
  %i.w = load <16 x i8>, ptr %i.v, align 1, !tbaa !30 ; 2 uses
  %i.x = icmp eq <16 x i8> %i.s, %i.w
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = zext i16 %i.y to i32
  %i.aa = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.z) #30, !srcloc !31 ; 2 uses
  %.not49.i.us = icmp eq i32 %i.aa, 0
  br i1 %.not49.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.f
  %.sroa.019.050.i.us.us = phi i32 [ %i.ai, %bb.f ], [ %i.aa, %.split.us ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.us.us, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add nuw i64 %.sroa.628.0.i.us, %i.ac
  %i.ae = and i64 %i.ad, %i.n                     ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.ae ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i11.us.us = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ag = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i11.us.us, 0
  br i1 %i.ag, label %.thread36.i, label %bb.f, !prof !32

bb.f:                                             ; preds = %.lr.ph.i.us.us
  %i.ah = add i32 %.sroa.019.050.i.us.us, -1
  %i.ai = and i32 %i.ah, %.sroa.019.050.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.ai, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.f, %.split.us
  %i.aj = icmp eq <16 x i8> %i.w, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = zext i16 %i.ak to i32
  %i.am = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.al) #30, !srcloc !31
  %.not47.i.us = icmp eq i32 %i.am, 0
  br i1 %.not47.i.us, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit, !prof !33

bb.g:                                             ; preds = %._crit_edge.i.us
  %i.an = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ao = add i64 %.sroa.628.0.i.us, %i.an
  br label %.split.us, !llvm.loop !87

.split:                                           ; preds = %bb.e, %bb.i
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.pn.i10 = phi i64 [ %i.bl, %bb.i ], [ %i.k, %bb.e ]
  %.sroa.628.0.i = and i64 %.pn.i10, %i.n         ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.sroa.628.0.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !30 ; 2 uses
  %i.as = icmp eq <16 x i8> %i.s, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = zext i16 %i.at to i32
  %i.av = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.au) #30, !srcloc !31 ; 2 uses
  %.not49.i = icmp eq i32 %i.av, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.019.050.i = phi i32 [ %i.bf, %bb.h ], [ %i.av, %.split ] ; 3 uses
  %i.aw = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nuw i64 %.sroa.628.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.n                     ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.az ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i11 = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bb = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i11, %.sroa.0.0.copyload.i.i.i.i.i.i7.fr
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14, label %bb.h, !prof !32

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i13 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i12, align 8, !tbaa !21
  %bcmp.i.i.i.i.i.i.i.i15 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i13, ptr %.sroa.2.0.copyload.i.i.i.i.i.i9, i64 %.sroa.0.0.copyload.i.i.i.i.i.i7.fr)
  %i.bc = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i15, 0
  br i1 %i.bc, label %.thread36.i, label %bb.h

.thread36.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ae, %.lr.ph.i.us.us ], [ %i.az, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14 ]
  %.us-phi20 = phi ptr [ %i.af, %.lr.ph.i.us.us ], [ %i.ba, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i14 ]
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
  %i.bj = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bi) #30, !srcloc !31
  %.not47.i = icmp eq i32 %i.bj, 0
  br i1 %.not47.i, label %bb.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE10find_largeIS7_EENSB_8iteratorERKT_m.exit, !prof !33

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %.sroa.628.0.i, %i.bk
  br label %.split, !llvm.loop !87

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
  store ptr %2, ptr %i.a, align 8, !tbaa !21
  %.not.not = icmp eq ptr %2, null
  br i1 %.not.not, label %.critedge140.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.b = load ptr, ptr %1, align 8, !tbaa !25
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
  store i64 %i.e, ptr %5, align 8, !noalias !98
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.f, align 8, !noalias !98
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35, !noalias !98
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100, !noalias !98
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %bb.m, !inline_history !91

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre = load ptr, ptr %7, align 8, !tbaa !39
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i64 %i.m, 0
  %.pre263 = load ptr, ptr %7, align 8, !tbaa !39 ; 3 uses
  br i1 %i.q, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %6, align 8, !tbaa !39
  %bcmp.i.i = call i32 @bcmp(ptr %i.r, ptr %.pre263, i64 %i.m)
  %i.s = icmp ne i32 %bcmp.i.i, 0
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.h, %bb.g
  %i.t = phi ptr [ %.pre263, %bb.g ], [ %.pre263, %bb.h ], [ %.pre, %..critedge_crit_edge ] ; 2 uses
  %.ph = phi i1 [ false, %bb.g ], [ %i.s, %bb.h ], [ true, %..critedge_crit_edge ]
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge
  %i.w = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.x = load i64, ptr %i.u, align 8, !tbaa !30
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN4absl12lts_2026052616FlagsUsageConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.z = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %.critedge140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #32
  br label %.critedge140

.critedge140:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.ph, label %bb.i, label %.critedge140.thread

bb.i:                                             ; preds = %.critedge140
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i64 61, ptr %10, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.af = load ptr, ptr %1, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { i64, ptr } %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  store i64 %i.ai, ptr %11, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i64 70, ptr %12, align 8
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm:bb.a

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.b = load ptr, ptr %1, align 8, !tbaa !73, !noalias !139, !nonnull !13, !align !74 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.c = load i64, ptr %i.b, align 8, !noalias !141 ; 2 uses
  %i.d = and i64 %i.c, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %.not.i.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !30, !noalias !143 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !19, !noalias !143 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !noalias !143
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !19, !noalias !143
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !noalias !143
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i), !noalias !143
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !143
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !143
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.j, align 8, !tbaa !45, !alias.scope !143
  br label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !143
  store ptr %i.b, ptr %3, align 8, !tbaa !76, !noalias !143
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !78, !noalias !143
  %i.l = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !143 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  store ptr %i.m, ptr %0, align 8, !alias.scope !143
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !143
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.o, align 8, !tbaa !45, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !143
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !45, !range !12, !alias.scope !139
  %i.p = trunc nuw i8 %.pre.i to i1
  br i1 %i.p, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i
  %.sroa.2.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert, align 8, !alias.scope !139
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i._crit_edge ], [ %i.n, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !79
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !23
  store ptr %i.r, ptr %i.q, align 8, !tbaa !81
  br label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit

_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJOKS7_EESH_IJOS9_EEEEESt4pairINSB_8iteratorEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.thread5.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE22find_or_prepare_insertIS7_EESt4pairINSB_8iteratorEbERKT_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21
  %i.e = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.f = load i64, ptr %1, align 8, !noalias !146
  %i.g = and i64 %i.f, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.g
  %i.h = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.k, align 8, !tbaa !30 ; 4 uses
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
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !30 ; 2 uses
  %i.q = icmp eq <16 x i8> %i.m, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32
  %i.t = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #30, !srcloc !31 ; 2 uses
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !19 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.t, %.lr.ph ], [ %i.ad, %.critedge.i ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.sroa.639.0, %i.w
  %i.y = and i64 %i.x, %i.h                       ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.y ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !21
  %i.aa = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.aa, label %bb.d, label %.critedge.i, !prof !32

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
  %i.ah = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ag) #30, !srcloc !31 ; 2 uses
  %.not62 = icmp eq i32 %i.ah, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !33

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit
  %i.ai = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i32 %i.ah, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !30
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRSt4pairIKS7_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit
  %i.aj = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.349.ph = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.al, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.an, align 8, !tbaa !45
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21
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
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !30 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #30, !srcloc !31 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !147

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.sroa.052.061 = phi i32 [ %i.dm, %bb.s ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.x ; 3 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !19 ; 14 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !21 ; 11 uses
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
  %i.al = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1, !tbaa !30
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16
  %i.ao = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !30
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !30
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
end_hunk_1
