Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/feature_resolver?download=true
inline.NumInlined: 1808
inline.NumDeleted: 750
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE:bb.a
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !110
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.p, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not.i.i17, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = and i32 %i.t, 16
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !110
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.w, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !149
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = add i64 %i.z, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = select i1 %i.ab, ptr %i.x, ptr %i.ae    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !150 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx = shl nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %.idx
  %.not2532 = icmp eq i32 %i.ah, 0
  br i1 %.not2532, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !144
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge37, !llvm.loop !221

.lr.ph:                                           ; preds = %bb.d, %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit
  %.sroa.022.033 = phi ptr [ %i.gv, %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit ], [ %i.af, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.022.033, align 8, !tbaa !151
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !110 ; 5 uses
  %i.aq = icmp sle i32 %i.ap, %1
  %i.ar = icmp eq i32 %i.ap, 9999
  %or.cond.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.as = load i64, ptr %i.e, align 8, !tbaa !126, !noalias !228
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.au = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26, !noalias !228 ; 5 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !127, !noalias !228
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.av, align 8, !tbaa !110, !noalias !228
  store ptr %i.au, ptr %i.f, align 8, !tbaa !127, !noalias !228
  store ptr %i.au, ptr %2, align 8, !tbaa !127, !noalias !228
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %2, %.preheader ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !127, !noalias !228 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !110, !noalias !228 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.01013.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.ba = add i64 %.01013.i.i.i.i.i.i, %.014.i.i.i.i.i.i
  %i.bb = lshr i64 %i.ba, 1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129, !noalias !228
  %i.be = icmp slt i32 %i.bd, %i.ap               ; 2 uses
  %i.bf = add nuw i64 %i.bb, 1
  %.111.i.i.i.i.i.i = select i1 %i.be, i64 %.01013.i.i.i.i.i.i, i64 %i.bb ; 3 uses
  %.1.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %.014.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, %.111.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i, label %bb.h, !llvm.loop !1

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !110, !noalias !228
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.bj = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  br label %bb.g

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bn = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i = phi i32 [ %i.bn, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.0.0.i16.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i ], [ %i.bv, %bb.k ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !110, !noalias !228
  %i.bq = zext i8 %i.bp to i32
  %i.br = icmp eq i32 %.sroa.7.0.i.i.i, %i.bq
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !110, !noalias !228
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load ptr, ptr %.sroa.0.0.i16.i.i, align 8, !tbaa !127, !noalias !228 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !110, !noalias !228
  %.not.i19.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i19.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, !llvm.loop !2

bb.l:                                             ; preds = %bb.j
  %i.by = sext i32 %.sroa.7.0.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 12
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !129, !noalias !228
  %i.cc = icmp slt i32 %i.ap, %i.cb
  br i1 %i.cc, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !228
  store i32 %i.bn, ptr %i.g, align 8, !noalias !228
  %i.cd = load i8, ptr %i.bm, align 1, !tbaa !110, !noalias !228 ; 2 uses
  %.not.i.i19 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i19, label %.thread.i.i.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %.pre13.i = load i8, ptr %i.bl, align 1, !tbaa !110, !noalias !228
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.cf = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %.11723.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !127, !noalias !228 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !110, !noalias !228 ; 2 uses
  %.not.i24.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !110, !noalias !228
  %i.cl = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.cm = zext i8 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %.117.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !127, !noalias !228 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !110, !noalias !228 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i, !llvm.loop !3

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i: ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i.i
  %.pre.i = phi i8 [ %i.ci, %.thread.i.i.i ], [ %i.cp, %.lr.ph26.i.i.i.i ]
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !110, !noalias !228 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  store ptr %.117.lcssa.i.i.i.i, ptr %3, align 8, !noalias !228
  store i32 %i.cs, ptr %i.g, align 8, !tbaa !154, !noalias !228
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i, %._crit_edge.i
  %i.ct = phi i8 [ %i.cr, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %.pre13.i, %._crit_edge.i ] ; 3 uses
  %i.cu = phi i8 [ %.pre.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %i.cd, %._crit_edge.i ]
  %i.cv = phi ptr [ %.117.lcssa.i.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %.sroa.0.0.i.i.i, %._crit_edge.i ] ; 6 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  %i.cy = icmp eq i8 %i.ct, %i.cu
  br i1 %i.cy, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cz = icmp ult i8 %i.ct, 61
  br i1 %i.cz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = shl nuw nsw i8 %i.ct, 1
  %i.db = call i8 @llvm.umin.i8(i8 %i.da, i8 61)  ; 2 uses
  %i.dc = shl nuw i8 %i.db, 2
  %i.dd = zext i8 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 16
  %i.df = and i64 %i.de, 504
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #26, !noalias !228 ; 12 uses
  store ptr %i.dg, ptr %i.dg, align 8, !tbaa !127, !noalias !228
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 0, ptr %i.dh, align 8, !tbaa !110, !noalias !228
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  store i8 0, ptr %i.di, align 1, !tbaa !110, !noalias !228
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 11
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !110, !noalias !228
  store ptr %i.dg, ptr %3, align 8, !tbaa !155, !noalias !228
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !110, !noalias !228 ; 3 uses
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dl, 2        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i
  %.not13.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not13.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.o
  %i.do = ptrtoaddr ptr %i.dg to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 3 uses
  %i.dq = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 28
  %i.dt = sub i64 %i.cw, %i.do
  %diff.check = icmp ugt i64 %i.dt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 3 uses
  %i.du = shl i64 %n.vec, 2                       ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dp, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.dx ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep58, align 4, !noalias !228
  %wide.load59 = load <4 x i32>, ptr %i.dy, align 4, !noalias !228
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1, !noalias !228
  store <4 x i32> %wide.load59, ptr %i.dz, align 1, !noalias !228
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i.preheader

.lr.ph.i.i.i4.i.preheader:                        ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.015.i.i.i.i.ph = phi ptr [ %i.dp, %.lr.ph.preheader.i.i.i.i ], [ %i.dv, %middle.block ]
  %.01214.i.i.i.i.ph = phi ptr [ %i.dm, %.lr.ph.preheader.i.i.i.i ], [ %i.dw, %middle.block ]
  br label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %.lr.ph.i.i.i4.i.preheader, %.lr.ph.i.i.i4.i
  %.015.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i4.i ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i4.i.preheader ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i4.i ], [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i4.i.preheader ] ; 2 uses
  %i.eb = load i32, ptr %.01214.i.i.i.i, align 4, !noalias !228
  store i32 %i.eb, ptr %.015.i.i.i.i, align 1, !noalias !228
  %i.ec = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i5.i = icmp eq ptr %i.ec, %i.dn
  br i1 %.not.i.i.i5.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !225

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i: ; preds = %.lr.ph.i.i.i4.i, %middle.block, %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  store i8 %i.dk, ptr %i.ee, align 2, !tbaa !110, !noalias !228
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !110, !noalias !228 ; 2 uses
  %.not57.i = icmp eq i8 %i.eg, 0
  %i.eh = zext i8 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 16
  %i.ek = and i64 %i.ej, 2040
  %.sink.i = select i1 %.not57.i, i64 752, i64 %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %.sink.i) #24, !noalias !228
  store ptr %i.dg, ptr %i.f, align 8, !tbaa !127, !noalias !228
  store ptr %i.dg, ptr %2, align 8, !tbaa !127, !noalias !228
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3), !noalias !228
  %.pre14.i = load ptr, ptr %3, align 8, !tbaa !155, !noalias !228
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, %bb.m
  %i.el = phi ptr [ %i.dg, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i ], [ %.pre14.i, %bb.p ], [ %i.cv, %bb.m ] ; 5 uses
  %i.em = load i32, ptr %i.g, align 8, !tbaa !154, !noalias !228 ; 3 uses
  %i.en = trunc i32 %i.em to i8                   ; 2 uses
  %i.eo = and i32 %i.em, 255                      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 10 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !110, !noalias !228 ; 3 uses
  %i.er = icmp ugt i8 %i.eq, %i.en
  %i.es = zext nneg i32 %i.eo to i64              ; 2 uses
  br i1 %i.er, label %.lr.ph.preheader.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %i.es ; 2 uses
  %narrow.i.i = sub nuw i8 %i.eq, %i.en
  %i.ev = zext i8 %narrow.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ev, 2
  %i.ew = getelementptr i8, ptr %i.eu, i64 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ew, ptr align 4 %i.eu, i64 %.idx.i.i.i, i1 false), !noalias !228
  %.pre.i.i = load i8, ptr %i.ep, align 1, !tbaa !110, !noalias !228
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.q
  %i.ex = phi i8 [ %.pre.i.i, %.lr.ph.preheader.i.i.i ], [ %i.eq, %bb.q ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.es
  store i32 %i.ap, ptr %i.ez, align 4, !tbaa !129, !noalias !228
  %i.fa = add i8 %i.ex, 1                         ; 3 uses
  store i8 %i.fa, ptr %i.ep, align 1, !tbaa !110, !noalias !228
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 11
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !110, !noalias !228
  %.not.i18.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i18.i.i, label %bb.r, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i
  %i.fd = zext i8 %i.fa to i32
  %i.fe = add nuw nsw i32 %i.eo, 1                ; 2 uses
  %i.ff = icmp samesign ult i32 %i.fe, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 256 ; 10 uses
  %i.fh = zext i8 %i.fa to i64                    ; 4 uses
  %i.fi = zext nneg i32 %i.fe to i64
  %.mask = and i32 %i.em, 255
  %i.fj = zext nneg i32 %.mask to i64             ; 2 uses
  %i.fk = xor i64 %i.fj, -1
  %i.fl = add nsw i64 %i.fk, %i.fh
  %i.fm = add nsw i64 %i.fh, -2
  %i.fn = sub nsw i64 %i.fm, %i.fj
  %xtraiter = and i64 %i.fl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %i.fo, %.prol.preheader ], [ %i.fh, %.lr.ph.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.fo = add nsw i64 %indvars.iv.i.prol, -1      ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !127, !noalias !228 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i.prol
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !127, !noalias !228
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = trunc nuw i64 %indvars.iv.i.prol to i8
  store i8 %i.ft, ptr %i.fs, align 1, !tbaa !110, !noalias !228
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !226

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %indvars.iv.i.unr = phi i64 [ %i.fh, %.lr.ph.i.i ], [ %i.fo, %.prol.preheader ]
  %i.fu = icmp ult i64 %i.fn, 3
  br i1 %i.fu, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i = phi i64 [ %i.gn, %.lr.ph.i.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 6 uses
  %i.fv = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !127, !noalias !228 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !127, !noalias !228
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = trunc nuw i64 %indvars.iv.i to i8
  store i8 %i.ga, ptr %i.fz, align 1, !tbaa !110, !noalias !228
  %i.gb = add nsw i64 %indvars.iv.i, -2           ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !127, !noalias !228 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fv
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !127, !noalias !228
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = trunc nuw i64 %i.fv to i8
  store i8 %i.gg, ptr %i.gf, align 1, !tbaa !110, !noalias !228
  %i.gh = add nsw i64 %indvars.iv.i, -3           ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !127, !noalias !228 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gb
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !127, !noalias !228
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = trunc nuw i64 %i.gb to i8
  store i8 %i.gm, ptr %i.gl, align 1, !tbaa !110, !noalias !228
  %i.gn = add nsw i64 %indvars.iv.i, -4           ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !127, !noalias !228 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gh
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !127, !noalias !228
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = trunc nuw i64 %i.gh to i8
  store i8 %i.gs, ptr %i.gr, align 1, !tbaa !110, !noalias !228
  %.wide.i.3 = icmp ugt i64 %i.gn, %i.fi
  br i1 %.wide.i.3, label %.lr.ph.i.i.new, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit, !llvm.loop !4

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i, %bb.r
  %i.gt = load i64, ptr %i.e, align 8, !tbaa !126, !noalias !228
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.e, align 8, !tbaa !126, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit: ; preds = %.lr.ph, %bb.l, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.gv, %i.aj
  br i1 %.not25, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !229 {
bb.a:
  %4 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.d, ptr %9, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.f = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %2)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.g = extractvalue { i64, ptr } %i.f, 0
  store i64 %i.g, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = extractvalue { i64, ptr } %i.f, 1
  store ptr %i.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !143
  %i.k = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %9, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %4, i64 1)
          to label %bb.c unwind label %bb.h       ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf12_GLOBAL__N_112FillDefaultsENS0_7EditionERNS0_7MessageES4_:bb.a
.noexc.i:                                         ; preds = %"_ZN4absl12lts_2025051213c_upper_boundISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EES5_RZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESF_RKT0_OT1_.exit.thread"
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  store i64 %i.cz, ptr %10, align 8, !noalias !242
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.db = extractvalue { i64, ptr } %i.cy, 1
  store ptr %i.db, ptr %i.da, align 8, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !242
  store ptr %10, ptr %9, align 8, !tbaa !110, !noalias !242
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dc, align 8, !tbaa !143, !noalias !242
  %i.dd = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %14, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %9, i64 1)
          to label %bb.ab unwind label %bb.ae, !noalias !242 ; 0 uses

