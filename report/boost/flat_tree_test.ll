Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3412
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.z, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %.sink.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.sink.i = add i32 %.sink.in.i, -1
  store i32 %.sink.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ac = getelementptr inbounds nuw i8, ptr %.02345.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.i
  br i1 %.not.i, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i, !llvm.loop !14065

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.082, %bb.b ], [ %.125.i, %bb.f ] ; 3 uses
  %.023.lcssa.i = phi ptr [ %i.g, %bb.b ], [ %i.ac, %bb.f ] ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.h
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ak, %.lr.ph.i.i29.i ], [ %.023.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 3 uses
  %.079.i.i31.i = phi ptr [ %i.aj, %.lr.ph.i.i29.i ], [ %.024.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i31.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !343
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ag = load i32, ptr %.010.i.i30.i, align 4, !tbaa !343
  store i32 %i.ag, ptr %.079.i.i31.i, align 4, !tbaa !343
  store i32 %i.ad, ptr %.010.i.i30.i, align 4, !tbaa !343
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %.not.i.i32.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i32.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !220

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i29.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03981, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04188, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !14066

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04188, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 6 uses
  %.lcssa77 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa77, %.04287
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04287                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04287, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04188, i64 %.idx70 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.at, %.idx70
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02345.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 6 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02444.i49, %i.ar
  br i1 %i.au, label %.lr.ph.i.i.i65, label %bb.h

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i46, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.bc, %.lr.ph.i.i.i65 ], [ %.02345.i48, %.lr.ph.i46 ] ; 3 uses
  %.079.i.i.i67 = phi ptr [ %i.bb, %.lr.ph.i.i.i65 ], [ %.02246.i47, %.lr.ph.i46 ] ; 4 uses
  %i.av = load i32, ptr %.079.i.i.i67, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i.i67, align 4, !tbaa !343
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = load i32, ptr %.010.i.i.i66, align 4, !tbaa !343
  store i32 %i.ay, ptr %.079.i.i.i67, align 4, !tbaa !343
  store i32 %i.av, ptr %.010.i.i.i66, align 4, !tbaa !343
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i67, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i66, i64 4
  %.not.i.i.i68 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.i65, !llvm.loop !220

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02246.i47, align 4, !tbaa !343
  %i.be = load i32, ptr %.02444.i49, align 4, !tbaa !343
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02345.i48, align 4, !tbaa !343 ; 2 uses
  store i32 0, ptr %.02345.i48, align 4, !tbaa !343
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02246.i47, align 4, !tbaa !343
  store i32 %i.bj, ptr %.02345.i48, align 4, !tbaa !343
  store i32 %i.bg, ptr %.02246.i47, align 4, !tbaa !343
  %i.bk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02444.i49, align 4, !tbaa !343
  store i32 %i.bl, ptr %.02345.i48, align 4, !tbaa !343
  store i32 %i.bg, ptr %.02444.i49, align 4, !tbaa !343
  %i.bm = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bn = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !14065

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond38.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond38.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61

.lr.ph.i.i29.i61:                                 ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, %.lr.ph.i.i29.i61
  %.010.i.i30.i62 = phi ptr [ %i.bv, %.lr.ph.i.i29.i61 ], [ %.023.lcssa.i57, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 3 uses
  %.079.i.i31.i63 = phi ptr [ %i.bu, %.lr.ph.i.i29.i61 ], [ %.024.lcssa.i56, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 4 uses
  %i.bo = load i32, ptr %.079.i.i31.i63, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i31.i63, align 4, !tbaa !343
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.br = load i32, ptr %.010.i.i30.i62, align 4, !tbaa !343
  store i32 %i.br, ptr %.079.i.i31.i63, align 4, !tbaa !343
  store i32 %i.bo, ptr %.010.i.i30.i62, align 4, !tbaa !343
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i63, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i62, i64 4
  %.not.i.i32.i64 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i32.i64, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61, !llvm.loop !220

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04188, i64 %1
  %i.bx = sub i64 0, %.04287                      ; 3 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bz = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cc = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.cc, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bz, ptr %.010.i.i, align 4, !tbaa !343
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i, !llvm.loop !220

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i65, %.lr.ph.i.i29.i61, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i65 ], [ %i.ap, %.lr.ph.i.i29.i61 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %i.bx, %bb.l ], [ %i.bx, %.lr.ph.i.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.04188, i64 %.pre-phi
  %i.ci = sub nuw i64 %.04089, %.04287            ; 2 uses
  %i.cj = icmp ult i64 %i.d, %3
  %i.ck = icmp uge i64 %i.ci, %i.d
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader, label %._crit_edge90, !llvm.loop !14067

._crit_edge90:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 14 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %i.l = shl i64 %i.k, 3
  %i.m = add i64 %i.i, -4
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 476
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader315, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %3 = udiv i64 %1, %i.b
  %i.q = shl i64 %3, 3
  %i.r = or disjoint i64 %i.q, 4
  %i.s = mul i64 %2, %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %bound0 = icmp ult ptr %i.t, %i.g
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.u = mul i64 %n.vec, -4                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.g, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.g, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !343, !alias.scope !14100
  %wide.load139 = load <4 x i32>, ptr %i.z, align 4, !tbaa !343, !alias.scope !14100
  %i.aa = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ab = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !343, !alias.scope !14101, !noalias !14100
  store <4 x i32> %wide.load139, ptr %i.ab, align 4, !tbaa !343, !alias.scope !14101, !noalias !14100
  store <4 x i32> zeroinitializer, ptr %i.y, align 4, !tbaa !343, !alias.scope !14100
  store <4 x i32> zeroinitializer, ptr %i.z, align 4, !tbaa !343, !alias.scope !14100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14071

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader315

.lr.ph.i.i.preheader315:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader315, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader315 ]
  %.079.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader315 ]
  %i.ad = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !343
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !343
  store i32 0, ptr %i.ad, align 4, !tbaa !343
  %.not.i.i = icmp eq ptr %i.f, %i.ad
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !14072

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bs, %bb.g ], [ %i.ai, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.ah, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ag, %bb.c ] ; 9 uses
  %i.aj = icmp eq ptr %.02442.i, %i.ag
  br i1 %i.aj, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i149 = ptrtoaddr ptr %.02541.i to i64
  %i.ak = udiv i64 %1, %i.b
  %i.al = mul i64 %2, %i.ak
  %i.am = shl i64 %i.al, 3
  %i.an = add i64 %.02541.i149, -4                ; 2 uses
  %i.ao = add i64 %i.am, %i.a
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.ap, 588
  br i1 %min.iters.check151, label %.lr.ph.i.i.i.preheader309, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i.i.i.preheader
  %.idx67292 = add i64 %2, %1
  %i.as = shl i64 %.idx67292, 2
  %i.at = add i64 %i.as, -4
  %i.au = shl i64 %indvar, 2
  %4 = udiv i64 %1, %i.b
  %5 = mul i64 %2, %4
  %i.av = shl i64 %5, 3
  %i.aw = add i64 %i.av, %i.a
  %i.ax = sub i64 %i.an, %i.aw
  %i.ay = and i64 %i.ax, -4                       ; 2 uses
  %i.az = add i64 %i.au, %i.ay
  %i.ba = sub i64 %i.at, %i.az
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = sub nuw nsw i64 -4, %i.ay
  %i.bd = getelementptr i8, ptr %.02541.i, i64 %i.bc
  %bound0153 = icmp ult ptr %i.bb, %.02541.i
  %bound1154 = icmp ult ptr %i.bd, %.043.i
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %.lr.ph.i.i.i.preheader309, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck152
  %n.vec157 = and i64 %i.ar, 9223372036854775800  ; 3 uses
  %i.be = mul i64 %n.vec157, -4                   ; 2 uses
  %i.bf = getelementptr i8, ptr %.043.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %.02541.i, i64 %i.be
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.bh = mul i64 %index159, -4                   ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.043.i, i64 %i.bh ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.02541.i, i64 %i.bh ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %next.gep161, i64 -16 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %next.gep161, i64 -32 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !343, !alias.scope !14102
  %wide.load163 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !343, !alias.scope !14102
  %i.bk = getelementptr inbounds i8, ptr %next.gep160, i64 -16
  %i.bl = getelementptr inbounds i8, ptr %next.gep160, i64 -32
  store <4 x i32> %wide.load162, ptr %i.bk, align 4, !tbaa !343, !alias.scope !14103, !noalias !14102
  store <4 x i32> %wide.load163, ptr %i.bl, align 4, !tbaa !343, !alias.scope !14103, !noalias !14102
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !343, !alias.scope !14102
  store <4 x i32> zeroinitializer, ptr %i.bj, align 4, !tbaa !343, !alias.scope !14102
  %index.next164 = add nuw i64 %index159, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.bm, label %middle.block165, label %vector.body158, !llvm.loop !14076

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.ar, %n.vec157
  br i1 %cmp.n166, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader309

