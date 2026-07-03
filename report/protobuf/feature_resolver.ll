inline.NumInlined: 1808
inline.NumDeleted: 750
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE:bb.a
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %.idx
  %.not2532 = icmp eq i32 %i.ah, 0
  br i1 %.not2532, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !88
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge37, !llvm.loop !111

.lr.ph:                                           ; preds = %bb.d, %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit
  %.sroa.022.033 = phi ptr [ %i.fs, %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit ], [ %i.af, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.022.033, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !39 ; 5 uses
  %i.aq = icmp sle i32 %i.ap, %1
  %i.ar = icmp eq i32 %i.ap, 9999
  %or.cond.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.i, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.as = load i64, ptr %i.e, align 8, !tbaa !59, !noalias !112
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.au = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26, !noalias !112 ; 5 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !60, !noalias !112
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.av, align 8, !tbaa !39, !noalias !112
  store ptr %i.au, ptr %i.f, align 8, !tbaa !60, !noalias !112
  store ptr %i.au, ptr %2, align 8, !tbaa !60, !noalias !112
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %2, %.preheader ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !60, !noalias !112 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !39, !noalias !112 ; 2 uses
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61, !noalias !112
  %i.be = icmp slt i32 %i.bd, %i.ap               ; 2 uses
  %i.bf = add nuw i64 %i.bb, 1
  %.111.i.i.i.i.i.i = select i1 %i.be, i64 %.01013.i.i.i.i.i.i, i64 %i.bb ; 3 uses
  %.1.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %.014.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, %.111.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i, label %bb.h, !llvm.loop !115

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39, !noalias !112
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
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39, !noalias !112
  %i.bq = zext i8 %i.bp to i32
  %i.br = icmp eq i32 %.sroa.7.0.i.i.i, %i.bq
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39, !noalias !112
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load ptr, ptr %.sroa.0.0.i16.i.i, align 8, !tbaa !60, !noalias !112 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39, !noalias !112
  %.not.i19.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i19.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, !llvm.loop !116

bb.l:                                             ; preds = %bb.j
  %i.by = sext i32 %.sroa.7.0.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 12
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !61, !noalias !112
  %i.cc = icmp slt i32 %i.ap, %i.cb
  br i1 %i.cc, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !112
  store i32 %i.bn, ptr %i.g, align 8, !noalias !112
  %i.cd = load i8, ptr %i.bm, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i.i19 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i19, label %.thread.i.i.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %.pre12.i = load i8, ptr %i.bl, align 1, !tbaa !39, !noalias !112
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.cf = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %.11723.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !60, !noalias !112 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i24.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !39, !noalias !112
  %i.cl = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.cm = zext i8 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %.117.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !60, !noalias !112 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i, !llvm.loop !117

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i: ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i.i
  %.pre.i = phi i8 [ %i.ci, %.thread.i.i.i ], [ %i.cp, %.lr.ph26.i.i.i.i ]
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  store ptr %.117.lcssa.i.i.i.i, ptr %3, align 8, !noalias !112
  store i32 %i.cs, ptr %i.g, align 8, !tbaa !118, !noalias !112
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i, %._crit_edge.i
  %i.ct = phi i8 [ %i.cr, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %.pre12.i, %._crit_edge.i ] ; 3 uses
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
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #26, !noalias !112 ; 12 uses
  store ptr %i.dg, ptr %i.dg, align 8, !tbaa !60, !noalias !112
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 0, ptr %i.dh, align 8, !tbaa !39, !noalias !112
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  store i8 0, ptr %i.di, align 1, !tbaa !39, !noalias !112
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 11
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !39, !noalias !112
  store ptr %i.dg, ptr %3, align 8, !tbaa !120, !noalias !112
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !39, !noalias !112 ; 3 uses
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
  %i.dt = sub i64 %i.do, %i.cw
  %diff.check = icmp ult i64 %i.dt, 32
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
  %next.gep57 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep57, align 4, !noalias !112
  %wide.load58 = load <4 x i32>, ptr %i.dy, align 4, !noalias !112
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1, !noalias !112
  store <4 x i32> %wide.load58, ptr %i.dz, align 1, !noalias !112
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !121

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
  %i.eb = load i32, ptr %.01214.i.i.i.i, align 4, !noalias !112
  store i32 %i.eb, ptr %.015.i.i.i.i, align 1, !noalias !112
  %i.ec = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i5.i = icmp eq ptr %i.ec, %i.dn
  br i1 %.not.i.i.i5.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !124

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i: ; preds = %.lr.ph.i.i.i4.i, %middle.block, %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  store i8 %i.dk, ptr %i.ee, align 2, !tbaa !39, !noalias !112
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not57.i = icmp eq i8 %i.eg, 0
  %i.eh = zext i8 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 16
  %i.ek = and i64 %i.ej, 2040
  %.sink.i = select i1 %.not57.i, i64 752, i64 %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %.sink.i) #24, !noalias !112
  store ptr %i.dg, ptr %i.f, align 8, !tbaa !60, !noalias !112
  store ptr %i.dg, ptr %2, align 8, !tbaa !60, !noalias !112
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3), !noalias !112
  %.pre13.i = load ptr, ptr %3, align 8, !tbaa !120, !noalias !112
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, %bb.m
  %i.el = phi ptr [ %i.dg, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i ], [ %.pre13.i, %bb.p ], [ %i.cv, %bb.m ] ; 5 uses
  %i.em = load i32, ptr %i.g, align 8, !tbaa !118, !noalias !112 ; 2 uses
  %i.en = trunc i32 %i.em to i8                   ; 2 uses
  %i.eo = and i32 %i.em, 255                      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 10 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !39, !noalias !112 ; 3 uses
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
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ew, ptr align 4 %i.eu, i64 %.idx.i.i.i, i1 false), !noalias !112
  %.pre.i.i = load i8, ptr %i.ep, align 1, !tbaa !39, !noalias !112
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.q
  %i.ex = phi i8 [ %.pre.i.i, %.lr.ph.preheader.i.i.i ], [ %i.eq, %bb.q ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.es
  store i32 %i.ap, ptr %i.ez, align 4, !tbaa !61, !noalias !112
  %i.fa = add i8 %i.ex, 1                         ; 3 uses
  store i8 %i.fa, ptr %i.ep, align 1, !tbaa !39, !noalias !112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 11
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !39, !noalias !112
  %.not.i18.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i18.i.i, label %bb.r, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i
  %i.fd = zext i8 %i.fa to i32
  %i.fe = add nuw nsw i32 %i.eo, 1                ; 2 uses
  %i.ff = icmp samesign ult i32 %i.fe, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 256 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.019.i.i = phi i8 [ %i.fa, %.lr.ph.i.i ], [ %i.fh, %bb.s ] ; 3 uses
  %i.fh = add i8 %.019.i.i, -1                    ; 3 uses
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !60, !noalias !112 ; 2 uses
  %i.fl = zext i8 %.019.i.i to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fl
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !60, !noalias !112
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i8 %.019.i.i, ptr %i.fn, align 1, !tbaa !39, !noalias !112
  %i.fo = zext i8 %i.fh to i32
  %i.fp = icmp samesign ult i32 %i.fe, %i.fo
  br i1 %i.fp, label %bb.s, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit, !llvm.loop !125

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit: ; preds = %bb.s, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i, %bb.r
  %i.fq = load i64, ptr %i.e, align 8, !tbaa !59, !noalias !112
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.e, align 8, !tbaa !59, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit: ; preds = %.lr.ph, %bb.l, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.fs, %i.aj
  br i1 %.not25, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  store ptr %i.d, ptr %9, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !38
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
  store ptr %5, ptr %4, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !80
  %i.k = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %9, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %4, i64 1)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %9, align 8, !tbaa !35
  %i.m = load i64, ptr %i.e, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE:bb.a
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !61
  %i.b = icmp sle i32 %0, %1
  %i.c = icmp eq i32 %0, 9999
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !59, !noalias !206
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26, !noalias !206 ; 5 uses
  store ptr %i.g, ptr %i.g, align 8, !tbaa !60, !noalias !206
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.h, align 8, !tbaa !39, !noalias !206
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !60, !noalias !206
  store ptr %i.g, ptr %2, align 8, !tbaa !60, !noalias !206
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.sroa.0.0.in.i.i = phi ptr [ %i.x, %bb.f ], [ %2, %.preheader ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !60, !noalias !206 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39, !noalias !206 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not12.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.e ] ; 2 uses
  %.01013.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %.111.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.n = add i64 %.01013.i.i.i.i.i, %.014.i.i.i.i.i
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61, !noalias !206
  %i.r = icmp slt i32 %i.q, %0                    ; 2 uses
  %i.s = add nuw i64 %i.o, 1
  %.111.i.i.i.i.i = select i1 %i.r, i64 %.01013.i.i.i.i.i, i64 %i.o ; 3 uses
  %.1.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %.014.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, %.111.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i, label %bb.e, !llvm.loop !115

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.111.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39, !noalias !206
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 256
  %i.w = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  br label %bb.d

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i
  %i.y = trunc i64 %.0.lcssa.i.i.i.i.i to i32     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i
  %.sroa.7.0.i.i = phi i32 [ %i.y, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i ], [ %i.af, %bb.h ] ; 2 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i ], [ %i.ag, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39, !noalias !206
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i32 %.sroa.7.0.i.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39, !noalias !206
  %i.af = zext i8 %i.ae to i32
  %i.ag = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !60, !noalias !206 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !39, !noalias !206
  %.not.i19.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i19.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, !llvm.loop !116

bb.i:                                             ; preds = %bb.g
  %i.aj = sext i32 %.sroa.7.0.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61, !noalias !206
  %i.an = icmp slt i32 %0, %i.am
  br i1 %i.an, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i: ; preds = %bb.h, %bb.i
  %i.ao = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0.i.i, i32 %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !206 ; 0 uses
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, %bb.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !39    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12 = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !39
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !60 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !60 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit, !llvm.loop !117

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.z = icmp eq i8 %i.t, %i.u
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ult i8 %i.t, 61
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i8 %i.t, 1
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 61) ; 2 uses
  %i.ad = shl nuw i8 %i.ac, 2
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 16
  %i.ag = and i64 %i.af, 504
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26 ; 12 uses
  store ptr %i.ah, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 0, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  store i8 0, ptr %i.aj, align 1, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  store i8 %i.ac, ptr %i.ak, align 1, !tbaa !39
  store ptr %i.ah, ptr %4, align 8, !tbaa !120
  %i.al = load i8, ptr %i.y, align 1, !tbaa !39   ; 3 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.am, 2          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ap = ptrtoaddr ptr %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 3 uses
  %i.ar = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  %i.au = sub i64 %i.ap, %i.w
  %diff.check = icmp ult i64 %i.au, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.ay ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4
  %wide.load22 = load <4 x i32>, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load22, ptr %i.ba, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.015.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i.i.i ], [ %i.aw, %middle.block ]
  %.01214.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %.01214.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %i.bc = load i32, ptr %.01214.i.i.i, align 4
  store i32 %i.bc, ptr %.015.i.i.i, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i5 = icmp eq ptr %i.bd, %i.ao
  br i1 %.not.i.i.i5, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !210

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4, %middle.block, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %i.al, ptr %i.bf, align 2, !tbaa !39
  store i8 0, ptr %i.y, align 1, !tbaa !39
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.x)
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !60
  store ptr %i.ah, ptr %0, align 8, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bg = phi ptr [ %i.ah, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %i.bj = and i32 %i.bh, 255                      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 10 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39  ; 3 uses
  %i.bm = icmp ugt i8 %i.bl, %i.bi
  %i.bn = zext nneg i32 %i.bj to i64              ; 2 uses
  br i1 %i.bm, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %narrow.i = sub nuw i8 %i.bl, %i.bi
  %i.bq = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bq, 2
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.br, ptr align 4 %i.bp, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bk, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.bs = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bl, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bn
  %i.bv = load i32, ptr %3, align 4, !tbaa !61
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !61
  %i.bw = add i8 %i.bs, 1                         ; 3 uses
  store i8 %i.bw, ptr %i.bk, align 1, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !39
  %.not.i18.i = icmp eq i8 %i.by, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i
  %i.bz = zext i8 %i.bw to i32
  %i.ca = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 256 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i8 [ %i.bw, %.lr.ph.i ], [ %i.cd, %bb.h ] ; 3 uses
  %i.cd = add i8 %.019.i, -1                      ; 3 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %i.ch = zext i8 %.019.i to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %.019.i, ptr %i.cj, align 1, !tbaa !39
  %i.ck = zext i8 %i.cd to i32
  %i.cl = icmp samesign ult i32 %i.ca, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit, !llvm.loop !125

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !59
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !60     ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !39    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39    ; 3 uses
  %i.n = icmp ult i8 %i.m, 61
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !3
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 61
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 61
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !3
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !39
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !39  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE:bb.a
bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #26 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !39
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp sgt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cu = xor i32 %i.cs, -1
  %i.cv = add nsw i32 %i.co, %i.cu
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cv, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 16
  %i.f = and i64 %i.e, 2040
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 1, !tbaa !39
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.l, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %i.q = zext i8 %i.p to i64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.q, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.r, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.147
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39    ; 2 uses
  %.not.i55 = icmp eq i8 %i.w, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.y, %.lr.ph66 ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39   ; 2 uses
  %.not.i56 = icmp eq i8 %i.aa, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !212

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.af = phi i8 [ %i.aa, %._crit_edge67 ], [ %i.w, %bb.d ]
  %.251 = phi ptr [ %i.y, %._crit_edge67 ], [ %i.u, %bb.d ]
  %.248 = phi i64 [ %i.ad, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ae, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = and i64 %i.ai, 2040
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.aj) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !39
  %i.am = zext i8 %i.al to i64
  %.not.not = icmp samesign ult i64 %.248, %i.am
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.at, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.ap, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !213

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.ap, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 2 uses
  %i.ap = load ptr, ptr %.3, align 8, !tbaa !60   ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 752) #24
  %i.aq = icmp eq ptr %i.ap, %i.j
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39
  %.not = icmp ult i8 %i.ao, %i.as
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !214

