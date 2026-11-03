Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !365, !noalias !8656
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34: ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, %bb.i
  %.sroa.078.0 = phi ptr [ %i.d, %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ], [ %i.bd, %bb.i ] ; 2 uses
  %i.be = sub i64 %1, %i.ba                       ; 2 uses
  %i.bf = icmp ugt i64 %i.be, %i.e
  br i1 %i.bf, label %bb.c, label %._crit_edge, !llvm.loop !8627

._crit_edge:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34, %bb.b
  %.sroa.087.0.lcssa = phi ptr [ %i.d, %bb.b ], [ %.sroa.078.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34 ] ; 10 uses
  %.lcssa110 = phi i64 [ %1, %bb.b ], [ %i.be, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34 ]
  %i.bg = icmp ugt i64 %.lcssa110, %.027121
  br i1 %i.bg, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8657)
  store ptr %.sroa.087.0.lcssa, ptr %.sroa.077, align 8, !tbaa !373, !alias.scope !8657
  %.not.i.i.i35 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i.i35, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = sub nsw i64 0, %.027121
  %i.bi = load ptr, ptr %.sroa.087.0.lcssa, align 8, !tbaa !367, !noalias !8657 ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !365, !noalias !8657 ; 2 uses
  store ptr %i.bk, ptr %.sroa.077, align 8, !tbaa !373, !alias.scope !8657
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.027121
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !365, !noalias !8658
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38: ; preds = %bb.j, %bb.k
  %.sroa.077.promoted120 = phi ptr [ %i.bk, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.bm, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 5 uses
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !367, !noalias !8659
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %1
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !365, !noalias !8659
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38, %bb.l
  %.sroa.070.0 = phi ptr [ %i.d, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38 ], [ %i.bp, %bb.l ] ; 3 uses
  %.not27.i41 = icmp eq ptr %.sroa.072.0, %.sroa.070.0
  br i1 %.not27.i41, label %._crit_edge.i47, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40, %bb.p
  %i.bq = phi ptr [ %i.cp, %bb.p ], [ %.sroa.077.promoted120, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40 ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %.sroa.075.1, %bb.p ], [ %.sroa.087.0.lcssa, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40 ] ; 4 uses
  %.sroa.017.028.i43 = phi ptr [ %.sroa.017.1.i45, %bb.p ], [ %.sroa.072.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40 ] ; 4 uses
  %i.br = icmp eq ptr %.sroa.075.0, %.sroa.072.0
  br i1 %i.br, label %.lr.ph.i.i.i54, label %bb.m

.lr.ph.i.i.i54:                                   ; preds = %.lr.ph.i42, %.lr.ph.i.i.i54
  %.sroa.0.0.i.in.i55 = phi ptr [ %i.ca, %.lr.ph.i.i.i54 ], [ %.sroa.077, %.lr.ph.i42 ]
  %i.bs = phi ptr [ %i.by, %.lr.ph.i.i.i54 ], [ %.sroa.017.028.i43, %.lr.ph.i42 ] ; 2 uses
  %.sroa.0.0.i.i56 = load ptr, ptr %.sroa.0.0.i.in.i55, align 8, !tbaa !365 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !296, !noalias !8660
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i56, i64 8
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !296, !noalias !8660
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !367, !noalias !8660
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !365, !noalias !8660 ; 2 uses
  %i.bz = load ptr, ptr %.sroa.0.0.i.i56, align 8, !tbaa !367, !noalias !8660
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.not.i.i.i57 = icmp eq ptr %i.by, %.sroa.070.0
  br i1 %.not.i.i.i57, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60, label %.lr.ph.i.i.i54, !llvm.loop !104

bb.m:                                             ; preds = %.lr.ph.i42
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i43, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.075.0, i64 8
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !296 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !296 ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %.sroa.017.028.i43, align 8, !tbaa !367
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !365
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %.sroa.075.0, align 8, !tbaa !367
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !365
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink135 = phi i32 [ %i.cd, %bb.n ], [ %i.ce, %bb.o ]
  %.sroa.075.1 = phi ptr [ %.sroa.075.0, %bb.n ], [ %i.cm, %bb.o ] ; 2 uses
  %.sroa.017.1.i45 = phi ptr [ %i.cj, %bb.n ], [ %.sroa.017.028.i43, %bb.o ] ; 2 uses
  store i32 %.sink135, ptr %i.cg, align 4, !tbaa !296
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !367
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !365 ; 3 uses
  store ptr %i.cp, ptr %.sroa.077, align 8, !tbaa !373
  %.not.i46 = icmp eq ptr %.sroa.017.1.i45, %.sroa.070.0
  br i1 %.not.i46, label %._crit_edge.i47, label %.lr.ph.i42, !llvm.loop !8620

._crit_edge.i47:                                  ; preds = %bb.p, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40
  %.sroa.075.2 = phi ptr [ %.sroa.087.0.lcssa, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40 ], [ %.sroa.075.1, %bb.p ] ; 3 uses
  %i.cq = phi ptr [ %.sroa.077.promoted120, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40 ], [ %i.cp, %bb.p ] ; 2 uses
  %.not23.i48 = icmp eq ptr %i.cq, %.sroa.075.2
  %.not1.i.i1.i49 = icmp eq ptr %.sroa.075.2, %.sroa.072.0
  %or.cond104 = select i1 %.not23.i48, i1 true, i1 %.not1.i.i1.i49
  br i1 %or.cond104, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60, label %.lr.ph.i.i2.i50

.lr.ph.i.i2.i50:                                  ; preds = %._crit_edge.i47, %.lr.ph.i.i2.i50
  %.sroa.0.0.i3.i51 = phi ptr [ %i.da, %.lr.ph.i.i2.i50 ], [ %i.cq, %._crit_edge.i47 ] ; 2 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i2.i50 ], [ %.sroa.075.2, %._crit_edge.i47 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !296, !noalias !8661
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i51, i64 8
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !296, !noalias !8661
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !367, !noalias !8661
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !365, !noalias !8661 ; 2 uses
  %i.cy = load ptr, ptr %.sroa.0.0.i3.i51, align 8, !tbaa !367, !noalias !8661
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !365, !noalias !8661
  %.not.i.i4.i52 = icmp eq ptr %i.cx, %.sroa.072.0
  br i1 %.not.i.i4.i52, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60, label %.lr.ph.i.i2.i50, !llvm.loop !104

bb.q:                                             ; preds = %._crit_edge
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit62, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !367, !noalias !8662
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %1
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !365, !noalias !8662
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit62

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit62: ; preds = %bb.q, %bb.r
  %.sroa.068.0 = phi ptr [ %i.d, %bb.q ], [ %i.dd, %bb.r ] ; 2 uses
  %.not.i.i.i63 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i.i63, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit62
  %i.de = sub nsw i64 0, %.027121
  %i.df = load ptr, ptr %.sroa.087.0.lcssa, align 8, !tbaa !367, !noalias !8663
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !365, !noalias !8663
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit62, %bb.s
  %.sroa.067.0 = phi ptr [ %.sroa.087.0.lcssa, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit62 ], [ %i.dh, %bb.s ]
  %.not1.i.i = icmp eq ptr %.sroa.087.0.lcssa, %.sroa.068.0
  br i1 %.not1.i.i, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %.sroa.067.0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64 ] ; 2 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %.sroa.087.0.lcssa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !296, !noalias !8664
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !296, !noalias !8664
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !367, !noalias !8664
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !365, !noalias !8664 ; 2 uses
  %i.dp = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !367, !noalias !8664
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !365, !noalias !8664
  %.not.i.i65 = icmp eq ptr %i.do, %.sroa.068.0
  br i1 %.not.i.i65, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60, label %.lr.ph.i.i, !llvm.loop !104