bb.ab:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !242
  %i.de = load ptr, ptr %14, align 8, !tbaa !108, !noalias !242
  %i.df = load i64, ptr %i.cx, align 8, !tbaa !109, !noalias !242
  store i64 %i.df, ptr %13, align 8, !noalias !242
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.de, ptr %i.dg, align 8, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22, !noalias !242
  store i64 18, ptr %15, align 8, !noalias !242
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.50, ptr %i.dh, align 8, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !242
  store i64 %i.cs, ptr %16, align 8, !tbaa !104, !noalias !242
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.cu, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !105, !noalias !242
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %bb.ac unwind label %bb.af, !noalias !242

bb.ac:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %11, align 8, !tbaa !108, !noalias !242
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !109, !noalias !242
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.dk, ptr %i.di)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load ptr, ptr %11, align 8, !tbaa !108, !noalias !242 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !110, !noalias !242
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !242
  %i.dq = load ptr, ptr %14, align 8, !tbaa !108, !noalias !242 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cw
  br i1 %i.dr, label %.critedge92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ds = load i64, ptr %i.cw, align 8, !tbaa !110, !noalias !242
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #24
  br label %.critedge92

bb.ae:                                            ; preds = %.noexc.i, %"_ZN4absl12lts_2025051213c_upper_boundISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EES5_RZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESF_RKT0_OT1_.exit.thread"
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

