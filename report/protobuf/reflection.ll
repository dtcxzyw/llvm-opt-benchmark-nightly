inline.NumInlined: 1155
inline.NumDeleted: 570
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal16FinalizeRegistryEv:bb.a
_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.e, %.noexc
  %.not.i8.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  %.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 8), align 8, !tbaa !30
  br label %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre = phi i64 [ %.pre.pre, %bb.f ], [ %i.f, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.g ; 2 uses
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 48), align 8, !tbaa !90
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.d
  %i.w = phi ptr [ %i.s, %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.x = phi ptr [ %i.v, %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.h, %bb.d ]
  %i.y = phi i64 [ %.pre, %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.f, %bb.d ]
  %.not.i.i = icmp ult i64 %i.y, 131072
  br i1 %.not.i.i, label %.loopexit43, label %bb.g, !prof !35

bb.g:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit
  %i.z = load i64, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, align 8, !tbaa !27
  %i.aa = icmp eq i64 %i.z, 1
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 16), align 8, !tbaa !31, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 24), align 8, !tbaa !31 ; 3 uses
  br i1 %i.aa, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !87
  %i.ad = icmp slt i8 %i.ac, -1
  br i1 %i.ad, label %.lr.ph.i.i, label %.lr.ph.preheader

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.h ]
  %i.af = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !31
  %i.ah = icmp slt <16 x i8> %i.ag, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 1
  %i.al = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ak, i1 true)
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.am ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !87
  %i.aq = icmp slt i8 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i.i, label %.lr.ph.preheader, !llvm.loop !89

.loopexit43:                                      ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit
  %.pre59 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !9
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i, %bb.g, %bb.h
  %.sroa.6.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.h ], [ %i.ao, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.an, %.lr.ph.i.i ]
  %.pre5978 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !9
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i
  %.pre58 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit43, %._crit_edge.loopexit
  %i.ar = phi ptr [ %i.cr, %._crit_edge.loopexit ], [ %.pre59, %.loopexit43 ] ; 6 uses
  %i.as = phi ptr [ %.pre58, %._crit_edge.loopexit ], [ %i.w, %.loopexit43 ] ; 6 uses
  %.not.i.i22 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i22, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = xor i64 %i.ay, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_SG_T0_T1_"(ptr %i.as, ptr %i.ar, i64 noundef %i.az)
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.i
  %i.ba = icmp sgt i64 %i.av, 128
  br i1 %i.ba, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.noexc23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 128 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_SG_T0_"(ptr %i.as, ptr nonnull %i.bb)
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.j
  %.not6.i.i.i.i = icmp eq ptr %i.bb, %i.ar
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc24, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.bu, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.bb, %.noexc24 ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !17 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bd = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke { i64, ptr } %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %.noexc25 unwind label %.loopexit, !inline_history !94 ; 2 uses

