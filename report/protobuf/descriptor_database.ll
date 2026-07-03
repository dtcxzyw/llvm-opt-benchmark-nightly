inline.NumInlined: 6448
inline.NumDeleted: 2427
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6google8protobuf24MergedDescriptorDatabase23FindAllExtensionNumbersESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIiSaIiEE:bb.a
bb.c:                                             ; preds = %bb.b
  %.pre101 = load ptr, ptr %6, align 8, !tbaa !357 ; 4 uses
  %.pre103 = load ptr, ptr %i.g, align 8, !tbaa !357 ; 3 uses
  br i1 %i.m, label %bb.d, label %.loopexit72

bb.d:                                             ; preds = %bb.c
  %.not7083 = icmp eq ptr %.pre101, %.pre103
  br i1 %.not7083, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load i64, ptr %i.b, align 8, !tbaa !356, !noalias !358
  br label %.lr.ph

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit
  %i.o = phi i64 [ %i.en, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.sroa.063.084 = phi ptr [ %i.eo, %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit ], [ %.pre101, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i32, ptr %.sroa.063.084, align 4, !tbaa !3 ; 3 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.f, label %.preheader

bb.f:                                             ; preds = %.lr.ph
  %i.r = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31
          to label %.noexc unwind label %bb.t     ; 5 uses

.noexc:                                           ; preds = %bb.f
  store ptr %i.r, ptr %i.r, align 8, !tbaa !363, !noalias !358
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.s, align 8, !tbaa !29, !noalias !358
  store ptr %i.r, ptr %i.a, align 8, !tbaa !363, !noalias !358
  store ptr %i.r, ptr %5, align 8, !tbaa !363, !noalias !358
  br label %.preheader

.preheader:                                       ; preds = %.noexc, %.lr.ph
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.af, %bb.i ], [ %5, %.preheader ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !363, !noalias !358 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29, !noalias !358 ; 2 uses
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %.07.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.07.i.i.i.i.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !358
  %i.z = icmp slt i32 %i.y, %i.p
  br i1 %i.z, label %bb.h, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = add nuw nsw i64 %.07.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.v
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !364

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29, !noalias !358
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSE_EELb0EEERKT_.exit.i.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.ae = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  br label %bb.g

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSE_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.ai = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSE_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i = phi i32 [ %i.ai, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSE_EELb0EEERKT_.exit.i.i ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.0.0.i16.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSE_EELb0EEERKT_.exit.i.i ], [ %i.aq, %bb.k ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 10
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29, !noalias !358
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp eq i32 %.sroa.7.0.i.i.i, %i.al
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29, !noalias !358
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load ptr, ptr %.sroa.0.0.i16.i.i, align 8, !tbaa !363, !noalias !358 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29, !noalias !358
  %.not.i19.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i19.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSD_EEEET_SH_.exit.thread.i.i, !llvm.loop !365

bb.l:                                             ; preds = %bb.j
  %i.at = sext i32 %.sroa.7.0.i.i.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !358
  %i.ax = icmp slt i32 %i.p, %i.aw
  br i1 %i.ax, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSD_EEEET_SH_.exit.thread.i.i, label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSD_EEEET_SH_.exit.thread.i.i: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.i.i.i, ptr %4, align 8
  store i32 %i.ai, ptr %i.h, align 8
  %i.ay = load i8, ptr %i.ah, align 1, !tbaa !29  ; 2 uses
  %.not.i.i41 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i41, label %.thread.i.i.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSD_EEEET_SH_.exit.thread.i.i
  %.pre12.i = load i8, ptr %i.ag, align 1, !tbaa !29
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSD_EEEET_SH_.exit.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.ba = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %.11723.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !363 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29  ; 2 uses
  %.not.i24.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.bh = zext i8 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %.117.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !363 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29  ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i44, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i, !llvm.loop !366

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i: ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i.i
  %.pre.i = phi i8 [ %i.bd, %.thread.i.i.i ], [ %i.bk, %.lr.ph26.i.i.i.i ]
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  store ptr %.117.lcssa.i.i.i.i, ptr %4, align 8
  store i32 %i.bn, ptr %i.h, align 8, !tbaa !367
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i, %._crit_edge.i
  %i.bo = phi i8 [ %i.bm, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i ], [ %.pre12.i, %._crit_edge.i ] ; 3 uses
  %i.bp = phi i8 [ %.pre.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i ], [ %i.ay, %._crit_edge.i ]
  %i.bq = phi ptr [ %.117.lcssa.i.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EmmEv.exit.i ], [ %.sroa.0.0.i.i.i, %._crit_edge.i ] ; 6 uses
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.bt = icmp eq i8 %i.bo, %i.bp
  br i1 %i.bt, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp ult i8 %i.bo, 61
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = shl nuw nsw i8 %i.bo, 1
  %i.bw = call i8 @llvm.umin.i8(i8 %i.bv, i8 61)  ; 2 uses
  %i.bx = shl nuw i8 %i.bw, 2
  %i.by = zext i8 %i.bx to i64
  %i.bz = add nuw nsw i64 %i.by, 16
  %i.ca = and i64 %i.bz, 504
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #31
          to label %.noexc45 unwind label %bb.t   ; 12 uses

.noexc45:                                         ; preds = %bb.o
  store ptr %i.cb, ptr %i.cb, align 8, !tbaa !363
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 0, ptr %i.cc, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  store i8 0, ptr %i.cd, align 1, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 11
  store i8 %i.bw, ptr %i.ce, align 1, !tbaa !29
  store ptr %i.cb, ptr %4, align 8, !tbaa !369
  %i.cf = load i8, ptr %i.bs, align 1, !tbaa !29  ; 3 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cg, 2        ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i.i.i
  %.not13.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not13.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EESB_PSA_EESG_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.noexc45
  %i.cj = ptrtoaddr ptr %i.cb to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 3 uses
  %i.cl = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 28
  %i.co = sub i64 %i.br, %i.cj
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.cn, 9223372036854775800     ; 3 uses
  %i.cp = shl i64 %n.vec, 2                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ck, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.ch, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cs ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.ch, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep152, align 4
  %wide.load153 = load <4 x i32>, ptr %i.ct, align 4
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load153, ptr %i.cu, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EESB_PSA_EESG_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i.preheader

.lr.ph.i.i.i4.i.preheader:                        ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.015.i.i.i.i.ph = phi ptr [ %i.ck, %.lr.ph.preheader.i.i.i.i ], [ %i.cq, %middle.block ]
  %.01214.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.preheader.i.i.i.i ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %.lr.ph.i.i.i4.i.preheader, %.lr.ph.i.i.i4.i
  %.015.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i4.i ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i4.i.preheader ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i4.i ], [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i4.i.preheader ] ; 2 uses
  %i.cw = load i32, ptr %.01214.i.i.i.i, align 4
  store i32 %i.cw, ptr %.015.i.i.i.i, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i5.i = icmp eq ptr %i.cx, %i.ci
  br i1 %.not.i.i.i5.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EESB_PSA_EESG_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !371

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EESB_PSA_EESG_DpOT_ENKUlhE_clEh.exit.i: ; preds = %.lr.ph.i.i.i4.i, %middle.block, %.noexc45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  store i8 %i.cf, ptr %i.cz, align 2, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 11
  %i.db = load i8, ptr %i.da, align 1, !tbaa !29  ; 2 uses
  %.not57.i = icmp eq i8 %i.db, 0
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 16
  %i.df = and i64 %i.de, 2040
  %.sink.i = select i1 %.not57.i, i64 752, i64 %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %.sink.i) #30
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !363
  store ptr %i.cb, ptr %5, align 8, !tbaa !363
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %4)
          to label %.noexc47 unwind label %bb.t