bb.ag:                                            ; preds = %bb.ac
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %11, align 8, !tbaa !108, !noalias !242 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.ag
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !110, !noalias !242
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i ], [ %i.dw, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22, !noalias !242
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %bb.ae
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i ], [ %i.du, %bb.ae ]
  %i.ec = load ptr, ptr %14, align 8, !tbaa !108, !noalias !242 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cw
  br i1 %i.ed, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i: ; preds = %bb.ah
  %i.ee = load i64, ptr %i.cw, align 8, !tbaa !110, !noalias !242
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !242
  br label %.body109

bb.ai:                                            ; preds = %"_ZN4absl12lts_2025051213c_upper_boundISt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS5_EES5_RZNS4_12_GLOBAL__N_112FillDefaultsENS4_7EditionERNS4_7MessageESB_E3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESF_RKT0_OT1_.exit"
  %i.eg = getelementptr inbounds i8, ptr %.sroa.02.1.i.i.i, i64 -16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !165
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = and i64 %i.ei, -4
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !108
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !109
  %i.eo = invoke noundef zeroext i1 @_ZN6google8protobuf10TextFormat25ParseFieldValueFromStringESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_15FieldDescriptorEPNS0_7MessageE(i64 %i.en, ptr %i.el, ptr noundef nonnull %i.q, ptr noundef nonnull %.071)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.eo, label %.critedge94, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !95 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %.0.copyload.i.i.i111 = load i16, ptr %i.es, align 1
  %i.et = zext i16 %.0.copyload.i.i.i111 to i64   ; 2 uses
  %i.eu = xor i64 %i.et, -1
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.ew, ptr %22, align 8, !tbaa !141
  %i.ex = load ptr, ptr %i.ek, align 8, !tbaa !108 ; 2 uses
  %i.ey = load i64, ptr %i.ep, align 8, !tbaa !109 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.ey, ptr %i.a, align 8, !tbaa !104
  %i.ez = icmp ugt i64 %i.ey, 15
  br i1 %i.ez, label %.noexc.i114, label %._crit_edge.i.i