_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i54, %.lr.ph.i.i2.i50, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit64, %._crit_edge.i47
  %.not.i.i66 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i66, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60
  %i.ds = sub nsw i64 0, %.027121
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !367
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !365 ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !373
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit

_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit: ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60, %bb.t
  %i.dw = phi ptr [ %i.d, %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit60 ], [ %i.dv, %bb.t ]
  %i.dx = sub nuw i64 %.026122, %.027121          ; 2 uses
  %i.dy = icmp ult i64 %i.e, %3
  %i.dz = icmp uge i64 %i.dx, %i.e
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %bb.b, label %._crit_edge125, !llvm.loop !8650

._crit_edge125:                                   ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit, %bb.a
  %.027.lcssa = phi i64 [ %2, %bb.a ], [ %i.e, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit ]
  ret i64 %.027.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 5 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !373, !noalias !398 ; 7 uses
  br i1 %i.a, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i14 = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i14)
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit
  %.044 = phi i64 [ %i.aa, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i.i = icmp eq i64 %.044, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.b = load ptr, ptr %.pre46, align 8, !tbaa !367, !noalias !8674
  %i.c = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.044
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !365, !noalias !8674
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13: ; preds = %.lr.ph.split, %bb.b
  %.sroa.038.0 = phi ptr [ %i.d, %bb.b ], [ %.pre46, %.lr.ph.split ] ; 4 uses
  %i.e = load ptr, ptr %.sroa.038.0, align 8, !tbaa !367, !noalias !8675 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.speculated
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365, !noalias !8675 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.038.0, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13
  %.sroa.012.0.in26.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.012.027.i = load ptr, ptr %.sroa.012.0.in26.i, align 8, !tbaa !365 ; 2 uses
  %.not1928.i = icmp eq ptr %.sroa.012.027.i, %i.g
  br i1 %.not1928.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.012.029.i = phi ptr [ %.sroa.012.0.i, %bb.f ], [ %.sroa.012.027.i, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %.sroa.012.029.i, align 8, !tbaa !367 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.h, align 8, !tbaa !296  ; 3 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !296  ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph30.i
  store i32 %i.n, ptr %i.h, align 8, !tbaa !296
  %.not2021.i = icmp eq ptr %i.k, %.sroa.038.0
  br i1 %.not2021.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.023.i = phi ptr [ %i.r, %bb.e ], [ %i.k, %bb.d ]
  %.sroa.05.022.i = phi ptr [ %i.z, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.0.023.i, align 8, !tbaa !367
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !365  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !296  ; 2 uses
  %i.u = icmp slt i32 %i.m, %i.t
  br i1 %i.u, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.05.0.lcssa.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.05.022.i, %.lr.ph.i ], [ %i.z, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 8
  store i32 %i.m, ptr %i.v, align 4, !tbaa !296
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i, i64 8
  store i32 %i.t, ptr %i.w, align 4, !tbaa !296
  %i.x = load ptr, ptr %.sroa.05.022.i, align 8, !tbaa !367
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !365  ; 2 uses
  %.not20.i = icmp eq ptr %i.r, %.sroa.038.0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !100

bb.f:                                             ; preds = %.critedge.i, %.lr.ph30.i
  %.sroa.012.0.in.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.012.0.i = load ptr, ptr %.sroa.012.0.in.i, align 8, !tbaa !365 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.012.0.i, %i.g
  br i1 %.not19.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %.lr.ph30.i, !llvm.loop !101

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13, %bb.c
  %i.aa = add i64 %.044, %.sroa.speculated        ; 4 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = icmp ugt i64 %i.ab, %.sroa.speculated
  br i1 %i.ac, label %.lr.ph.split, label %._crit_edge, !llvm.loop !8669

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit
  %.not.i.i16 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i16, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %.pre46, align 8, !tbaa !367, !noalias !8676
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aa
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !365, !noalias !8676
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17: ; preds = %bb.a, %._crit_edge, %bb.g
  %.sroa.037.0 = phi ptr [ %.pre46, %._crit_edge ], [ %i.af, %bb.g ], [ %.pre46, %bb.a ] ; 4 uses
  %.not.i.i18 = icmp eq i64 %1, 0
  br i1 %.not.i.i18, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17.thread

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17.thread: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17
  %i.ag = load ptr, ptr %.pre46, align 8, !tbaa !367, !noalias !8677
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !365, !noalias !8677
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17.thread
  %.sroa.0.0 = phi ptr [ %.pre46, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17 ], [ %i.ai, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit17.thread ] ; 3 uses
  %.not.i20 = icmp eq ptr %.sroa.037.0, %.sroa.0.0
  br i1 %.not.i20, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit36, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19
  %i.aj = load ptr, ptr %.sroa.037.0, align 8, !tbaa !367
  %.sroa.012.0.in26.i21 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.012.027.i22 = load ptr, ptr %.sroa.012.0.in26.i21, align 8, !tbaa !365 ; 2 uses
  %.not1928.i23 = icmp eq ptr %.sroa.012.027.i22, %.sroa.0.0
  br i1 %.not1928.i23, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit36, label %.lr.ph30.i24

.lr.ph30.i24:                                     ; preds = %bb.h, %bb.k
  %.sroa.012.029.i25 = phi ptr [ %.sroa.012.0.i27, %bb.k ], [ %.sroa.012.027.i22, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i25, i64 8 ; 2 uses
  %i.al = load ptr, ptr %.sroa.012.029.i25, align 8, !tbaa !367 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !365 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ak, align 8, !tbaa !296 ; 3 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !296 ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph30.i24
  store i32 %i.aq, ptr %i.ak, align 8, !tbaa !296
  %.not2021.i29 = icmp eq ptr %i.an, %.sroa.037.0
  br i1 %.not2021.i29, label %.critedge.i33, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.023.i31 = phi ptr [ %i.au, %bb.j ], [ %i.an, %bb.i ]
  %.sroa.05.022.i32 = phi ptr [ %i.bc, %bb.j ], [ %i.an, %bb.i ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.023.i31, align 8, !tbaa !367
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !365 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !296 ; 2 uses
  %i.ax = icmp slt i32 %i.ap, %i.aw
  br i1 %i.ax, label %bb.j, label %.critedge.i33

.critedge.i33:                                    ; preds = %bb.j, %.lr.ph.i30, %bb.i
  %.sroa.05.0.lcssa.i34 = phi ptr [ %i.an, %bb.i ], [ %.sroa.05.022.i32, %.lr.ph.i30 ], [ %i.bc, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i34, i64 8
  store i32 %i.ap, ptr %i.ay, align 4, !tbaa !296
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i30
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i32, i64 8
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !296
  %i.ba = load ptr, ptr %.sroa.05.022.i32, align 8, !tbaa !367
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !365 ; 2 uses
  %.not20.i35 = icmp eq ptr %i.au, %.sroa.037.0
  br i1 %.not20.i35, label %.critedge.i33, label %.lr.ph.i30, !llvm.loop !100

bb.k:                                             ; preds = %.critedge.i33, %.lr.ph30.i24
  %.sroa.012.0.in.i26 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.012.0.i27 = load ptr, ptr %.sroa.012.0.in.i26, align 8, !tbaa !365 ; 2 uses
  %.not19.i28 = icmp eq ptr %.sroa.012.0.i27, %.sroa.0.0
  br i1 %.not19.i28, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit36, label %.lr.ph30.i24, !llvm.loop !101

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit36: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19, %bb.h
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.086 = alloca ptr, align 8                ; 3 uses
  %.sroa.077 = alloca ptr, align 8                ; 4 uses
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %bb.a
  %.not.i.i61 = icmp eq i64 %1, 0                 ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !373
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph124, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit
  %i.d = phi ptr [ %.pre, %.lr.ph124 ], [ %i.ed, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit ] ; 10 uses
  %.026122 = phi i64 [ %4, %.lr.ph124 ], [ %i.ee, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit ]
  %.027121 = phi i64 [ %2, %.lr.ph124 ], [ %i.e, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEmIEl.exit ] ; 13 uses
  %i.e = shl i64 %.027121, 1                      ; 9 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.027121, 0
  %i.g = sub nsw i64 0, %.027121
  %.not.i.i30 = icmp eq i64 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34
  %.0116 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34 ]
  %.sroa.087.0115 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.078.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8719)
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %bb.c
  %i.h = load ptr, ptr %.sroa.087.0115, align 8, !tbaa !367, !noalias !8719 ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !365, !noalias !8719 ; 3 uses
  store ptr %i.j, ptr %.sroa.086, align 8, !tbaa !373, !alias.scope !8719
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.027121
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !365, !noalias !8720 ; 5 uses
  br i1 %.not.i.i30, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.m = load ptr, ptr %.sroa.087.0115, align 8, !tbaa !367, !noalias !8721
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !365, !noalias !8721
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, %bb.d
  %.sroa.079.0 = phi ptr [ %.sroa.087.0115, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit ], [ %i.o, %bb.d ] ; 3 uses
  %.not27.i = icmp eq ptr %i.l, %.sroa.079.0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31, %bb.h
  %i.p = phi ptr [ %i.aq, %bb.h ], [ %i.j, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31 ] ; 2 uses
  %.sroa.084.0 = phi ptr [ %.sroa.084.1, %bb.h ], [ %.sroa.087.0115, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31 ] ; 4 uses
  %.sroa.017.028.i = phi ptr [ %.sroa.017.1.i, %bb.h ], [ %i.l, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31 ] ; 4 uses
  %i.q = icmp eq ptr %.sroa.084.0, %i.l
  br i1 %i.q, label %.lr.ph.i.i.i, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.sroa.0.0.i.in.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.086, %.lr.ph.i ]
  %i.r = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.017.028.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.i.in.i, align 8, !tbaa !365 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !296, !noalias !8722
  %i.v = load i32, ptr %i.t, align 4, !tbaa !296, !noalias !8722
  store i32 %i.v, ptr %i.s, align 4, !tbaa !296, !noalias !8722
  store i32 %i.u, ptr %i.t, align 4, !tbaa !296, !noalias !8722
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !367, !noalias !8722
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !365, !noalias !8722 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !367, !noalias !8722
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i.i.i32 = icmp eq ptr %i.y, %.sroa.079.0
  br i1 %.not.i.i.i32, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !114

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !296 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !296 ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !296 ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !296
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !296
  %i.ai = load ptr, ptr %.sroa.017.028.i, align 8, !tbaa !367
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !365
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !296
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !296
  %i.al = load ptr, ptr %.sroa.084.0, align 8, !tbaa !367
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !365
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.084.1 = phi ptr [ %.sroa.084.0, %bb.f ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.017.1.i = phi ptr [ %i.ak, %bb.f ], [ %.sroa.017.028.i, %bb.g ] ; 2 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !367
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365 ; 3 uses
  store ptr %i.aq, ptr %.sroa.086, align 8, !tbaa !373
  %.not.i = icmp eq ptr %.sroa.017.1.i, %.sroa.079.0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8688

._crit_edge.i:                                    ; preds = %bb.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31
  %.sroa.084.2 = phi ptr [ %.sroa.087.0115, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31 ], [ %.sroa.084.1, %bb.h ] ; 3 uses
  %i.ar = phi ptr [ %i.j, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit31 ], [ %i.aq, %bb.h ] ; 2 uses
  %.not23.i = icmp eq ptr %i.ar, %.sroa.084.2
  %.not1.i.i1.i = icmp eq ptr %.sroa.084.2, %i.l
  %or.cond = select i1 %.not23.i, i1 true, i1 %.not1.i.i1.i
  br i1 %or.cond, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %._crit_edge.i, %.lr.ph.i.i2.i
  %.sroa.0.0.i3.i = phi ptr [ %i.bc, %.lr.ph.i.i2.i ], [ %i.ar, %._crit_edge.i ] ; 2 uses
  %i.as = phi ptr [ %i.az, %.lr.ph.i.i2.i ], [ %.sroa.084.2, %._crit_edge.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !296, !noalias !8723
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !296, !noalias !8723
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !296, !noalias !8723
  store i32 %i.av, ptr %i.au, align 4, !tbaa !296, !noalias !8723
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !367, !noalias !8723
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !365, !noalias !8723 ; 2 uses
  %i.ba = load ptr, ptr %.sroa.0.0.i3.i, align 8, !tbaa !367, !noalias !8723
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !365, !noalias !8723
  %.not.i.i4.i = icmp eq ptr %i.az, %i.l
  br i1 %.not.i.i4.i, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i2.i, !llvm.loop !114

_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i2.i, %bb.c, %._crit_edge.i
  %i.bd = add i64 %.0116, %i.e                    ; 4 uses
  %.not.i.i33 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i33, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !367, !noalias !8724
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !365, !noalias !8724
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34: ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %bb.i
  %.sroa.078.0 = phi ptr [ %i.d, %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bh = sub i64 %1, %i.bd                       ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, %i.e
  br i1 %i.bi, label %bb.c, label %._crit_edge, !llvm.loop !8695

._crit_edge:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34, %bb.b
  %.sroa.087.0.lcssa = phi ptr [ %i.d, %bb.b ], [ %.sroa.078.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34 ] ; 10 uses
  %.lcssa110 = phi i64 [ %1, %bb.b ], [ %i.bh, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit34 ]
  %i.bj = icmp ugt i64 %.lcssa110, %.027121
  br i1 %i.bj, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8725)
  store ptr %.sroa.087.0.lcssa, ptr %.sroa.077, align 8, !tbaa !373, !alias.scope !8725
  %.not.i.i.i35 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i.i35, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = sub nsw i64 0, %.027121
  %i.bl = load ptr, ptr %.sroa.087.0.lcssa, align 8, !tbaa !367, !noalias !8725 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !365, !noalias !8725 ; 2 uses
  store ptr %i.bn, ptr %.sroa.077, align 8, !tbaa !373, !alias.scope !8725
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.027121
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !365, !noalias !8726
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38: ; preds = %bb.j, %bb.k
  %.sroa.077.promoted120 = phi ptr [ %i.bn, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.bp, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 5 uses
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit40, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !367, !noalias !8727
end_hunk_0