.noexc25:                                         ; preds = %bb.k
  %i.bh = extractvalue { i64, ptr } %i.bg, 0      ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke { i64, ptr } %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %.noexc26 unwind label %.loopexit, !inline_history !94 ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  %i.bl = extractvalue { i64, ptr } %i.bk, 0      ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bh) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc26
  %i.bn = extractvalue { i64, ptr } %i.bk, 1
  %i.bo = extractvalue { i64, ptr } %i.bg, 1
  %i.bp = tail call i32 @memcmp(ptr noundef %i.bo, ptr noundef %i.bn, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #30 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051214flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.noexc26
  %i.br = sub i64 %i.bh, %i.bl
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051214flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051214flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.l, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051214flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"
  %i.bt = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !17
  store ptr %i.bt, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !17
  br label %bb.k, !llvm.loop !95

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4absl12lts_2025051214flags_internal16FinalizeRegistryEvE3$_0EclIPNS3_15CommandLineFlagENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i"
  store ptr %i.bc, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !96

bb.m:                                             ; preds = %.noexc23
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_SG_T0_"(ptr %i.as, ptr %i.ar)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit" unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.k, %.noexc25
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i, %bb.i, %bb.j, %bb.m, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph.preheader
  %i.bv = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.cp, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 5 uses
  %i.bw = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.cq, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %i.bx = phi ptr [ %.pre5978, %.lr.ph.preheader ], [ %i.cr, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %.sroa.9.051 = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph.preheader ], [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 2 uses
  %.sroa.034.050 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph.preheader ], [ %.sroa.034.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.9.051, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !93
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit

bb.o:                                             ; preds = %.lr.ph
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.bv to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.p, label %_ZNKSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #32
          to label %.noexc29 unwind label %.loopexit.split-lp39

.noexc29:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.cf = ashr exact i64 %i.cd, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #35
          to label %.noexc30 unwind label %.loopexit38 ; 5 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cd ; 2 uses
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !17
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !17
  %i.cm = icmp sgt i64 %i.cd, 0
  br i1 %i.cm, label %bb.q, label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.q:                                             ; preds = %.noexc30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %i.bv, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.q, %.noexc30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cd) #33
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.cj, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !92
  store ptr %i.cn, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch ; 2 uses
  store ptr %i.co, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 48), align 8, !tbaa !90
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.n
  %i.cp = phi ptr [ %i.cj, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.bv, %bb.n ]
  %i.cq = phi ptr [ %i.co, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.bw, %bb.n ]
  %i.cr = phi ptr [ %i.cn, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ca, %bb.n ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.034.050, i64 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.9.051, i64 24 ; 2 uses
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !87  ; 2 uses
  %i.cv = icmp slt i8 %i.cu, -1
  br i1 %i.cv, label %.lr.ph.i.i31, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i31:                                     ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit, %.lr.ph.i.i31
  %i.cw = phi ptr [ %i.dg, %.lr.ph.i.i31 ], [ %i.ct, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit ]
  %i.cx = phi ptr [ %i.df, %.lr.ph.i.i31 ], [ %i.cs, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.cy = load <16 x i8>, ptr %i.cx, align 1, !tbaa !31
  %i.cz = icmp slt <16 x i8> %i.cy, splat (i8 -1)
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, 1
  %i.dd = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dc, i1 true)
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !87  ; 2 uses
  %i.di = icmp slt i8 %i.dh, -1
  br i1 %i.di, label %.lr.ph.i.i31, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i31, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit
  %.sroa.034.1 = phi ptr [ %i.cs, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit ], [ %i.df, %.lr.ph.i.i31 ]
  %.sroa.9.1 = phi ptr [ %i.ct, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit ], [ %i.dg, %.lr.ph.i.i31 ]
  %i.dj = phi i8 [ %i.cu, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE9push_backERKS3_.exit ], [ %i.dh, %.lr.ph.i.i31 ]
  %i.dk = icmp eq i8 %i.dj, -1
  br i1 %i.dk, label %._crit_edge.loopexit, label %.lr.ph, !prof !35

.loopexit38:                                      ; preds = %_ZNKSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp39:                             ; preds = %bb.p
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_14flags_internal16FinalizeRegistryEvE3$_0EEEvT_T0_.exit.i.i.i.i", %.noexc24, %._crit_edge, %bb.m
  %i.dl = load i64, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, align 8, !tbaa !27 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE5clearEv.exit, label %bb.s

bb.s:                                             ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit"
  %i.dn = icmp ult i64 %i.dl, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i1 noundef zeroext %i.dn, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE5clearEv.exit unwind label %.loopexit.split-lp

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE5clearEv.exit: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_2025051215CommandLineFlagESt6vectorIS5_SaIS5_EEEEZNS3_14flags_internal16FinalizeRegistryEvE3$_0EvT_SD_T0_.exit", %bb.s
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 56) release, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEv.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE5clearEv.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 64))
          to label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #31
  unreachable

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit: ; preds = %bb.t
  ret void

bb.v:                                             ; preds = %.loopexit38, %.loopexit.split-lp39, %.loopexit, %.loopexit.split-lp
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit40, %.loopexit38 ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp39 ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 64))
          to label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit33 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  tail call void @__clang_call_terminate(ptr %i.dr) #31
  unreachable

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_116FlagRegistryLockD2Ev.exit33: ; preds = %bb.v
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051214flags_internal6RetireEPKcPKvPh(ptr noundef %0, ptr noundef %1, ptr noundef initializes((0, 24)) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObjE, i64 16), ptr %2, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !100
  %i.c = load atomic i8, ptr @_ZGVZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEv.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #30
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 16), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 64), align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), i8 0, i64 25, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry) #30
  br label %_ZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEv.exit

_ZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_2025051214flags_internal12FlagRegistry12RegisterFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505129FlagSaverC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.16", align 8  ; 11 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8
  %i.e = ptrtoint ptr %i.a to i64
  store i64 %i.e, ptr %1, align 8, !tbaa !104
  store ptr @_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.c, align 8, !tbaa !84
  store ptr @_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlS3_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.b, align 8, !tbaa !41
  invoke void @_ZN4absl12lts_2025051214flags_internal11ForEachFlagESt8functionIFvRNS0_15CommandLineFlagEEE(ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j

_ZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEv.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_202505129FlagSaverD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 2 uses
  %.not7.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i, label %_ZN4absl12lts_2025051214flags_internal13FlagSaverImpl17RestoreToRegistryEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.noexc
  %.sroa.04.08.i = phi ptr [ %i.i, %.noexc ], [ %i.b, %bb.b ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj6TypeIdEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj9SaveStateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj4ReadEPv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call fastcc void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj24IsSpecifiedOnCommandLineEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call fastcc void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj18ValidateInputValueESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call fastcc void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj33CheckDefaultValueParsingRoundtripEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call fastcc void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.val)
  ret void
}