.lr.ph.i.i.i.preheader309:                        ; preds = %vector.memcheck152, %.lr.ph.i.i.i.preheader, %middle.block165
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck152 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block165 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck152 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bg, %middle.block165 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader309, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader309 ]
  %.079.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader309 ]
  %i.bn = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !343
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !343
  store i32 0, ptr %i.bn, align 4, !tbaa !343
  %.not.i.i.i = icmp eq ptr %i.f, %i.bn
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !14077

bb.d:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bs = getelementptr i8, ptr %.043.i, i64 -4   ; 4 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !343 ; 2 uses
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !343 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !343
  store i32 0, ptr %i.br, align 4, !tbaa !343
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !343
  store i32 0, ptr %i.bq, align 4, !tbaa !343
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.br, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bq, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14078

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ah, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ai, %bb.c ], [ %i.bs, %bb.g ] ; 7 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ag, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %.024.lcssa.i175 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %i.bw = udiv i64 %1, %i.b
  %i.bx = shl i64 %i.bw, 3
  %i.by = or disjoint i64 %i.bx, 4
  %i.bz = mul i64 %2, %i.by
  %i.ca = add i64 %.024.lcssa.i175, -4
  %i.cb = add i64 %i.bz, %i.a
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.cc, 540
  br i1 %min.iters.check177, label %.lr.ph.i.i30.i.preheader308, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.i.i30.i.preheader
  %6 = udiv i64 %1, %i.b
  %i.cf = shl i64 %6, 3
  %i.cg = or disjoint i64 %i.cf, 4
  %i.ch = mul i64 %2, %i.cg
  %i.ci = add i64 %i.ch, %i.a
  %reass.sub = sub i64 %i.ci, %.024.lcssa.i175
  %.not293 = add i64 %reass.sub, 3
  %i.cj = and i64 %.not293, -4                    ; 2 uses
  %i.ck = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj
  %i.cl = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj
  %bound0179 = icmp ult ptr %i.ck, %.024.lcssa.i
  %bound1180 = icmp ult ptr %i.cl, %.0.lcssa.i
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i30.i.preheader308, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck178
  %n.vec183 = and i64 %i.ce, 9223372036854775800  ; 3 uses
  %i.cm = mul i64 %n.vec183, -4                   ; 2 uses
  %i.cn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cm
  %i.co = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cm
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.cp = mul i64 %index185, -4                   ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cp ; 2 uses
  %next.gep187 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep187, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep187, i64 -32 ; 2 uses
  %wide.load188 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !343, !alias.scope !14104
  %wide.load189 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !343, !alias.scope !14104
  %i.cs = getelementptr inbounds i8, ptr %next.gep186, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep186, i64 -32
  store <4 x i32> %wide.load188, ptr %i.cs, align 4, !tbaa !343, !alias.scope !14105, !noalias !14104
  store <4 x i32> %wide.load189, ptr %i.ct, align 4, !tbaa !343, !alias.scope !14105, !noalias !14104
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !343, !alias.scope !14104
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !343, !alias.scope !14104
  %index.next190 = add nuw i64 %index185, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.cu, label %middle.block191, label %vector.body184, !llvm.loop !14082

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.ce, %n.vec183
  br i1 %cmp.n192, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader308

