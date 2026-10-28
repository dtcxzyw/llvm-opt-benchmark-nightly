Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !65
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !65
  store i32 0, ptr %i.fz, align 4, !tbaa !65
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.ge = add i64 %.09.i.i, -4                    ; 2 uses
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !65
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !65
  store i32 0, ptr %i.gc, align 4, !tbaa !65
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %.not.i.i246.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i246.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i245, !llvm.loop !1496

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %middle.block550, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.sroa.0.0.lcssa.i.i247 = phi ptr [ %5, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ], [ %i.fk, %middle.block550 ], [ %.lcssa741.unr, %.lr.ph.i.i245.prol.loopexit ], [ %i.gg, %.lr.ph.i.i245 ]
  br i1 %i.dj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit
  %i.gi = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.ed ; 7 uses
  %.not.i248 = icmp eq ptr %3, %i.gi
  br i1 %.not.i248, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i249 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i249, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader

.lr.ph.i.i250.preheader:                          ; preds = %bb.i
  %i.gj = shl i64 %1, 2
  %i.gk = add i64 %i.gj, %i.d
  %i.gl = add i64 %i.gk, -4
  %i.gm = sub i64 %i.gl, %i.c                     ; 2 uses
  %i.gn = lshr i64 %i.gm, 2
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check561 = icmp ult i64 %i.gm, 124
  br i1 %min.iters.check561, label %.lr.ph.i.i250.preheader738, label %vector.memcheck562

vector.memcheck562:                               ; preds = %.lr.ph.i.i250.preheader
  %i.gp = shl i64 %i.ed, 2
  %i.gq = shl i64 %1, 2
  %i.gr = add i64 %i.gq, %i.d
  %i.gs = add i64 %i.gr, -4
  %i.gt = sub i64 %i.gs, %i.c
  %i.gu = and i64 %i.gt, -4                       ; 2 uses
  %i.gv = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gp
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %i.gy = getelementptr i8, ptr %3, i64 %i.gu
  %i.gz = getelementptr i8, ptr %i.gy, i64 4
  %bound0563 = icmp ult ptr %i.gi, %i.gz
  %bound1564 = icmp ult ptr %3, %i.gx
  %found.conflict565 = and i1 %bound0563, %bound1564
  br i1 %found.conflict565, label %.lr.ph.i.i250.preheader738, label %vector.ph566

vector.ph566:                                     ; preds = %vector.memcheck562
  %n.vec567 = and i64 %i.go, 9223372036854775800  ; 3 uses
  %i.ha = shl i64 %n.vec567, 2                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gi, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %3, i64 %i.ha
  br label %vector.body568

vector.body568:                                   ; preds = %vector.body568, %vector.ph566
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next574, %vector.body568 ] ; 2 uses
  %i.hd = shl i64 %index569, 2                    ; 2 uses
  %next.gep570 = getelementptr i8, ptr %i.gi, i64 %i.hd ; 2 uses
  %next.gep571 = getelementptr i8, ptr %3, i64 %i.hd ; 3 uses
  %i.he = getelementptr i8, ptr %next.gep571, i64 16 ; 2 uses
  %wide.load572 = load <4 x i32>, ptr %next.gep571, align 4, !tbaa !65, !alias.scope !1542
  %wide.load573 = load <4 x i32>, ptr %i.he, align 4, !tbaa !65, !alias.scope !1542
  %i.hf = getelementptr i8, ptr %next.gep570, i64 16
  store <4 x i32> %wide.load572, ptr %next.gep570, align 4, !tbaa !65, !alias.scope !1543, !noalias !1542
  store <4 x i32> %wide.load573, ptr %i.hf, align 4, !tbaa !65, !alias.scope !1543, !noalias !1542
  store <4 x i32> zeroinitializer, ptr %next.gep571, align 4, !tbaa !65, !alias.scope !1542
  store <4 x i32> zeroinitializer, ptr %i.he, align 4, !tbaa !65, !alias.scope !1542
  %index.next574 = add nuw i64 %index569, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next574, %n.vec567
  br i1 %i.hg, label %middle.block575, label %vector.body568, !llvm.loop !1500