.noexc.i114:                                      ; preds = %bb.ak
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc115:                                        ; preds = %.noexc.i114
  store ptr %i.fa, ptr %22, align 8, !tbaa !108
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.fb, ptr %i.ew, align 8, !tbaa !110
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc115, %bb.ak
  %i.fc = phi ptr [ %i.fa, %.noexc115 ], [ %i.ew, %bb.ak ] ; 2 uses
  switch i64 %i.ey, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.fd = load i8, ptr %i.ex, align 1, !tbaa !110
  store i8 %i.fd, ptr %i.fc, align 1, !tbaa !110
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr align 1 %i.ex, i64 %i.ey, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !104 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !109
  %i.fg = load ptr, ptr %22, align 8, !tbaa !108
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 0, ptr %i.fh, align 1, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.val101 = load ptr, ptr %22, align 8, !tbaa !108
  %.val102 = load i64, ptr %i.ff, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !243
  store i64 52, ptr %5, align 8, !noalias !243
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.51, ptr %i.fi, align 8, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !243
  store i64 %i.et, ptr %6, align 8, !tbaa !104, !noalias !243
  %.sroa.2.0..sroa_idx.i.i116 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ev, ptr %.sroa.2.0..sroa_idx.i.i116, align 8, !tbaa !105, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !243
  store i64 19, ptr %7, align 8, !noalias !243
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.52, ptr %i.fj, align 8, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !243
  store i64 %.val102, ptr %8, align 8, !noalias !243
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.val101, ptr %i.fk, align 8, !noalias !243
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc120 unwind label %bb.ar

