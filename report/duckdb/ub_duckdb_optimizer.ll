inline.NumInlined: 25580
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6duckdb9make_uniqINS_22LogicalMaterializedCTEEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteISD_ELb1EEESG_NS_14CTEMaterializeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !241
  store i8 %i.k, ptr %i.j, align 1, !tbaa !241
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !388
  %i.n = load ptr, ptr %7, align 8, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.p = load i64, ptr %2, align 8, !tbaa !66
  %i.q = load i64, ptr %3, align 8, !tbaa !66
  %i.r = load i64, ptr %4, align 8, !tbaa !156
  store i64 %i.r, ptr %8, align 8, !tbaa !156
  store ptr null, ptr %4, align 8, !tbaa !156
  %i.s = load i64, ptr %5, align 8, !tbaa !156
  store i64 %i.s, ptr %9, align 8, !tbaa !156
  store ptr null, ptr %5, align 8, !tbaa !156
  %i.t = load i8, ptr %6, align 1, !tbaa !630
  invoke void @_ZN6duckdb22LogicalMaterializedCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEESB_NS_14CTEMaterializeE(ptr noundef nonnull align 8 dereferenceable(185) %i.b, ptr noundef nonnull %7, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext %i.t)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %0, align 8, !tbaa !700
  %i.u = load ptr, ptr %9, align 8, !tbaa !156    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.u) #33, !inline_history !399
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !156    ; 3 uses
  %.not.i10 = icmp eq ptr %i.y, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i11: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.y) #33, !inline_history !399
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i11
  %i.ac = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit12
  call void @_ZdlPv(ptr noundef %i.ac) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %9, align 8, !tbaa !156   ; 3 uses
  %.not.i13 = icmp eq ptr %i.ag, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14: ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ag) #33, !inline_history !399
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i14
  %i.ak = load ptr, ptr %8, align 8, !tbaa !156   ; 3 uses
  %.not.i16 = icmp eq ptr %i.ak, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ak) #33, !inline_history !399
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit15, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17
  %i.ao = load ptr, ptr %7, align 8, !tbaa !124   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.c
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18
  call void @_ZdlPv(ptr noundef %i.ao) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.af, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18 ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !638    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !639  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !124 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !641

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !638
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph38

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEET_SL_SL_T0_.exit
  %i.h = icmp eq i64 %i.bd, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph38, !llvm.loop !4867

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i ], [ %storemerge21.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = sdiv i64 %i.n, 2
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.r, align 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.t, align 8
  %i.u = load ptr, ptr %.sroa.01.0.copyload.i.i.i.i.i, align 8, !tbaa !491
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !513
  %i.x = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !491
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !513
  %i.aa = icmp ult i64 %i.w, %i.z
  %spec.select.i.i.i.i = select i1 %i.aa, i64 %i.s, i64 %i.q ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %i.ae = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4868

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.af = and i64 %i.l, 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = add nsw i64 %i.m, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ai
  br i1 %i.aj, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ak = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.ao = load i64, ptr %i.am, align 8
  store i64 %i.ao, ptr %i.an, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.al, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i89.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8 ; 2 uses
  %i.aq = load ptr, ptr %.sroa.01.0.copyload.i.i.i.i.i.i, align 8, !tbaa !491
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !513
  %i.at = load ptr, ptr %.sroa.03.0.copyload.i.i.i, align 8, !tbaa !491
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !513
  %i.aw = icmp ult i64 %i.as, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.ax, ptr %i.ay, align 8
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4869

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.ba, ptr %i.az, align 8
  %i.bb = icmp sgt i64 %i.l, 8
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_T0_.exit, !llvm.loop !4870

.lr.ph38:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2137 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02236 = phi i64 [ %i.bd, %bb.b ], [ %2, %.lr.ph ]
  %i.bc = phi i64 [ %i.co, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bd = add nsw i64 %.02236, -1                 ; 3 uses
  %i.be = lshr i64 %i.bc, 1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %storemerge2137, i64 -8 ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bf, align 8 ; 2 uses
  %i.bh = load ptr, ptr %.sroa.01.0.copyload.i.i.i, align 8, !tbaa !491
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !513 ; 3 uses
  %i.bk = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !491
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !513 ; 3 uses
  %i.bn = icmp ult i64 %i.bj, %i.bm
  %i.bo = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.01.0.copyload.i.i.i to i64 ; 2 uses
  %.sroa.0.0.copyload.i27.i.i = load ptr, ptr %i.bg, align 8 ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0.0.copyload.i27.i.i, align 8, !tbaa !491
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !513 ; 4 uses
  %i.bt = ptrtoint ptr %.sroa.0.0.copyload.i27.i.i to i64 ; 2 uses
  br i1 %i.bn, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph38
  %i.bu = icmp ult i64 %i.bm, %i.bs
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  store i64 %i.bo, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.bf, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bv = icmp ult i64 %i.bj, %i.bs
  %.sroa.0.0.copyload.i.i30.i.i = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bt, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.bg, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.bp, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph38
  %i.bw = icmp ult i64 %i.bj, %i.bs
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %0, align 8
  store i64 %i.bp, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bx = icmp ult i64 %i.bm, %i.bs
  %.sroa.0.0.copyload.i.i37.i.i = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bt, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.bg, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.bo, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.bf, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.cf, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge2137, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.0.0.copyload.i.i13.i = load ptr, ptr %0, align 8
  %i.by = load ptr, ptr %.sroa.0.0.copyload.i.i13.i, align 8, !tbaa !491
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !513 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cf, %bb.p ] ; 8 uses
  %.sroa.01.0.copyload.i.i14.i = load ptr, ptr %.sroa.012.1.i.i, align 8 ; 2 uses
  %i.cb = load ptr, ptr %.sroa.01.0.copyload.i.i14.i, align 8, !tbaa !491
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !513
  %i.ce = icmp ult i64 %i.cd, %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ce, label %bb.p, label %.preheader.i.i, !llvm.loop !4871

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.sroa.0.0.copyload.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8 ; 2 uses
  %i.cg = load ptr, ptr %.sroa.0.0.copyload.i9.i.i, align 8, !tbaa !491
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !513
  %i.cj = icmp ult i64 %i.ca, %i.ci
  br i1 %i.cj, label %.preheader.i.i, label %bb.q, !llvm.loop !4872

bb.q:                                             ; preds = %.preheader.i.i
  %i.ck = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ck, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEET_SL_SL_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i9.i.i to i64
  store i64 %i.cl, ptr %.sroa.012.1.i.i, align 8
  store ptr %.sroa.01.0.copyload.i.i14.i, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !4873

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEET_SL_SL_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2137, i64 noundef %i.bd)
  %i.cm = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 16
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_T0_.exit, !llvm.loop !4867

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %.sroa.0.021.i.ptr, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.e = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !tbaa !491
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !513  ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !491
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !513
  %i.k = icmp ult i64 %i.g, %i.j
  %i.l = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE17_M_realloc_insertIJRNS0_13ColumnBindingES6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1165