middle.block575:                                  ; preds = %vector.body568
  %cmp.n576 = icmp eq i64 %i.go, %n.vec567
  br i1 %cmp.n576, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader738

.lr.ph.i.i250.preheader738:                       ; preds = %vector.memcheck562, %.lr.ph.i.i250.preheader, %middle.block575
  %.010.i.i251.ph = phi ptr [ %i.gi, %vector.memcheck562 ], [ %i.gi, %.lr.ph.i.i250.preheader ], [ %i.hb, %middle.block575 ]
  %.079.i.i252.ph = phi ptr [ %3, %vector.memcheck562 ], [ %3, %.lr.ph.i.i250.preheader ], [ %i.hc, %middle.block575 ]
  br label %.lr.ph.i.i250

.lr.ph.i.i250:                                    ; preds = %.lr.ph.i.i250.preheader738, %.lr.ph.i.i250
  %.010.i.i251 = phi ptr [ %i.hj, %.lr.ph.i.i250 ], [ %.010.i.i251.ph, %.lr.ph.i.i250.preheader738 ] ; 2 uses
  %.079.i.i252 = phi ptr [ %i.hi, %.lr.ph.i.i250 ], [ %.079.i.i252.ph, %.lr.ph.i.i250.preheader738 ] ; 3 uses
  %i.hh = load i32, ptr %.079.i.i252, align 4, !tbaa !65
  store i32 %i.hh, ptr %.010.i.i251, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i252, align 4, !tbaa !65
  %i.hi = getelementptr inbounds nuw i8, ptr %.079.i.i252, i64 4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i251, i64 4 ; 2 uses
  %.not.i.i253 = icmp eq ptr %i.hi, %i.b
  br i1 %.not.i.i253, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250, !llvm.loop !1501

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254: ; preds = %.lr.ph.i.i250, %middle.block575, %bb.i
  %i.hk = phi ptr [ %i.gi, %bb.i ], [ %i.hb, %middle.block575 ], [ %i.hj, %.lr.ph.i.i250 ] ; 2 uses
  %.not3.i255 = icmp eq ptr %i.hk, %i.b
  br i1 %.not3.i255, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, %.lr.ph.i256
  %storemerge4.i257 = phi ptr [ %i.hn, %.lr.ph.i256 ], [ %i.hk, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i257, align 4, !tbaa !65
  %i.hl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hm = add i32 %i.hl, -1
  store i32 %i.hm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hn = getelementptr inbounds nuw i8, ptr %storemerge4.i257, i64 4 ; 2 uses
  %.not.i258 = icmp eq ptr %i.hn, %i.b
  br i1 %.not.i258, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.lr.ph.i256, !llvm.loop !17

bb.j:                                             ; preds = %bb.f
  %.not16.i260 = icmp eq ptr %0, %3               ; 2 uses
  br i1 %.not16.i260, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266, label %.lr.ph.i261

.lr.ph.i261:                                      ; preds = %bb.j, %.lr.ph.i261
  %.018.i262 = phi ptr [ %i.hr, %.lr.ph.i261 ], [ %0, %bb.j ] ; 3 uses
  %.01517.i263 = phi ptr [ %i.hs, %.lr.ph.i261 ], [ %2, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i263) ]
  %i.ho = load i32, ptr %.018.i262, align 4, !tbaa !65
  store i32 %i.ho, ptr %.01517.i263, align 4, !tbaa !65
  store i32 0, ptr %.018.i262, align 4, !tbaa !65
  %i.hp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hr = getelementptr inbounds nuw i8, ptr %.018.i262, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.01517.i263, i64 4 ; 2 uses
  %.not.i264 = icmp eq ptr %i.hr, %3
  br i1 %.not.i264, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266, label %.lr.ph.i261, !llvm.loop !11

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266: ; preds = %.lr.ph.i261, %bb.j
  %.015.lcssa.i265 = phi ptr [ %2, %bb.j ], [ %i.hs, %.lr.ph.i261 ] ; 4 uses
  %i.ht = sub nsw i64 %i.i, %i.f                  ; 4 uses
  %.neg779 = add nsw i64 %i.f, 1
  %xtraiter760 = and i64 %i.ht, 1
  %lcmp.mod761.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod761.not, label %.lr.ph.i.i269.prol.loopexit, label %.lr.ph.i.i269.prol