.noexc120:                                        ; preds = %bb.an
  %i.fl = load ptr, ptr %4, align 8, !tbaa !108, !noalias !243
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !109, !noalias !243
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fn, ptr %i.fl)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc120
  %i.fo = load ptr, ptr %4, align 8, !tbaa !108, !noalias !243 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117: ; preds = %bb.ao
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !110, !noalias !243
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119

bb.ap:                                            ; preds = %.noexc120
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %4, align 8, !tbaa !108, !noalias !243 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.ap
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !110, !noalias !243
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !243
  br label %.body121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !243
  %i.fz = load ptr, ptr %22, align 8, !tbaa !108  ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ew
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119
  %i.gb = load i64, ptr %i.ew, align 8, !tbaa !110
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gd = load ptr, ptr %21, align 8, !tbaa !162  ; 3 uses
  %i.ge = load ptr, ptr %i.n, align 8, !tbaa !166 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i) #22
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i.i.i123, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i
  %i.gh = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #24
  br label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.av

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ai, %.noexc.i114
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.ar:                                            ; preds = %bb.an
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.body121:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.ar
  %eh.lpad-body122 = phi { ptr, i32 } [ %i.gl, %bb.ar ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ] ; 2 uses
  %i.gm = load ptr, ptr %22, align 8, !tbaa !108  ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ew
  br i1 %i.gn, label %.body109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %.body121
  %i.go = load i64, ptr %i.ew, align 8, !tbaa !110
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #24
  br label %.body109