.lr.ph.i.i30.i.preheader308:                      ; preds = %vector.memcheck178, %.lr.ph.i.i30.i.preheader, %middle.block191
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck178 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.cn, %middle.block191 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck178 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.co, %middle.block191 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader308, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cw, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader308 ]
  %.079.i.i32.i = phi ptr [ %i.cv, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader308 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !343
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !343
  store i32 0, ptr %i.cv, align 4, !tbaa !343
  %.not.i.i33.i = icmp eq ptr %i.ag, %i.cv
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !14083

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block165, %middle.block191, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.cy = shl i64 %2, 3                           ; 2 uses
  %i.cz = mul i64 %2, -8                          ; 2 uses
  %i.da = shl i64 %2, 3
  %i.db = shl i64 %2, 3
  br label %.lr.ph.i45.preheader

._crit_edge.i52.us:                               ; preds = %.lr.ph, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us
  %.078.us = phi i64 [ %i.dc, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.dc = sub i64 %.078.us, %i.b                  ; 3 uses
  %.idx80 = shl nuw nsw i64 %i.dc, 2              ; 2 uses
  %i.dd = getelementptr i8, ptr %0, i64 %.idx80   ; 2 uses
  %.idx79 = shl nuw nsw i64 %.078.us, 2           ; 2 uses
  %.not28.i55.us = icmp eq i64 %.idx79, %.idx80
  br i1 %.not28.i55.us, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us.preheader

.lr.ph.i.i30.i58.us.preheader:                    ; preds = %._crit_edge.i52.us
  %i.de = getelementptr i8, ptr %i.dd, i64 %.idx  ; 3 uses
  %i.df = getelementptr i8, ptr %0, i64 %.idx79   ; 3 uses
  %i.dg = udiv i64 %1, %i.b
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 2 uses
  %i.di = add nsw i64 %i.dh, -4
  %i.dj = mul i64 %2, %i.di
  %i.dk = getelementptr i8, ptr %0, i64 %i.dj
  %i.dl = add nsw i64 %i.dh, -8
  %i.dm = mul i64 %2, %i.dl
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm
  %bound0276 = icmp ult ptr %i.dk, %i.df
  %bound1277 = icmp ult ptr %i.dn, %i.de
  %found.conflict278 = and i1 %bound0276, %bound1277
  br i1 %found.conflict278, label %.lr.ph.i.i30.i58.us, label %vector.body281

vector.body281:                                   ; preds = %.lr.ph.i.i30.i58.us.preheader, %vector.body281
  %index282 = phi i64 [ %index.next287, %vector.body281 ], [ 0, %.lr.ph.i.i30.i58.us.preheader ] ; 2 uses
  %i.do = mul i64 %index282, -4                   ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.de, i64 %i.do ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.df, i64 %i.do ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep284, i64 -16 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %next.gep284, i64 -32 ; 2 uses
  %wide.load285 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !343, !alias.scope !14106
  %wide.load286 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !343, !alias.scope !14106
  %i.dr = getelementptr inbounds i8, ptr %next.gep283, i64 -16
  %i.ds = getelementptr inbounds i8, ptr %next.gep283, i64 -32
  store <4 x i32> %wide.load285, ptr %i.dr, align 4, !tbaa !343, !alias.scope !14107, !noalias !14106
  store <4 x i32> %wide.load286, ptr %i.ds, align 4, !tbaa !343, !alias.scope !14107, !noalias !14106
  store <4 x i32> zeroinitializer, ptr %i.dp, align 4, !tbaa !343, !alias.scope !14106
  store <4 x i32> zeroinitializer, ptr %i.dq, align 4, !tbaa !343, !alias.scope !14106
  %index.next287 = add nuw i64 %index282, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next287, 4611686018427387904
  br i1 %i.dt, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, label %vector.body281, !llvm.loop !14087

.lr.ph.i.i30.i58.us:                              ; preds = %.lr.ph.i.i30.i58.us.preheader, %.lr.ph.i.i30.i58.us
  %.010.i.i31.i59.us = phi ptr [ %i.eq, %.lr.ph.i.i30.i58.us ], [ %i.de, %.lr.ph.i.i30.i58.us.preheader ] ; 8 uses
  %.079.i.i32.i60.us = phi ptr [ %i.ep, %.lr.ph.i.i30.i58.us ], [ %i.df, %.lr.ph.i.i30.i58.us.preheader ] ; 8 uses
  %i.du = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -4 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -4
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !343
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !343
  store i32 0, ptr %i.du, align 4, !tbaa !343
  %i.dx = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -8 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -8
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !343
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !343
  store i32 0, ptr %i.dx, align 4, !tbaa !343
  %i.ea = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -12 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -12
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !343
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !343
  store i32 0, ptr %i.ea, align 4, !tbaa !343
  %i.ed = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -16 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -16
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !343
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !343
  store i32 0, ptr %i.ed, align 4, !tbaa !343
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -20 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -20
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !343
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !343
  store i32 0, ptr %i.eg, align 4, !tbaa !343
  %i.ej = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -24 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -24
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !343
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !343
  store i32 0, ptr %i.ej, align 4, !tbaa !343
  %i.em = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -28 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -28
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !343
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !343
  store i32 0, ptr %i.em, align 4, !tbaa !343
  %i.ep = getelementptr inbounds i8, ptr %.079.i.i32.i60.us, i64 -32 ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %.010.i.i31.i59.us, i64 -32 ; 2 uses
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !343
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !343
  store i32 0, ptr %i.ep, align 4, !tbaa !343
  %.not.i.i33.i61.us.7 = icmp eq ptr %i.dd, %i.ep
  br i1 %.not.i.i33.i61.us.7, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, label %.lr.ph.i.i30.i58.us, !llvm.loop !14088

_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us: ; preds = %vector.body281, %.lr.ph.i.i30.i58.us, %._crit_edge.i52.us
  %.not43.us = icmp eq i64 %i.dc, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i52.us, !llvm.loop !14089

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.i45.preheader.preheader, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66
  %indvar207 = phi i64 [ 0, %.lr.ph.i45.preheader.preheader ], [ %indvar.next208, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66 ] ; 7 uses
  %.078 = phi i64 [ %i.e, %.lr.ph.i45.preheader.preheader ], [ %i.es, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66 ] ; 2 uses
  %i.es = sub i64 %.078, %i.b                     ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.es ; 4 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 %.idx68 ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.078
  %i.ew = getelementptr i8, ptr %i.et, i64 %.idx
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %bb.k
  %indvar209 = phi i64 [ 0, %.lr.ph.i45.preheader ], [ %indvar.next210, %bb.k ] ; 3 uses
  %.043.i46 = phi ptr [ %i.ew, %.lr.ph.i45.preheader ], [ %i.gs, %bb.k ] ; 6 uses
  %.02442.i47 = phi ptr [ %i.ev, %.lr.ph.i45.preheader ], [ %.1.i50, %bb.k ] ; 3 uses
  %.02541.i48 = phi ptr [ %i.eu, %.lr.ph.i45.preheader ], [ %.126.i49, %bb.k ] ; 9 uses
  %i.ex = icmp eq ptr %.02442.i47, %i.eu
  br i1 %i.ex, label %.lr.ph.i.i.i62.preheader, label %bb.h

.lr.ph.i.i.i62.preheader:                         ; preds = %.lr.ph.i45
  %.02541.i48211.le = ptrtoaddr ptr %.02541.i48 to i64 ; 2 uses
  %i.ey = udiv i64 %1, %i.b
  %i.ez = shl nuw i64 %i.ey, 1
  %i.fa = add i64 %i.ez, 4611686018427387902
  %i.fb = mul i64 %2, %i.fa
  %i.fc = shl i64 %i.fb, 2
  %i.fd = add i64 %i.fc, %i.a
  %i.fe = mul i64 %indvar207, %i.db
  %reass.sub296 = sub i64 %i.fe, %i.fd
  %i.ff = add i64 %reass.sub296, -4
  %i.fg = add i64 %i.ff, %.02541.i48211.le        ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check213 = icmp ult i64 %i.fg, 316
  br i1 %min.iters.check213, label %.lr.ph.i.i.i62.preheader300, label %vector.memcheck214

vector.memcheck214:                               ; preds = %.lr.ph.i.i.i62.preheader
  %7 = udiv i64 %1, %i.b                          ; 2 uses
  %i.fj = shl i64 %7, 3
  %i.fk = or disjoint i64 %i.fj, 4
  %i.fl = mul i64 %2, %i.fk
  %i.fm = add i64 %i.fl, -4
  %i.fn = mul i64 %indvar207, %i.cz
  %i.fo = add i64 %i.fm, %i.fn
  %i.fp = shl i64 %indvar209, 2
  %i.fq = shl nuw i64 %7, 1
  %i.fr = add i64 %i.fq, 4611686018427387902
  %i.fs = mul i64 %2, %i.fr
  %i.ft = shl i64 %i.fs, 2
  %i.fu = add i64 %i.ft, %i.a
  %i.fv = mul i64 %indvar207, %i.cy
  %reass.sub297 = sub i64 %i.fv, %i.fu
  %i.fw = add i64 %reass.sub297, -4
  %i.fx = add i64 %i.fw, %.02541.i48211.le
  %i.fy = and i64 %i.fx, -4                       ; 2 uses
  %i.fz = add i64 %i.fp, %i.fy
  %i.ga = sub i64 %i.fo, %i.fz
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga
  %i.gc = sub nuw nsw i64 -4, %i.fy
  %i.gd = getelementptr i8, ptr %.02541.i48, i64 %i.gc
  %bound0215 = icmp ult ptr %i.gb, %.02541.i48
  %bound1216 = icmp ult ptr %i.gd, %.043.i46
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %.lr.ph.i.i.i62.preheader300, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck214
  %n.vec219 = and i64 %i.fi, 9223372036854775800  ; 3 uses
  %i.ge = mul i64 %n.vec219, -4                   ; 2 uses
  %i.gf = getelementptr i8, ptr %.043.i46, i64 %i.ge
  %i.gg = getelementptr i8, ptr %.02541.i48, i64 %i.ge
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body220 ] ; 2 uses
  %i.gh = mul i64 %index221, -4                   ; 2 uses
  %next.gep222 = getelementptr i8, ptr %.043.i46, i64 %i.gh ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.02541.i48, i64 %i.gh ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep223, i64 -16 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %next.gep223, i64 -32 ; 2 uses
  %wide.load224 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !343, !alias.scope !14108
  %wide.load225 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !343, !alias.scope !14108
  %i.gk = getelementptr inbounds i8, ptr %next.gep222, i64 -16
  %i.gl = getelementptr inbounds i8, ptr %next.gep222, i64 -32
  store <4 x i32> %wide.load224, ptr %i.gk, align 4, !tbaa !343, !alias.scope !14109, !noalias !14108
  store <4 x i32> %wide.load225, ptr %i.gl, align 4, !tbaa !343, !alias.scope !14109, !noalias !14108
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !343, !alias.scope !14108
  store <4 x i32> zeroinitializer, ptr %i.gj, align 4, !tbaa !343, !alias.scope !14108
  %index.next226 = add nuw i64 %index221, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.gm, label %middle.block227, label %vector.body220, !llvm.loop !14093

middle.block227:                                  ; preds = %vector.body220
  %cmp.n228 = icmp eq i64 %i.fi, %n.vec219
  br i1 %cmp.n228, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i.i62.preheader300

.lr.ph.i.i.i62.preheader300:                      ; preds = %vector.memcheck214, %.lr.ph.i.i.i62.preheader, %middle.block227
  %.010.i.i.i63.ph = phi ptr [ %.043.i46, %vector.memcheck214 ], [ %.043.i46, %.lr.ph.i.i.i62.preheader ], [ %i.gf, %middle.block227 ]
  %.079.i.i.i64.ph = phi ptr [ %.02541.i48, %vector.memcheck214 ], [ %.02541.i48, %.lr.ph.i.i.i62.preheader ], [ %i.gg, %middle.block227 ]
  br label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %.lr.ph.i.i.i62.preheader300, %.lr.ph.i.i.i62
  %.010.i.i.i63 = phi ptr [ %i.go, %.lr.ph.i.i.i62 ], [ %.010.i.i.i63.ph, %.lr.ph.i.i.i62.preheader300 ]
  %.079.i.i.i64 = phi ptr [ %i.gn, %.lr.ph.i.i.i62 ], [ %.079.i.i.i64.ph, %.lr.ph.i.i.i62.preheader300 ]
  %i.gn = getelementptr inbounds i8, ptr %.079.i.i.i64, i64 -4 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %.010.i.i.i63, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !343
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !343
  store i32 0, ptr %i.gn, align 4, !tbaa !343
  %.not.i.i.i65 = icmp eq ptr %i.et, %i.gn
  br i1 %.not.i.i.i65, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i.i62, !llvm.loop !14094

bb.h:                                             ; preds = %.lr.ph.i45
  %i.gq = getelementptr inbounds i8, ptr %.02442.i47, i64 -4 ; 3 uses
  %i.gr = getelementptr inbounds i8, ptr %.02541.i48, i64 -4 ; 3 uses
  %i.gs = getelementptr i8, ptr %.043.i46, i64 -4 ; 9 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !343 ; 2 uses
  %i.gu = load i32, ptr %i.gr, align 4, !tbaa !343 ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !343
  store i32 0, ptr %i.gr, align 4, !tbaa !343
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !343
  store i32 0, ptr %i.gq, align 4, !tbaa !343
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.126.i49 = phi ptr [ %i.gr, %bb.i ], [ %.02541.i48, %bb.j ] ; 2 uses
  %.1.i50 = phi ptr [ %.02442.i47, %bb.i ], [ %i.gq, %bb.j ] ; 10 uses
  %.not.i51 = icmp eq ptr %i.et, %.126.i49
  %indvar.next210 = add i64 %indvar209, 1
  br i1 %.not.i51, label %._crit_edge.i52.loopexit, label %.lr.ph.i45, !llvm.loop !14078

._crit_edge.i52.loopexit:                         ; preds = %bb.k
  %.1.i50239.le = ptrtoaddr ptr %.1.i50 to i64    ; 2 uses
  %.not28.i55 = icmp eq ptr %.1.i50, %i.gs
  %.not8.i.i29.i56 = icmp eq ptr %i.eu, %.1.i50
  %or.cond.i57 = or i1 %.not8.i.i29.i56, %.not28.i55
  br i1 %or.cond.i57, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i30.i58.preheader

.lr.ph.i.i30.i58.preheader:                       ; preds = %._crit_edge.i52.loopexit
  %8 = udiv i64 %1, %i.b
  %i.gw = shl i64 %8, 3
  %i.gx = add i64 %i.gw, -4
  %i.gy = mul i64 %2, %i.gx
  %i.gz = add i64 %i.gy, %i.a
  %i.ha = mul i64 %indvar207, %i.da
  %reass.sub294 = sub i64 %i.ha, %i.gz
  %i.hb = add i64 %reass.sub294, -4
  %i.hc = add i64 %i.hb, %.1.i50239.le            ; 2 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check241 = icmp ult i64 %i.hc, 316
  br i1 %min.iters.check241, label %.lr.ph.i.i30.i58.preheader301, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i30.i58.preheader
  %i.hf = shl i64 %i.d, 3                         ; 2 uses
  %i.hg = or disjoint i64 %i.hf, 4
  %i.hh = mul i64 %2, %i.hg
  %i.hi = add i64 %i.hh, -8
  %i.hj = mul i64 %indvar207, %i.cz
  %i.hk = add i64 %i.hi, %i.hj
  %i.hl = shl i64 %indvar209, 2
  %i.hm = add i64 %i.hf, -4
  %i.hn = mul i64 %2, %i.hm
  %i.ho = add i64 %i.hn, %i.a
  %i.hp = mul i64 %indvar207, %i.cy
  %reass.sub295 = sub i64 %i.hp, %i.ho
  %i.hq = add i64 %reass.sub295, -4
  %i.hr = add i64 %i.hq, %.1.i50239.le
  %i.hs = and i64 %i.hr, -4                       ; 2 uses
  %i.ht = add i64 %i.hl, %i.hs
  %i.hu = sub i64 %i.hk, %i.ht
  %i.hv = getelementptr i8, ptr %0, i64 %i.hu
  %i.hw = sub nuw nsw i64 -4, %i.hs
  %i.hx = getelementptr i8, ptr %.1.i50, i64 %i.hw
  %bound0243 = icmp ult ptr %i.hv, %.1.i50
  %bound1244 = icmp ult ptr %i.hx, %i.gs
  %found.conflict245 = and i1 %bound0243, %bound1244
  br i1 %found.conflict245, label %.lr.ph.i.i30.i58.preheader301, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck242
  %n.vec247 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hy = mul i64 %n.vec247, -4                   ; 2 uses
  %i.hz = getelementptr i8, ptr %i.gs, i64 %i.hy
  %i.ia = getelementptr i8, ptr %.1.i50, i64 %i.hy
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body248 ] ; 2 uses
  %i.ib = mul i64 %index249, -4                   ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.gs, i64 %i.ib ; 2 uses
  %next.gep251 = getelementptr i8, ptr %.1.i50, i64 %i.ib ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %next.gep251, i64 -16 ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %next.gep251, i64 -32 ; 2 uses
  %wide.load252 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !343, !alias.scope !14110
  %wide.load253 = load <4 x i32>, ptr %i.id, align 4, !tbaa !343, !alias.scope !14110
  %i.ie = getelementptr inbounds i8, ptr %next.gep250, i64 -16
  %i.if = getelementptr inbounds i8, ptr %next.gep250, i64 -32
  store <4 x i32> %wide.load252, ptr %i.ie, align 4, !tbaa !343, !alias.scope !14111, !noalias !14110
  store <4 x i32> %wide.load253, ptr %i.if, align 4, !tbaa !343, !alias.scope !14111, !noalias !14110
  store <4 x i32> zeroinitializer, ptr %i.ic, align 4, !tbaa !343, !alias.scope !14110
  store <4 x i32> zeroinitializer, ptr %i.id, align 4, !tbaa !343, !alias.scope !14110
  %index.next254 = add nuw i64 %index249, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.ig, label %middle.block255, label %vector.body248, !llvm.loop !14098