.lr.ph.i.i269.prol:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i265) ]
  %i.hu = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.hu, ptr %.015.lcssa.i265, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.hv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hx = getelementptr i8, ptr %5, i64 4         ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.015.lcssa.i265, i64 4
  %i.hz = add nsw i64 %i.ht, -1
  br label %.lr.ph.i.i269.prol.loopexit

.lr.ph.i.i269.prol.loopexit:                      ; preds = %.lr.ph.i.i269.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266
  %.lcssa735.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hx, %.lr.ph.i.i269.prol ]
  %.018.i.i270.unr = phi i64 [ %i.ht, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hz, %.lr.ph.i.i269.prol ]
  %.01417.i.i271.unr = phi ptr [ %.015.lcssa.i265, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hy, %.lr.ph.i.i269.prol ]
  %.sroa.0.016.i.i272.unr = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit266 ], [ %i.hx, %.lr.ph.i.i269.prol ]
  %i.ia = icmp eq i64 %i.i, %.neg779
  br i1 %i.ia, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275, label %.lr.ph.i.i269

.lr.ph.i.i269:                                    ; preds = %.lr.ph.i.i269.prol.loopexit, %.lr.ph.i.i269
  %.018.i.i270 = phi i64 [ %i.il, %.lr.ph.i.i269 ], [ %.018.i.i270.unr, %.lr.ph.i.i269.prol.loopexit ]
  %.01417.i.i271 = phi ptr [ %i.ik, %.lr.ph.i.i269 ], [ %.01417.i.i271.unr, %.lr.ph.i.i269.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i272 = phi ptr [ %i.ij, %.lr.ph.i.i269 ], [ %.sroa.0.016.i.i272.unr, %.lr.ph.i.i269.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i271) ]
  %i.ib = load i32, ptr %.sroa.0.016.i.i272, align 4, !tbaa !65
  store i32 %i.ib, ptr %.01417.i.i271, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.016.i.i272, align 4, !tbaa !65
  %i.ic = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ie = getelementptr i8, ptr %.sroa.0.016.i.i272, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.01417.i.i271, i64 4
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !65
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !65
  store i32 0, ptr %i.ie, align 4, !tbaa !65
  %i.ih = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ij = getelementptr i8, ptr %.sroa.0.016.i.i272, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01417.i.i271, i64 8
  %i.il = add i64 %.018.i.i270, -2                ; 2 uses
  %.not.i.i273.1 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i273.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275, label %.lr.ph.i.i269, !llvm.loop !20

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275: ; preds = %.lr.ph.i.i269, %.lr.ph.i.i269.prol.loopexit
  %.lcssa735 = phi ptr [ %.lcssa735.unr, %.lr.ph.i.i269.prol.loopexit ], [ %i.ij, %.lr.ph.i.i269 ] ; 13 uses
  br i1 %i.dj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275
  br i1 %.not16.i260, label %.critedge, label %.lr.ph.i.i278.preheader

.lr.ph.i.i278.preheader:                          ; preds = %bb.k
  %min.iters.check632 = icmp ult i64 %i.f, 16
  br i1 %min.iters.check632, label %.lr.ph.i.i278.preheader729, label %vector.memcheck625

vector.memcheck625:                               ; preds = %.lr.ph.i.i278.preheader
  %i.im = ptrtoaddr ptr %.lcssa735 to i64
  %reass.sub724 = sub i64 %i.im, %i.a
  %i.in = getelementptr i8, ptr %5, i64 %reass.sub724
  %scevgep627 = getelementptr i8, ptr %i.in, i64 %i.e
  %bound0628 = icmp ult ptr %0, %scevgep627
  %bound1629 = icmp ult ptr %.lcssa735, %3
  %found.conflict630 = and i1 %bound0628, %bound1629
  br i1 %found.conflict630, label %.lr.ph.i.i278.preheader729, label %vector.ph633

