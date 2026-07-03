inline.NumInlined: 8840
inline.NumDeleted: 3439
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13insert_uniqueIS5_JS5_EEES4_INS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEbERKT_DpOT0_:bb.a
bb.e:                                             ; preds = %.thread17.i.i.i.i, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.z, %.thread17.i.i.i.i ] ; 3 uses
  %.01022.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.y, %.thread17.i.i.i.i ] ; 3 uses
  %i.n = add i64 %.01022.i.i.i.i, %.023.i.i.i.i
  %i.o = lshr i64 %i.n, 1                         ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !707  ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.g
  br i1 %i.r, label %.thread.i.i.i.i, label %bb.f

.thread.i.i.i.i:                                  ; preds = %bb.e
  %i.s = add nuw i64 %i.o, 1
  br label %.thread17.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = icmp slt i32 %i.g, %i.q
  br i1 %i.t, label %.thread17.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIiiEES5_E15checked_compareclIS5_S5_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKS6_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSG_SJ_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIiiEES5_E15checked_compareclIS5_S5_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKS6_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSG_SJ_.exit.i.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !709
  %i.w = icmp slt i32 %i.v, %i.i
  %cond.fr.i.i.i.i = freeze i1 %i.w               ; 2 uses
  %i.x = add nuw i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %cond.fr.i.i.i.i, i64 %.01022.i.i.i.i, i64 %i.o
  %spec.select20.i.i.i.i = select i1 %cond.fr.i.i.i.i, i64 %i.x, i64 %.023.i.i.i.i
  br label %.thread17.i.i.i.i