bb.g:                                             ; preds = %bb.f
  %i.at = zext i8 %i.ao to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 752, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 4611686018427387902
  %i.v = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %4 = add i64 %i.y, 4
  %5 = sub i64 %4, %i.a
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ae = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4
  %wide.load63 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ad, align 1
  store <4 x i32> %wide.load63, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader82 ]
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4 ; 2 uses
  %i.ah = load i32, ptr %.01214.i, align 4
  store i32 %i.ah, ptr %.015.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !216

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !39
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.aj = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.an = load i32, ptr %i.am, align 4
  store i32 %i.an, ptr %i.al, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !39  ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.aq, %i.o
  %i.as = sext i32 %i.ar to i64
  %i.at = zext i8 %1 to i64                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.at ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.as, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ap, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.aw = zext i8 %i.ap to i64
  %i.ax = sub nsw i64 %i.aw, %i.at
  %i.ay = add nsw i64 %i.ax, 4611686018427387903
  %i.az = and i64 %i.ay, 4611686018427387903      ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check66 = icmp samesign ult i64 %i.az, 7
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.ba, 9223372036854775800   ; 3 uses
  %i.bb = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bb
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.be = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.be ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.au, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4
  %wide.load75 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 1
  store <4 x i32> %wide.load75, ptr %i.bg, align 1
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bh, label %middle.block77, label %vector.body70, !llvm.loop !217

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.ba, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bc, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.au, %.lr.ph.i47.preheader ], [ %i.bd, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bk, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bj, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bi = load i32, ptr %.01214.i49, align 4
  store i32 %i.bi, ptr %.015.i48, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47, !llvm.loop !218

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !39
  %.not.i52 = icmp eq i8 %i.bm, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
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
  %i.bq = load i8, ptr %i.c, align 2, !tbaa !39
  %i.br = trunc i64 %indvars.iv.epil.init to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = add i8 %i.bq, %i.bs                     ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !39
  store ptr %0, ptr %i.bv, align 8, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.bz = load i8, ptr %i.ao, align 1, !tbaa !39
  %.not55 = icmp ult i8 %i.bz, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cb = load i8, ptr %i.c, align 2, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i8
  %i.cd = add i8 %i.cb, %i.cc                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 3 uses
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !39
  store ptr %0, ptr %i.cf, align 8, !tbaa !60
  %i.cj = load i8, ptr %i.c, align 2, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cl = add i8 %i.cj, %i.ck                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !39
  store ptr %0, ptr %i.cn, align 8, !tbaa !60
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !219

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cy, %bb.c ] ; 4 uses
  %i.cr = add i8 %.056, %1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !60 ; 3 uses
  %i.cv = zext i8 %.056 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.056, ptr %i.cx, align 1, !tbaa !39
  store ptr %2, ptr %i.cu, align 8, !tbaa !60
  %i.cy = add i8 %.056, 1                         ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.ao, align 1, !tbaa !39
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.o
  %.not = icmp slt i32 %i.dc, %i.cz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !220

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
  %i.dd = load i8, ptr %i.c, align 2, !tbaa !39
  %i.de = add i8 %i.dd, %1
  store i8 %i.de, ptr %i.c, align 2, !tbaa !39
  %i.df = load i8, ptr %i.ao, align 1, !tbaa !39
  %i.dg = sub i8 %i.df, %1
  store i8 %i.dg, ptr %i.ao, align 1, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 3 uses
  %i.l = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.u, align 1
  store <4 x i32> %wide.load66, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.017.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  %.01416.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -4 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %i.x, align 1
  %.not.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.i, !llvm.loop !222

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !39
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !39  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit
  %i.as = zext i8 %1 to i64
  %i.at = add nuw nsw i64 %i.as, 4611686018427387902
  %i.au = and i64 %i.at, 4611686018427387903      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check69 = icmp samesign ult i64 %i.au, 27
  br i1 %min.iters.check69, label %.lr.ph.i48.preheader84, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.aw = zext i8 %1 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %4 = add i64 %i.ax, %i.b
  %i.ay = add i64 %4, -4
  %i.az = zext i8 %i.al to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = add i64 %i.ba, %i.a
  %i.bc = sub i64 %i.ay, %i.bb
  %diff.check = icmp ult i64 %i.bc, 32
  br i1 %diff.check, label %.lr.ph.i48.preheader84, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck
  %n.vec72 = and i64 %i.av, 9223372036854775800   ; 3 uses
  %i.bd = shl i64 %n.vec72, 2                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.f, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.bd
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body73 ] ; 2 uses
  %i.bg = shl i64 %index74, 2                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %i.f, i64 %i.bg ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.aq, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep76, i64 16
  %wide.load77 = load <4 x i32>, ptr %next.gep76, align 4
  %wide.load78 = load <4 x i32>, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %wide.load77, ptr %next.gep75, align 1
  store <4 x i32> %wide.load78, ptr %i.bi, align 1
  %index.next79 = add nuw i64 %index74, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.bj, label %middle.block80, label %vector.body73, !llvm.loop !223