middle.block255:                                  ; preds = %vector.body248
  %cmp.n256 = icmp eq i64 %i.he, %n.vec247
  br i1 %cmp.n256, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i30.i58.preheader301

.lr.ph.i.i30.i58.preheader301:                    ; preds = %vector.memcheck242, %.lr.ph.i.i30.i58.preheader, %middle.block255
  %.010.i.i31.i59.ph = phi ptr [ %i.gs, %vector.memcheck242 ], [ %i.gs, %.lr.ph.i.i30.i58.preheader ], [ %i.hz, %middle.block255 ]
  %.079.i.i32.i60.ph = phi ptr [ %.1.i50, %vector.memcheck242 ], [ %.1.i50, %.lr.ph.i.i30.i58.preheader ], [ %i.ia, %middle.block255 ]
  br label %.lr.ph.i.i30.i58

.lr.ph.i.i30.i58:                                 ; preds = %.lr.ph.i.i30.i58.preheader301, %.lr.ph.i.i30.i58
  %.010.i.i31.i59 = phi ptr [ %i.ii, %.lr.ph.i.i30.i58 ], [ %.010.i.i31.i59.ph, %.lr.ph.i.i30.i58.preheader301 ]
  %.079.i.i32.i60 = phi ptr [ %i.ih, %.lr.ph.i.i30.i58 ], [ %.079.i.i32.i60.ph, %.lr.ph.i.i30.i58.preheader301 ]
  %i.ih = getelementptr inbounds i8, ptr %.079.i.i32.i60, i64 -4 ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %.010.i.i31.i59, i64 -4 ; 2 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !343
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !343
  store i32 0, ptr %i.ih, align 4, !tbaa !343
  %.not.i.i33.i61 = icmp eq ptr %i.eu, %i.ih
  br i1 %.not.i.i33.i61, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, label %.lr.ph.i.i30.i58, !llvm.loop !14099