.thread17.i.i.i.i:                                ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIiiEES5_E15checked_compareclIS5_S5_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKS6_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSG_SJ_.exit.i.i.i.i, %bb.f, %.thread.i.i.i.i
  %i.y = phi i64 [ %i.o, %bb.f ], [ %spec.select.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIiiEES5_E15checked_compareclIS5_S5_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKS6_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSG_SJ_.exit.i.i.i.i ], [ %.01022.i.i.i.i, %.thread.i.i.i.i ] ; 3 uses
  %i.z = phi i64 [ %.023.i.i.i.i, %bb.f ], [ %spec.select20.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIiiEES5_E15checked_compareclIS5_S5_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKS6_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSG_SJ_.exit.i.i.i.i ], [ %i.s, %.thread.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.z, %i.y
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS7_S5_E15checked_compareE.exit.i, label %bb.e, !llvm.loop !1146

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS7_S5_E15checked_compareE.exit.i: ; preds = %.thread17.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.y, %.thread17.i.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 11
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSG_EELb0EEERKT_.exit

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS7_S5_E15checked_compareE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 256
  %i.ad = and i64 %.0.lcssa.i.i.i.i, 255
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  br label %bb.d

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSG_EELb0EEERKT_.exit: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE11lower_boundIS5_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS7_S5_E15checked_compareE.exit.i
  %i.af = trunc i64 %.0.lcssa.i.i.i.i to i32      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSG_EELb0EEERKT_.exit
  %.sroa.7.0.i = phi i32 [ %i.af, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSG_EELb0EEERKT_.exit ], [ %i.am, %bb.i ] ; 4 uses
  %.sroa.0.0.i16 = phi ptr [ %.sroa.0.0.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE15internal_locateIS5_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSG_EELb0EEERKT_.exit ], [ %i.an, %bb.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i32
  %i.aj = icmp eq i32 %.sroa.7.0.i, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !34
  %i.am = zext i8 %i.al to i32
  %i.an = load ptr, ptr %.sroa.0.0.i16, align 8, !tbaa !721 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %.not.i19 = icmp eq i8 %i.ap, 0
  br i1 %.not.i19, label %bb.h, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread, !llvm.loop !1147

bb.j:                                             ; preds = %bb.h
  %i.aq = sext i32 %.sroa.7.0.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !707 ; 2 uses
  %i.au = icmp slt i32 %i.g, %i.at
  br i1 %i.au, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp slt i32 %i.at, %i.g
  br i1 %i.av, label %.critedge, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !709
  %i.ay = icmp slt i32 %i.i, %i.ax
  br i1 %i.ay, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread, label %.critedge

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread: ; preds = %bb.i, %bb.j, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit
  %i.az = tail call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i, i32 %i.af, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.az, 1
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit, %bb.k, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread
  %.sroa.0.0.i16.lcssa.sink = phi ptr [ %.fca.0.extract, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread ], [ %.sroa.0.0.i16, %bb.k ], [ %.sroa.0.0.i16, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit ]
  %.sroa.7.0.i.lcssa.sink = phi i32 [ %.fca.1.extract, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread ], [ %.sroa.7.0.i, %bb.k ], [ %.sroa.7.0.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit ]
  %.sink = phi i8 [ 1, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EEEET_SJ_.exit.thread ], [ 0, %bb.k ], [ 0, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE12compare_keysIS5_S5_EEbRKT_RKT0_.exit ]
  store ptr %.sroa.0.0.i16.lcssa.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ba, align 8, !tbaa !1148
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator.542", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !34    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12 = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !34
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !721 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !34    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !721 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !34    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit, !llvm.loop !1151

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !1152
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS6_ESaIS6_ELi256ELb0EEEEERKS6_PSC_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.z = icmp eq i8 %i.t, %i.u
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ult i8 %i.t, 30
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i8 %i.t, 1
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 30) ; 2 uses
  %i.ad = shl nuw i8 %i.ac, 3
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 16
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #43 ; 12 uses
  store ptr %i.ag, ptr %i.ag, align 8, !tbaa !721
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 0, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  store i8 0, ptr %i.ai, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  store i8 %i.ac, ptr %i.aj, align 1, !tbaa !34
  store ptr %i.ag, ptr %4, align 8, !tbaa !1153
  %i.ak = load i8, ptr %i.y, align 1, !tbaa !34   ; 3 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.al, 3          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ao = ptrtoaddr ptr %i.ag to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 3 uses
  %i.aq = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 56
  %i.at = sub i64 %i.ao, %i.w
  %diff.check = icmp ult i64 %i.at, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ax ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.am, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 4
  %wide.load22 = load <2 x i64>, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load22, ptr %i.az, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.015.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.preheader.i.i.i ], [ %i.av, %middle.block ]
  %.01214.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.preheader.i.i.i ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %.01214.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %i.bb = load i64, ptr %.01214.i.i.i, align 4
  store i64 %i.bb, ptr %.015.i.i.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8
  %.not.i.i.i5 = icmp eq ptr %i.bc, %i.an
  br i1 %.not.i.i.i5, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !1155

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4, %middle.block, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 10
  store i8 %i.ak, ptr %i.be, align 2, !tbaa !34
  store i8 0, ptr %i.y, align 1, !tbaa !34
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16clear_and_deleteEPSA_PS8_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.x)
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !721
  store ptr %i.ag, ptr %0, align 8, !tbaa !721
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !1153
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bf = phi ptr [ %i.ag, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16internal_emplaceIJS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !1152 ; 2 uses
  %i.bh = trunc i32 %i.bg to i8                   ; 2 uses
  %i.bi = and i32 %i.bg, 255                      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 10 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34  ; 3 uses
  %i.bl = icmp ugt i8 %i.bk, %i.bh
  %i.bm = zext nneg i32 %i.bi to i64              ; 2 uses
  br i1 %i.bl, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %narrow.i = sub nuw i8 %i.bk, %i.bh
  %i.bp = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bp, 3
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %i.bo, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bj, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.br = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bk, %bb.f ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = load i64, ptr %3, align 4
  store i64 %i.bu, ptr %i.bt, align 4
  %i.bv = add i8 %i.br, 1                         ; 3 uses
  store i8 %i.bv, ptr %i.bj, align 1, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !34
  %.not.i18.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJS5_EEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.by = zext i8 %i.bv to i32
  %i.bz = add nuw nsw i32 %i.bi, 1                ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, %i.by
  br i1 %i.ca, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJS5_EEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 256 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i8 [ %i.bv, %.lr.ph.i ], [ %i.cc, %bb.h ] ; 3 uses
  %i.cc = add i8 %.019.i, -1                      ; 3 uses
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !721 ; 2 uses
  %i.cg = zext i8 %.019.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !721
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.019.i, ptr %i.ci, align 1, !tbaa !34
  %i.cj = zext i8 %i.cc to i32
  %i.ck = icmp samesign ult i32 %i.bz, %i.cj
  br i1 %i.ck, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJS5_EEEvhPS8_DpOT_.exit, !llvm.loop !1156

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJS5_EEEvhPS8_DpOT_.exit: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !693
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !693
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator.542", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !721    ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !721  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !686
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !34    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !721  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34    ; 3 uses
  %i.n = icmp ult i8 %i.m, 30
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.p = and i32 %i.o, 254
  %i.q = icmp samesign ult i32 %i.p, 30
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = and i32 %i.o, 255
  %i.u = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.t, %i.u
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.v = icmp samesign ult i8 %narrow113, 30
  %or.cond = select i1 %.not84, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_right_to_leftEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w)
  %i.x = load i32, ptr %i.a, align 8, !tbaa !3
  %i.y = and i32 %i.x, 255
  %i.z = sub nsw i32 %i.y, %i.u                   ; 3 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !3
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.l, align 1, !tbaa !34
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, 1
  %i.ae = add nsw i32 %i.ad, %i.ac
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34  ; 2 uses
  %i.ah = icmp ult i8 %i.f, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i8 %i.f, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE:bb.a
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.cf, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bz)
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !721
  %i.ch = load ptr, ptr %1, align 8, !tbaa !721
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !721
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cj = call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #43 ; 7 uses
  store ptr %.082, ptr %i.cj, align 8, !tbaa !721
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.by, ptr %i.ck, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  store i8 0, ptr %i.cl, align 1, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  store i8 0, ptr %i.cm, align 2, !tbaa !34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 11
  store i8 0, ptr %i.cn, align 1, !tbaa !34
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.co, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.cj, %bb.r ]
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !721
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !34
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp sgt i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cv = xor i32 %i.ct, -1
  %i.cw = add nsw i32 %i.cp, %i.cv
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bj, %bb.k ], [ %i.ae, %bb.f ], [ %i.cw, %bb.t ]
  %.sink = phi ptr [ %i.am, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !721
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE16clear_and_deleteEPSA_PS8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !721
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.k, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !721  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !1157

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i64
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !721
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.p, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.q, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.147
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !721  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34    ; 2 uses
  %.not.i55 = icmp eq i8 %i.v, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.x, %.lr.ph66 ], [ %i.t, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !721  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34    ; 2 uses
  %.not.i56 = icmp eq i8 %i.z, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !1158

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.ac = zext i8 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !721
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.ae = phi i8 [ %i.z, %._crit_edge67 ], [ %i.v, %bb.d ]
  %.251 = phi ptr [ %i.x, %._crit_edge67 ], [ %i.t, %bb.d ]
  %.248 = phi i64 [ %i.ac, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ad, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ah) #42
  %i.ai = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.ak = zext i8 %i.aj to i64
  %.not.not = icmp samesign ult i64 %.248, %i.ak
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.ar, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.an, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !1159

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.an, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34  ; 2 uses
  %i.an = load ptr, ptr %.3, align 8, !tbaa !721  ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 504) #42
  %i.ao = icmp eq ptr %i.an, %i.i
  br i1 %i.ao, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !34
  %.not = icmp ult i8 %i.am, %i.aq
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !1160

