inline.NumInlined: 1150
inline.NumDeleted: 569
begin_hunk_0_@_ZN4absl12lts_2024011614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit", !llvm.loop !22

"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit": ; preds = %"_ZZN4absl12lts_2024011614flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPNS0_15CommandLineFlagE.exit.i"
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !9
  br label %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"

"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit": ; preds = %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit", %bb.b
  %i.ae = phi ptr [ %i.h, %bb.b ], [ %.pre, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit" ]
  %.sroa.013.0.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.013.1.i, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit.loopexit" ] ; 3 uses
  %i.af = icmp eq ptr %.sroa.013.0.lcssa.i, %i.ae
  br i1 %i.af, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit"
  %i.ag = load ptr, ptr %.sroa.013.0.lcssa.i, align 8, !tbaa !17 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call { i64, ptr } %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1
  %i.am = icmp eq i64 %i.ak, %.sroa.04.0.copyload
  br i1 %i.am, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.an, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr %i.al, ptr %.sroa.25.0.copyload, i64 %.sroa.04.0.copyload)
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ap = load ptr, ptr %.sroa.013.0.lcssa.i, align 8, !tbaa !17
  br label %_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit

.critedge.thread:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c, %"_ZSt15partition_pointIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2024011615CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal12FlagRegistry8FindFlagESt17basic_string_viewIcSt11char_traitsIcEEE3$_0ET_SI_SI_T0_.exit", %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.ar = invoke { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %.critedge.thread
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = extractvalue { ptr, ptr } %i.ar, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aw = phi ptr [ %i.av, %bb.f ], [ null, %bb.e ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #32
  unreachable

bb.i:                                             ; preds = %.critedge.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit15 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #32
  unreachable

_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit15: ; preds = %bb.i
  resume { ptr, i32 } %i.az

_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit: ; preds = %bb.g, %.critedge
  %.1 = phi ptr [ %i.ap, %.critedge ], [ %i.aw, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !13 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15
  %i.b = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.c = add i64 %i.b, %.sroa.0.0.copyload
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw i128 %i.d, 11376068507788127593  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e                      ; 2 uses
  %i.h = trunc i128 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !27, !noalias !29 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32, !noalias !29 ; 4 uses
  %i.l = lshr i64 %i.h, 7
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = lshr i64 %i.m, 12
  %i.o = xor i64 %i.l, %i.n                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.r = trunc i128 %i.g to i8
  %i.s = and i8 %i.r, 127
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr, 0
  br i1 %i.v, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %.pn.i.us = phi i64 [ %i.ae, %bb.b ], [ %i.o, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %i.ad, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i.us = and i64 %.pn.i.us, %i.k       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.6.0.i.us
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !34 ; 3 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not43.i.us = icmp eq i16 %i.z, 0
  br i1 %.not43.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.c, %.split.us
  %i.aa = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.x, <16 x i8> %i.x)
  %i.ab = icmp slt <16 x i8> %i.aa, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %.not41.i.us = icmp eq i16 %i.ac, 0
  br i1 %.not41.i.us, label %bb.b, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_m.exit, !prof !35

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.ad = add i64 %.sroa.12.0.i.us, 16            ; 2 uses
  %i.ae = add i64 %i.ad, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !36

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.c
  %.sroa.016.044.i.us.us = phi i16 [ %i.am, %bb.c ], [ %i.z, %.split.us ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.us.us, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.us, %i.ag
  %i.ai = and i64 %i.ah, %i.k                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.ai ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.us.us = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.ak = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.us.us, 0
  br i1 %i.ak, label %.thread30.i, label %bb.c, !prof !37

bb.c:                                             ; preds = %.lr.ph.i.us.us
  %i.al = add i16 %.sroa.016.044.i.us.us, -1
  %i.am = and i16 %i.al, %.sroa.016.044.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.am, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.a, %bb.e
  %.pn.i = phi i64 [ %i.bf, %bb.e ], [ %i.o, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.be, %bb.e ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.k             ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.6.0.i
  %i.ao = load <16 x i8>, ptr %i.an, align 1, !tbaa !34 ; 3 uses
  %i.ap = icmp eq <16 x i8> %i.u, %i.ao
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not43.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.d
  %.sroa.016.044.i = phi i16 [ %i.ba, %bb.d ], [ %i.aq, %.split ] ; 3 uses
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = add i64 %.sroa.6.0.i, %i.as
  %i.au = and i64 %i.at, %i.k                     ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.au ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !tbaa !13
  %i.aw = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.fr
  br i1 %i.aw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %bb.d, !prof !37

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !15
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.fr)
  %i.ax = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %.thread30.i, label %bb.d

.thread30.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ai, %.lr.ph.i.us.us ], [ %i.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %.us-phi8 = phi ptr [ %i.aj, %.lr.ph.i.us.us ], [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_m.exit

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.az = add i16 %.sroa.016.044.i, -1
  %i.ba = and i16 %i.az, %.sroa.016.044.i         ; 2 uses
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %.split
  %i.bb = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.ao, <16 x i8> %i.ao)
  %i.bc = icmp slt <16 x i8> %i.bb, zeroinitializer
  %i.bd = bitcast <16 x i1> %i.bc to i16
  %.not41.i = icmp eq i16 %i.bd, 0
  br i1 %.not41.i, label %bb.e, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_m.exit, !prof !35

bb.e:                                             ; preds = %._crit_edge.i
  %i.be = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bf = add i64 %i.be, %.sroa.6.0.i
  br label %.split, !llvm.loop !36

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread30.i
  %.sroa.0.4.ph.i = phi ptr [ %i.ay, %.thread30.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi8, %.thread30.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011614flags_internal12FlagRegistry12RegisterFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.absl::lts_20240116::FlagsUsageConfig", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"struct.std::pair", align 8       ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %22 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %30 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %32 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %38 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %39 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %40 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !15
  %.not.not = icmp eq ptr %2, null
  br i1 %.not.not, label %.critedge138.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN4absl12lts_2024011614flags_internal14GetUsageConfigEv(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20240116::FlagsUsageConfig") align 8 %7)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %i.e, ptr %4, align 8, !noalias !38
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.f, align 8, !noalias !38
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41, !noalias !38
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #33
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43, !noalias !38
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %bb.m, !inline_history !45

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.g, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre = load ptr, ptr %6, align 8, !tbaa !49
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i64 %i.m, 0
  %.pre263 = load ptr, ptr %6, align 8, !tbaa !49 ; 3 uses
  br i1 %i.q, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %5, align 8, !tbaa !49
  %bcmp.i = call i32 @bcmp(ptr %i.r, ptr %.pre263, i64 %i.m)
  %i.s = icmp ne i32 %bcmp.i, 0
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.g, %bb.h
  %i.t = phi ptr [ %.pre, %..critedge_crit_edge ], [ %.pre263, %bb.h ], [ %.pre263, %bb.g ] ; 2 uses
  %i.u = phi i1 [ true, %..critedge_crit_edge ], [ %i.s, %bb.h ], [ false, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge
  %i.x = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.y = load i64, ptr %i.v, align 8, !tbaa !34
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.z) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN4absl12lts_2024011616FlagsUsageConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.aa = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.critedge138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #34
  br label %.critedge138

.critedge138:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %i.u, label %bb.i, label %.critedge138.thread

bb.i:                                             ; preds = %.critedge138
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store i64 61, ptr %9, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ag = load ptr, ptr %1, align 8, !tbaa !19
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call { i64, ptr } %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  store i64 %i.aj, ptr %10, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store i64 70, ptr %11, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.1, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.am = load ptr, ptr %1, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ap = load ptr, ptr %13, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !46
  store i64 %i.ar, ptr %12, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ap, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store i64 5, ptr %14, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.2, ptr %i.at, align 8
  invoke void @_ZN4absl12lts_202401166StrCatIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESC_SC_SC_SC_DpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %8, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !46
  invoke void @_ZN4absl12lts_2024011614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.aw, ptr %i.au, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @exit(i32 noundef 1) #35
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011616FlagsUsageConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %7) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.az = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.n
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !34
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit244

bb.o:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.p:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !34
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.o
  %.pn132 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.bl = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit244

.critedge138.thread:                              ; preds = %bb.a, %.critedge138
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.br = load ptr, ptr %1, align 8, !tbaa !19
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke { i64, ptr } %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.q unwind label %bb.aa      ; 2 uses

bb.q:                                             ; preds = %.critedge138.thread
  %i.bu = extractvalue { i64, ptr } %i.bt, 0
  %i.bv = extractvalue { i64, ptr } %i.bt, 1
  store i64 %i.bu, ptr %15, align 8, !tbaa !13
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bv, ptr %.sroa.5258.0..sroa_idx, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %1, ptr %i.bw, align 8, !tbaa !24
  %i.bx = invoke { i64, i8 } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE22find_or_prepare_insertIS7_EESD_ImbERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %.noexc153 unwind label %bb.ab ; 2 uses

.noexc153:                                        ; preds = %bb.q
  %.fca.0.extract.i.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bx, 0 ; 3 uses
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bx, 1 ; 2 uses
  %i.by = trunc i8 %.fca.1.extract.i.i.i.i.i.i.i to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33, !noalias !50 ; 2 uses
  br i1 %i.by, label %.thread262, label %bb.r

.thread262:                                       ; preds = %.noexc153
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.fca.0.extract.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 16, i1 false), !tbaa.struct !65, !noalias !50
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !17, !noalias !50
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !66, !noalias !50
  %44 = load ptr, ptr %0, align 8, !tbaa !27, !noalias !50
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 %.fca.0.extract.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %45) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.cg

bb.r:                                             ; preds = %.noexc153
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.ce = icmp eq i8 %.fca.1.extract.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %bb.s, label %bb.cg

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.fca.0.extract.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !24 ; 12 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.cq = xor i1 %i.cl, %i.cp
  br i1 %i.cq, label %bb.v, label %bb.aj

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.cr = load ptr, ptr %1, align 8, !tbaa !19
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke { i64, ptr } %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.w unwind label %bb.ae      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cu = extractvalue { i64, ptr } %i.ct, 0
  %i.cv = extractvalue { i64, ptr } %i.ct, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.cw = load ptr, ptr %1, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.invoke unwind label %bb.af

.invoke:                                          ; preds = %bb.w
  %. = select i1 %i.cz, ptr %i.ch, ptr %1         ; 2 uses
  %i.da = load ptr, ptr %., align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %.)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %.invoke
  %i.dd = load ptr, ptr %17, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !68
  store i64 14, ptr %3, align 8, !noalias !68
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.3, ptr %i.dg, align 8, !noalias !68
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.cu, ptr %i.dh, align 8, !noalias !68
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.cv, ptr %i.di, align 8, !noalias !68
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 32, ptr %i.dj, align 8, !noalias !68
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.4, ptr %i.dk, align 8, !noalias !68
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.df, ptr %i.dl, align 8, !noalias !68
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.dd, ptr %i.dm, align 8, !noalias !68
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 2, ptr %i.dn, align 8, !noalias !68
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @.str.5, ptr %i.do, align 8, !noalias !68
  invoke void @_ZN4absl12lts_2024011616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %3, i64 5)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !68
  %i.dp = load ptr, ptr %16, align 8, !tbaa !49
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !46
  invoke void @_ZN4absl12lts_2024011614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.dr, ptr %i.dp, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.ds = load ptr, ptr %16, align 8, !tbaa !49   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.z
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !34
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  %i.dx = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !34
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.cf

bb.aa:                                            ; preds = %.critedge138.thread
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.q
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn96 = phi { ptr, i32 } [ %i.ed, %bb.ab ], [ %i.ec, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.ci

bb.ad:                                            ; preds = %bb.ay, %bb.ak, %bb.aj, %bb.t, %bb.s
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ae:                                            ; preds = %bb.v
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %.invoke, %bb.w
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ag:                                            ; preds = %bb.x
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.ah:                                            ; preds = %bb.y
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %16, align 8, !tbaa !49   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.ah
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !34
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.ag
  %.pn124 = phi { ptr, i32 } [ %i.eh, %bb.ag ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.ei, %bb.ah ] ; 2 uses
  %i.eo = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !34
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.af
  %.pn124.pn = phi { ptr, i32 } [ %i.eg, %bb.af ], [ %.pn124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %.pn124.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %i.ef, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ci

bb.aj:                                            ; preds = %bb.u
  %i.et = invoke noundef ptr @_ZN4absl12lts_2024011614flags_internal21PrivateHandleAccessor6TypeIdERKNS0_15CommandLineFlagE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ak unwind label %bb.ad

bb.ak:                                            ; preds = %bb.aj
  %i.eu = invoke noundef ptr @_ZN4absl12lts_2024011614flags_internal21PrivateHandleAccessor6TypeIdERKNS0_15CommandLineFlagE(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.al unwind label %bb.ad

bb.al:                                            ; preds = %bb.ak
  %.not = icmp eq ptr %i.et, %i.eu
end_hunk_0