vector.ph633:                                     ; preds = %vector.memcheck625
  %n.vec634 = and i64 %i.f, -8                    ; 3 uses
  %i.io = and i64 %i.f, 7
  %i.ip = shl nsw i64 %n.vec634, 2                ; 2 uses
  %i.iq = getelementptr i8, ptr %0, i64 %i.ip
  %i.ir = getelementptr i8, ptr %.lcssa735, i64 %i.ip ; 2 uses
  br label %vector.body635

vector.body635:                                   ; preds = %vector.body635, %vector.ph633
  %index636 = phi i64 [ 0, %vector.ph633 ], [ %index.next641, %vector.body635 ] ; 2 uses
  %i.is = shl i64 %index636, 2                    ; 2 uses
  %next.gep637 = getelementptr i8, ptr %0, i64 %i.is ; 2 uses
  %next.gep638 = getelementptr i8, ptr %.lcssa735, i64 %i.is ; 3 uses
  %i.it = getelementptr i8, ptr %next.gep638, i64 16 ; 2 uses
  %wide.load639 = load <4 x i32>, ptr %next.gep638, align 4, !tbaa !65, !alias.scope !1544
  %wide.load640 = load <4 x i32>, ptr %i.it, align 4, !tbaa !65, !alias.scope !1544
  %i.iu = getelementptr i8, ptr %next.gep637, i64 16
  store <4 x i32> %wide.load639, ptr %next.gep637, align 4, !tbaa !65, !alias.scope !1545, !noalias !1544
  store <4 x i32> %wide.load640, ptr %i.iu, align 4, !tbaa !65, !alias.scope !1545, !noalias !1544
  store <4 x i32> zeroinitializer, ptr %next.gep638, align 4, !tbaa !65, !alias.scope !1544
  store <4 x i32> zeroinitializer, ptr %i.it, align 4, !tbaa !65, !alias.scope !1544
  %index.next641 = add nuw i64 %index636, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next641, %n.vec634
  br i1 %i.iv, label %middle.block642, label %vector.body635, !llvm.loop !1505

middle.block642:                                  ; preds = %vector.body635
  %cmp.n643 = icmp eq i64 %i.f, %n.vec634
  br i1 %cmp.n643, label %.critedge, label %.lr.ph.i.i278.preheader729

.lr.ph.i.i278.preheader729:                       ; preds = %vector.memcheck625, %.lr.ph.i.i278.preheader, %middle.block642
  %.09.i.i279.ph = phi i64 [ %i.f, %vector.memcheck625 ], [ %i.f, %.lr.ph.i.i278.preheader ], [ %i.io, %middle.block642 ] ; 4 uses
  %.048.i.i280.ph = phi ptr [ %0, %vector.memcheck625 ], [ %0, %.lr.ph.i.i278.preheader ], [ %i.iq, %middle.block642 ] ; 2 uses
  %.sroa.0.07.i.i281.ph = phi ptr [ %.lcssa735, %vector.memcheck625 ], [ %.lcssa735, %.lr.ph.i.i278.preheader ], [ %i.ir, %middle.block642 ] ; 2 uses
  %i.iw = add nsw i64 %.09.i.i279.ph, -1
  %xtraiter766.a = and i64 %.09.i.i279.ph, 3      ; 2 uses
  %lcmp.mod767.not.a = icmp eq i64 %xtraiter766.a, 0
  br i1 %lcmp.mod767.not.a, label %.lr.ph.i.i278.prol.loopexit, label %.lr.ph.i.i278.prol