_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66: ; preds = %.lr.ph.i.i30.i58, %.lr.ph.i.i.i62, %middle.block255, %middle.block227, %._crit_edge.i52.loopexit
  %.not43 = icmp eq i64 %i.es, 0
  %indvar.next208 = add i64 %indvar207, 1
  br i1 %.not43, label %._crit_edge, label %.lr.ph.i45.preheader, !llvm.loop !14089

._crit_edge:                                      ; preds = %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit66.us, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl i64 %2, 1                            ; 3 uses
  %i.b = urem i64 %1, %i.a                        ; 3 uses
  %i.c = sub nuw i64 %1, %i.b                     ; 4 uses
  %.not = icmp ugt i64 %i.b, %2
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.f, %.lr.ph.i.i.preheader ]
  %.057.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.e, %.lr.ph.i.i.preheader ]
  %i.g = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !343
  store i32 0, ptr %i.g, align 4, !tbaa !343
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.l = load i32, ptr %i.h, align 4, !tbaa !343
  store i32 %i.l, ptr %i.g, align 4, !tbaa !343
  store i32 %i.i, ptr %i.h, align 4, !tbaa !343
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.n = add i32 %i.m, -1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !222

bb.c:                                             ; preds = %bb.a
  %.idx69 = shl nuw nsw i64 %2, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx69 ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.043.i = phi ptr [ %i.ac, %bb.g ], [ %i.q, %bb.c ] ; 2 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.p, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = icmp eq ptr %.02442.i, %i.o
  br i1 %i.r, label %.lr.ph.i.i.i, label %bb.d

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.043.i, %.lr.ph.i ]
  %.057.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %.02541.i, %.lr.ph.i ]
  %i.s = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !343
  store i32 0, ptr %i.s, align 4, !tbaa !343
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.x = load i32, ptr %i.t, align 4, !tbaa !343
  store i32 %i.x, ptr %i.s, align 4, !tbaa !343
  store i32 %i.u, ptr %i.t, align 4, !tbaa !343
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i.i.i = icmp eq ptr %i.d, %i.s
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !222

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 6 uses
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !343
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !343
  %i.af = icmp slt i32 %i.ad, %i.ae
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !343 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !343
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.ab, align 4, !tbaa !343
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !343
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !343
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !343
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !343
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !343
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.ab, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i = icmp eq ptr %i.d, %.126.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14112

end_hunk_0