middle.block80:                                   ; preds = %vector.body73
  %cmp.n81 = icmp eq i64 %i.av, %n.vec72
  br i1 %cmp.n81, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i48.preheader84

.lr.ph.i48.preheader84:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block80
  %.015.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.be, %middle.block80 ]
  %.01214.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i48.preheader ], [ %i.bf, %middle.block80 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader84, %.lr.ph.i48
  %.015.i = phi ptr [ %i.bm, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader84 ] ; 2 uses
  %.01214.i = phi ptr [ %i.bl, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader84 ] ; 2 uses
  %i.bk = load i32, ptr %.01214.i, align 4
  store i32 %i.bk, ptr %.015.i, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i49 = icmp eq ptr %i.bl, %i.ar
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !224

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block80
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !39
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !60
  %i.bo = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.bp = zext i8 %i.bo to i64
  %i.bq = sub nsw i32 %.pre-phi, %i.e
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.br
  %i.bv = load i32, ptr %i.bu, align 4
  store i32 %i.bv, ptr %i.bt, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %.not.i50 = icmp eq i8 %i.bx, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.by = load i8, ptr %i.c, align 1, !tbaa !39   ; 5 uses
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.bz, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cb = zext i8 %i.bz to i64                    ; 2 uses
  %i.cc = and i8 %i.by, 1
  %lcmp.mod.not.not = icmp eq i8 %i.cc, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cd = add i8 %i.by, %1                        ; 2 uses
  %i.ce = zext i8 %i.by to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 3 uses
  %i.ch = zext i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %i.cd, ptr %i.cj, align 1, !tbaa !39
  store ptr %2, ptr %i.cg, align 8, !tbaa !60
  %indvars.iv.next.prol = add nsw i64 %i.cb, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cb, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ck = icmp eq i8 %i.by, 0
  br i1 %i.ck, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.cn = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.cn, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.co = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter85 = and i64 %i.co, 1
  %i.cp = icmp ult i8 %i.cn, 3
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.co, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cq = trunc nuw i64 %indvars.iv to i8
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  %i.cs = add i8 %i.cr, %1                        ; 2 uses
  %i.ct = zext i8 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !60 ; 3 uses
  %i.cw = zext i8 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.cs, ptr %i.cy, align 1, !tbaa !39
  store ptr %2, ptr %i.cv, align 8, !tbaa !60
  %i.cz = trunc i64 %indvars.iv to i8
  %i.da = add i8 %i.cz, -2                        ; 2 uses
  %i.db = add i8 %i.da, %1                        ; 2 uses
  %i.dc = zext i8 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60 ; 3 uses
  %i.df = zext i8 %i.db to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.df
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.db, ptr %i.dh, align 1, !tbaa !39
  store ptr %2, ptr %i.de, align 8, !tbaa !60
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.di = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.di, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !225

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.dj = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dk = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.dl = trunc nuw i64 %indvars.iv58 to i8
  %i.dm = sub i8 %i.dl, %1
  %i.dn = add i8 %i.dm, %i.dk
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !60 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dj
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.dj to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !39
  store ptr %2, ptr %i.dq, align 8, !tbaa !60
  %i.du = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.dv = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.dv, %invariant.op
  %i.dw = add i8 %.reass, %i.du
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !60 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv58
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !60
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !39
  store ptr %2, ptr %i.dz, align 8, !tbaa !60
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !226

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ed = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ee = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.ef = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.eg = sub i8 %i.ef, %1
  %i.eh = add i8 %i.eg, %i.ee
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !60 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ed
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !60
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = trunc nuw i64 %i.ed to i8
  store i8 %i.en, ptr %i.em, align 1, !tbaa !39
  store ptr %2, ptr %i.ek, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.eo = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.ep = sub i8 %i.eo, %1
  store i8 %i.ep, ptr %i.ak, align 2, !tbaa !39
  %i.eq = load i8, ptr %i.c, align 1, !tbaa !39
  %i.er = add i8 %i.eq, %1
  store i8 %i.er, ptr %i.c, align 1, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 61, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !39
  %i.n = load i8, ptr %i.l, align 1, !tbaa !39    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 2               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = shl nuw nsw i64 %i.p, 2
  %i.y = add i64 %i.x, %i.a
  %i.z = sub i64 %i.b, %i.y
  %diff.check = icmp ult i64 %i.z, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep35, align 4
  %wide.load36 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load36, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = load i32, ptr %.01214.i, align 4
  store i32 %i.ah, ptr %.015.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !228

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %bb.d
  %i.ak = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.j, align 1, !tbaa !39
  %i.am = load ptr, ptr %0, align 8, !tbaa !60    ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !39  ; 4 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = zext i8 %i.ao to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !39  ; 3 uses
  %i.au = icmp ult i8 %i.ao, %i.at
  %i.av = zext i8 %i.ao to i64                    ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %narrow.i = sub nuw i8 %i.at, %i.ao
  %i.ay = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %i.ax, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.ba = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !61
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !61
  %i.be = add i8 %i.ba, 1                         ; 3 uses
  store i8 %i.be, ptr %i.as, align 1, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %.not.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.be, %.lr.ph.i27 ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bl = add i8 %.019.i, -1                      ; 3 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %i.bp = zext i8 %.019.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !39
  %i.bs = zext i8 %i.bl to i32
  %i.bt = icmp samesign ult i32 %i.bi, %i.bs
  br i1 %i.bt, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit, !llvm.loop !229

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i, %bb.e
  %i.bu = load ptr, ptr %0, align 8, !tbaa !60
  %i.bv = load i8, ptr %i.an, align 8, !tbaa !39
  %i.bw = add i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  store ptr %2, ptr %i.bz, align 8, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %.not.i28 = icmp eq i8 %i.cb, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit
  %i.cc = load i8, ptr %i.j, align 2, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.cc, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.cl, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.cf = zext i8 %.0 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 3 uses
  %i.ci = zext i8 %.02529 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !60
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.02529, ptr %i.ck, align 1, !tbaa !39
  store ptr %2, ptr %i.ch, align 8, !tbaa !60
  %i.cl = add i8 %.02529, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.l, align 1, !tbaa !39
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !230

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit
  ret void
}

declare void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf10TextFormat25ParseFieldValueFromStringESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_15FieldDescriptorEPNS0_7MessageE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i) #22
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !144

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #24
  br label %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
end_hunk_2