.lr.ph.i.i278.prol:                               ; preds = %.lr.ph.i.i278.preheader729, %.lr.ph.i.i278.prol
  %.09.i.i279.prol = phi i64 [ %i.ix, %.lr.ph.i.i278.prol ], [ %.09.i.i279.ph, %.lr.ph.i.i278.preheader729 ]
  %.048.i.i280.prol = phi ptr [ %i.ja, %.lr.ph.i.i278.prol ], [ %.048.i.i280.ph, %.lr.ph.i.i278.preheader729 ] ; 2 uses
  %.sroa.0.07.i.i281.prol = phi ptr [ %i.iz, %.lr.ph.i.i278.prol ], [ %.sroa.0.07.i.i281.ph, %.lr.ph.i.i278.preheader729 ] ; 3 uses
  %prol.iter768.a = phi i64 [ %prol.iter768.next.a, %.lr.ph.i.i278.prol ], [ 0, %.lr.ph.i.i278.preheader729 ]
  %i.ix = add i64 %.09.i.i279.prol, -1            ; 2 uses
  %i.iy = load i32, ptr %.sroa.0.07.i.i281.prol, align 4, !tbaa !65
  store i32 %i.iy, ptr %.048.i.i280.prol, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i281.prol, align 4, !tbaa !65
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281.prol, i64 4 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.048.i.i280.prol, i64 4 ; 2 uses
  %prol.iter768.next.a = add i64 %prol.iter768.a, 1 ; 2 uses
  %prol.iter768.cmp.not.a = icmp eq i64 %prol.iter768.next.a, %xtraiter766.a
  br i1 %prol.iter768.cmp.not.a, label %.lr.ph.i.i278.prol.loopexit, label %.lr.ph.i.i278.prol, !llvm.loop !1506

.lr.ph.i.i278.prol.loopexit:                      ; preds = %.lr.ph.i.i278.prol, %.lr.ph.i.i278.preheader729
  %.lcssa730.unr = phi ptr [ poison, %.lr.ph.i.i278.preheader729 ], [ %i.iz, %.lr.ph.i.i278.prol ]
  %.09.i.i279.unr = phi i64 [ %.09.i.i279.ph, %.lr.ph.i.i278.preheader729 ], [ %i.ix, %.lr.ph.i.i278.prol ]
  %.048.i.i280.unr = phi ptr [ %.048.i.i280.ph, %.lr.ph.i.i278.preheader729 ], [ %i.ja, %.lr.ph.i.i278.prol ]
  %.sroa.0.07.i.i281.unr = phi ptr [ %.sroa.0.07.i.i281.ph, %.lr.ph.i.i278.preheader729 ], [ %i.iz, %.lr.ph.i.i278.prol ]
  %i.jb = icmp ult i64 %i.iw, 3
  br i1 %i.jb, label %.critedge, label %.lr.ph.i.i278

