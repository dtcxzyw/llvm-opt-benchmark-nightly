Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_SL_T0_T1_:bb.a
  %.sroa.078.0 = phi ptr [ %i.d, %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit ], [ %i.bd, %bb.i ] ; 2 uses
  %i.be = sub i64 %1, %i.ba                       ; 2 uses
  %i.bf = icmp ugt i64 %i.be, %i.e
  br i1 %i.bf, label %bb.c, label %._crit_edge, !llvm.loop !17100

._crit_edge:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34, %bb.b
  %.sroa.087.0.lcssa = phi ptr [ %i.d, %bb.b ], [ %.sroa.078.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34 ] ; 10 uses
  %.lcssa110 = phi i64 [ %1, %bb.b ], [ %i.be, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34 ]
  %i.bg = icmp ugt i64 %.lcssa110, %.027121
  br i1 %i.bg, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17130)
  store ptr %.sroa.087.0.lcssa, ptr %.sroa.077, align 8, !tbaa !450, !alias.scope !17130
  %.not.i.i.i35 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i.i35, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = sub nsw i64 0, %.027121
  %i.bi = load ptr, ptr %.sroa.087.0.lcssa, align 8, !tbaa !395, !noalias !17130 ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !391, !noalias !17130 ; 2 uses
  store ptr %i.bk, ptr %.sroa.077, align 8, !tbaa !450, !alias.scope !17130
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.027121
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !391, !noalias !17131
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38: ; preds = %bb.j, %bb.k
  %.sroa.077.promoted120 = phi ptr [ %i.bk, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 2 uses
  %.sroa.072.0 = phi ptr [ %i.bm, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 5 uses
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !395, !noalias !17132
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %1
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !391, !noalias !17132
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, %bb.l
  %.sroa.070.0 = phi ptr [ %i.d, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38 ], [ %i.bp, %bb.l ] ; 3 uses
  %.not27.i41 = icmp eq ptr %.sroa.072.0, %.sroa.070.0
  br i1 %.not27.i41, label %._crit_edge.i47, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40, %bb.p
  %i.bq = phi ptr [ %i.cp, %bb.p ], [ %.sroa.077.promoted120, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40 ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %.sroa.075.1, %bb.p ], [ %.sroa.087.0.lcssa, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40 ] ; 4 uses
  %.sroa.017.028.i43 = phi ptr [ %.sroa.017.1.i45, %bb.p ], [ %.sroa.072.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40 ] ; 4 uses
  %i.br = icmp eq ptr %.sroa.075.0, %.sroa.072.0
  br i1 %i.br, label %.lr.ph.i.i.i54, label %bb.m

.lr.ph.i.i.i54:                                   ; preds = %.lr.ph.i42, %.lr.ph.i.i.i54
  %.sroa.0.0.i.in.i55 = phi ptr [ %i.ca, %.lr.ph.i.i.i54 ], [ %.sroa.077, %.lr.ph.i42 ]
  %i.bs = phi ptr [ %i.by, %.lr.ph.i.i.i54 ], [ %.sroa.017.028.i43, %.lr.ph.i42 ] ; 2 uses
  %.sroa.0.0.i.i56 = load ptr, ptr %.sroa.0.0.i.in.i55, align 8, !tbaa !391 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i56, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !343, !noalias !17133
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !343, !noalias !17133
  store i32 0, ptr %i.bt, align 4, !tbaa !343, !noalias !17133
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !395, !noalias !17133
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !391, !noalias !17133 ; 2 uses
  %i.bz = load ptr, ptr %.sroa.0.0.i.i56, align 8, !tbaa !395, !noalias !17133
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.not.i.i.i57 = icmp eq ptr %i.by, %.sroa.070.0
  br i1 %.not.i.i.i57, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60, label %.lr.ph.i.i.i54, !llvm.loop !264

bb.m:                                             ; preds = %.lr.ph.i42
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i43, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.075.0, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !343 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !343 ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.cd, ptr %i.cg, align 4, !tbaa !343
  store i32 0, ptr %i.cb, align 4, !tbaa !343
  %i.ch = load ptr, ptr %.sroa.017.028.i43, align 8, !tbaa !395
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !391
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !343
  store i32 0, ptr %i.cc, align 4, !tbaa !343
  %i.ck = load ptr, ptr %.sroa.075.0, align 8, !tbaa !395
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !391
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.075.1 = phi ptr [ %.sroa.075.0, %bb.n ], [ %i.cm, %bb.o ] ; 2 uses
  %.sroa.017.1.i45 = phi ptr [ %i.cj, %bb.n ], [ %.sroa.017.028.i43, %bb.o ] ; 2 uses
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !395
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !391 ; 3 uses
  store ptr %i.cp, ptr %.sroa.077, align 8, !tbaa !450
  %.not.i46 = icmp eq ptr %.sroa.017.1.i45, %.sroa.070.0
  br i1 %.not.i46, label %._crit_edge.i47, label %.lr.ph.i42, !llvm.loop !17093

._crit_edge.i47:                                  ; preds = %bb.p, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40
  %.sroa.075.2 = phi ptr [ %.sroa.087.0.lcssa, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40 ], [ %.sroa.075.1, %bb.p ] ; 3 uses
  %i.cq = phi ptr [ %.sroa.077.promoted120, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40 ], [ %i.cp, %bb.p ] ; 2 uses
  %.not23.i48 = icmp eq ptr %i.cq, %.sroa.075.2
  %.not1.i.i1.i49 = icmp eq ptr %.sroa.075.2, %.sroa.072.0
  %or.cond104 = select i1 %.not23.i48, i1 true, i1 %.not1.i.i1.i49
  br i1 %or.cond104, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60, label %.lr.ph.i.i2.i50

.lr.ph.i.i2.i50:                                  ; preds = %._crit_edge.i47, %.lr.ph.i.i2.i50
  %.sroa.0.0.i3.i51 = phi ptr [ %i.da, %.lr.ph.i.i2.i50 ], [ %i.cq, %._crit_edge.i47 ] ; 2 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i2.i50 ], [ %.sroa.075.2, %._crit_edge.i47 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i51, i64 8
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !343, !noalias !17134
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !343, !noalias !17134
  store i32 0, ptr %i.cs, align 4, !tbaa !343, !noalias !17134
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !395, !noalias !17134
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !391, !noalias !17134 ; 2 uses
  %i.cy = load ptr, ptr %.sroa.0.0.i3.i51, align 8, !tbaa !395, !noalias !17134
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !391, !noalias !17134
  %.not.i.i4.i52 = icmp eq ptr %i.cx, %.sroa.072.0
  br i1 %.not.i.i4.i52, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60, label %.lr.ph.i.i2.i50, !llvm.loop !264

bb.q:                                             ; preds = %._crit_edge
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit62, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !395, !noalias !17135
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %1
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !391, !noalias !17135
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit62

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit62: ; preds = %bb.q, %bb.r
  %.sroa.068.0 = phi ptr [ %i.d, %bb.q ], [ %i.dd, %bb.r ] ; 2 uses
  %.not.i.i.i63 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i.i63, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit62
  %i.de = sub nsw i64 0, %.027121
  %i.df = load ptr, ptr %.sroa.087.0.lcssa, align 8, !tbaa !395, !noalias !17136
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !391, !noalias !17136
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit62, %bb.s
  %.sroa.067.0 = phi ptr [ %.sroa.087.0.lcssa, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit62 ], [ %i.dh, %bb.s ]
  %.not1.i.i = icmp eq ptr %.sroa.087.0.lcssa, %.sroa.068.0
  br i1 %.not1.i.i, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %.sroa.067.0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64 ] ; 2 uses
  %i.di = phi ptr [ %i.do, %.lr.ph.i.i ], [ %.sroa.087.0.lcssa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !343, !noalias !17137
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !343, !noalias !17137
  store i32 0, ptr %i.dj, align 4, !tbaa !343, !noalias !17137
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !395, !noalias !17137
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !391, !noalias !17137 ; 2 uses
  %i.dp = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !395, !noalias !17137
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !391, !noalias !17137
  %.not.i.i65 = icmp eq ptr %i.do, %.sroa.068.0
  br i1 %.not.i.i65, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60, label %.lr.ph.i.i, !llvm.loop !264

_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i54, %.lr.ph.i.i2.i50, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit64, %._crit_edge.i47
  %.not.i.i66 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i66, label %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60
  %i.ds = sub nsw i64 0, %.027121
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !395
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !391 ; 2 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !450
  br label %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit

_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit: ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60, %bb.t
  %i.dw = phi ptr [ %i.d, %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_SH_SH_SH_T0_T1_.exit60 ], [ %i.dv, %bb.t ]
  %i.dx = sub nuw i64 %.026122, %.027121          ; 2 uses
  %i.dy = icmp ult i64 %i.e, %3
  %i.dz = icmp uge i64 %i.dx, %i.e
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %bb.b, label %._crit_edge125, !llvm.loop !17123

._crit_edge125:                                   ; preds = %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit, %bb.a
  %.027.lcssa = phi i64 [ %2, %bb.a ], [ %i.e, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit ]
  ret i64 %.027.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_T0_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 5 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !450, !noalias !485 ; 8 uses
  br i1 %i.a, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17

.lr.ph:                                           ; preds = %bb.a
  %.not.i.i14 = icmp eq i64 %2, 0
  br i1 %.not.i.i14, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit
  %.044 = phi i64 [ %i.ab, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit ], [ 0, %.lr.ph ] ; 3 uses
  %.not.i.i = icmp eq i64 %.044, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit13, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.b = load ptr, ptr %.pre46, align 8, !tbaa !395, !noalias !17147
  %i.c = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.044
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !391, !noalias !17147
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit13

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit13: ; preds = %.lr.ph.split, %bb.b
  %.sroa.038.0 = phi ptr [ %i.d, %bb.b ], [ %.pre46, %.lr.ph.split ] ; 4 uses
  %i.e = load ptr, ptr %.sroa.038.0, align 8, !tbaa !395, !noalias !17148 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.speculated
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !391, !noalias !17148 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.038.0, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit13
  %.sroa.013.0.in27.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.013.028.i = load ptr, ptr %.sroa.013.0.in27.i, align 8, !tbaa !391 ; 2 uses
  %.not2029.i = icmp eq ptr %.sroa.013.028.i, %i.g
  br i1 %.not2029.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.013.030.i = phi ptr [ %.sroa.013.0.i, %bb.f ], [ %.sroa.013.028.i, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 8 ; 3 uses
  %i.i = load ptr, ptr %.sroa.013.030.i, align 8, !tbaa !395 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !391  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.h, align 8, !tbaa !343  ; 3 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !343
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph31.i
  store i32 0, ptr %i.h, align 8, !tbaa !343
  %i.p = load i32, ptr %i.l, align 4, !tbaa !343
  store i32 %i.p, ptr %i.h, align 8, !tbaa !343
  store i32 0, ptr %i.l, align 4, !tbaa !343
  %.not2122.i = icmp eq ptr %i.k, %.sroa.038.0
  br i1 %.not2122.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.024.i = phi ptr [ %i.s, %bb.e ], [ %i.k, %bb.d ]
  %.sroa.06.023.i = phi ptr [ %i.aa, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %.sroa.0.024.i, align 8, !tbaa !395
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !391  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !343  ; 2 uses
  %i.v = icmp slt i32 %i.m, %i.u
  br i1 %i.v, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.06.0.lcssa.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.023.i, %.lr.ph.i ], [ %i.aa, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i, i64 8
  store i32 %i.m, ptr %i.w, align 4, !tbaa !343
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 8
  store i32 %i.u, ptr %i.x, align 4, !tbaa !343
  store i32 0, ptr %i.t, align 4, !tbaa !343
  %i.y = load ptr, ptr %.sroa.06.023.i, align 8, !tbaa !395
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !391 ; 2 uses
  %.not21.i = icmp eq ptr %i.s, %.sroa.038.0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !300

bb.f:                                             ; preds = %.critedge.i, %.lr.ph31.i
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !tbaa !391 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.013.0.i, %i.g
  br i1 %.not20.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %.lr.ph31.i, !llvm.loop !301

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit13, %bb.c
  %i.ab = add i64 %.044, %.sroa.speculated        ; 4 uses
  %i.ac = sub i64 %1, %i.ab
  %i.ad = icmp ugt i64 %i.ac, %.sroa.speculated
  br i1 %i.ad, label %.lr.ph.split, label %._crit_edge, !llvm.loop !17142

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit
  %.not.i.i16 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i16, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %.pre46, align 8, !tbaa !395, !noalias !17149
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !391, !noalias !17149
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17: ; preds = %bb.a, %._crit_edge, %bb.g
  %.sroa.037.0 = phi ptr [ %.pre46, %._crit_edge ], [ %i.ag, %bb.g ], [ %.pre46, %bb.a ] ; 2 uses
  %.not.i.i18 = icmp eq i64 %1, 0
  br i1 %.not.i.i18, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit19, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17.thread

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17.thread: ; preds = %.lr.ph, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17
  %.sroa.037.062 = phi ptr [ %.sroa.037.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17 ], [ %.pre46, %.lr.ph ]
  %i.ah = load ptr, ptr %.pre46, align 8, !tbaa !395, !noalias !17150
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !391, !noalias !17150
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit19

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit19: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17.thread
  %.sroa.037.063 = phi ptr [ %.sroa.037.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17 ], [ %.sroa.037.062, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17.thread ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %.pre46, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17 ], [ %i.aj, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit17.thread ] ; 3 uses
  %.not.i20 = icmp eq ptr %.sroa.037.063, %.sroa.0.0
  br i1 %.not.i20, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit36, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit19
  %i.ak = load ptr, ptr %.sroa.037.063, align 8, !tbaa !395
  %.sroa.013.0.in27.i21 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.013.028.i22 = load ptr, ptr %.sroa.013.0.in27.i21, align 8, !tbaa !391 ; 2 uses
  %.not2029.i23 = icmp eq ptr %.sroa.013.028.i22, %.sroa.0.0
  br i1 %.not2029.i23, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit36, label %.lr.ph31.i24

.lr.ph31.i24:                                     ; preds = %bb.h, %bb.k
  %.sroa.013.030.i25 = phi ptr [ %.sroa.013.0.i27, %bb.k ], [ %.sroa.013.028.i22, %bb.h ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i25, i64 8 ; 3 uses
  %i.am = load ptr, ptr %.sroa.013.030.i25, align 8, !tbaa !395 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !391 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !343 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !343
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph31.i24
  store i32 0, ptr %i.al, align 8, !tbaa !343
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !343
  store i32 %i.at, ptr %i.al, align 8, !tbaa !343
  store i32 0, ptr %i.ap, align 4, !tbaa !343
  %.not2122.i29 = icmp eq ptr %i.ao, %.sroa.037.063
  br i1 %.not2122.i29, label %.critedge.i33, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.024.i31 = phi ptr [ %i.aw, %bb.j ], [ %i.ao, %bb.i ]
  %.sroa.06.023.i32 = phi ptr [ %i.be, %bb.j ], [ %i.ao, %bb.i ] ; 3 uses
  %i.au = load ptr, ptr %.sroa.0.024.i31, align 8, !tbaa !395
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !391 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !343 ; 2 uses
  %i.az = icmp slt i32 %i.aq, %i.ay
  br i1 %i.az, label %bb.j, label %.critedge.i33

.critedge.i33:                                    ; preds = %bb.j, %.lr.ph.i30, %bb.i
  %.sroa.06.0.lcssa.i34 = phi ptr [ %i.ao, %bb.i ], [ %.sroa.06.023.i32, %.lr.ph.i30 ], [ %i.be, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i34, i64 8
  store i32 %i.aq, ptr %i.ba, align 4, !tbaa !343
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i30
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i32, i64 8
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !343
  store i32 0, ptr %i.ax, align 4, !tbaa !343
  %i.bc = load ptr, ptr %.sroa.06.023.i32, align 8, !tbaa !395
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !391 ; 2 uses
  %.not21.i35 = icmp eq ptr %i.aw, %.sroa.037.063
  br i1 %.not21.i35, label %.critedge.i33, label %.lr.ph.i30, !llvm.loop !300

bb.k:                                             ; preds = %.critedge.i33, %.lr.ph31.i24
  %.sroa.013.0.in.i26 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.013.0.i27 = load ptr, ptr %.sroa.013.0.in.i26, align 8, !tbaa !391 ; 2 uses
  %.not20.i28 = icmp eq ptr %.sroa.013.0.i27, %.sroa.0.0
  br i1 %.not20.i28, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit36, label %.lr.ph31.i24, !llvm.loop !301

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit36: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit19, %bb.h
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESJ_SL_SL_SL_SL_T0_T1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.086 = alloca ptr, align 8                ; 3 uses
  %.sroa.077 = alloca ptr, align 8                ; 4 uses
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %bb.a
  %.not.i.i61 = icmp eq i64 %1, 0                 ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !450
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph124, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit
  %i.d = phi ptr [ %.pre, %.lr.ph124 ], [ %i.eh, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit ] ; 10 uses
  %.026122 = phi i64 [ %4, %.lr.ph124 ], [ %i.ei, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit ]
  %.027121 = phi i64 [ %2, %.lr.ph124 ], [ %i.e, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEmIEl.exit ] ; 13 uses
  %i.e = shl i64 %.027121, 1                      ; 9 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.027121, 0
  %i.g = sub nsw i64 0, %.027121
  %.not.i.i30 = icmp eq i64 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34
  %.0116 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34 ]
  %.sroa.087.0115 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.078.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17192)
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit: ; preds = %bb.c
  %i.h = load ptr, ptr %.sroa.087.0115, align 8, !tbaa !395, !noalias !17192 ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !391, !noalias !17192 ; 3 uses
  store ptr %i.j, ptr %.sroa.086, align 8, !tbaa !450, !alias.scope !17192
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.027121
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !391, !noalias !17193 ; 5 uses
  br i1 %.not.i.i30, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %i.m = load ptr, ptr %.sroa.087.0115, align 8, !tbaa !395, !noalias !17194
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !391, !noalias !17194
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, %bb.d
  %.sroa.079.0 = phi ptr [ %.sroa.087.0115, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %i.o, %bb.d ] ; 3 uses
  %.not27.i = icmp eq ptr %i.l, %.sroa.079.0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31, %bb.h
  %i.p = phi ptr [ %i.as, %bb.h ], [ %i.j, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31 ] ; 2 uses
  %.sroa.084.0 = phi ptr [ %.sroa.084.1, %bb.h ], [ %.sroa.087.0115, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31 ] ; 4 uses
  %.sroa.017.028.i = phi ptr [ %.sroa.017.1.i, %bb.h ], [ %i.l, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31 ] ; 4 uses
  %i.q = icmp eq ptr %.sroa.084.0, %i.l
  br i1 %i.q, label %.lr.ph.i.i.i, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.sroa.0.0.i.in.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.086, %.lr.ph.i ]
  %i.r = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.017.028.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.i.in.i, align 8, !tbaa !391 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !343, !noalias !17195
  store i32 0, ptr %i.s, align 4, !tbaa !343, !noalias !17195
  %i.v = load i32, ptr %i.t, align 4, !tbaa !343, !noalias !17195
  store i32 %i.v, ptr %i.s, align 4, !tbaa !343, !noalias !17195
  store i32 %i.u, ptr %i.t, align 4, !tbaa !343, !noalias !17195
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !395, !noalias !17195
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !391, !noalias !17195 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !395, !noalias !17195
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i.i.i32 = icmp eq ptr %i.y, %.sroa.079.0
  br i1 %.not.i.i.i32, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !273

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.028.i, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !343
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !343
  %i.af = icmp slt i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !343 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !343
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !343
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !343
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !343
  %i.aj = load ptr, ptr %.sroa.017.028.i, align 8, !tbaa !395
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !391
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !343
  store i32 %i.am, ptr %i.ag, align 4, !tbaa !343
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !343
  %i.an = load ptr, ptr %.sroa.084.0, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !391
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.084.1 = phi ptr [ %.sroa.084.0, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.017.1.i = phi ptr [ %i.al, %bb.f ], [ %.sroa.017.028.i, %bb.g ] ; 2 uses
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !395
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !391 ; 3 uses
  store ptr %i.as, ptr %.sroa.086, align 8, !tbaa !450
  %.not.i = icmp eq ptr %.sroa.017.1.i, %.sroa.079.0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17161

._crit_edge.i:                                    ; preds = %bb.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31
  %.sroa.084.2 = phi ptr [ %.sroa.087.0115, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31 ], [ %.sroa.084.1, %bb.h ] ; 3 uses
  %i.at = phi ptr [ %i.j, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit31 ], [ %i.as, %bb.h ] ; 2 uses
  %.not23.i = icmp eq ptr %i.at, %.sroa.084.2
  %.not1.i.i1.i = icmp eq ptr %.sroa.084.2, %i.l
  %or.cond = select i1 %.not23.i, i1 true, i1 %.not1.i.i1.i
  br i1 %or.cond, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %._crit_edge.i, %.lr.ph.i.i2.i
  %.sroa.0.0.i3.i = phi ptr [ %i.be, %.lr.ph.i.i2.i ], [ %i.at, %._crit_edge.i ] ; 2 uses
  %i.au = phi ptr [ %i.bb, %.lr.ph.i.i2.i ], [ %.sroa.084.2, %._crit_edge.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !343, !noalias !17196
  store i32 0, ptr %i.av, align 4, !tbaa !343, !noalias !17196
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !343, !noalias !17196
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !343, !noalias !17196
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !343, !noalias !17196
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !395, !noalias !17196
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !391, !noalias !17196 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.0.i3.i, align 8, !tbaa !395, !noalias !17196
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !391, !noalias !17196
  %.not.i.i4.i = icmp eq ptr %i.bb, %i.l
  br i1 %.not.i.i4.i, label %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit, label %.lr.ph.i.i2.i, !llvm.loop !273

_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i2.i, %bb.c, %._crit_edge.i
  %i.bf = add i64 %.0116, %i.e                    ; 4 uses
  %.not.i.i33 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i33, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !395, !noalias !17197
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !391, !noalias !17197
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34: ; preds = %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit, %bb.i
  %.sroa.078.0 = phi ptr [ %i.d, %_ZN5boost7movelib13op_merge_leftINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_SH_SH_SH_T0_T1_.exit ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bj = sub i64 %1, %i.bf                       ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, %i.e
  br i1 %i.bk, label %bb.c, label %._crit_edge, !llvm.loop !17168

._crit_edge:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34, %bb.b
  %.sroa.087.0.lcssa = phi ptr [ %i.d, %bb.b ], [ %.sroa.078.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34 ] ; 10 uses
  %.lcssa110 = phi i64 [ %1, %bb.b ], [ %i.bj, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit34 ]
  %i.bl = icmp ugt i64 %.lcssa110, %.027121
  br i1 %i.bl, label %bb.j, label %bb.q

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17198)
  store ptr %.sroa.087.0.lcssa, ptr %.sroa.077, align 8, !tbaa !450, !alias.scope !17198
  %.not.i.i.i35 = icmp eq i64 %.027121, 0
  br i1 %.not.i.i.i35, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = sub nsw i64 0, %.027121
  %i.bn = load ptr, ptr %.sroa.087.0.lcssa, align 8, !tbaa !395, !noalias !17198 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !391, !noalias !17198 ; 2 uses
  store ptr %i.bp, ptr %.sroa.077, align 8, !tbaa !450, !alias.scope !17198
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.027121
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !391, !noalias !17199
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38: ; preds = %bb.j, %bb.k
  %.sroa.077.promoted120 = phi ptr [ %i.bp, %bb.k ], [ %.sroa.087.0.lcssa, %bb.j ] ; 2 uses
end_hunk_0