.critedge94:                                      ; preds = %bb.aj
  %i.gq = load ptr, ptr %21, align 8, !tbaa !162  ; 3 uses
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !166 ; 2 uses
  %.not4.i.i.i128 = icmp eq ptr %i.gq, %i.gr
  br i1 %.not4.i.i.i128, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134, label %.lr.ph.i.i.i129

.lr.ph.i.i.i129:                                  ; preds = %.critedge94, %.lr.ph.i.i.i129
  %.05.i.i.i130 = phi ptr [ %i.gs, %.lr.ph.i.i.i129 ], [ %i.gq, %.critedge94 ] ; 2 uses
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i130) #22
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 40 ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %i.gs, %i.gr
  br i1 %.not.i.i.i131, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132, label %.lr.ph.i.i.i129, !llvm.loop !5

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132: ; preds = %.lr.ph.i.i.i129
  %.pr.i133 = load ptr, ptr %21, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132, %.critedge94
  %i.gt = phi ptr [ %.pr.i133, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i132 ], [ %i.gq, %.critedge94 ] ; 3 uses
  %.not.i.i1.i135 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i1.i135, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #24
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = load i32, ptr %i.k, align 8, !tbaa !144
  %i.gz = sext i32 %i.gy to i64
  %.not84 = icmp slt i64 %indvars.iv.next, %i.gz
  br i1 %.not84, label %bb.d, label %.critedge96, !llvm.loop !237

.body109:                                         ; preds = %.body121, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  %.pn78.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp237, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn.pn.pn.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit19.i ], [ %eh.lpad-body122, %.body121 ]
  call void @_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #22
  br label %.body

.body:                                            ; preds = %bb.x, %bb.w, %.body109
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %.body109 ], [ %i.bl, %bb.w ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.aw

.critedge92:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !242
  %i.ha = load ptr, ptr %21, align 8, !tbaa !162  ; 3 uses
  %i.hb = load ptr, ptr %i.n, align 8, !tbaa !166 ; 2 uses
  %.not4.i.i.i138 = icmp eq ptr %i.ha, %i.hb
  br i1 %.not4.i.i.i138, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %.critedge92, %.lr.ph.i.i.i139
  %.05.i.i.i140 = phi ptr [ %i.hc, %.lr.ph.i.i.i139 ], [ %i.ha, %.critedge92 ] ; 2 uses
  call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i140) #22
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 40 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %i.hc, %i.hb
  br i1 %.not.i.i.i141, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142, label %.lr.ph.i.i.i139, !llvm.loop !5

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142: ; preds = %.lr.ph.i.i.i139
  %.pr.i143 = load ptr, ptr %21, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142, %.critedge92
  %i.hd = phi ptr [ %.pr.i143, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i142 ], [ %i.ha, %.critedge92 ] ; 3 uses
  %.not.i.i1.i145 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i145, label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !163
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #24
  br label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147

_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit147: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit.i144, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.av

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf12_GLOBAL__N_130ValidateSingleFeatureLifetimesENS0_7EditionESt17basic_string_viewIcSt11char_traitsIcEERKNS0_27FieldOptions_FeatureSupportERNS0_15FeatureResolver17ValidationResultsE:bb.a
  store ptr %i.cm, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %10, ptr %9, align 8, !tbaa !110
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.cn, align 8, !tbaa !143
  %i.co = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %20, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %9, i64 1)
          to label %bb.r unwind label %bb.z       ; 0 uses

bb.r:                                             ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.cp = load ptr, ptr %20, align 8, !tbaa !108
  %i.cq = load i64, ptr %i.ci, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.cr = load i32, ptr %i.cb, align 8, !tbaa !12
  %i.cs = and i32 %i.cr, 2
  %.not209 = icmp eq i32 %i.cs, 0
  br i1 %.not209, label %._crit_edge.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 2, ptr %22, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @.str.64, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !165
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -4
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !108
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !109
  store i64 %i.db, ptr %23, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.cz, ptr %i.dc, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %._crit_edge unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread

._crit_edge:                                      ; preds = %bb.s
  %.pre212.a = load ptr, ptr %21, align 8, !tbaa !108
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre213.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.dd, ptr %21, align 8, !tbaa !141
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !109
  store i8 0, ptr %i.dd, align 8, !tbaa !110
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre213.a, %._crit_edge ], [ 0, %._crit_edge.i.i ]
  %i.dg = phi ptr [ %.pre212.a, %._crit_edge ], [ %i.dd, %._crit_edge.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 11 uses
  store ptr %i.dh, ptr %19, align 8, !tbaa !141, !alias.scope !371
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 0, ptr %i.di, align 8, !tbaa !109, !alias.scope !371
  store i8 0, ptr %i.dh, align 8, !tbaa !110, !alias.scope !371
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !371
  store i64 %1, ptr %8, align 16, !noalias !371
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.dj, align 8, !noalias !371
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.cq, ptr %i.dk, align 16, !noalias !371
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.cp, ptr %i.dl, align 8, !noalias !371
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.df, ptr %i.dm, align 16, !noalias !371
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.dg, ptr %i.dn, align 8, !noalias !371
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %19, i64 35, ptr nonnull @.str.63, ptr noundef nonnull %8, i64 noundef 3)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %19, align 8, !tbaa !108, !alias.scope !371 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dh
  br i1 %i.dq, label %.body101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.u
  %i.dr = load i64, ptr %i.dh, align 8, !tbaa !110, !alias.scope !371
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #24
  br label %.body101

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !371
  %i.dt = load ptr, ptr %21, align 8, !tbaa !108  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.v
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !110
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #24
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.dy = load ptr, ptr %20, align 8, !tbaa !108  ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.ch
  br i1 %i.dz, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %.critedge
  %i.ea = load i64, ptr %i.ch, align 8, !tbaa !110
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit110

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit110: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !176 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !177
  %.not.i111 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i111, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit110
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 3 uses
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !141
  %i.eh = load ptr, ptr %19, align 8, !tbaa !108  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dh
  br i1 %i.ei, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

bb.x:                                             ; preds = %bb.w
  %i.ej = load i64, ptr %i.di, align 8, !tbaa !109 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i64 %i.el, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.w
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !108
  %i.em = load i64, ptr %i.dh, align 8, !tbaa !110
  store i64 %i.em, ptr %i.eg, align 8, !tbaa !110
  %.pre214.a = load i64, ptr %i.di, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116.thread: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %i.en = phi i64 [ %.pre214.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.ej, %bb.x ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !109
  store i64 0, ptr %i.di, align 8, !tbaa !109
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !176
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store ptr %i.eq, ptr %i.ec, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.y:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit110
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116 unwind label %bb.ab

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116: ; preds = %bb.y
  %.pre215 = load ptr, ptr %19, align 8, !tbaa !108 ; 2 uses
  %i.er = icmp eq ptr %.pre215, %i.dh
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116
  %i.es = load i64, ptr %i.dh, align 8, !tbaa !110
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.pre215, i64 noundef %i.et) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit116.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.an

bb.z:                                             ; preds = %.noexc85, %bb.q
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread: ; preds = %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.critedge59

.body101:                                         ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98
  %i.ew = load ptr, ptr %21, align 8, !tbaa !108  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %.critedge59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %.body101
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !110
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #24
  br label %.critedge59

.critedge59:                                      ; preds = %.body101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread
  %.pn50.pn = phi { ptr, i32 } [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122.thread ], [ %i.do, %.body101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge59, %bb.z
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %.critedge59 ], [ %i.eu, %bb.z ]
  %i.fb = load ptr, ptr %20, align 8, !tbaa !108  ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ch
  br i1 %i.fc, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123: ; preds = %bb.aa
  %i.fd = load i64, ptr %i.ch, align 8, !tbaa !110
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit126

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit126: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ab:                                            ; preds = %bb.y
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %19, align 8, !tbaa !108  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dh
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.ab
  %i.fi = load i64, ptr %i.dh, align 8, !tbaa !110
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit126
  %.pn55 = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit126 ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ff, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ao