bb.g:                                             ; preds = %bb.f
  %i.ar = zext i8 %i.am to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 504, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #42
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_right_to_leftEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !721    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = load i64, ptr %i.m, align 4
  store i64 %i.n, ptr %i.k, align 4
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 2305843009213693950
  %i.v = and i64 %i.u, 2305843009213693951        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 17
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 3
  %i.y = add i64 %i.x, %i.b
  %4 = add i64 %i.y, 8
  %5 = sub i64 %4, %i.a
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 4
  %wide.load63 = load <2 x i64>, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.ad, align 4
  store <2 x i64> %wide.load63, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader82 ]
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8 ; 2 uses
  %i.ah = load i64, ptr %.01214.i, align 4
  store i64 %i.ah, ptr %.015.i, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1162

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !721
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !34
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.aj = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.an = load i64, ptr %i.am, align 4
  store i64 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34  ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.aq, %i.o
  %i.as = sext i32 %i.ar to i64
  %i.at = zext i8 %1 to i64                       ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.at ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.as, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ap, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.aw = zext i8 %i.ap to i64
  %i.ax = sub nsw i64 %i.aw, %i.at
  %i.ay = add nsw i64 %i.ax, 2305843009213693951
  %i.az = and i64 %i.ay, 2305843009213693951      ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check66 = icmp samesign ult i64 %i.az, 3
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.ba, 4611686018427387900   ; 3 uses
  %i.bb = shl i64 %n.vec69, 3                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bb
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.be = shl i64 %index71, 3                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.be ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.au, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <2 x i64>, ptr %next.gep73, align 4
  %wide.load75 = load <2 x i64>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x i64> %wide.load74, ptr %next.gep72, align 4
  store <2 x i64> %wide.load75, ptr %i.bg, align 4
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bh, label %middle.block77, label %vector.body70, !llvm.loop !1163

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.ba, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bc, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.au, %.lr.ph.i47.preheader ], [ %i.bd, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bk, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bj, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bi = load i64, ptr %.01214.i49, align 4
  store i64 %i.bi, ptr %.015.i48, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i48, i64 8
  %.not.i50 = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47, !llvm.loop !1164

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !34
  %.not.i52 = icmp eq i8 %i.bm, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.at, 1
  %i.bp = icmp eq i32 %i.p, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.at, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.bq = load i8, ptr %i.c, align 2, !tbaa !34
  %i.br = trunc i64 %indvars.iv.epil.init to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = add i8 %i.bq, %i.bs                     ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !721 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !721
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !34
  store ptr %0, ptr %i.bv, align 8, !tbaa !721
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.bz = load i8, ptr %i.ao, align 1, !tbaa !34
  %.not55 = icmp ult i8 %i.bz, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cb = load i8, ptr %i.c, align 2, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i8
  %i.cd = add i8 %i.cb, %i.cc                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !721 ; 3 uses
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !721
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !34
  store ptr %0, ptr %i.cf, align 8, !tbaa !721
  %i.cj = load i8, ptr %i.c, align 2, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cl = add i8 %i.cj, %i.ck                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !721 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !721
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !34
  store ptr %0, ptr %i.cn, align 8, !tbaa !721
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1165

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cy, %bb.c ] ; 4 uses
  %i.cr = add i8 %.056, %1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !721 ; 3 uses
  %i.cv = zext i8 %.056 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !721
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.056, ptr %i.cx, align 1, !tbaa !34
  store ptr %2, ptr %i.cu, align 8, !tbaa !721
  %i.cy = add i8 %.056, 1                         ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.o
  %.not = icmp slt i32 %i.dc, %i.cz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1166

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %i.dd = load i8, ptr %i.c, align 2, !tbaa !34
  %i.de = add i8 %i.dd, %1
  store i8 %i.de, ptr %i.c, align 2, !tbaa !34
  %i.df = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.dg = sub i8 %i.df, %1
  store i8 %i.dg, ptr %i.ao, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_left_to_rightEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.g ; 2 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 2 uses
  %i.l = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.017.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.j, %.lr.ph.preheader.i ]
  %.01416.i.prol = phi ptr [ %i.p, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.o = getelementptr inbounds i8, ptr %.017.i.prol, i64 -8 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i.prol, i64 -8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 4
  store i64 %i.q, ptr %i.o, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1167

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.o, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.k, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.l, 56
  br i1 %i.r, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.01416.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.s = getelementptr inbounds i8, ptr %.017.i, i64 -8
  %i.t = getelementptr inbounds i8, ptr %.01416.i, i64 -8
  %i.u = load i64, ptr %i.t, align 4
  store i64 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -16
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  %i.x = load i64, ptr %i.w, align 4
  store i64 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds i8, ptr %.017.i, i64 -24
  %i.z = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.aa = load i64, ptr %i.z, align 4
  store i64 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.ac = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  %i.ad = load i64, ptr %i.ac, align 4
  store i64 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds i8, ptr %.017.i, i64 -40
  %i.af = getelementptr inbounds i8, ptr %.01416.i, i64 -40
  %i.ag = load i64, ptr %i.af, align 4
  store i64 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds i8, ptr %.017.i, i64 -48
  %i.ai = getelementptr inbounds i8, ptr %.01416.i, i64 -48
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds i8, ptr %.017.i, i64 -56
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.am = load i64, ptr %i.al, align 4
  store i64 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 4
  store i64 %i.ap, ptr %i.an, align 4
  %.not.i.7 = icmp eq ptr %i.ao, %i.f
  br i1 %.not.i.7, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.i, !llvm.loop !1168

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.aq = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i64
  %i.av = load ptr, ptr %0, align 8, !tbaa !721
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load i64, ptr %i.ay, align 4
  store i64 %i.az, ptr %i.aw, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !34  ; 2 uses
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %i.aq
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ar, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aq, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit
  %i.bi = zext i8 %1 to i64
  %i.bj = add nuw nsw i64 %i.bi, 2305843009213693950
  %i.bk = and i64 %i.bj, 2305843009213693951      ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 27
  br i1 %min.iters.check, label %.lr.ph.i48.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bm = zext i8 %1 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %4 = add i64 %i.bn, %i.b
  %i.bo = add i64 %4, -8
  %i.bp = zext i8 %i.bb to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add i64 %i.bq, %i.a
  %i.bs = sub i64 %i.bo, %i.br
  %diff.check = icmp ult i64 %i.bs, 32
  br i1 %diff.check, label %.lr.ph.i48.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bt = shl i64 %n.vec, 3                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.f, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bg, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bw ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bg, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep65, align 4
  %wide.load66 = load <2 x i64>, ptr %i.bx, align 4
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load66, ptr %i.by, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i48.preheader68

.lr.ph.i48.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.015.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bu, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i48.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader68, %.lr.ph.i48
  %.015.i = phi ptr [ %i.cc, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader68 ] ; 2 uses
  %.01214.i = phi ptr [ %i.cb, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader68 ] ; 2 uses
  %i.ca = load i64, ptr %.01214.i, align 4
  store i64 %i.ca, ptr %.015.i, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.not.i49 = icmp eq ptr %i.cb, %i.bh
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !1170

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block
  %.pre = load i8, ptr %i.ba, align 2, !tbaa !34
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit ]
  %i.cd = load ptr, ptr %0, align 8, !tbaa !721
  %i.ce = load i8, ptr %i.as, align 8, !tbaa !34
  %i.cf = zext i8 %i.ce to i64
  %i.cg = sub nsw i32 %.pre-phi, %i.e
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cf
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ch
  %i.cl = load i64, ptr %i.ck, align 4
  store i64 %i.cl, ptr %i.cj, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %.not.i50 = icmp eq i8 %i.cn, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.co = load i8, ptr %i.c, align 1, !tbaa !34   ; 5 uses
  %i.cp = add i8 %i.co, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.cp, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cr = zext i8 %i.cp to i64                    ; 2 uses
  %i.cs = and i8 %i.co, 1
  %lcmp.mod70.not.not = icmp eq i8 %i.cs, 0
  br i1 %lcmp.mod70.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ct = add i8 %i.co, %1                        ; 2 uses
  %i.cu = zext i8 %i.co to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !721 ; 3 uses
  %i.cx = zext i8 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cx
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !721
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.ct, ptr %i.cz, align 1, !tbaa !34
  store ptr %2, ptr %i.cw, align 8, !tbaa !721
  %indvars.iv.next.prol = add nsw i64 %i.cr, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cr, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.da = icmp eq i8 %i.co, 0
  br i1 %i.da, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dd = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.dd, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.de = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter72 = and i64 %i.de, 1
  %i.df = icmp ult i8 %i.dd, 3
  br i1 %i.df, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.de, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.dg = trunc nuw i64 %indvars.iv to i8
  %i.dh = add i8 %i.dg, -1                        ; 2 uses
  %i.di = add i8 %i.dh, %1                        ; 2 uses
  %i.dj = zext i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !721 ; 3 uses
  %i.dm = zext i8 %i.di to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dm
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !721
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i8 %i.di, ptr %i.do, align 1, !tbaa !34
  store ptr %2, ptr %i.dl, align 8, !tbaa !721
  %i.dp = trunc i64 %indvars.iv to i8
  %i.dq = add i8 %i.dp, -2                        ; 2 uses
  %i.dr = add i8 %i.dq, %1                        ; 2 uses
  %i.ds = zext i8 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !721 ; 3 uses
  %i.dv = zext i8 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dv
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !721
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 %i.dr, ptr %i.dx, align 1, !tbaa !34
  store ptr %2, ptr %i.du, align 8, !tbaa !721
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dy = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dy, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !1171

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.dz = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.ea = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.eb = trunc nuw i64 %indvars.iv58 to i8
  %i.ec = sub i8 %i.eb, %1
  %i.ed = add i8 %i.ec, %i.ea
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !721 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dz
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !721
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = trunc nuw i64 %i.dz to i8
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !34
  store ptr %2, ptr %i.eg, align 8, !tbaa !721
  %i.ek = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.el = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.el, %invariant.op
  %i.em = add i8 %.reass, %i.ek
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !721 ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv58
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !721
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.es, ptr %i.er, align 1, !tbaa !34
  store ptr %2, ptr %i.ep, align 8, !tbaa !721
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1172

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod74 = trunc i64 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.et = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.eu = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.ev = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ew = sub i8 %i.ev, %1
  %i.ex = add i8 %i.ew, %i.eu
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !721 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.et
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !721
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = trunc nuw i64 %i.et to i8
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !34
  store ptr %2, ptr %i.fa, align 8, !tbaa !721
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.fe = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.ff = sub i8 %i.fe, %1
  store i8 %i.ff, ptr %i.ba, align 2, !tbaa !34
  %i.fg = load i8, ptr %i.c, align 1, !tbaa !34
  %i.fh = add i8 %i.fg, %1
  store i8 %i.fh, ptr %i.c, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 30, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !34
  %i.n = load i8, ptr %i.l, align 1, !tbaa !34    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 3               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = shl nuw nsw i64 %i.p, 3
  %i.y = add i64 %i.x, %i.a
  %i.z = sub i64 %i.b, %i.y
  %diff.check = icmp ult i64 %i.z, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 4
  %wide.load36 = load <2 x i64>, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load36, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = load i64, ptr %.01214.i, align 4
  store i64 %i.ah, ptr %.015.i, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1174

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.d
  %i.ak = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.j, align 1, !tbaa !34
  %i.am = load ptr, ptr %0, align 8, !tbaa !721   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !34  ; 4 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ap
  %i.ar = zext i8 %i.ao to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34  ; 3 uses
  %i.au = icmp ult i8 %i.ao, %i.at
  %i.av = zext i8 %i.ao to i64                    ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %narrow.i = sub nuw i8 %i.at, %i.ao
  %i.ay = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.az, ptr align 4 %i.ax, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ba = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i64, ptr %i.aq, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %i.be = add i8 %i.ba, 1                         ; 3 uses
  store i8 %i.be, ptr %i.as, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %.not.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.be, %.lr.ph.i27 ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bl = add i8 %.019.i, -1                      ; 3 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !721 ; 2 uses
  %i.bp = zext i8 %.019.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !721
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !34
  %i.bs = zext i8 %i.bl to i32
  %i.bt = icmp samesign ult i32 %i.bi, %i.bs
  br i1 %i.bt, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit, !llvm.loop !1175

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, %bb.e
  %i.bu = load ptr, ptr %0, align 8, !tbaa !721
  %i.bv = load i8, ptr %i.an, align 8, !tbaa !34
  %i.bw = add i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  store ptr %2, ptr %i.bz, align 8, !tbaa !721
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !34
  %.not.i28 = icmp eq i8 %i.cb, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit
  %i.cc = load i8, ptr %i.j, align 2, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.cc, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.cl, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.cf = zext i8 %.0 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !721 ; 3 uses
  %i.ci = zext i8 %.02529 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !721
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.02529, ptr %i.ck, align 1, !tbaa !34
  store ptr %2, ptr %i.ch, align 8, !tbaa !721
  %i.cl = add i8 %.02529, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.l, align 1, !tbaa !34
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !1176

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl12lts_2025051219str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #7 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !512
  %i.c = load ptr, ptr %1, align 8, !tbaa !514    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !523
  %i.i = load ptr, ptr %0, align 8, !tbaa !514    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE11_M_allocateEm.exit.i, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #41
  unreachable

_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

end_hunk_1