.noexc47:                                         ; preds = %bb.p
  %.pre13.i = load ptr, ptr %4, align 8, !tbaa !369
  br label %bb.q

bb.q:                                             ; preds = %.noexc47, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EESB_PSA_EESG_DpOT_ENKUlhE_clEh.exit.i, %bb.m
  %i.dg = phi ptr [ %i.cb, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EESB_PSA_EESG_DpOT_ENKUlhE_clEh.exit.i ], [ %.pre13.i, %.noexc47 ], [ %i.bq, %bb.m ] ; 5 uses
  %i.dh = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.di = trunc i32 %i.dh to i8                   ; 2 uses
  %i.dj = and i32 %i.dh, 255                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 10 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !29  ; 3 uses
  %i.dm = icmp ugt i8 %i.dl, %i.di
  %i.dn = zext nneg i32 %i.dj to i64              ; 2 uses
  br i1 %i.dm, label %.lr.ph.preheader.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %narrow.i.i = sub nuw i8 %i.dl, %i.di
  %i.dq = zext i8 %narrow.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.dq, 2
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dr, ptr align 4 %i.dp, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i = load i8, ptr %i.dk, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.q
  %i.ds = phi i8 [ %.pre.i.i, %.lr.ph.preheader.i.i.i ], [ %i.dl, %bb.q ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dn
  store i32 %i.p, ptr %i.du, align 4, !tbaa !3
  %i.dv = add i8 %i.ds, 1                         ; 3 uses
  store i8 %i.dv, ptr %i.dk, align 1, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 11
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !29
  %.not.i18.i.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i18.i.i, label %bb.r, label %.noexc30

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i.i
  %i.dy = zext i8 %i.dv to i32
  %i.dz = add nuw nsw i32 %i.dj, 1                ; 2 uses
  %i.ea = icmp samesign ult i32 %i.dz, %i.dy
  br i1 %i.ea, label %.lr.ph.i.i, label %.noexc30

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 256 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.019.i.i = phi i8 [ %i.dv, %.lr.ph.i.i ], [ %i.ec, %bb.s ] ; 3 uses
  %i.ec = add i8 %.019.i.i, -1                    ; 3 uses
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !363 ; 2 uses
  %i.eg = zext i8 %.019.i.i to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !363
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %.019.i.i, ptr %i.ei, align 1, !tbaa !29
  %i.ej = zext i8 %i.ec to i32
  %i.ek = icmp samesign ult i32 %i.dz, %i.ej
  br i1 %i.ek, label %bb.s, label %.noexc30, !llvm.loop !372

.noexc30:                                         ; preds = %bb.s, %bb.r, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i.i
  %i.el = load i64, ptr %i.b, align 8, !tbaa !356
  %i.em = add i64 %i.el, 1                        ; 2 uses
  store i64 %i.em, ptr %i.b, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit

_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit: ; preds = %.noexc30, %bb.l
  %i.en = phi i64 [ %i.em, %.noexc30 ], [ %i.o, %bb.l ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.063.084, i64 4 ; 2 uses
  %.not70 = icmp eq ptr %i.eo, %.pre103
  br i1 %.not70, label %.loopexit72.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.p, %bb.o, %bb.f
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit72.loopexit:                             ; preds = %_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEEE6insertERKi.exit
  %.pre100 = load ptr, ptr %6, align 8, !tbaa !137
  %.pre102 = load ptr, ptr %i.g, align 8, !tbaa !133
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %bb.c
  %i.eq = phi ptr [ %.pre103, %bb.c ], [ %.pre102, %.loopexit72.loopexit ]
  %i.er = phi ptr [ %.pre101, %bb.c ], [ %.pre100, %.loopexit72.loopexit ] ; 4 uses
  %.1 = phi i1 [ %.087, %bb.c ], [ true, %.loopexit72.loopexit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.loopexit72
  store ptr %i.er, ptr %i.g, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.d, %.loopexit72, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.1135 = phi i1 [ %.1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %.1, %.loopexit72 ], [ true, %bb.d ] ; 2 uses
  %i.es = phi ptr [ %i.er, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.er, %.loopexit72 ], [ %.pre101, %bb.d ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.067.086, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.et, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.pre104 = load ptr, ptr %5, align 8, !tbaa !349
  %.pre105 = load ptr, ptr %i.a, align 8, !tbaa !363
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.eu = phi ptr [ null, %bb.a ], [ %i.es, %._crit_edge.loopexit ]
  %i.ev = phi ptr [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE9EmptyNodeEvE10empty_node, %bb.a ], [ %.pre105, %._crit_edge.loopexit ] ; 3 uses
  %i.ew = phi ptr [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE9EmptyNodeEvE10empty_node, %bb.a ], [ %.pre104, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1135, %._crit_edge.loopexit ]
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !363 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 10
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !29  ; 2 uses
  %i.fa = zext i8 %i.ez to i32
  %i.fb = icmp ne ptr %i.ex, %i.ev
  %i.fc = icmp ne i8 %i.ez, 0
  %.not3.i89 = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %.not3.i89, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %._crit_edge
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre106 = load ptr, ptr %i.fd, align 8, !tbaa !133
  %.pre107 = load ptr, ptr %i.fe, align 8, !tbaa !136
  br label %bb.x

._crit_edge94.loopexit:                           ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEEERKiPSA_EppEv.exit
  %.pre108 = load ptr, ptr %6, align 8, !tbaa !137
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %._crit_edge
  %i.ff = phi ptr [ %.pre108, %._crit_edge94.loopexit ], [ %i.eu, %._crit_edge ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSC_EE:bb.a
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !363 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 61
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 61, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !29
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 61
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !363
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 61
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !369
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !367
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKiPSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !363   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !363
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #31 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !363
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !363
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !29
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !363
  store ptr %i.bo, ptr %0, align 8, !tbaa !363
  %.pre = load ptr, ptr %1, align 8, !tbaa !363
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31 ; 9 uses
  store ptr %.082, ptr %i.bz, align 8, !tbaa !363
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 61, ptr %i.cd, align 1, !tbaa !29
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !363
  %i.cg = load ptr, ptr %1, align 8, !tbaa !363
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !363
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #31 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !363
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !29
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !363
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
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
  store ptr %.sink, ptr %1, align 8, !tbaa !363
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_right_to_leftEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !363    ; 2 uses
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
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

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
  %4 = sub i64 %i.y, %i.a
  %5 = add i64 %4, 3
  %diff.check = icmp ult i64 %5, 31
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
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader82

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
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !682

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !363
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !29
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.aj = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.an = load i32, ptr %i.am, align 4
  store i32 %i.an, ptr %i.al, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29  ; 3 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.aq, %i.o
  %i.as = sext i32 %i.ar to i64
  %i.at = zext i8 %1 to i64                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.at ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.as, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ap, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
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
  br i1 %i.bh, label %middle.block77, label %vector.body70, !llvm.loop !683

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.ba, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47.preheader81

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
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51, label %.lr.ph.i47, !llvm.loop !684

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29
  %.not.i52 = icmp eq i8 %i.bm, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
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
  %i.bq = load i8, ptr %i.c, align 2, !tbaa !29
  %i.br = trunc i64 %indvars.iv.epil.init to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = add i8 %i.bq, %i.bs                     ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !363 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !363
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !29
  store ptr %0, ptr %i.bv, align 8, !tbaa !363
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.bz = load i8, ptr %i.ao, align 1, !tbaa !29
  %.not55 = icmp ult i8 %i.bz, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cb = load i8, ptr %i.c, align 2, !tbaa !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i8
  %i.cd = add i8 %i.cb, %i.cc                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !363 ; 3 uses
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !363
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !29
  store ptr %0, ptr %i.cf, align 8, !tbaa !363
  %i.cj = load i8, ptr %i.c, align 2, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cl = add i8 %i.cj, %i.ck                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !363 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !363
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !29
  store ptr %0, ptr %i.cn, align 8, !tbaa !363
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !685

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cy, %bb.c ] ; 4 uses
  %i.cr = add i8 %.056, %1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !363 ; 3 uses
  %i.cv = zext i8 %.056 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !363
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.056, ptr %i.cx, align 1, !tbaa !29
  store ptr %2, ptr %i.cu, align 8, !tbaa !363
  %i.cy = add i8 %.056, 1                         ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.o
  %.not = icmp slt i32 %i.dc, %i.cz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !686

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit51
  %i.dd = load i8, ptr %i.c, align 2, !tbaa !29
  %i.de = add i8 %i.dd, %1
  store i8 %i.de, ptr %i.c, align 2, !tbaa !29
  %i.df = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.dg = sub i8 %i.df, %1
  store i8 %i.dg, ptr %i.ao, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE23rebalance_left_to_rightEhPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit, label %.lr.ph.i, !llvm.loop !688

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !363
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !29  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %i.as = zext i8 %1 to i64
  %i.at = add nuw nsw i64 %i.as, 4611686018427387902
  %i.au = and i64 %i.at, 4611686018427387903      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check69 = icmp samesign ult i64 %i.au, 31
  br i1 %min.iters.check69, label %.lr.ph.i48.preheader84, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.aw = zext i8 %1 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add i64 %i.ax, %i.b
  %i.az = zext i8 %i.al to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = add i64 %i.ba, %i.a
  %i.bc = sub i64 %i.ay, %i.bb
  %4 = add i64 %i.bc, -5
  %diff.check = icmp ult i64 %4, 31
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
  br i1 %i.bj, label %middle.block80, label %vector.body73, !llvm.loop !689

middle.block80:                                   ; preds = %vector.body73
  %cmp.n81 = icmp eq i64 %i.av, %n.vec72
  br i1 %cmp.n81, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48.preheader84

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
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !690

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block80
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !29
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !363
  %i.bo = load i8, ptr %i.ac, align 8, !tbaa !29
  %i.bp = zext i8 %i.bo to i64
  %i.bq = sub nsw i32 %.pre-phi, %i.e
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.br
  %i.bv = load i32, ptr %i.bu, align 4
  store i32 %i.bv, ptr %i.bt, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29
  %.not.i50 = icmp eq i8 %i.bx, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.by = load i8, ptr %i.c, align 1, !tbaa !29   ; 5 uses
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
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !363 ; 3 uses
  %i.ch = zext i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !363
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %i.cd, ptr %i.cj, align 1, !tbaa !29
  store ptr %2, ptr %i.cg, align 8, !tbaa !363
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
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !363 ; 3 uses
  %i.cw = zext i8 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !363
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.cs, ptr %i.cy, align 1, !tbaa !29
  store ptr %2, ptr %i.cv, align 8, !tbaa !363
  %i.cz = trunc i64 %indvars.iv to i8
  %i.da = add i8 %i.cz, -2                        ; 2 uses
  %i.db = add i8 %i.da, %1                        ; 2 uses
  %i.dc = zext i8 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !363 ; 3 uses
  %i.df = zext i8 %i.db to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.df
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !363
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %i.db, ptr %i.dh, align 1, !tbaa !29
  store ptr %2, ptr %i.de, align 8, !tbaa !363
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.di = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.di, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !691

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.dj = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dk = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.dl = trunc nuw i64 %indvars.iv58 to i8
  %i.dm = sub i8 %i.dl, %1
  %i.dn = add i8 %i.dm, %i.dk
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !363 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dj
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !363
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.dj to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !29
  store ptr %2, ptr %i.dq, align 8, !tbaa !363
  %i.du = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.dv = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.dv, %invariant.op
  %i.dw = add i8 %.reass, %i.du
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !363 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv58
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !363
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !29
  store ptr %2, ptr %i.dz, align 8, !tbaa !363
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !692

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ed = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ee = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.ef = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.eg = sub i8 %i.ef, %1
  %i.eh = add i8 %i.eg, %i.ee
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !363 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ed
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !363
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = trunc nuw i64 %i.ed to i8
  store i8 %i.en, ptr %i.em, align 1, !tbaa !29
  store ptr %2, ptr %i.ek, align 8, !tbaa !363
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.eo = load i8, ptr %i.ak, align 2, !tbaa !29
  %i.ep = sub i8 %i.eo, %1
  store i8 %i.ep, ptr %i.ak, align 2, !tbaa !29
  %i.eq = load i8, ptr %i.c, align 1, !tbaa !29
  %i.er = add i8 %i.eq, %1
  store i8 %i.er, ptr %i.c, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE5splitEiPS8_PS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 61, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !29
  %i.n = load i8, ptr %i.l, align 1, !tbaa !29    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 2               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 76
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = shl nuw nsw i64 %i.p, 2
  %i.y = add i64 %i.x, %i.a
  %i.z = sub i64 %i.y, %i.b
  %diff.check = icmp ugt i64 %i.z, -32
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
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !693

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i.preheader

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
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !694

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit, %bb.d
  %i.ak = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.j, align 1, !tbaa !29
  %i.am = load ptr, ptr %0, align 8, !tbaa !363   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !29  ; 4 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = zext i8 %i.ao to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29  ; 3 uses
  %i.au = icmp ult i8 %i.ao, %i.at
  %i.av = zext i8 %i.ao to i64                    ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %narrow.i = sub nuw i8 %i.at, %i.ao
  %i.ay = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %i.ax, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !29
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit
  %i.ba = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE10transfer_nEmmmPS8_PS6_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !3
  %i.be = add i8 %i.ba, 1                         ; 3 uses
  store i8 %i.be, ptr %i.as, align 1, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %.not.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.be, %.lr.ph.i27 ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bl = add i8 %.019.i, -1                      ; 3 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !363 ; 2 uses
  %i.bp = zext i8 %.019.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !363
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !29
  %i.bs = zext i8 %i.bl to i32
  %i.bt = icmp samesign ult i32 %i.bi, %i.bs
  br i1 %i.bt, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit, !llvm.loop !695

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE19transfer_n_backwardEmmmPS8_PS6_.exit.i, %bb.e
  %i.bu = load ptr, ptr %0, align 8, !tbaa !363
  %i.bv = load i8, ptr %i.an, align 8, !tbaa !29
  %i.bw = add i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  store ptr %2, ptr %i.bz, align 8, !tbaa !363
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !29
  %.not.i28 = icmp eq i8 %i.cb, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit
  %i.cc = load i8, ptr %i.j, align 2, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.cc, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.cl, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.cf = zext i8 %.0 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !363 ; 3 uses
  %i.ci = zext i8 %.02529 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !363
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.02529, ptr %i.ck, align 1, !tbaa !29
  store ptr %2, ptr %i.ch, align 8, !tbaa !363
  %i.cl = add i8 %.02529, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.l, align 1, !tbaa !29
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !696

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE13emplace_valueIJPiEEEvhPS6_DpOT_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
