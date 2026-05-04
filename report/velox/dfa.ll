inline.NumInlined: 1926
inline.NumDeleted: 800
begin_hunk_0_@_ZN3re23DFA11CachedStateEPiij:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

bb.f:                                             ; preds = %_ZNSaIiE8allocateEm.exit
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { i64, i8 } %i.au, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98, !noalias !145
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.fca.0.extract.i.i.i.i.i.i
  store ptr %.pre, ptr %i.az, align 8, !tbaa !104, !noalias !145
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_:bb.a
.thread34.i:                                      ; preds = %.lr.ph.i.split, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, %bb.c, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %i.av, %bb.c ], [ %i.av, %.lr.ph.i.split.us ], [ %i.bk, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i ], [ %i.bk, %.lr.ph.i.split ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.us-phi
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_m.exit

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread29.i: ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE12EqualElementIS7_EEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, %bb.d
end_hunk_1
begin_hunk_2_@_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.ag:                                            ; preds = %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit
  %i.ew = load ptr, ptr %4, align 8, !tbaa !95    ; 5 uses
  call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 1, i32 1)
  %i.ex = add i64 %magicptr78, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.ey = zext i64 %i.ex to i128
end_hunk_2
begin_hunk_3_@_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !104
  %i.gd = icmp eq ptr %i.gc, %i.eg
  br i1 %i.gd, label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.ge = add i16 %.sroa.016.044.i.i, -1
end_hunk_3
begin_hunk_4_@_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
  %i.gk = add i64 %i.gj, %.sroa.6.0.i.i
  br label %bb.ah, !llvm.loop !280

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.gl = load i64, ptr %i.p, align 8, !tbaa !96
  %i.gm = lshr i64 %i.gl, 1
  %i.gn = trunc i64 %i.gm to i32
end_hunk_4
begin_hunk_5_@_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a
          cleanup
  br label %.body

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96: ; preds = %.lr.ph.i.i, %._ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96_crit_edge, %bb.ao
  %i.hr = phi ptr [ %.pre, %._ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96_crit_edge ], [ %i.ho, %bb.ao ], [ %i.eg, %.lr.ph.i.i ] ; 2 uses
  %i.hs = load ptr, ptr %4, align 8, !tbaa !95, !noalias !284 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.hs, i32 0, i32 1, i32 1), !noalias !284
  %i.ht = ptrtoint ptr %i.hr to i64               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
bb.k:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit
  %.061287 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit ]
  %.0286 = phi ptr [ %i.m, %.lr.ph ], [ %i.dh, %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit ] ; 7 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !95, !noalias !299 ; 4 uses
  call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 1, i32 1), !noalias !299
  %i.ab = ptrtoint ptr %.0286 to i64              ; 2 uses
  %i.ac = add i64 %i.ab, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
end_hunk_6
begin_hunk_7_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  store ptr %.0286, ptr %i.bs, align 8, !tbaa !255, !noalias !299
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 8, !tbaa !257, !noalias !299
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !95, !noalias !299
  br label %bb.p

.loopexit259:                                     ; preds = %.lr.ph.i.i
end_hunk_7
begin_hunk_8_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  br label %.loopexit.split-lp261

bb.p:                                             ; preds = %.loopexit259.thread, %.loopexit259
  %7 = phi ptr [ %.pre.i, %.loopexit259.thread ], [ %i.aa, %.loopexit259 ] ; 3 uses
  call void @llvm.prefetch.p0(ptr %7, i32 0, i32 1, i32 1), !noalias !305
  %i.bw = load i64, ptr %i.x, align 8, !tbaa !94, !noalias !308 ; 2 uses
  %i.bx = ptrtoint ptr %7 to i64
end_hunk_8
begin_hunk_9_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
bb.ah:                                            ; preds = %.lr.ph294, %.loopexit252
  %.058292 = phi i32 [ 0, %.lr.ph294 ], [ %i.ie, %.loopexit252 ]
  %.3291 = phi ptr [ %i.m, %.lr.ph294 ], [ %i.hl, %.loopexit252 ] ; 6 uses
  %i.ej = load ptr, ptr %4, align 8, !tbaa !95, !noalias !313 ; 4 uses
  call void @llvm.prefetch.p0(ptr %i.ej, i32 0, i32 1, i32 1), !noalias !313
  %i.ek = ptrtoint ptr %.3291 to i64              ; 2 uses
  %i.el = add i64 %i.ek, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
end_hunk_9
begin_hunk_10_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  store ptr %.3291, ptr %i.gb, align 8, !tbaa !255, !noalias !313
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 0, ptr %i.gc, align 8, !tbaa !257, !noalias !313
  %.pre.i154 = load ptr, ptr %4, align 8, !tbaa !95, !noalias !313
  br label %bb.am

.loopexit251:                                     ; preds = %.lr.ph.i.i148
end_hunk_10
begin_hunk_11_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  br label %.loopexit.split-lp261

bb.am:                                            ; preds = %.loopexit251.thread, %.loopexit251
  %8 = phi ptr [ %.pre.i154, %.loopexit251.thread ], [ %i.ej, %.loopexit251 ] ; 3 uses
  call void @llvm.prefetch.p0(ptr %8, i32 0, i32 1, i32 1), !noalias !319
  %i.gf = load i64, ptr %i.eb, align 8, !tbaa !94, !noalias !322 ; 2 uses
  %i.gg = ptrtoint ptr %8 to i64
end_hunk_11