.lr.ph.i.i278:                                    ; preds = %.lr.ph.i.i278.prol.loopexit, %.lr.ph.i.i278
  %.09.i.i279 = phi i64 [ %i.jl, %.lr.ph.i.i278 ], [ %.09.i.i279.unr, %.lr.ph.i.i278.prol.loopexit ]
  %.048.i.i280 = phi ptr [ %i.jo, %.lr.ph.i.i278 ], [ %.048.i.i280.unr, %.lr.ph.i.i278.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i281 = phi ptr [ %i.jn, %.lr.ph.i.i278 ], [ %.sroa.0.07.i.i281.unr, %.lr.ph.i.i278.prol.loopexit ] ; 6 uses
  %i.jc = load i32, ptr %.sroa.0.07.i.i281, align 4, !tbaa !65
  store i32 %i.jc, ptr %.048.i.i280, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i281, align 4, !tbaa !65
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 4 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 4
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !65
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !65
  store i32 0, ptr %i.jd, align 4, !tbaa !65
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 8
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !65
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !65
  store i32 0, ptr %i.jg, align 4, !tbaa !65
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 12 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 12
  %i.jl = add i64 %.09.i.i279, -4                 ; 2 uses
  %i.jm = load i32, ptr %i.jj, align 4, !tbaa !65
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !65
  store i32 0, ptr %i.jj, align 4, !tbaa !65
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i281, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.048.i.i280, i64 16
  %.not.i.i282.3 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i282.3, label %.critedge, label %.lr.ph.i.i278, !llvm.loop !1507

bb.l:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit275
  %i.jp = sub i64 %4, %i.ht                       ; 9 uses
  %.not6.i.i286 = icmp eq i64 %i.jp, 0
  br i1 %.not6.i.i286, label %.loopexit411, label %.lr.ph.i.i287.preheader

.lr.ph.i.i287.preheader:                          ; preds = %bb.l
  %min.iters.check585 = icmp ult i64 %i.jp, 20
  br i1 %min.iters.check585, label %.lr.ph.i.i287.preheader734, label %vector.memcheck579

vector.memcheck579:                               ; preds = %.lr.ph.i.i287.preheader
  %i.jq = shl i64 %i.j, 2                         ; 2 uses
  %i.jr = sub i64 %i.jq, %i.h
  %scevgep = getelementptr i8, ptr %0, i64 %i.jr
  %i.js = add i64 %i.jq, 4
  %i.jt = sub i64 %i.js, %i.h
  %i.ju = ptrtoaddr ptr %.lcssa735 to i64
  %reass.sub = sub i64 %i.ju, %i.a
  %i.jv = getelementptr i8, ptr %5, i64 %i.jt
  %i.jw = getelementptr i8, ptr %i.jv, i64 %reass.sub
  %scevgep580 = getelementptr i8, ptr %i.jw, i64 -4
  %bound0581 = icmp ult ptr %0, %scevgep580
  %bound1582 = icmp ult ptr %.lcssa735, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  br i1 %found.conflict583, label %.lr.ph.i.i287.preheader734, label %vector.ph586

vector.ph586:                                     ; preds = %vector.memcheck579
  %n.vec587 = and i64 %i.jp, -8                   ; 3 uses
  %i.jx = and i64 %i.jp, 7
  %i.jy = shl i64 %n.vec587, 2                    ; 2 uses
  %i.jz = getelementptr i8, ptr %0, i64 %i.jy
  %i.ka = getelementptr i8, ptr %.lcssa735, i64 %i.jy
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph586
  %index589 = phi i64 [ 0, %vector.ph586 ], [ %index.next594, %vector.body588 ] ; 2 uses
  %i.kb = shl i64 %index589, 2                    ; 2 uses
  %next.gep590 = getelementptr i8, ptr %0, i64 %i.kb ; 2 uses
  %next.gep591 = getelementptr i8, ptr %.lcssa735, i64 %i.kb ; 3 uses
  %i.kc = getelementptr i8, ptr %next.gep591, i64 16 ; 2 uses
  %wide.load592 = load <4 x i32>, ptr %next.gep591, align 4, !tbaa !65, !alias.scope !1546
  %wide.load593 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !65, !alias.scope !1546
  %i.kd = getelementptr i8, ptr %next.gep590, i64 16
  store <4 x i32> %wide.load592, ptr %next.gep590, align 4, !tbaa !65, !alias.scope !1547, !noalias !1546
  store <4 x i32> %wide.load593, ptr %i.kd, align 4, !tbaa !65, !alias.scope !1547, !noalias !1546
  store <4 x i32> zeroinitializer, ptr %next.gep591, align 4, !tbaa !65, !alias.scope !1546
  store <4 x i32> zeroinitializer, ptr %i.kc, align 4, !tbaa !65, !alias.scope !1546
  %index.next594 = add nuw i64 %index589, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next594, %n.vec587
  br i1 %i.ke, label %middle.block595, label %vector.body588, !llvm.loop !1511

middle.block595:                                  ; preds = %vector.body588
  %cmp.n596 = icmp eq i64 %i.jp, %n.vec587
  br i1 %cmp.n596, label %.loopexit411, label %.lr.ph.i.i287.preheader734

.lr.ph.i.i287.preheader734:                       ; preds = %vector.memcheck579, %.lr.ph.i.i287.preheader, %middle.block595
  %.09.i.i288.ph = phi i64 [ %i.jp, %vector.memcheck579 ], [ %i.jp, %.lr.ph.i.i287.preheader ], [ %i.jx, %middle.block595 ] ; 4 uses
  %.048.i.i289.ph = phi ptr [ %0, %vector.memcheck579 ], [ %0, %.lr.ph.i.i287.preheader ], [ %i.jz, %middle.block595 ] ; 2 uses
  %.sroa.0.07.i.i290.ph = phi ptr [ %.lcssa735, %vector.memcheck579 ], [ %.lcssa735, %.lr.ph.i.i287.preheader ], [ %i.ka, %middle.block595 ] ; 2 uses
  %i.kf = add i64 %.09.i.i288.ph, -1
  %xtraiter763 = and i64 %.09.i.i288.ph, 3        ; 2 uses
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %.lr.ph.i.i287.prol.loopexit, label %.lr.ph.i.i287.prol

.lr.ph.i.i287.prol:                               ; preds = %.lr.ph.i.i287.preheader734, %.lr.ph.i.i287.prol
  %.09.i.i288.prol = phi i64 [ %i.kg, %.lr.ph.i.i287.prol ], [ %.09.i.i288.ph, %.lr.ph.i.i287.preheader734 ]
  %.048.i.i289.prol = phi ptr [ %i.kj, %.lr.ph.i.i287.prol ], [ %.048.i.i289.ph, %.lr.ph.i.i287.preheader734 ] ; 2 uses
  %.sroa.0.07.i.i290.prol = phi ptr [ %i.ki, %.lr.ph.i.i287.prol ], [ %.sroa.0.07.i.i290.ph, %.lr.ph.i.i287.preheader734 ] ; 3 uses
  %prol.iter765 = phi i64 [ %prol.iter765.next, %.lr.ph.i.i287.prol ], [ 0, %.lr.ph.i.i287.preheader734 ]
  %i.kg = add i64 %.09.i.i288.prol, -1            ; 2 uses
  %i.kh = load i32, ptr %.sroa.0.07.i.i290.prol, align 4, !tbaa !65
  store i32 %i.kh, ptr %.048.i.i289.prol, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i290.prol, align 4, !tbaa !65
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290.prol, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.048.i.i289.prol, i64 4 ; 2 uses
  %prol.iter765.next = add i64 %prol.iter765, 1   ; 2 uses
  %prol.iter765.cmp.not = icmp eq i64 %prol.iter765.next, %xtraiter763
  br i1 %prol.iter765.cmp.not, label %.lr.ph.i.i287.prol.loopexit, label %.lr.ph.i.i287.prol, !llvm.loop !1512

.lr.ph.i.i287.prol.loopexit:                      ; preds = %.lr.ph.i.i287.prol, %.lr.ph.i.i287.preheader734
  %.09.i.i288.unr = phi i64 [ %.09.i.i288.ph, %.lr.ph.i.i287.preheader734 ], [ %i.kg, %.lr.ph.i.i287.prol ]
  %.048.i.i289.unr = phi ptr [ %.048.i.i289.ph, %.lr.ph.i.i287.preheader734 ], [ %i.kj, %.lr.ph.i.i287.prol ]
  %.sroa.0.07.i.i290.unr = phi ptr [ %.sroa.0.07.i.i290.ph, %.lr.ph.i.i287.preheader734 ], [ %i.ki, %.lr.ph.i.i287.prol ]
  %i.kk = icmp ult i64 %i.kf, 3
  br i1 %i.kk, label %.loopexit411, label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %.lr.ph.i.i287.prol.loopexit, %.lr.ph.i.i287
  %.09.i.i288 = phi i64 [ %i.ku, %.lr.ph.i.i287 ], [ %.09.i.i288.unr, %.lr.ph.i.i287.prol.loopexit ]
  %.048.i.i289 = phi ptr [ %i.kx, %.lr.ph.i.i287 ], [ %.048.i.i289.unr, %.lr.ph.i.i287.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i290 = phi ptr [ %i.kw, %.lr.ph.i.i287 ], [ %.sroa.0.07.i.i290.unr, %.lr.ph.i.i287.prol.loopexit ] ; 6 uses
  %i.kl = load i32, ptr %.sroa.0.07.i.i290, align 4, !tbaa !65
  store i32 %i.kl, ptr %.048.i.i289, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i290, align 4, !tbaa !65
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 4 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 4
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !65
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !65
  store i32 0, ptr %i.km, align 4, !tbaa !65
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 8
  %i.kr = load i32, ptr %i.kp, align 4, !tbaa !65
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !65
  store i32 0, ptr %i.kp, align 4, !tbaa !65
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 12 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 12
  %i.ku = add i64 %.09.i.i288, -4                 ; 2 uses
  %i.kv = load i32, ptr %i.ks, align 4, !tbaa !65
end_hunk_0