_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb18ReplacementBindingEEE9constructIS1_JRNS0_13ColumnBindingES6_EEEvRS2_PT_DpOT0_.exit ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i28
  %.012.i.i.i.i29 = phi ptr [ %i.z, %.lr.ph.i.i.i.i28 ], [ %i.v, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.y, %.lr.ph.i.i.i.i28 ], [ %1, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i30, i64 33, i1 false), !alias.scope !5187
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 40 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #33
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #33
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 64 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i31, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i.i28, !llvm.loop !1165

_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i.i28, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i32 = phi ptr [ %i.v, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.z, %.lr.ph.i.i.i.i28 ]
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !381
  store ptr %.0.lcssa.i.i.i.i32, ptr %i.a, align 8, !tbaa !360
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !362
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #33 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ac

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN6duckdb26BoundConjunctionExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(112), i8 noundef zeroext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN6duckdb13LogicalFilterC1ENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %3 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::JoinWithDelimGet", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i22 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i22, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit"
  %i.j = icmp eq i64 %i.by, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph40, !llvm.loop !5191

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %.fr.i.i22, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.v = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !1307
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1307
  %i.ad = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5192

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !1307
  %i.al = icmp ugt i64 %.val.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.an = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !5193

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.ao, align 8
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ap = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %bb.c, !llvm.loop !5194

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %i.aq = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %i.aq, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.ar, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i" ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 4                 ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %10 = sdiv i64 %i.av, 2
  %i.aw = icmp sgt i64 %i.au, 2
  br i1 %i.aw, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.037.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ax = shl i64 %.037.i.i.i23.i, 1              ; 2 uses
  %i.ay = add i64 %i.ax, 2                        ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ay
  %i.ba = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val.i.i.i.i24.i = load i64, ptr %i.bc, align 8, !tbaa !1307
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val1.i.i.i.i25.i = load i64, ptr %i.bd, align 8, !tbaa !1307
  %i.be = icmp ugt i64 %.val.i.i.i.i24.i, %.val1.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.be, i64 %i.ba, i64 %i.ay ; 4 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i26.i
  %i.bg = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  %i.bh = icmp slt i64 %spec.select.i.i.i26.i, %10
  br i1 %i.bh, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !5192

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bi = and i64 %i.at, 16
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bk = add nsw i64 %i.au, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bl
  br i1 %i.bm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bn = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bo, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0911.i.i56.i.i.i ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %.val.i.i.i.i.i19.i = load i64, ptr %i.bs, align 8, !tbaa !1307
  %i.bt = icmp ugt i64 %.val.i.i.i.i.i19.i, %.sroa.4.0.copyload.i.i12.i
  br i1 %i.bt, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bu = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !5193

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bv = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i10.i, ptr %i.bv, align 8
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i21.i, align 8
  %i.bw = icmp sgt i64 %i.at, 16
  br i1 %i.bw, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !5195

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2339 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02438 = phi i64 [ %i.by, %bb.b ], [ %2, %.lr.ph ]
  %i.bx = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.by = add nsw i64 %.02438, -1                 ; 3 uses
  %i.bz = lshr i64 %i.bx, 1
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %storemerge2339, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !1307 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 8
  %.val1.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !1307 ; 3 uses
  %i.cd = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.ce = getelementptr i8, ptr %storemerge2339, i64 -8
  %.val1.i27.i.i = load i64, ptr %i.ce, align 8, !tbaa !1307 ; 4 uses
  br i1 %i.cd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %i.cf = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cg = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph40
  %i.ch = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.ci = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2339, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !1307 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.cj, align 8, !tbaa !1307
  %i.ck = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !5196

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.cm, align 8, !tbaa !1307
  %i.cn = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !5197

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !5198

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2339, i64 noundef %i.by)
  %i.cp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a
  %.fr.i.i = freeze i64 %i.cq                     ; 2 uses
  %i.cr = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !5191

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb14DelimCandidateESaIS1_EE17_M_realloc_insertIJRNS0_10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS6_ELb1EEERNS0_21LogicalComparisonJoinEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(280) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1318 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1316   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorIN6duckdb14DelimCandidateESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  store ptr %2, ptr %i.q, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !1321
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1454 ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1453
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !253 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !168 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !254 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !388
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !254 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !5245

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !388
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !124
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !254 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !5245

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i17 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i17, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph35

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit
  %i.j = icmp eq i64 %i.ca, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph35, !llvm.loop !5246

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i20.lcssa = phi i64 [ %.fr.i.i17, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i20.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i20.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.aq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !66
  %i.w = icmp slt i64 %.09.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !1457
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1457
  %i.ae = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !65
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5247

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ai, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !65
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.07.i.i.i.i.i = phi i64 [ %.098.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val1.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !1457
  %i.am = icmp ult i64 %.val1.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !65
  %i.ao = icmp sgt i64 %.098.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i, !llvm.loop !5248

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.f ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.v, ptr %i.ap, align 8, !tbaa !66
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.aq = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i, label %bb.c, !llvm.loop !5249

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_.exit.i.i.i
  %i.ar = icmp sgt i64 %.fr.i.i20.lcssa, 16
  br i1 %i.ar, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit

.lr.ph.i8.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i ], [ %storemerge18.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i10.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i11.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i10.i, align 8, !tbaa !66
  %i.at = load <2 x i64>, ptr %i.as, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !65
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %3 = sdiv i64 %i.ax, 2
  %i.ay = icmp sgt i64 %i.aw, 2
  br i1 %i.ay, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i12.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i8.i, %.lr.ph.i.i.i21.i
  %.041.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i8.i ] ; 2 uses
  %i.az = shl i64 %.041.i.i.i22.i, 1              ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val2.i.i.i.i23.i = load i64, ptr %i.be, align 8, !tbaa !1457
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val3.i.i.i.i24.i = load i64, ptr %i.bf, align 8, !tbaa !1457
  %i.bg = icmp ult i64 %.val2.i.i.i.i23.i, %.val3.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bg, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i25.i
  %i.bi = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !65
  %i.bj = icmp slt i64 %spec.select.i.i.i25.i, %3
  br i1 %i.bj, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i12.i, !llvm.loop !5247

._crit_edge.i.i.i12.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i8.i
  %.0.lcssa.i.i.i13.i = phi i64 [ 0, %.lr.ph.i8.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bk = and i64 %i.av, 16
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i12.i
  %i.bm = add nsw i64 %i.aw, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa.i.i.i13.i, %i.bn
  br i1 %i.bo, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bp = shl nuw nsw i64 %.0.lcssa.i.i.i13.i, 1
  %i.bq = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bq
  %i.bs = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !65
  br label %.lr.ph.i.i.i.i15.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i12.i
  %.not.i.i14.i = icmp eq i64 %.0.lcssa.i.i.i13.i, 0
  br i1 %.not.i.i14.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i15.i.preheader

.lr.ph.i.i.i.i15.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.07.i.i.i.i16.i.ph = phi i64 [ %.0.lcssa.i.i.i13.i, %bb.h ], [ %i.bq, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i15.i

.lr.ph.i.i.i.i15.i:                               ; preds = %.lr.ph.i.i.i.i15.i.preheader, %bb.i
  %.07.i.i.i.i16.i = phi i64 [ %.098.i.i34.i.i.i, %bb.i ], [ %.07.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i15.i.preheader ] ; 3 uses
  %.098.in.i.i.i.i17.i = add nsw i64 %.07.i.i.i.i16.i, -1
  %.098.i.i34.i.i.i = lshr i64 %.098.in.i.i.i.i17.i, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i34.i.i.i ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val1.i.i.i.i.i18.i = load i64, ptr %i.bu, align 8, !tbaa !1457
  %i.bv = icmp ult i64 %.val1.i.i.i.i.i18.i, %.sroa.4.0.copyload.i.i11.i
  br i1 %i.bv, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i15.i
  %i.bw = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !65
  %.not5.i.i.i = icmp eq i64 %.098.i.i34.i.i.i, 0
  br i1 %.not5.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i15.i, !llvm.loop !5248

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i15.i, %bb.h
  %.0.lcssa.i.i.i.i19.i = phi i64 [ 0, %bb.h ], [ %.07.i.i.i.i16.i, %.lr.ph.i.i.i.i15.i ], [ 0, %bb.i ]
  %i.bx = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i19.i
  store <2 x i64> %i.at, ptr %i.bx, align 8, !tbaa !66
  %i.by = icmp sgt i64 %i.av, 16
  br i1 %i.by, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit, !llvm.loop !5250

.lr.ph35:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1834 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01933 = phi i64 [ %i.ca, %bb.b ], [ %2, %.lr.ph ]
  %i.bz = phi i64 [ %i.ct, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ca = add nsw i64 %.01933, -1                 ; 3 uses
  %i.cb = lshr i64 %i.bz, 1
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %storemerge1834, i64 -16 ; 4 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !tbaa !1457 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !tbaa !1457 ; 3 uses
  %i.cf = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %i.cg = getelementptr i8, ptr %storemerge1834, i64 -8
  %.val3.i27.i.i = load i64, ptr %i.cg, align 8, !tbaa !1457 ; 4 uses
  br i1 %i.cf, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph35
  %i.ch = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ci = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.041.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.041.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.043.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.043.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph35
  %i.cj = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.045.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.045.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ck = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.047.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.047.0.copyload, ptr %i.cd, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.049.0.copyload = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.049.0.copyload, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cn, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1834, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !1457 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i ], [ %i.cn, %bb.t ] ; 9 uses
  %i.cl = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val2.i.i15.i = load i64, ptr %i.cl, align 8, !tbaa !1457
  %i.cm = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.t, label %.preheader.i.i, !llvm.loop !5251

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.co = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i10.i.i = load i64, ptr %i.co, align 8, !tbaa !1457
  %i.cp = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.cp, label %.preheader.i.i, label %bb.u, !llvm.loop !5252

bb.u:                                             ; preds = %.preheader.i.i
  %i.cq = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cq, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.051.0.copyload = load <2 x i64>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.051.0.copyload, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !5253

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1834, i64 noundef %i.ca)
  %i.cr = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cs = sub i64 %i.cr, %i.a
  %.fr.i.i = freeze i64 %i.cs                     ; 2 uses
  %i.ct = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 16
  br i1 %i.cu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit, !llvm.loop !5246

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaISE_EEES5_RbbE3$_0E9_M_invokeERKSt9_Any_dataS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 5 uses
  %3 = alloca %"class.duckdb::unique_ptr.141", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !120   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = load ptr, ptr %.val, align 8, !tbaa !5254, !nonnull !61, !align !186
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5256, !nonnull !61, !align !186
  %i.d = load i64, ptr %1, align 8, !tbaa !199
  store i64 %i.d, ptr %3, align 8, !tbaa !199
  store ptr null, ptr %1, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5257, !nonnull !61
  invoke void @_ZN6duckdb18ExpressionRewriter10ApplyRulesERNS_15LogicalOperatorERKNS_6vectorISt17reference_wrapperINS_4RuleEELb1ESaIS6_EEENS_10unique_ptrINS_10ExpressionESt14default_deleteISC_ELb1EEERbb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(97) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.c, !inline_history !5258

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !199
  %i.h = load ptr, ptr %1, align 8, !tbaa !199    ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !199
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(88) %i.h) #33, !inline_history !5259
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !199    ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i4.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaIS7_EEENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISD_ELb1EEERbbE3$_0JRSG_EENSt9enable_ifIXsr7is_voidIT_EE5valueESM_E4typeEOT0_DpOT1_.exit", label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i5.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(88) %i.l) #33, !inline_history !5260
  br label %"_ZSt10__invoke_rIvRZN6duckdb18ExpressionRewriter10ApplyRulesERNS0_15LogicalOperatorERKNS0_6vectorISt17reference_wrapperINS0_4RuleEELb1ESaIS7_EEENS0_10unique_ptrINS0_10ExpressionESt14default_deleteISD_ELb1EEERbbE3$_0JRSG_EENSt9enable_ifIXsr7is_voidIT_EE5valueESM_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %3, align 8, !tbaa !199    ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.q, null
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRmEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.l, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !168 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66
  %i.o = icmp eq i64 %i.c, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %bb.c, !llvm.loop !5723

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1951
  %i.r = urem i64 %i.c, %i.q
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !168  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !66
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit, label %.lr.ph.i.i, !llvm.loop !1953

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !168 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = urem i64 %i.z, %i.g
  %.not19.i.i = icmp eq i64 %i.aa, %i.h
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !1953

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !1953

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.h, %.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.ac = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit29: ; preds = %.critedge27
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  resume { ptr, i32 } %i.ad

_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.042.0.ph = phi ptr [ %.sroa.034.0, %bb.d ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit
  %.sroa.443.055 = phi i8 [ 0, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit ], [ 1, %.critedge27 ]
  %.sroa.042.053 = phi ptr [ %.sroa.042.0.ph, %_ZNKSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKmm.exit ], [ %i.ac, %.critedge27 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.042.053, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.443.055, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i25 = freeze i64 %i.c                    ; 2 uses
  %i.d = ashr exact i64 %.fr.i.i25, 4             ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 12 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit"
  %i.j = icmp eq i64 %i.ck, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !5724

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i28.lcssa = phi i64 [ %.fr.i.i25, %.lr.ph ], [ %.fr.i.i, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i28.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i28.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.au, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.v = load <2 x i64>, ptr %i.u, align 8
  %i.w = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !3119
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !3119
  %i.ae = icmp ugt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.y ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !66
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !66
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !5725

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load <2 x i64>, ptr %i.s, align 8, !tbaa !66
  store <2 x i64> %i.ak, ptr %i.t, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.011.i.i.i.i.i = phi i64 [ %.0912.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0912.in.i.i.i.i.i = add nsw i64 %.011.i.i.i.i.i, -1
  %.0912.i.i.i.i.i = sdiv i64 %.0912.in.i.i.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i.i.i.i ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !3119 ; 2 uses
  %i.ao = icmp ugt i64 %.val.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.ao, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.011.i.i.i.i.i ; 2 uses
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !66
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !3117
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.val.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !3119
  %i.as = icmp sgt i64 %.0912.i.i.i.i.i, %.010.i.i.i
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !5726

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0912.i.i.i.i.i, %bb.f ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.v, ptr %i.at, align 8, !tbaa !66
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.au = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !5727

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %i.av = icmp sgt i64 %.fr.i.i28.lcssa, 16
  br i1 %i.av, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i" ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i12.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8
  %i.ax = load <2 x i64>, ptr %i.aw, align 8
  %i.ay = load i64, ptr %0, align 8, !tbaa !66
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !3117
  %i.az = load i64, ptr %i.h, align 8, !tbaa !66
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !3119
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.ba, %i.a                     ; 3 uses
  %i.bc = ashr exact i64 %i.bb, 4                 ; 3 uses
  %i.bd = add nsw i64 %i.bc, -1
  %3 = sdiv i64 %i.bd, 2
  %i.be = icmp sgt i64 %i.bc, 2
  br i1 %i.be, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bf = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.bg = add i64 %i.bf, 2                        ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bg
  %i.bi = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %.val.i.i.i.i23.i = load i64, ptr %i.bk, align 8, !tbaa !3119
  %i.bl = getelementptr i8, ptr %i.bj, i64 8
  %.val1.i.i.i.i24.i = load i64, ptr %i.bl, align 8, !tbaa !3119
  %i.bm = icmp ugt i64 %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bm, i64 %i.bi, i64 %i.bg ; 4 uses
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i25.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i22.i
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !66
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !66
  %i.bq = icmp slt i64 %spec.select.i.i.i25.i, %3
  br i1 %i.bq, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !5725

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.br = and i64 %i.bb, 16
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bt = add nsw i64 %i.bc, -2
  %i.bu = ashr exact i64 %i.bt, 1
  %i.bv = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bu
  br i1 %i.bv, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bx = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !66
  store <2 x i64> %i.ca, ptr %i.bz, align 8, !tbaa !66
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.011.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bx, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.011.i.i.i.i17.i = phi i64 [ %.0912.i.i56.i.i.i, %bb.i ], [ %.011.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0912.in.i.i.i.i18.i = add nsw i64 %.011.i.i.i.i17.i, -1
  %.0912.i.i56.i.i.i = lshr i64 %.0912.in.i.i.i.i18.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0912.i.i56.i.i.i ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val.i.i.i.i.i19.i = load i64, ptr %i.cc, align 8, !tbaa !3119 ; 2 uses
  %i.cd = icmp ugt i64 %.val.i.i.i.i.i19.i, %.sroa.4.0.copyload.i.i12.i
  br i1 %i.cd, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ce = getelementptr inbounds [16 x i8], ptr %0, i64 %.011.i.i.i.i17.i ; 2 uses
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !66
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !3117
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.val.i.i.i.i.i19.i, ptr %i.cg, align 8, !tbaa !3119
  %.not7.i.i.i = icmp eq i64 %.0912.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !5726

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.011.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.ch = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.ax, ptr %i.ch, align 8, !tbaa !66
  %i.ci = icmp sgt i64 %i.bb, 16
  br i1 %i.ci, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !5728

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2645 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02744 = phi i64 [ %i.ck, %bb.b ], [ %2, %.lr.ph ]
  %i.cj = phi i64 [ %i.dz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ck = add nsw i64 %.02744, -1                 ; 3 uses
  %i.cl = lshr i64 %i.cj, 1
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds i8, ptr %storemerge2645, i64 -16 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !3119 ; 5 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 8      ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.co, align 8, !tbaa !3119 ; 5 uses
  %i.cp = icmp ugt i64 %.val.i.i.i, %.val1.i.i.i
  %i.cq = getelementptr i8, ptr %storemerge2645, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i64, ptr %i.cq, align 8, !tbaa !3119 ; 4 uses
  br i1 %i.cp, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.cr = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !66
  %i.ct = load <2 x i64>, ptr %0, align 8, !tbaa !66
  store i64 %i.cs, ptr %0, align 8, !tbaa !66
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !66
  store <2 x i64> %i.ct, ptr %i.cm, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cu = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  %i.cv = load i64, ptr %0, align 8, !tbaa !66    ; 2 uses
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = load i64, ptr %i.cn, align 8, !tbaa !66
  store i64 %i.cw, ptr %0, align 8, !tbaa !66
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !66
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !66
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !66
  store i64 %i.cy, ptr %i.h, align 8, !tbaa !66
  store i64 %i.cx, ptr %i.cq, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cz = load i64, ptr %i.f, align 8, !tbaa !66
  store i64 %i.cz, ptr %0, align 8, !tbaa !66
  store i64 %i.cv, ptr %i.f, align 8, !tbaa !66
  %i.da = load i64, ptr %i.h, align 8, !tbaa !66
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !66
  store i64 %i.da, ptr %i.g, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.db = icmp ugt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = load i64, ptr %i.f, align 8, !tbaa !66
  %i.dd = load <2 x i64>, ptr %0, align 8, !tbaa !66
  store i64 %i.dc, ptr %0, align 8, !tbaa !66
  store i64 %.val.i.i.i, ptr %i.h, align 8, !tbaa !66
  store <2 x i64> %i.dd, ptr %i.f, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.de = icmp ugt i64 %.val1.i.i.i, %.val1.i27.i.i
  %i.df = load i64, ptr %0, align 8, !tbaa !66    ; 2 uses
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = load i64, ptr %i.cn, align 8, !tbaa !66
  store i64 %i.dg, ptr %0, align 8, !tbaa !66
  store i64 %i.df, ptr %i.cn, align 8, !tbaa !66
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !66
  %i.di = load i64, ptr %i.cq, align 8, !tbaa !66
  store i64 %i.di, ptr %i.h, align 8, !tbaa !66
  store i64 %i.dh, ptr %i.cq, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.dj = load i64, ptr %i.cm, align 8, !tbaa !66
  store i64 %i.dj, ptr %0, align 8, !tbaa !66
  store i64 %i.df, ptr %i.cm, align 8, !tbaa !66
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !66
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !66
  store i64 %i.dk, ptr %i.co, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dn, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2645, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !3119 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.dn, %bb.t ] ; 10 uses
  %i.dl = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.dl, align 8, !tbaa !3119
  %i.dm = icmp ugt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.t, label %.preheader.i.i.preheader, !llvm.loop !5729

.preheader.i.i.preheader:                         ; preds = %bb.t
  %i.do = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.dp, align 8, !tbaa !3119
  %i.dq = icmp ugt i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dq, label %.preheader.i.i, label %bb.u, !llvm.loop !5730

bb.u:                                             ; preds = %.preheader.i.i
  %i.dr = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dr, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.dt = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !66
  %i.du = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !66
  store i64 %i.du, ptr %.sroa.012.1.i.i, align 8, !tbaa !66
  store i64 %i.dt, ptr %.sroa.0.1.i.i, align 8, !tbaa !66
  %i.dv = load i64, ptr %i.do, align 8, !tbaa !66
  %i.dw = load i64, ptr %i.ds, align 8, !tbaa !66
  store i64 %i.dw, ptr %i.do, align 8, !tbaa !66
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !66
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !5731

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2645, i64 noundef %i.ck)
  %i.dx = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dy = sub i64 %i.dx, %i.a
  %.fr.i.i = freeze i64 %i.dy                     ; 2 uses
  %i.dz = ashr exact i64 %.fr.i.i, 4              ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 16
  br i1 %i.ea, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !5724

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_SH_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS1_S1_EEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 8 uses
  store ptr null, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !407
  %.not.not = icmp eq i64 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