declare { i64, ptr } @_ZNK4absl12lts_2025051215CommandLineFlag8TypeNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK4absl12lts_2025051214flags_internal12_GLOBAL__N_114RetiredFlagObj8OnAccessEv(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store i64 24, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.16, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.8.val) #30
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.8.val, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 1, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.17, ptr %i.d, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.e = load ptr, ptr %0, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  invoke void @_ZN4absl12lts_2025051214flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.g, ptr %i.e, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !31
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  resume { ptr, i32 } %i.m
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvENKUlRNS0_15CommandLineFlagEE_clES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlS3_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS2_15CommandLineFlagEE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS0_15CommandLineFlagEE_, ptr %0, align 8, !tbaa !121
  br label %_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS2_15CommandLineFlagEE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !123
  br label %_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS2_15CommandLineFlagEE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !104
  store i64 %i.a, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS2_15CommandLineFlagEE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlRNS2_15CommandLineFlagEE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvENKUlRNS0_15CommandLineFlagEE_clES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN4absl12lts_2025051214flags_internal21PrivateHandleAccessor9SaveStateERNS0_15CommandLineFlagE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not, label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %i.e, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !112
  br label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit6

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !110  ; 10 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #32
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975) ; 2 uses
  %.not.i.i = icmp ne i64 %i.o, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35
          to label %.noexc8 unwind label %bb.g    ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i64 %i.c, ptr %i.s, align 8, !tbaa !107
  store ptr null, ptr %2, align 8, !tbaa !107
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.t = add i64 %i.j, -8
  %i.u = sub i64 %i.t, %i.k                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.x = add i64 %i.j, -8
  %i.y = sub i64 %i.x, %i.k
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.aa
  %scevgep13 = getelementptr i8, ptr %i.i, i64 %i.aa
  %bound0 = icmp ult ptr %i.r, %scevgep13
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.i, i64 %i.ae ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.af = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !107, !alias.scope !131, !noalias !126
  %wide.load15 = load <2 x i64>, ptr %i.af, align 8, !tbaa !107, !alias.scope !131, !noalias !126
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !107, !alias.scope !134, !noalias !131
  store <2 x i64> %wide.load15, ptr %i.ag, align 8, !tbaa !107, !alias.scope !134, !noalias !131
  %i.ah = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !107, !alias.scope !131, !noalias !126
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !107, !alias.scope !131, !noalias !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.aj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !107, !alias.scope !129, !noalias !126
  store i64 %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !107, !alias.scope !126, !noalias !129
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !107, !alias.scope !129, !noalias !126
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !139

_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %.noexc8 ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4absl12lts_2025051214flags_internal18FlagStateInterfaceEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4absl12lts_2025051214flags_internal18FlagStateInterfaceEEclEPS3_.exit.i: ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30, !inline_history !140
  br label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN4absl12lts_2025051214flags_internal18FlagStateInterfaceEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.an

_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.f
  store ptr %i.r, ptr %i.a, align 8, !tbaa !110
  store ptr %i.am, ptr %i.d, align 8, !tbaa !112
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.as, ptr %i.f, align 8, !tbaa !115
  %.pr = load ptr, ptr %2, align 8, !tbaa !107    ; 3 uses
  %.not.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit6, label %_ZNKSt14default_deleteIN4absl12lts_2025051214flags_internal18FlagStateInterfaceEEclEPS3_.exit.i5

_ZNKSt14default_deleteIN4absl12lts_2025051214flags_internal18FlagStateInterfaceEEclEPS3_.exit.i5: ; preds = %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit
  %i.at = load ptr, ptr %.pr, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #30, !inline_history !140
  br label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit6

_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit6: ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit, %_ZNKSt14default_deleteIN4absl12lts_2025051214flags_internal18FlagStateInterfaceEEclEPS3_.exit.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

declare void @_ZN4absl12lts_2025051214flags_internal21PrivateHandleAccessor9SaveStateERNS0_15CommandLineFlagE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #24

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !31
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !31
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !35

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #25

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #20

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE30find_or_prepare_insert_non_sooIS7_EESD_INSH_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !13 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30, !noalias !141
end_hunk_1