bb.ac:                                            ; preds = %bb.p, %bb.o
  %i.fk = and i32 %i.cc, 8
  %.not210 = icmp eq i32 %i.fk, 0
  br i1 %.not210, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !110 ; 2 uses
  %.not45 = icmp slt i32 %0, %i.fm
  br i1 %.not45, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.fn = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.fo, ptr %25, align 8, !tbaa !141
  %i.fp = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i64 0, ptr %i.fp, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.fq = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %i.fm)
          to label %.noexc131 unwind label %bb.al ; 2 uses

.noexc131:                                        ; preds = %bb.ae
  %i.fr = extractvalue { i64, ptr } %i.fq, 0
  store i64 %i.fr, ptr %7, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ft = extractvalue { i64, ptr } %i.fq, 1
  store ptr %i.ft, ptr %i.fs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !110
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fu, align 8, !tbaa !143
  %i.fv = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %25, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %6, i64 1)
          to label %bb.af unwind label %bb.al     ; 0 uses

bb.af:                                            ; preds = %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fw = load ptr, ptr %25, align 8, !tbaa !108
  %i.fx = load i64, ptr %i.fp, align 8, !tbaa !109
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !165
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = and i64 %i.ga, -4
  %i.gc = inttoptr i64 %i.gb to ptr               ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !108
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !109
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 11 uses
  store ptr %i.gg, ptr %24, align 8, !tbaa !141, !alias.scope !372
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !109, !alias.scope !372
  store i8 0, ptr %i.gg, align 8, !tbaa !110, !alias.scope !372
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !372
  store i64 %1, ptr %5, align 16, !noalias !372
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.gi, align 8, !noalias !372
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.fx, ptr %i.gj, align 16, !noalias !372
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.fw, ptr %i.gk, align 8, !noalias !372
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.gf, ptr %i.gl, align 16, !noalias !372
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.gd, ptr %i.gm, align 8, !noalias !372
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %24, i64 40, ptr nonnull @.str.66, ptr noundef nonnull %5, i64 noundef 3)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %24, align 8, !tbaa !108, !alias.scope !372 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gg
  br i1 %i.gp, label %.body146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143: ; preds = %bb.ag
  %i.gq = load i64, ptr %i.gg, align 8, !tbaa !110, !alias.scope !372
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #24
  br label %.body146

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !372
  %i.gs = load ptr, ptr %25, align 8, !tbaa !108  ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fo
  br i1 %i.gt, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149: ; preds = %bb.ah
  %i.gu = load i64, ptr %i.fo, align 8, !tbaa !110
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !176 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !177
  %.not.i153 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i153, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  store ptr %i.ha, ptr %i.gx, align 8, !tbaa !141
  %i.hb = load ptr, ptr %24, align 8, !tbaa !108  ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gg
  br i1 %i.hc, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

bb.aj:                                            ; preds = %bb.ai
  %i.hd = load i64, ptr %i.gh, align 8, !tbaa !109 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 16
  call void @llvm.assume(i1 %i.he)
  %i.hf = add nuw nsw i64 %i.hd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull align 8 dereferenceable(1) %i.gg, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.ai
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !108
  %i.hg = load i64, ptr %i.gg, align 8, !tbaa !110
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !110
  %.pre216 = load i64, ptr %i.gh, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  %i.hh = phi i64 [ %.pre216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.hd, %bb.aj ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !109
  store i64 0, ptr %i.gh, align 8, !tbaa !109
  %i.hj = load ptr, ptr %i.gw, align 8, !tbaa !176
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.hk, ptr %i.gw, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit152
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158 unwind label %bb.am

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158: ; preds = %bb.ak
  %.pre217 = load ptr, ptr %24, align 8, !tbaa !108 ; 2 uses
  %i.hm = icmp eq ptr %.pre217, %i.gg
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158
  %i.hn = load i64, ptr %i.gg, align 8, !tbaa !110
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %.pre217, i64 noundef %i.ho) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit158.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.an

bb.al:                                            ; preds = %.noexc131, %bb.ae
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body146
end_hunk_2
