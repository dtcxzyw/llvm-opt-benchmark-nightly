Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2069
begin_hunk_0_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIS6_St6vectorIS4_SaIS4_EEEEEEEEvT0_mSG_SG_mT1_RT_:bb.a
  %i.gc = sub nsw i64 %i.i, %i.l
  %i.gd = icmp ugt i64 %i.gc, -4
  br i1 %i.gd, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %.018.i.i170 = phi i64 [ %i.gv, %.lr.ph.i.i169 ], [ %.018.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ]
  %.01417.i.i171 = phi ptr [ %i.gu, %.lr.ph.i.i169 ], [ %.01417.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i172 = phi ptr [ %i.gt, %.lr.ph.i.i169 ], [ %.sroa.0.016.i.i172.unr, %.lr.ph.i.i169.prol.loopexit ] ; 5 uses
  %i.ge = load i32, ptr %.sroa.0.016.i.i172, align 4, !tbaa !318
  store i32 %i.ge, ptr %.01417.i.i171, align 4, !tbaa !318
  %i.gf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 4
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !318
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !318
  %i.gk = add i32 %i.gf, 2
  store i32 %i.gk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 8
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !318
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !318
  %i.go = add i32 %i.gf, 3
  store i32 %i.go, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 12
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !318
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !318
  %i.gs = add i32 %i.gf, 4
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 16
  %i.gv = add i64 %.018.i.i170, -4                ; 2 uses
  %.not.i.i173.3 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i173.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175, label %.lr.ph.i.i169, !llvm.loop !7

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175: ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.prol.loopexit
  %.not.i176 = icmp eq ptr %3, %i.ee
  br i1 %.not.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175
  %.not8.i.i177 = icmp eq ptr %0, %3
  br i1 %.not8.i.i177, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.g
  %i.gw = add i64 %i.g, -4
  %i.gx = sub i64 %i.gw, %i.b                     ; 2 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check395 = icmp ult i64 %i.gx, 92
  br i1 %min.iters.check395, label %.lr.ph.i.i178.preheader414, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.i.i178.preheader
  %i.ha = shl nsw i64 %1, 2
  %i.hb = add i64 %i.ha, %i.b
  %i.hc = sub i64 %i.g, %i.hb
  %.neg = shl i64 %i.ec, 2
  %i.hd = add i64 %.neg, %i.hc
  %i.he = add i64 %i.hd, -1
  %diff.check393 = icmp ult i64 %i.he, 31
  br i1 %diff.check393, label %.lr.ph.i.i178.preheader414, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hf = mul i64 %n.vec397, -4                   ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ee, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %3, i64 %i.hf
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.hi = mul i64 %index399, -4                   ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.ee, i64 %i.hi ; 2 uses
  %next.gep401 = getelementptr i8, ptr %3, i64 %i.hi ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %next.gep401, i64 -16
  %i.hk = getelementptr inbounds i8, ptr %next.gep401, i64 -32
  %wide.load402 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !318
  %wide.load403 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !318
  %i.hl = getelementptr inbounds i8, ptr %next.gep400, i64 -16
  %i.hm = getelementptr inbounds i8, ptr %next.gep400, i64 -32
  store <4 x i32> %wide.load402, ptr %i.hl, align 4, !tbaa !318
  store <4 x i32> %wide.load403, ptr %i.hm, align 4, !tbaa !318
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.hn, label %middle.block405, label %vector.body398, !llvm.loop !888

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.gz, %n.vec397
  br i1 %cmp.n406, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader414

.lr.ph.i.i178.preheader414:                       ; preds = %vector.memcheck392, %.lr.ph.i.i178.preheader, %middle.block405
  %.010.i.i179.ph = phi ptr [ %i.ee, %vector.memcheck392 ], [ %i.ee, %.lr.ph.i.i178.preheader ], [ %i.hg, %middle.block405 ]
  %.079.i.i180.ph = phi ptr [ %3, %vector.memcheck392 ], [ %3, %.lr.ph.i.i178.preheader ], [ %i.hh, %middle.block405 ]
  br label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.preheader414, %.lr.ph.i.i178
  %.010.i.i179 = phi ptr [ %i.hp, %.lr.ph.i.i178 ], [ %.010.i.i179.ph, %.lr.ph.i.i178.preheader414 ]
  %.079.i.i180 = phi ptr [ %i.ho, %.lr.ph.i.i178 ], [ %.079.i.i180.ph, %.lr.ph.i.i178.preheader414 ]
  %i.ho = getelementptr inbounds i8, ptr %.079.i.i180, i64 -4 ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %.010.i.i179, i64 -4 ; 3 uses
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !318
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !318
  %.not.i.i181 = icmp eq ptr %0, %i.ho
  br i1 %.not.i.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178, !llvm.loop !889

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182: ; preds = %.lr.ph.i.i178, %middle.block405, %bb.g
  %i.hr = phi ptr [ %i.ee, %bb.g ], [ %i.hg, %middle.block405 ], [ %i.hp, %.lr.ph.i.i178 ] ; 2 uses
  %.not3.i183 = icmp eq ptr %0, %i.hr
  br i1 %.not3.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %.lr.ph.i184
  %storemerge4.i185 = phi ptr [ %i.hu, %.lr.ph.i184 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i185, align 4, !tbaa !318
  %i.hs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ht = add i32 %i.hs, -1
  store i32 %i.ht, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hu = getelementptr inbounds nuw i8, ptr %storemerge4.i185, i64 4 ; 2 uses
  %.not.i186 = icmp eq ptr %i.hu, %i.hr
  br i1 %.not.i186, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i184, !llvm.loop !10

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.hv = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i196 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i196, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %bb.h
  %xtraiter432 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %.020.i198.prol = phi i64 [ %i.hw, %.lr.ph.i197.prol ], [ %i.l, %.lr.ph.i197.preheader ]
  %.0819.i199.prol = phi ptr [ %i.ia, %.lr.ph.i197.prol ], [ %i.hv, %.lr.ph.i197.preheader ] ; 2 uses
  %.01618.i200.prol = phi ptr [ %i.ib, %.lr.ph.i197.prol ], [ %i.c, %.lr.ph.i197.preheader ] ; 2 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %i.hw = add i64 %.020.i198.prol, -1             ; 2 uses
  %i.hx = load i32, ptr %.0819.i199.prol, align 4, !tbaa !318
  store i32 %i.hx, ptr %.01618.i200.prol, align 4, !tbaa !318
  %i.hy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ia = getelementptr inbounds nuw i8, ptr %.0819.i199.prol, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01618.i200.prol, i64 4 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !890

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %.020.i198.unr = phi i64 [ %i.l, %.lr.ph.i197.preheader ], [ %i.hw, %.lr.ph.i197.prol ]
  %.0819.i199.unr = phi ptr [ %i.hv, %.lr.ph.i197.preheader ], [ %i.ia, %.lr.ph.i197.prol ]
  %.01618.i200.unr = phi ptr [ %i.c, %.lr.ph.i197.preheader ], [ %i.ib, %.lr.ph.i197.prol ]
  %i.ic = icmp ult i64 %i.l, 4
  br i1 %i.ic, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %.020.i198 = phi i64 [ %i.iq, %.lr.ph.i197 ], [ %.020.i198.unr, %.lr.ph.i197.prol.loopexit ]
  %.0819.i199 = phi ptr [ %i.it, %.lr.ph.i197 ], [ %.0819.i199.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %.01618.i200 = phi ptr [ %i.iu, %.lr.ph.i197 ], [ %.01618.i200.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %i.id = load i32, ptr %.0819.i199, align 4, !tbaa !318
  store i32 %i.id, ptr %.01618.i200, align 4, !tbaa !318
  %i.ie = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ig = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 4
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !318
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !318
  %i.ij = add i32 %i.ie, 2
  store i32 %i.ij, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ik = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 8
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !318
  store i32 %i.im, ptr %i.il, align 4, !tbaa !318
  %i.in = add i32 %i.ie, 3
  store i32 %i.in, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.io = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 12
  %i.ip = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 12
  %i.iq = add i64 %.020.i198, -4                  ; 2 uses
  %i.ir = load i32, ptr %i.io, align 4, !tbaa !318
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !318
  %i.is = add i32 %i.ie, 4
  store i32 %i.is, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.it = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 16
  %.not.i201.3 = icmp eq i64 %i.iq, 0
  br i1 %.not.i201.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197, !llvm.loop !8

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203: ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %.not8.i.i205 = icmp eq ptr %3, %i.hv
  br i1 %.not8.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader

.lr.ph.i.i206.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.iv = shl nsw i64 %1, 2
  %i.iw = shl i64 %i.b, 1
  %i.ix = ptrtoaddr ptr %2 to i64
  %i.iy = shl i64 %4, 2
  %i.iz = add i64 %i.iv, %i.iw
  %i.ja = add i64 %i.iz, -4
  %i.jb = add i64 %i.ix, %i.g
  %i.jc = add i64 %i.jb, %i.iy
  %i.jd = sub i64 %i.ja, %i.jc                    ; 2 uses
  %i.je = lshr i64 %i.jd, 2
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.jd, 28
  %diff.check323 = icmp ugt i64 %i.k, -32
  %or.cond410 = or i1 %min.iters.check325, %diff.check323
  br i1 %or.cond410, label %.lr.ph.i.i206.preheader421, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i206.preheader
  %n.vec327 = and i64 %i.jf, 9223372036854775800  ; 3 uses
  %i.jg = mul i64 %n.vec327, -4                   ; 2 uses
  %i.jh = getelementptr i8, ptr %i.c, i64 %i.jg   ; 2 uses
  %i.ji = getelementptr i8, ptr %i.hv, i64 %i.jg
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.jj = mul i64 %index329, -4                   ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.c, i64 %i.jj ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.hv, i64 %i.jj ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.jl = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  %wide.load332 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !318
  %wide.load333 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !318
  %i.jm = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.jn = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  store <4 x i32> %wide.load332, ptr %i.jm, align 4, !tbaa !318
  store <4 x i32> %wide.load333, ptr %i.jn, align 4, !tbaa !318
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.jo, label %middle.block335, label %vector.body328, !llvm.loop !891

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.jf, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader421

.lr.ph.i.i206.preheader421:                       ; preds = %.lr.ph.i.i206.preheader, %middle.block335
  %.010.i.i207.ph = phi ptr [ %i.c, %.lr.ph.i.i206.preheader ], [ %i.jh, %middle.block335 ]
  %.079.i.i208.ph = phi ptr [ %i.hv, %.lr.ph.i.i206.preheader ], [ %i.ji, %middle.block335 ]
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206.preheader421, %.lr.ph.i.i206
  %.010.i.i207 = phi ptr [ %i.jq, %.lr.ph.i.i206 ], [ %.010.i.i207.ph, %.lr.ph.i.i206.preheader421 ]
  %.079.i.i208 = phi ptr [ %i.jp, %.lr.ph.i.i206 ], [ %.079.i.i208.ph, %.lr.ph.i.i206.preheader421 ]
  %i.jp = getelementptr inbounds i8, ptr %.079.i.i208, i64 -4 ; 3 uses
  %i.jq = getelementptr inbounds i8, ptr %.010.i.i207, i64 -4 ; 3 uses
  %i.jr = load i32, ptr %i.jp, align 4, !tbaa !318
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !318
  %.not.i.i209 = icmp eq ptr %3, %i.jp
  br i1 %.not.i.i209, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206, !llvm.loop !892

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210: ; preds = %.lr.ph.i.i206, %middle.block335, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.js = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203 ], [ %i.jh, %middle.block335 ], [ %i.jq, %.lr.ph.i.i206 ] ; 2 uses
  %i.jt = ptrtoaddr ptr %i.js to i64              ; 2 uses
  %i.ju = sub i64 0, %4
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ju ; 10 uses
  %.not6.i.i212 = icmp eq i64 %4, 0
  br i1 %.not6.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210
  %min.iters.check342 = icmp ult i64 %4, 16
  br i1 %min.iters.check342, label %.lr.ph.i.i213.preheader420, label %vector.memcheck339

vector.memcheck339:                               ; preds = %.lr.ph.i.i213.preheader
  %i.jw = shl i64 %4, 2
  %i.jx = add i64 %i.jw, %i.a
  %i.jy = sub i64 %i.jx, %i.jt
  %diff.check340 = icmp ugt i64 %i.jy, -32
  br i1 %diff.check340, label %.lr.ph.i.i213.preheader420, label %vector.ph343

vector.ph343:                                     ; preds = %vector.memcheck339
  %n.vec344 = and i64 %4, -8                      ; 3 uses
  %i.jz = and i64 %4, 7
  %i.ka = shl i64 %n.vec344, 2                    ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jv, i64 %i.ka
  %i.kc = getelementptr i8, ptr %5, i64 %i.ka
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph343
  %index346 = phi i64 [ 0, %vector.ph343 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %i.kd = shl i64 %index346, 2                    ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.jv, i64 %i.kd ; 2 uses
  %next.gep348 = getelementptr i8, ptr %5, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep348, i64 16
  %wide.load349 = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !318
  %wide.load350 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !318
  %i.kf = getelementptr i8, ptr %next.gep347, i64 16
  store <4 x i32> %wide.load349, ptr %next.gep347, align 4, !tbaa !318
  store <4 x i32> %wide.load350, ptr %i.kf, align 4, !tbaa !318
  %index.next351 = add nuw i64 %index346, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next351, %n.vec344
  br i1 %i.kg, label %middle.block352, label %vector.body345, !llvm.loop !893

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %4, %n.vec344
  br i1 %cmp.n353, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader420

.lr.ph.i.i213.preheader420:                       ; preds = %vector.memcheck339, %.lr.ph.i.i213.preheader, %middle.block352
  %.09.i.i214.ph = phi i64 [ %4, %vector.memcheck339 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.jz, %middle.block352 ] ; 4 uses
  %.048.i.i215.ph = phi ptr [ %i.jv, %vector.memcheck339 ], [ %i.jv, %.lr.ph.i.i213.preheader ], [ %i.kb, %middle.block352 ] ; 2 uses
  %.sroa.0.07.i.i216.ph = phi ptr [ %5, %vector.memcheck339 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.kc, %middle.block352 ] ; 2 uses
  %i.kh = add i64 %.09.i.i214.ph, -1
  %xtraiter435 = and i64 %.09.i.i214.ph, 7        ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader420, %.lr.ph.i.i213.prol
  %.09.i.i214.prol = phi i64 [ %i.ki, %.lr.ph.i.i213.prol ], [ %.09.i.i214.ph, %.lr.ph.i.i213.preheader420 ]
  %.048.i.i215.prol = phi ptr [ %i.kl, %.lr.ph.i.i213.prol ], [ %.048.i.i215.ph, %.lr.ph.i.i213.preheader420 ] ; 2 uses
  %.sroa.0.07.i.i216.prol = phi ptr [ %i.kk, %.lr.ph.i.i213.prol ], [ %.sroa.0.07.i.i216.ph, %.lr.ph.i.i213.preheader420 ] ; 2 uses
  %prol.iter437 = phi i64 [ %prol.iter437.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader420 ]
  %i.ki = add i64 %.09.i.i214.prol, -1            ; 2 uses
  %i.kj = load i32, ptr %.sroa.0.07.i.i216.prol, align 4, !tbaa !318
  store i32 %i.kj, ptr %.048.i.i215.prol, align 4, !tbaa !318
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216.prol, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.048.i.i215.prol, i64 4 ; 2 uses
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !894

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader420
  %.09.i.i214.unr = phi i64 [ %.09.i.i214.ph, %.lr.ph.i.i213.preheader420 ], [ %i.ki, %.lr.ph.i.i213.prol ]
  %.048.i.i215.unr = phi ptr [ %.048.i.i215.ph, %.lr.ph.i.i213.preheader420 ], [ %i.kl, %.lr.ph.i.i213.prol ]
  %.sroa.0.07.i.i216.unr = phi ptr [ %.sroa.0.07.i.i216.ph, %.lr.ph.i.i213.preheader420 ], [ %i.kk, %.lr.ph.i.i213.prol ]
  %i.km = icmp ult i64 %i.kh, 7
  br i1 %i.km, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.09.i.i214 = phi i64 [ %i.li, %.lr.ph.i.i213 ], [ %.09.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.048.i.i215 = phi ptr [ %i.ll, %.lr.ph.i.i213 ], [ %.048.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i216 = phi ptr [ %i.lk, %.lr.ph.i.i213 ], [ %.sroa.0.07.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.kn = load i32, ptr %.sroa.0.07.i.i216, align 4, !tbaa !318
  store i32 %i.kn, ptr %.048.i.i215, align 4, !tbaa !318
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 4
  %i.kq = load i32, ptr %i.ko, align 4, !tbaa !318
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !318
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 8
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !318
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !318
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 12
  %i.kv = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 12
  %i.kw = load i32, ptr %i.ku, align 4, !tbaa !318
  store i32 %i.kw, ptr %i.kv, align 4, !tbaa !318
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 16
  %i.kz = load i32, ptr %i.kx, align 4, !tbaa !318
  store i32 %i.kz, ptr %i.ky, align 4, !tbaa !318
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 20
  %i.lc = load i32, ptr %i.la, align 4, !tbaa !318
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !318
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 24
  %i.le = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 24
  %i.lf = load i32, ptr %i.ld, align 4, !tbaa !318
  store i32 %i.lf, ptr %i.le, align 4, !tbaa !318
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 28
  %i.lh = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 28
  %i.li = add i64 %.09.i.i214, -8                 ; 2 uses
  %i.lj = load i32, ptr %i.lg, align 4, !tbaa !318
  store i32 %i.lj, ptr %i.lh, align 4, !tbaa !318
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.li, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !895

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block352, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210
  %.not.i220 = icmp eq ptr %3, %i.jv
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.lm = add i64 %i.g, -4
  %i.ln = sub i64 %i.lm, %i.b                     ; 2 uses
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check360 = icmp ult i64 %i.ln, 76
  br i1 %min.iters.check360, label %.lr.ph.i.i222.preheader418, label %vector.memcheck357

vector.memcheck357:                               ; preds = %.lr.ph.i.i222.preheader
  %i.lq = shl i64 %4, 2
  %i.lr = add i64 %i.lq, %i.g
  %i.ls = sub i64 %i.jt, %i.lr
  %diff.check358 = icmp ugt i64 %i.ls, -32
  br i1 %diff.check358, label %.lr.ph.i.i222.preheader418, label %vector.ph361

vector.ph361:                                     ; preds = %vector.memcheck357
  %n.vec362 = and i64 %i.lp, 9223372036854775800  ; 3 uses
  %i.lt = mul i64 %n.vec362, -4                   ; 2 uses
  %i.lu = getelementptr i8, ptr %i.jv, i64 %i.lt  ; 2 uses
  %i.lv = getelementptr i8, ptr %3, i64 %i.lt
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph361
  %index364 = phi i64 [ 0, %vector.ph361 ], [ %index.next369, %vector.body363 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEEvT0_mSF_SF_mT1_RT_:bb.a
  store i32 %i.hc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !5987
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gy
  br i1 %i.he, label %bb.n, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180

bb.n:                                             ; preds = %.lr.ph.i.i175
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i176, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !259, !noalias !5987 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180: ; preds = %bb.n, %.lr.ph.i.i175
  %.sroa.11.1.i181 = phi ptr [ %i.hf, %bb.n ], [ %.sroa.11.0.i176, %.lr.ph.i.i175 ] ; 2 uses
  %i.hi = phi ptr [ %i.hh, %bb.n ], [ %i.gy, %.lr.ph.i.i175 ] ; 2 uses
  %i.hj = phi ptr [ %i.hg, %bb.n ], [ %i.hd, %.lr.ph.i.i175 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.01214.i.i179, i64 4
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !247, !noalias !5987
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !355, !noalias !5987
  %i.hm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !5987
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247, !noalias !5987
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hi
  br i1 %i.hp, label %bb.o, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1

bb.o:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i181, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !259, !noalias !5987 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1: ; preds = %bb.o, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180
  %.sroa.11.1.i181.1 = phi ptr [ %i.hq, %bb.o ], [ %.sroa.11.1.i181, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180 ]
  %i.ht = phi ptr [ %i.hs, %bb.o ], [ %i.hi, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180 ]
  %i.hu = phi ptr [ %i.hr, %bb.o ], [ %i.ho, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.01214.i.i179, i64 8
  %i.hw = add i64 %.015.i.i178, -2                ; 2 uses
  %.not.i.i183.1 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i183.1, label %.loopexit, label %.lr.ph.i.i175, !llvm.loop !132

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1, %.lr.ph.i.i175.prol.loopexit
  %.not.i187 = icmp eq ptr %3, %i.eu
  br i1 %.not.i187, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not8.i.i188 = icmp eq ptr %0, %3
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %bb.p
  %i.hx = ptrtoaddr ptr %0 to i64
  %i.hy = add i64 %i.e, -4
  %i.hz = sub i64 %i.hy, %i.hx                    ; 3 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.hz, 124
  br i1 %min.iters.check418, label %.lr.ph.i.i189.preheader436, label %vector.memcheck419

vector.memcheck419:                               ; preds = %.lr.ph.i.i189.preheader
  %i.ic = and i64 %i.hz, -4                       ; 2 uses
  %i.id = sub i64 %1, %i.es
  %i.ie = shl i64 %i.id, 2
  %i.if = add i64 %i.ie, -4
  %i.ig = sub i64 %i.if, %i.ic
  %i.ih = getelementptr i8, ptr %0, i64 %i.ig
  %i.ii = sub nuw nsw i64 -4, %i.ic
  %i.ij = getelementptr i8, ptr %3, i64 %i.ii
  %bound0420 = icmp ult ptr %i.ih, %3
  %bound1421 = icmp ult ptr %i.ij, %i.eu
  %found.conflict422 = and i1 %bound0420, %bound1421
  br i1 %found.conflict422, label %.lr.ph.i.i189.preheader436, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck419
  %n.vec424 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.ik = mul i64 %n.vec424, -4                   ; 2 uses
  %i.il = getelementptr i8, ptr %i.eu, i64 %i.ik  ; 2 uses
  %i.im = getelementptr i8, ptr %3, i64 %i.ik
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next431, %vector.body425 ] ; 2 uses
  %i.in = mul i64 %index426, -4                   ; 2 uses
  %next.gep427 = getelementptr i8, ptr %i.eu, i64 %i.in ; 2 uses
  %next.gep428 = getelementptr i8, ptr %3, i64 %i.in ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %next.gep428, i64 -16 ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %next.gep428, i64 -32 ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %i.io, align 4, !tbaa !355, !alias.scope !5988
  %wide.load430 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !355, !alias.scope !5988
  %i.iq = getelementptr inbounds i8, ptr %next.gep427, i64 -16
  %i.ir = getelementptr inbounds i8, ptr %next.gep427, i64 -32
  store <4 x i32> %wide.load429, ptr %i.iq, align 4, !tbaa !355, !alias.scope !5989, !noalias !5988
  store <4 x i32> %wide.load430, ptr %i.ir, align 4, !tbaa !355, !alias.scope !5989, !noalias !5988
  store <4 x i32> zeroinitializer, ptr %i.io, align 4, !tbaa !355, !alias.scope !5988
  store <4 x i32> zeroinitializer, ptr %i.ip, align 4, !tbaa !355, !alias.scope !5988
  %index.next431 = add nuw i64 %index426, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.is, label %middle.block432, label %vector.body425, !llvm.loop !5969

middle.block432:                                  ; preds = %vector.body425
  %cmp.n433 = icmp eq i64 %i.ib, %n.vec424
  br i1 %cmp.n433, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader436

.lr.ph.i.i189.preheader436:                       ; preds = %vector.memcheck419, %.lr.ph.i.i189.preheader, %middle.block432
  %.010.i.i190.ph = phi ptr [ %i.eu, %vector.memcheck419 ], [ %i.eu, %.lr.ph.i.i189.preheader ], [ %i.il, %middle.block432 ]
  %.079.i.i191.ph = phi ptr [ %3, %vector.memcheck419 ], [ %3, %.lr.ph.i.i189.preheader ], [ %i.im, %middle.block432 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader436, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.iu, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader436 ]
  %.079.i.i191 = phi ptr [ %i.it, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader436 ]
  %i.it = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !355
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !355
  store i32 0, ptr %i.it, align 4, !tbaa !355
  %.not.i.i192 = icmp eq ptr %0, %i.it
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !5970

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block432, %bb.p
  %i.iw = phi ptr [ %i.eu, %bb.p ], [ %i.il, %middle.block432 ], [ %i.iu, %.lr.ph.i.i189 ] ; 2 uses
  %.not3.i194 = icmp eq ptr %0, %i.iw
  br i1 %.not3.i194, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit193, %.lr.ph.i195
  %storemerge4.i196 = phi ptr [ %i.iz, %.lr.ph.i195 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit193 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i196, align 4, !tbaa !355
  %i.ix = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.iy = add i32 %i.ix, -1
  store i32 %i.iy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge4.i196, i64 4 ; 2 uses
  %.not.i197 = icmp eq ptr %i.iz, %i.iw
  br i1 %.not.i197, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i195, !llvm.loop !135

bb.q:                                             ; preds = %bb.h
  %.idx = sub i64 0, %i.i
  %i.ja = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i207 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.q
  %i.jb = and i64 %i.i, 4
  %lcmp.mod455.not = icmp eq i64 %i.jb, 0
  br i1 %lcmp.mod455.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader
  %i.jc = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.jd = load i32, ptr %i.ja, align 4, !tbaa !355
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !355
  store i32 0, ptr %i.ja, align 4, !tbaa !355
  %i.je = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i208.prol.loopexit

.lr.ph.i208.prol.loopexit:                        ; preds = %.lr.ph.i208.prol, %.lr.ph.i208.preheader
  %.020.i209.unr = phi i64 [ %i.j, %.lr.ph.i208.preheader ], [ %i.jc, %.lr.ph.i208.prol ]
  %.0819.i210.unr = phi ptr [ %i.ja, %.lr.ph.i208.preheader ], [ %i.jg, %.lr.ph.i208.prol ]
  %.01618.i211.unr = phi ptr [ %i.a, %.lr.ph.i208.preheader ], [ %i.jh, %.lr.ph.i208.prol ]
  %i.ji = icmp eq i64 %i.i, 4
  br i1 %i.ji, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208
  %.020.i209 = phi i64 [ %i.jo, %.lr.ph.i208 ], [ %.020.i209.unr, %.lr.ph.i208.prol.loopexit ]
  %.0819.i210 = phi ptr [ %i.js, %.lr.ph.i208 ], [ %.0819.i210.unr, %.lr.ph.i208.prol.loopexit ] ; 4 uses
  %.01618.i211 = phi ptr [ %i.jt, %.lr.ph.i208 ], [ %.01618.i211.unr, %.lr.ph.i208.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i211) ]
  %i.jj = load i32, ptr %.0819.i210, align 4, !tbaa !355
  store i32 %i.jj, ptr %.01618.i211, align 4, !tbaa !355
  store i32 0, ptr %.0819.i210, align 4, !tbaa !355
  %i.jk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.jm = getelementptr inbounds nuw i8, ptr %.0819.i210, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.01618.i211, i64 4
  %i.jo = add i64 %.020.i209, -2                  ; 2 uses
  %i.jp = load i32, ptr %i.jm, align 4, !tbaa !355
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !355
  store i32 0, ptr %i.jm, align 4, !tbaa !355
  %i.jq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.jr = add i32 %i.jq, 1
  store i32 %i.jr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.js = getelementptr inbounds nuw i8, ptr %.0819.i210, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %.01618.i211, i64 8
  %.not.i212.1 = icmp eq i64 %i.jo, 0
  br i1 %.not.i212.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214, label %.lr.ph.i208, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214: ; preds = %.lr.ph.i208, %.lr.ph.i208.prol.loopexit
  %.not8.i.i216 = icmp eq ptr %3, %i.ja
  br i1 %.not8.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i.i217.preheader

.lr.ph.i.i217.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214
  %i.ju = shl nsw i64 %1, 2
  %i.jv = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.jw = shl i64 %i.jv, 1
  %i.jx = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.jy = shl i64 %4, 2
  %i.jz = add i64 %i.ju, %i.jw
  %i.ka = add i64 %i.jz, -4
  %i.kb = add i64 %i.jx, %i.e
  %i.kc = add i64 %i.kb, %i.jy
  %i.kd = sub i64 %i.ka, %i.kc                    ; 2 uses
  %i.ke = lshr i64 %i.kd, 2
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.kd, 188
  br i1 %min.iters.check370, label %.lr.ph.i.i217.preheader442, label %vector.memcheck371

vector.memcheck371:                               ; preds = %.lr.ph.i.i217.preheader
  %i.kg = shl nsw i64 %1, 2                       ; 3 uses
  %i.kh = shl i64 %i.jv, 1
  %i.ki = shl i64 %4, 2                           ; 2 uses
  %i.kj = add i64 %i.kg, %i.kh
  %i.kk = add i64 %i.kj, -4
  %i.kl = add i64 %i.jx, %i.e
  %i.km = add i64 %i.kl, %i.ki
  %i.kn = sub i64 %i.kk, %i.km
  %i.ko = and i64 %i.kn, -4                       ; 2 uses
  %i.kp = add i64 %i.kg, -4
  %i.kq = sub i64 %i.kp, %i.ko
  %i.kr = getelementptr i8, ptr %0, i64 %i.kq
  %i.ks = add i64 %i.kg, %i.jv
  %i.kt = add i64 %i.ks, -4
  %i.ku = add i64 %i.ki, %i.jx
  %i.kv = add i64 %i.ku, %i.ko
  %i.kw = sub i64 %i.kt, %i.kv
  %i.kx = getelementptr i8, ptr %0, i64 %i.kw
  %bound0372 = icmp ult ptr %i.kr, %i.ja
  %bound1373 = icmp ult ptr %i.kx, %i.a
  %found.conflict374 = and i1 %bound0372, %bound1373
  br i1 %found.conflict374, label %.lr.ph.i.i217.preheader442, label %vector.ph375

vector.ph375:                                     ; preds = %vector.memcheck371
  %n.vec376 = and i64 %i.kf, 9223372036854775800  ; 3 uses
  %i.ky = mul i64 %n.vec376, -4                   ; 2 uses
  %i.kz = getelementptr i8, ptr %i.a, i64 %i.ky   ; 2 uses
  %i.la = getelementptr i8, ptr %i.ja, i64 %i.ky
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next383, %vector.body377 ] ; 2 uses
  %i.lb = mul i64 %index378, -4                   ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.a, i64 %i.lb ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.ja, i64 %i.lb ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %next.gep380, i64 -16 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %next.gep380, i64 -32 ; 2 uses
  %wide.load381 = load <4 x i32>, ptr %i.lc, align 4, !tbaa !355, !alias.scope !5990
  %wide.load382 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !355, !alias.scope !5990
  %i.le = getelementptr inbounds i8, ptr %next.gep379, i64 -16
  %i.lf = getelementptr inbounds i8, ptr %next.gep379, i64 -32
  store <4 x i32> %wide.load381, ptr %i.le, align 4, !tbaa !355, !alias.scope !5991, !noalias !5990
  store <4 x i32> %wide.load382, ptr %i.lf, align 4, !tbaa !355, !alias.scope !5991, !noalias !5990
  store <4 x i32> zeroinitializer, ptr %i.lc, align 4, !tbaa !355, !alias.scope !5990
  store <4 x i32> zeroinitializer, ptr %i.ld, align 4, !tbaa !355, !alias.scope !5990
  %index.next383 = add nuw i64 %index378, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next383, %n.vec376
  br i1 %i.lg, label %middle.block384, label %vector.body377, !llvm.loop !5974

middle.block384:                                  ; preds = %vector.body377
  %cmp.n385 = icmp eq i64 %i.kf, %n.vec376
  br i1 %cmp.n385, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i.i217.preheader442

.lr.ph.i.i217.preheader442:                       ; preds = %vector.memcheck371, %.lr.ph.i.i217.preheader, %middle.block384
  %.010.i.i218.ph = phi ptr [ %i.a, %vector.memcheck371 ], [ %i.a, %.lr.ph.i.i217.preheader ], [ %i.kz, %middle.block384 ]
  %.079.i.i219.ph = phi ptr [ %i.ja, %vector.memcheck371 ], [ %i.ja, %.lr.ph.i.i217.preheader ], [ %i.la, %middle.block384 ]
  br label %.lr.ph.i.i217

.lr.ph.i.i217:                                    ; preds = %.lr.ph.i.i217.preheader442, %.lr.ph.i.i217
  %.010.i.i218 = phi ptr [ %i.li, %.lr.ph.i.i217 ], [ %.010.i.i218.ph, %.lr.ph.i.i217.preheader442 ]
  %.079.i.i219 = phi ptr [ %i.lh, %.lr.ph.i.i217 ], [ %.079.i.i219.ph, %.lr.ph.i.i217.preheader442 ]
  %i.lh = getelementptr inbounds i8, ptr %.079.i.i219, i64 -4 ; 4 uses
  %i.li = getelementptr inbounds i8, ptr %.010.i.i218, i64 -4 ; 3 uses
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !355
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !355
  store i32 0, ptr %i.lh, align 4, !tbaa !355
  %.not.i.i220 = icmp eq ptr %3, %i.lh
  br i1 %.not.i.i220, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i.i217, !llvm.loop !5975

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221: ; preds = %.lr.ph.i.i217, %middle.block384, %bb.q, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214
  %i.lk = phi ptr [ %3, %bb.q ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214 ], [ %i.kz, %middle.block384 ], [ %i.li, %.lr.ph.i.i217 ] ; 2 uses
  %i.ll = sub i64 0, %4
  %i.lm = getelementptr [4 x i8], ptr %i.lk, i64 %i.ll ; 10 uses
  %.not4.i.i222 = icmp eq i64 %4, 0
  br i1 %.not4.i.i222, label %.loopexit281, label %.lr.ph.i.i223.preheader

.lr.ph.i.i223.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !432 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !431 ; 3 uses
  %i.lr = load ptr, ptr %5, align 8, !tbaa !434   ; 3 uses
  %xtraiter457 = and i64 %4, 1
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %.lr.ph.i.i223.prol.loopexit, label %.lr.ph.i.i223.prol

.lr.ph.i.i223.prol:                               ; preds = %.lr.ph.i.i223.preheader
  %i.ls = add nsw i64 %4, -1
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !247, !noalias !5992
  store i32 %i.lt, ptr %i.lm, align 4, !tbaa !355, !noalias !5992
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 4 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lq
  br i1 %i.lv, label %bb.r, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol

bb.r:                                             ; preds = %.lr.ph.i.i223.prol
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !259, !noalias !5992 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol: ; preds = %bb.r, %.lr.ph.i.i223.prol
  %.sroa.11.1.i229.prol = phi ptr [ %i.lw, %bb.r ], [ %i.lo, %.lr.ph.i.i223.prol ]
  %i.lz = phi ptr [ %i.ly, %bb.r ], [ %i.lq, %.lr.ph.i.i223.prol ]
  %i.ma = phi ptr [ %i.lx, %bb.r ], [ %i.lu, %.lr.ph.i.i223.prol ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  br label %.lr.ph.i.i223.prol.loopexit

.lr.ph.i.i223.prol.loopexit:                      ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol, %.lr.ph.i.i223.preheader
  %.sroa.11.0.i224.unr = phi ptr [ %i.lo, %.lr.ph.i.i223.preheader ], [ %.sroa.11.1.i229.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.unr460 = phi ptr [ %i.lq, %.lr.ph.i.i223.preheader ], [ %i.lz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.unr461 = phi ptr [ %i.lr, %.lr.ph.i.i223.preheader ], [ %i.ma, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.06.i.i226.unr = phi ptr [ %i.lm, %.lr.ph.i.i223.preheader ], [ %i.mb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.035.i.i227.unr = phi i64 [ %4, %.lr.ph.i.i223.preheader ], [ %i.ls, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %i.mc = icmp eq i64 %4, 1
  br i1 %i.mc, label %.loopexit281, label %.lr.ph.i.i223

.lr.ph.i.i223:                                    ; preds = %.lr.ph.i.i223.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1
  %.sroa.11.0.i224 = phi ptr [ %.sroa.11.1.i229.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.sroa.11.0.i224.unr, %.lr.ph.i.i223.prol.loopexit ] ; 2 uses
  %i.md = phi ptr [ %i.mv, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.unr460, %.lr.ph.i.i223.prol.loopexit ] ; 2 uses
  %i.me = phi ptr [ %i.mw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.unr461, %.lr.ph.i.i223.prol.loopexit ] ; 2 uses
  %.06.i.i226 = phi ptr [ %i.mx, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.06.i.i226.unr, %.lr.ph.i.i223.prol.loopexit ] ; 3 uses
  %.035.i.i227 = phi i64 [ %i.mo, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.035.i.i227.unr, %.lr.ph.i.i223.prol.loopexit ]
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !247, !noalias !5992
  store i32 %i.mf, ptr %.06.i.i226, align 4, !tbaa !355, !noalias !5992
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.md
  br i1 %i.mh, label %bb.s, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228

bb.s:                                             ; preds = %.lr.ph.i.i223
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i224, i64 8 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !259, !noalias !5992 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228: ; preds = %bb.s, %.lr.ph.i.i223
  %.sroa.11.1.i229 = phi ptr [ %i.mi, %bb.s ], [ %.sroa.11.0.i224, %.lr.ph.i.i223 ] ; 2 uses
  %i.ml = phi ptr [ %i.mk, %bb.s ], [ %i.md, %.lr.ph.i.i223 ] ; 2 uses
  %i.mm = phi ptr [ %i.mj, %bb.s ], [ %i.mg, %.lr.ph.i.i223 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.06.i.i226, i64 4
  %i.mo = add i64 %.035.i.i227, -2                ; 2 uses
  %i.mp = load i32, ptr %i.mm, align 4, !tbaa !247, !noalias !5992
  store i32 %i.mp, ptr %i.mn, align 4, !tbaa !355, !noalias !5992
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 4 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.ml
  br i1 %i.mr, label %bb.t, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1

bb.t:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i229, i64 8 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !259, !noalias !5992 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1: ; preds = %bb.t, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228
  %.sroa.11.1.i229.1 = phi ptr [ %i.ms, %bb.t ], [ %.sroa.11.1.i229, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228 ]
  %i.mv = phi ptr [ %i.mu, %bb.t ], [ %i.ml, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228 ]
  %i.mw = phi ptr [ %i.mt, %bb.t ], [ %i.mq, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.06.i.i226, i64 8
  %.not.i.i231.1 = icmp eq i64 %i.mo, 0
  br i1 %.not.i.i231.1, label %.loopexit281, label %.lr.ph.i.i223, !llvm.loop !55

.loopexit281:                                     ; preds = %.lr.ph.i.i223.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit221
  %.not.i235 = icmp eq ptr %3, %i.lm
  br i1 %.not.i235, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.u

bb.u:                                             ; preds = %.loopexit281
  %.not8.i.i236 = icmp eq ptr %0, %3
  br i1 %.not8.i.i236, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit241, label %.lr.ph.i.i237.preheader

.lr.ph.i.i237.preheader:                          ; preds = %bb.u
  %i.my = ptrtoaddr ptr %0 to i64
  %i.mz = add i64 %i.e, -4
  %i.na = sub i64 %i.mz, %i.my                    ; 3 uses
  %i.nb = lshr i64 %i.na, 2
  %i.nc = add nuw nsw i64 %i.nb, 1                ; 2 uses
  %min.iters.check394 = icmp ult i64 %i.na, 108
  br i1 %min.iters.check394, label %.lr.ph.i.i237.preheader440, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.lr.ph.i.i237.preheader
  %i.nd = shl i64 %4, 2
  %i.ne = and i64 %i.na, -4                       ; 2 uses
  %i.nf = add i64 %i.nd, %i.ne
  %i.ng = sub nuw nsw i64 -4, %i.nf
  %i.nh = getelementptr i8, ptr %i.lk, i64 %i.ng
  %i.ni = sub nuw nsw i64 -4, %i.ne
  %i.nj = getelementptr i8, ptr %3, i64 %i.ni
  %bound0396 = icmp ult ptr %i.nh, %3
  %bound1397 = icmp ult ptr %i.nj, %i.lm
  %found.conflict398 = and i1 %bound0396, %bound1397
  br i1 %found.conflict398, label %.lr.ph.i.i237.preheader440, label %vector.ph399

vector.ph399:                                     ; preds = %vector.memcheck395
  %n.vec400 = and i64 %i.nc, 9223372036854775800  ; 3 uses
  %i.nk = mul i64 %n.vec400, -4                   ; 2 uses
  %i.nl = getelementptr i8, ptr %i.lm, i64 %i.nk  ; 2 uses
  %i.nm = getelementptr i8, ptr %3, i64 %i.nk
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next407, %vector.body401 ] ; 2 uses
  %i.nn = mul i64 %index402, -4                   ; 2 uses
  %next.gep403 = getelementptr i8, ptr %i.lm, i64 %i.nn ; 2 uses
  %next.gep404 = getelementptr i8, ptr %3, i64 %i.nn ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %next.gep404, i64 -16 ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %next.gep404, i64 -32 ; 2 uses
  %wide.load405 = load <4 x i32>, ptr %i.no, align 4, !tbaa !355, !alias.scope !5993
  %wide.load406 = load <4 x i32>, ptr %i.np, align 4, !tbaa !355, !alias.scope !5993
end_hunk_1
begin_hunk_2_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %i.el = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %.01315.i.i170.prol, i64 4 ; 2 uses
  %prol.iter410.next = add i64 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i64 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %.lr.ph.i.i168.prol.loopexit, label %.lr.ph.i.i168.prol, !llvm.loop !6060

.lr.ph.i.i168.prol.loopexit:                      ; preds = %.lr.ph.i.i168.prol, %.lr.ph.i.i168.preheader
  %.016.i.i169.unr = phi i64 [ %i.dp, %.lr.ph.i.i168.preheader ], [ %i.ek, %.lr.ph.i.i168.prol ]
  %.01315.i.i170.unr = phi ptr [ %i.a, %.lr.ph.i.i168.preheader ], [ %i.en, %.lr.ph.i.i168.prol ]
  %i.eo = sub nsw i64 %i.g, %i.j
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.prol.loopexit, %.lr.ph.i.i168
  %.016.i.i169 = phi i64 [ %i.ex, %.lr.ph.i.i168 ], [ %.016.i.i169.unr, %.lr.ph.i.i168.prol.loopexit ]
  %.01315.i.i170 = phi ptr [ %i.ez, %.lr.ph.i.i168 ], [ %.01315.i.i170.unr, %.lr.ph.i.i168.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i170) ]
  store i32 0, ptr %.01315.i.i170, align 4, !tbaa !355
  %i.eq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.es = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 4
  store i32 0, ptr %i.es, align 4, !tbaa !355
  %i.et = add i32 %i.eq, 2
  store i32 %i.et, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !355
  %i.ev = add i32 %i.eq, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 12
  %i.ex = add i64 %.016.i.i169, -4                ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !355
  %i.ey = add i32 %i.eq, 4
  store i32 %i.ey, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 16
  %.not.i.i171.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i171.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168, !llvm.loop !131

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172: ; preds = %.lr.ph.i.i168, %.lr.ph.i.i168.prol.loopexit
  %.not.i173 = icmp eq ptr %3, %i.ds
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172
  %.not8.i.i174 = icmp eq ptr %0, %3
  br i1 %.not8.i.i174, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %bb.g
  %i.fa = ptrtoaddr ptr %0 to i64
  %i.fb = add i64 %i.e, -4
  %i.fc = sub i64 %i.fb, %i.fa                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check364 = icmp ult i64 %i.fc, 124
  br i1 %min.iters.check364, label %.lr.ph.i.i175.preheader382, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph.i.i175.preheader
  %i.ff = and i64 %i.fc, -4                       ; 2 uses
  %i.fg = sub i64 %1, %i.dq
  %i.fh = shl i64 %i.fg, 2
  %i.fi = add i64 %i.fh, -4
  %i.fj = sub i64 %i.fi, %i.ff
  %i.fk = getelementptr i8, ptr %0, i64 %i.fj
  %i.fl = sub nuw nsw i64 -4, %i.ff
  %i.fm = getelementptr i8, ptr %3, i64 %i.fl
  %bound0366 = icmp ult ptr %i.fk, %3
  %bound1367 = icmp ult ptr %i.fm, %i.ds
  %found.conflict368 = and i1 %bound0366, %bound1367
  br i1 %found.conflict368, label %.lr.ph.i.i175.preheader382, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck365
  %n.vec370 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.fn = mul i64 %n.vec370, -4                   ; 2 uses
  %i.fo = getelementptr i8, ptr %i.ds, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %3, i64 %i.fn
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.fq = mul i64 %index372, -4                   ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.ds, i64 %i.fq ; 2 uses
  %next.gep374 = getelementptr i8, ptr %3, i64 %i.fq ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %next.gep374, i64 -16 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %next.gep374, i64 -32 ; 2 uses
  %wide.load375 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !355, !alias.scope !6079
  %wide.load376 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !355, !alias.scope !6079
  %i.ft = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.fu = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  store <4 x i32> %wide.load375, ptr %i.ft, align 4, !tbaa !355, !alias.scope !6080, !noalias !6079
  store <4 x i32> %wide.load376, ptr %i.fu, align 4, !tbaa !355, !alias.scope !6080, !noalias !6079
  store <4 x i32> zeroinitializer, ptr %i.fr, align 4, !tbaa !355, !alias.scope !6079
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !355, !alias.scope !6079
  %index.next377 = add nuw i64 %index372, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.fv, label %middle.block378, label %vector.body371, !llvm.loop !6064

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.fe, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader382

.lr.ph.i.i175.preheader382:                       ; preds = %vector.memcheck365, %.lr.ph.i.i175.preheader, %middle.block378
  %.010.i.i176.ph = phi ptr [ %i.ds, %vector.memcheck365 ], [ %i.ds, %.lr.ph.i.i175.preheader ], [ %i.fo, %middle.block378 ]
  %.079.i.i177.ph = phi ptr [ %3, %vector.memcheck365 ], [ %3, %.lr.ph.i.i175.preheader ], [ %i.fp, %middle.block378 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader382, %.lr.ph.i.i175
  %.010.i.i176 = phi ptr [ %i.fx, %.lr.ph.i.i175 ], [ %.010.i.i176.ph, %.lr.ph.i.i175.preheader382 ]
  %.079.i.i177 = phi ptr [ %i.fw, %.lr.ph.i.i175 ], [ %.079.i.i177.ph, %.lr.ph.i.i175.preheader382 ]
  %i.fw = getelementptr inbounds i8, ptr %.079.i.i177, i64 -4 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %.010.i.i176, i64 -4 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !355
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !355
  store i32 0, ptr %i.fw, align 4, !tbaa !355
  %.not.i.i178 = icmp eq ptr %0, %i.fw
  br i1 %.not.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175, !llvm.loop !6065

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit179: ; preds = %.lr.ph.i.i175, %middle.block378, %bb.g
  %i.fz = phi ptr [ %i.ds, %bb.g ], [ %i.fo, %middle.block378 ], [ %i.fx, %.lr.ph.i.i175 ] ; 2 uses
  %.not3.i180 = icmp eq ptr %0, %i.fz
  br i1 %.not3.i180, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit179, %.lr.ph.i181
  %storemerge4.i182 = phi ptr [ %i.gc, %.lr.ph.i181 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit179 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i182, align 4, !tbaa !355
  %i.ga = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gb = add i32 %i.ga, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i182, i64 4 ; 2 uses
  %.not.i183 = icmp eq ptr %i.gc, %i.fz
  br i1 %.not.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181, !llvm.loop !135

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gd = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i193 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i193, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i194.preheader

.lr.ph.i194.preheader:                            ; preds = %bb.h
  %i.ge = and i64 %i.i, 4
  %lcmp.mod398.not = icmp eq i64 %i.ge, 0
  br i1 %lcmp.mod398.not, label %.lr.ph.i194.prol.loopexit, label %.lr.ph.i194.prol

.lr.ph.i194.prol:                                 ; preds = %.lr.ph.i194.preheader
  %i.gf = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !355
  store i32 %i.gg, ptr %i.a, align 4, !tbaa !355
  store i32 0, ptr %i.gd, align 4, !tbaa !355
  %i.gh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i194.prol.loopexit

.lr.ph.i194.prol.loopexit:                        ; preds = %.lr.ph.i194.prol, %.lr.ph.i194.preheader
  %.020.i195.unr = phi i64 [ %i.j, %.lr.ph.i194.preheader ], [ %i.gf, %.lr.ph.i194.prol ]
  %.0819.i196.unr = phi ptr [ %i.gd, %.lr.ph.i194.preheader ], [ %i.gj, %.lr.ph.i194.prol ]
  %.01618.i197.unr = phi ptr [ %i.a, %.lr.ph.i194.preheader ], [ %i.gk, %.lr.ph.i194.prol ]
  %i.gl = icmp eq i64 %i.i, 4
  br i1 %i.gl, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194
  %.020.i195 = phi i64 [ %i.gr, %.lr.ph.i194 ], [ %.020.i195.unr, %.lr.ph.i194.prol.loopexit ]
  %.0819.i196 = phi ptr [ %i.gv, %.lr.ph.i194 ], [ %.0819.i196.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  %.01618.i197 = phi ptr [ %i.gw, %.lr.ph.i194 ], [ %.01618.i197.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i197) ]
  %i.gm = load i32, ptr %.0819.i196, align 4, !tbaa !355
  store i32 %i.gm, ptr %.01618.i197, align 4, !tbaa !355
  store i32 0, ptr %.0819.i196, align 4, !tbaa !355
  %i.gn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gp = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 4
  %i.gr = add i64 %.020.i195, -2                  ; 2 uses
  %i.gs = load i32, ptr %i.gp, align 4, !tbaa !355
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !355
  store i32 0, ptr %i.gp, align 4, !tbaa !355
  %i.gt = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gv = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 8
  %.not.i198.1 = icmp eq i64 %i.gr, 0
  br i1 %.not.i198.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200: ; preds = %.lr.ph.i194, %.lr.ph.i194.prol.loopexit
  %.not8.i.i202 = icmp eq ptr %3, %i.gd
  br i1 %.not8.i.i202, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader

.lr.ph.i.i203.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.gx = shl nsw i64 %1, 2
  %i.gy = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.gz = shl i64 %i.gy, 1
  %i.ha = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hb = shl i64 %4, 2
  %i.hc = add i64 %i.gx, %i.gz
  %i.hd = add i64 %i.hc, -4
  %i.he = add i64 %i.ha, %i.e
  %i.hf = add i64 %i.he, %i.hb
  %i.hg = sub i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.hg, 188
  br i1 %min.iters.check316, label %.lr.ph.i.i203.preheader386, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.i203.preheader
  %i.hj = shl nsw i64 %1, 2                       ; 3 uses
  %i.hk = shl i64 %i.gy, 1
  %i.hl = shl i64 %4, 2                           ; 2 uses
  %i.hm = add i64 %i.hj, %i.hk
  %i.hn = add i64 %i.hm, -4
  %i.ho = add i64 %i.ha, %i.e
  %i.hp = add i64 %i.ho, %i.hl
  %i.hq = sub i64 %i.hn, %i.hp
  %i.hr = and i64 %i.hq, -4                       ; 2 uses
  %i.hs = add i64 %i.hj, -4
  %i.ht = sub i64 %i.hs, %i.hr
  %i.hu = getelementptr i8, ptr %0, i64 %i.ht
  %i.hv = add i64 %i.hj, %i.gy
  %i.hw = add i64 %i.hv, -4
  %i.hx = add i64 %i.hl, %i.ha
  %i.hy = add i64 %i.hx, %i.hr
  %i.hz = sub i64 %i.hw, %i.hy
  %i.ia = getelementptr i8, ptr %0, i64 %i.hz
  %bound0318 = icmp ult ptr %i.hu, %i.gd
  %bound1319 = icmp ult ptr %i.ia, %i.a
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i203.preheader386, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.hi, 9223372036854775800  ; 3 uses
  %i.ib = mul i64 %n.vec322, -4                   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.a, i64 %i.ib   ; 2 uses
  %i.id = getelementptr i8, ptr %i.gd, i64 %i.ib
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.ie = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.a, i64 %i.ie ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.gd, i64 %i.ie ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %next.gep326, i64 -16 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep326, i64 -32 ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.if, align 4, !tbaa !355, !alias.scope !6081
  %wide.load328 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !355, !alias.scope !6081
  %i.ih = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.ih, align 4, !tbaa !355, !alias.scope !6082, !noalias !6081
  store <4 x i32> %wide.load328, ptr %i.ii, align 4, !tbaa !355, !alias.scope !6082, !noalias !6081
  store <4 x i32> zeroinitializer, ptr %i.if, align 4, !tbaa !355, !alias.scope !6081
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !355, !alias.scope !6081
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.ij, label %middle.block330, label %vector.body323, !llvm.loop !6069

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.hi, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader386

.lr.ph.i.i203.preheader386:                       ; preds = %vector.memcheck317, %.lr.ph.i.i203.preheader, %middle.block330
  %.010.i.i204.ph = phi ptr [ %i.a, %vector.memcheck317 ], [ %i.a, %.lr.ph.i.i203.preheader ], [ %i.ic, %middle.block330 ]
  %.079.i.i205.ph = phi ptr [ %i.gd, %vector.memcheck317 ], [ %i.gd, %.lr.ph.i.i203.preheader ], [ %i.id, %middle.block330 ]
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %.lr.ph.i.i203.preheader386, %.lr.ph.i.i203
  %.010.i.i204 = phi ptr [ %i.il, %.lr.ph.i.i203 ], [ %.010.i.i204.ph, %.lr.ph.i.i203.preheader386 ]
  %.079.i.i205 = phi ptr [ %i.ik, %.lr.ph.i.i203 ], [ %.079.i.i205.ph, %.lr.ph.i.i203.preheader386 ]
  %i.ik = getelementptr inbounds i8, ptr %.079.i.i205, i64 -4 ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %.010.i.i204, i64 -4 ; 3 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !355
  store i32 %i.im, ptr %i.il, align 4, !tbaa !355
  store i32 0, ptr %i.ik, align 4, !tbaa !355
  %.not.i.i206 = icmp eq ptr %3, %i.ik
  br i1 %.not.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203, !llvm.loop !6070

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207: ; preds = %.lr.ph.i.i203, %middle.block330, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.in = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200 ], [ %i.ic, %middle.block330 ], [ %i.il, %.lr.ph.i.i203 ] ; 2 uses
  %i.io = sub i64 0, %4
  %i.ip = getelementptr [4 x i8], ptr %i.in, i64 %i.io ; 9 uses
  %.not8.i208 = icmp eq i64 %4, 0
  br i1 %.not8.i208, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.preheader.i209

.lr.ph.preheader.i209:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207
  %.pre.i210 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.iq = add i32 %.pre.i210, 1                   ; 2 uses
  %xtraiter400 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol

.lr.ph.i211.prol:                                 ; preds = %.lr.ph.preheader.i209, %.lr.ph.i211.prol
  %i.ir = phi i32 [ %i.iu, %.lr.ph.i211.prol ], [ %i.iq, %.lr.ph.preheader.i209 ]
  %.010.i212.prol = phi ptr [ %i.it, %.lr.ph.i211.prol ], [ %i.ip, %.lr.ph.preheader.i209 ] ; 2 uses
  %.079.i213.prol = phi i64 [ %i.is, %.lr.ph.i211.prol ], [ %4, %.lr.ph.preheader.i209 ]
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.lr.ph.i211.prol ], [ 0, %.lr.ph.preheader.i209 ]
  %i.is = add i64 %.079.i213.prol, -1             ; 2 uses
  store i32 %i.ir, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i212.prol, align 4, !tbaa !355
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i212.prol, i64 4 ; 2 uses
  %i.iu = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.iv = add i32 %i.iu, -1
  store i32 %i.iv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol, !llvm.loop !6071

.lr.ph.i211.prol.loopexit:                        ; preds = %.lr.ph.i211.prol, %.lr.ph.preheader.i209
  %.unr403 = phi i32 [ %i.iq, %.lr.ph.preheader.i209 ], [ %i.iu, %.lr.ph.i211.prol ]
  %.010.i212.unr = phi ptr [ %i.ip, %.lr.ph.preheader.i209 ], [ %i.it, %.lr.ph.i211.prol ]
  %.079.i213.unr = phi i64 [ %4, %.lr.ph.preheader.i209 ], [ %i.is, %.lr.ph.i211.prol ]
  %i.iw = icmp ult i64 %4, 4
  br i1 %i.iw, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211
  %i.ix = phi i32 [ %i.jd, %.lr.ph.i211 ], [ %.unr403, %.lr.ph.i211.prol.loopexit ]
  %.010.i212 = phi ptr [ %i.jc, %.lr.ph.i211 ], [ %.010.i212.unr, %.lr.ph.i211.prol.loopexit ] ; 5 uses
  %.079.i213 = phi i64 [ %i.jb, %.lr.ph.i211 ], [ %.079.i213.unr, %.lr.ph.i211.prol.loopexit ]
  store i32 %i.ix, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i212, align 4, !tbaa !355
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i212, i64 4
  store i32 0, ptr %i.iy, align 4, !tbaa !355
  %i.iz = getelementptr inbounds nuw i8, ptr %.010.i212, i64 8
  store i32 0, ptr %i.iz, align 4, !tbaa !355
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i212, i64 12
  %i.jb = add i64 %.079.i213, -4                  ; 2 uses
  store i32 0, ptr %i.ja, align 4, !tbaa !355
  %i.jc = getelementptr inbounds nuw i8, ptr %.010.i212, i64 16
  %i.jd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.je = add i32 %i.jd, -1
  store i32 %i.je, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %.not.i214.3 = icmp eq i64 %i.jb, 0
  br i1 %.not.i214.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211, !llvm.loop !137

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215: ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit207
  %.not.i216 = icmp eq ptr %3, %i.ip
  br i1 %.not.i216, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215
  %.not8.i.i217 = icmp eq ptr %0, %3
  br i1 %.not8.i.i217, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader

.lr.ph.i.i218.preheader:                          ; preds = %bb.i
  %i.jf = ptrtoaddr ptr %0 to i64
  %i.jg = add i64 %i.e, -4
  %i.jh = sub i64 %i.jg, %i.jf                    ; 3 uses
  %i.ji = lshr i64 %i.jh, 2
  %i.jj = add nuw nsw i64 %i.ji, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.jh, 108
  br i1 %min.iters.check340, label %.lr.ph.i.i218.preheader384, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i.i218.preheader
  %i.jk = shl i64 %4, 2
  %i.jl = and i64 %i.jh, -4                       ; 2 uses
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = sub nuw nsw i64 -4, %i.jm
  %i.jo = getelementptr i8, ptr %i.in, i64 %i.jn
  %i.jp = sub nuw nsw i64 -4, %i.jl
  %i.jq = getelementptr i8, ptr %3, i64 %i.jp
  %bound0342 = icmp ult ptr %i.jo, %3
  %bound1343 = icmp ult ptr %i.jq, %i.ip
  %found.conflict344 = and i1 %bound0342, %bound1343
  br i1 %found.conflict344, label %.lr.ph.i.i218.preheader384, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.jj, 9223372036854775800  ; 3 uses
  %i.jr = mul i64 %n.vec346, -4                   ; 2 uses
  %i.js = getelementptr i8, ptr %i.ip, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %3, i64 %i.jr
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.ju = mul i64 %index348, -4                   ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.ip, i64 %i.ju ; 2 uses
  %next.gep350 = getelementptr i8, ptr %3, i64 %i.ju ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %next.gep350, i64 -16 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %next.gep350, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !355, !alias.scope !6083
  %wide.load352 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !355, !alias.scope !6083
  %i.jx = getelementptr inbounds i8, ptr %next.gep349, i64 -16
  %i.jy = getelementptr inbounds i8, ptr %next.gep349, i64 -32
  store <4 x i32> %wide.load351, ptr %i.jx, align 4, !tbaa !355, !alias.scope !6084, !noalias !6083
  store <4 x i32> %wide.load352, ptr %i.jy, align 4, !tbaa !355, !alias.scope !6084, !noalias !6083
  store <4 x i32> zeroinitializer, ptr %i.jv, align 4, !tbaa !355, !alias.scope !6083
  store <4 x i32> zeroinitializer, ptr %i.jw, align 4, !tbaa !355, !alias.scope !6083
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.jz, label %middle.block354, label %vector.body347, !llvm.loop !6075

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.jj, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader384

.lr.ph.i.i218.preheader384:                       ; preds = %vector.memcheck341, %.lr.ph.i.i218.preheader, %middle.block354
  %.010.i.i219.ph = phi ptr [ %i.ip, %vector.memcheck341 ], [ %i.ip, %.lr.ph.i.i218.preheader ], [ %i.js, %middle.block354 ]
  %.079.i.i220.ph = phi ptr [ %3, %vector.memcheck341 ], [ %3, %.lr.ph.i.i218.preheader ], [ %i.jt, %middle.block354 ]
  br label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %.lr.ph.i.i218.preheader384, %.lr.ph.i.i218
  %.010.i.i219 = phi ptr [ %i.kb, %.lr.ph.i.i218 ], [ %.010.i.i219.ph, %.lr.ph.i.i218.preheader384 ]
  %.079.i.i220 = phi ptr [ %i.ka, %.lr.ph.i.i218 ], [ %.079.i.i220.ph, %.lr.ph.i.i218.preheader384 ]
  %i.ka = getelementptr inbounds i8, ptr %.079.i.i220, i64 -4 ; 4 uses
  %i.kb = getelementptr inbounds i8, ptr %.010.i.i219, i64 -4 ; 3 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !355
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !355
  store i32 0, ptr %i.ka, align 4, !tbaa !355
  %.not.i.i221 = icmp eq ptr %0, %i.ka
  br i1 %.not.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218, !llvm.loop !6076

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit222: ; preds = %.lr.ph.i.i218, %middle.block354, %bb.i
  %i.kd = phi ptr [ %i.ip, %bb.i ], [ %i.js, %middle.block354 ], [ %i.kb, %.lr.ph.i.i218 ] ; 2 uses
  %.not3.i223 = icmp eq ptr %0, %i.kd
  br i1 %.not3.i223, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i224
end_hunk_2
begin_hunk_3_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.l, %i.h
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dd, %.lr.ph.i155 ], [ %i.cy, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cz = load i32, ptr %.018.i156, align 4, !tbaa !355
  store i32 %i.cz, ptr %.01517.i157, align 4, !tbaa !355
  store i32 0, ptr %.018.i156, align 4, !tbaa !355
  %i.da = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !355
  store i32 %i.df, ptr %i.de, align 4, !tbaa !355
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.b, align 4, !tbaa !355
  store i32 0, ptr %5, align 4, !tbaa !355
  %i.dg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %.not.i161 = icmp eq ptr %3, %i.de
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.di = ptrtoaddr ptr %0 to i64
  %i.dj = add i64 %i.f, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dk, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dn = shl nsw i64 %1, 2
  %i.do = and i64 %i.dk, -4                       ; 2 uses
  %i.dp = shl i64 %i.m, 2
  %i.dq = add i64 %i.k, %i.dn
  %i.dr = add i64 %i.dq, -4
  %i.ds = add i64 %i.do, %i.dp
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = sub nuw nsw i64 -4, %i.do
  %i.dw = getelementptr i8, ptr %3, i64 %i.dv
  %bound0348 = icmp ult ptr %i.du, %3
  %bound1349 = icmp ult ptr %i.dw, %i.de
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.de, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 %i.dx
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.ea = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.de, i64 %i.ea ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !355, !alias.scope !6150
  %wide.load358 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !355, !alias.scope !6150
  %i.ed = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.ed, align 4, !tbaa !355, !alias.scope !6151, !noalias !6150
  store <4 x i32> %wide.load358, ptr %i.ee, align 4, !tbaa !355, !alias.scope !6151, !noalias !6150
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !355, !alias.scope !6150
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !355, !alias.scope !6150
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ef, label %middle.block360, label %vector.body353, !llvm.loop !6136

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dm, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.de, %vector.memcheck347 ], [ %i.de, %.lr.ph.i.i163.preheader ], [ %i.dy, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dz, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.eh, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.eg, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !355
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !355
  store i32 0, ptr %i.eg, align 4, !tbaa !355
  %.not.i.i166 = icmp eq ptr %0, %i.eg
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !6137

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.ej = phi ptr [ %i.de, %bb.g ], [ %i.dy, %middle.block360 ], [ %i.eh, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.ej
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.em, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !355
  %i.ek = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.em, %i.ej
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !135

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.en = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.eo = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.ep = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !355
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !355
  store i32 0, ptr %i.en, align 4, !tbaa !355
  %i.er = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.ep, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.en, %.lr.ph.i182.preheader ], [ %i.et, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.eu, %.lr.ph.i182.prol ]
  %i.ev = icmp eq i64 %i.k, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.fb, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.ff, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fg, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.ew = load i32, ptr %.0819.i184, align 4, !tbaa !355
  store i32 %i.ew, ptr %.01618.i185, align 4, !tbaa !355
  store i32 0, ptr %.0819.i184, align 4, !tbaa !355
  %i.ex = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.fb = add i64 %.020.i183, -2                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !355
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !355
  store i32 0, ptr %i.ez, align 4, !tbaa !355
  %i.fd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ff = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.fb, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.en
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.fh = shl nsw i64 %1, 2
  %i.fi = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fj = shl i64 %i.fi, 1
  %i.fk = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fl = shl i64 %4, 2
  %i.fm = add i64 %i.fh, %i.fj
  %i.fn = add i64 %i.fm, -4
  %i.fo = add i64 %i.fk, %i.f
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = sub i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fq, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.ft = shl nsw i64 %1, 2                       ; 3 uses
  %i.fu = shl i64 %i.fi, 1
  %i.fv = shl i64 %4, 2                           ; 2 uses
  %i.fw = add i64 %i.ft, %i.fu
  %i.fx = add i64 %i.fw, -4
  %i.fy = add i64 %i.fk, %i.f
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = and i64 %i.ga, -4                       ; 2 uses
  %i.gc = add i64 %i.ft, -4
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = add i64 %i.ft, %i.fi
  %i.gg = add i64 %i.gf, -4
  %i.gh = add i64 %i.fv, %i.fk
  %i.gi = add i64 %i.gh, %i.gb
  %i.gj = sub i64 %i.gg, %i.gi
  %i.gk = getelementptr i8, ptr %0, i64 %i.gj
  %bound0300 = icmp ult ptr %i.ge, %i.en
  %bound1301 = icmp ult ptr %i.gk, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fs, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.b, i64 %i.gl   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.go = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.go ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.en, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !355, !alias.scope !6152
  %wide.load310 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !355, !alias.scope !6152
  %i.gr = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gr, align 4, !tbaa !355, !alias.scope !6153, !noalias !6152
  store <4 x i32> %wide.load310, ptr %i.gs, align 4, !tbaa !355, !alias.scope !6153, !noalias !6152
  store <4 x i32> zeroinitializer, ptr %i.gp, align 4, !tbaa !355, !alias.scope !6152
  store <4 x i32> zeroinitializer, ptr %i.gq, align 4, !tbaa !355, !alias.scope !6152
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gt, label %middle.block312, label %vector.body305, !llvm.loop !6141

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fs, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gm, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.en, %vector.memcheck299 ], [ %i.en, %.lr.ph.i.i191.preheader ], [ %i.gn, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gv, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gu, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gu = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !355
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !355
  store i32 0, ptr %i.gu, align 4, !tbaa !355
  %.not.i.i194 = icmp eq ptr %3, %i.gu
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !6142

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gm, %middle.block312 ], [ %i.gv, %.lr.ph.i.i191 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.a ; 8 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !355
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !355
  store i32 0, ptr %5, align 4, !tbaa !355
  %.not.i196 = icmp eq ptr %3, %i.gy
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.ha = ptrtoaddr ptr %0 to i64
  %i.hb = add i64 %i.f, -4
  %i.hc = sub i64 %i.hb, %i.ha                    ; 3 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hc, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.hf = shl i64 %4, 2
  %i.hg = and i64 %i.hc, -4                       ; 2 uses
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = sub nuw nsw i64 -4, %i.hh
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi
  %i.hk = sub nuw nsw i64 -4, %i.hg
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %bound0324 = icmp ult ptr %i.hj, %3
  %bound1325 = icmp ult ptr %i.hl, %i.gy
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %3, i64 %i.hm
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hp = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gy, i64 %i.hp ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !355, !alias.scope !6154
  %wide.load334 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !355, !alias.scope !6154
  %i.hs = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hs, align 4, !tbaa !355, !alias.scope !6155, !noalias !6154
  store <4 x i32> %wide.load334, ptr %i.ht, align 4, !tbaa !355, !alias.scope !6155, !noalias !6154
  store <4 x i32> zeroinitializer, ptr %i.hq, align 4, !tbaa !355, !alias.scope !6154
  store <4 x i32> zeroinitializer, ptr %i.hr, align 4, !tbaa !355, !alias.scope !6154
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hu, label %middle.block336, label %vector.body329, !llvm.loop !6146

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.he, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gy, %vector.memcheck323 ], [ %i.gy, %.lr.ph.i.i198.preheader ], [ %i.hn, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.ho, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hw, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hv, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !355
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !355
  store i32 0, ptr %i.hv, align 4, !tbaa !355
  %.not.i.i201 = icmp eq ptr %0, %i.hv
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !6147

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hy = phi ptr [ %i.gy, %bb.i ], [ %i.hn, %middle.block336 ], [ %i.hw, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hy
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.ib, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !355
  %i.hz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !135

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !442    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !472
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !477  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !470    ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !355
  store i32 %i.j, ptr %i.h, align 4, !tbaa !355
  store i32 0, ptr %4, align 4, !tbaa !355
  %i.k = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_3
begin_hunk_4_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  store i32 0, ptr %.sroa.0.016.i.i174.ph, align 4, !tbaa !355
  %i.fa = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174.ph, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fe = add nsw i64 %i.dr, -1
  br label %.lr.ph.i.i171.prol.loopexit

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.dr, %.lr.ph.i.i171.preheader ], [ %i.fe, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.a, %.lr.ph.i.i171.preheader ], [ %i.fd, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fc, %.lr.ph.i.i171.prol ]
  %i.ff = icmp eq i64 %i.j, %.neg470
  br i1 %i.ff, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.fp, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.fo, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.fn, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.fg = load i32, ptr %.sroa.0.016.i.i174, align 4, !tbaa !355
  store i32 %i.fg, ptr %.01417.i.i173, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.016.i.i174, align 4, !tbaa !355
  %i.fh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !355
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !355
  store i32 0, ptr %i.fj, align 4, !tbaa !355
  %i.fm = add i32 %i.fh, 2
  store i32 %i.fm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.fp = add i64 %.018.i.i172, -2                ; 2 uses
  %.not.i.i175.1 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i175.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !138

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.du
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.fq = ptrtoaddr ptr %0 to i64
  %i.fr = add i64 %i.e, -4
  %i.fs = sub i64 %i.fr, %i.fq                    ; 3 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check423 = icmp ult i64 %i.fs, 124
  br i1 %min.iters.check423, label %.lr.ph.i.i180.preheader441, label %vector.memcheck424

vector.memcheck424:                               ; preds = %.lr.ph.i.i180.preheader
  %i.fv = and i64 %i.fs, -4                       ; 2 uses
  %i.fw = sub i64 %1, %i.ds
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.fv
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz
  %i.gb = sub nuw nsw i64 -4, %i.fv
  %i.gc = getelementptr i8, ptr %3, i64 %i.gb
  %bound0425 = icmp ult ptr %i.ga, %3
  %bound1426 = icmp ult ptr %i.gc, %i.du
  %found.conflict427 = and i1 %bound0425, %bound1426
  br i1 %found.conflict427, label %.lr.ph.i.i180.preheader441, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck424
  %n.vec429 = and i64 %i.fu, 9223372036854775800  ; 3 uses
  %i.gd = mul i64 %n.vec429, -4                   ; 2 uses
  %i.ge = getelementptr i8, ptr %i.du, i64 %i.gd  ; 2 uses
  %i.gf = getelementptr i8, ptr %3, i64 %i.gd
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.gg = mul i64 %index431, -4                   ; 2 uses
  %next.gep432 = getelementptr i8, ptr %i.du, i64 %i.gg ; 2 uses
  %next.gep433 = getelementptr i8, ptr %3, i64 %i.gg ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep433, i64 -16 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep433, i64 -32 ; 2 uses
  %wide.load434 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !355, !alias.scope !6316
  %wide.load435 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !355, !alias.scope !6316
  %i.gj = getelementptr inbounds i8, ptr %next.gep432, i64 -16
  %i.gk = getelementptr inbounds i8, ptr %next.gep432, i64 -32
  store <4 x i32> %wide.load434, ptr %i.gj, align 4, !tbaa !355, !alias.scope !6317, !noalias !6316
  store <4 x i32> %wide.load435, ptr %i.gk, align 4, !tbaa !355, !alias.scope !6317, !noalias !6316
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !355, !alias.scope !6316
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !355, !alias.scope !6316
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.gl, label %middle.block437, label %vector.body430, !llvm.loop !6294

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.fu, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader441

.lr.ph.i.i180.preheader441:                       ; preds = %vector.memcheck424, %.lr.ph.i.i180.preheader, %middle.block437
  %.010.i.i181.ph = phi ptr [ %i.du, %vector.memcheck424 ], [ %i.du, %.lr.ph.i.i180.preheader ], [ %i.ge, %middle.block437 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck424 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.gf, %middle.block437 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader441, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.gn, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader441 ]
  %.079.i.i182 = phi ptr [ %i.gm, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader441 ]
  %i.gm = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !355
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !355
  store i32 0, ptr %i.gm, align 4, !tbaa !355
  %.not.i.i183 = icmp eq ptr %0, %i.gm
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !6295

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block437, %bb.g
  %i.gp = phi ptr [ %i.du, %bb.g ], [ %i.ge, %middle.block437 ], [ %i.gn, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.gp
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.gs, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !355
  %i.gq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gr = add i32 %i.gq, -1
  store i32 %i.gr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.gs, %i.gp
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !135

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gt = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.gu = and i64 %i.i, 4
  %lcmp.mod459.not = icmp eq i64 %i.gu, 0
  br i1 %lcmp.mod459.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.gv = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !355
  store i32 %i.gw, ptr %i.a, align 4, !tbaa !355
  store i32 0, ptr %i.gt, align 4, !tbaa !355
  %i.gx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.j, %.lr.ph.i199.preheader ], [ %i.gv, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.gt, %.lr.ph.i199.preheader ], [ %i.gz, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.a, %.lr.ph.i199.preheader ], [ %i.ha, %.lr.ph.i199.prol ]
  %i.hb = icmp eq i64 %i.i, 4
  br i1 %i.hb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.hh, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.hl, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.hm, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.hc = load i32, ptr %.0819.i201, align 4, !tbaa !355
  store i32 %i.hc, ptr %.01618.i202, align 4, !tbaa !355
  store i32 0, ptr %.0819.i201, align 4, !tbaa !355
  %i.hd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hf = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.hh = add i64 %.020.i200, -2                  ; 2 uses
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !355
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !355
  store i32 0, ptr %i.hf, align 4, !tbaa !355
  %i.hj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hl = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.hh, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.gt
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.hn = shl nsw i64 %1, 2
  %i.ho = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.hp = shl i64 %i.ho, 1
  %i.hq = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hr = shl i64 %4, 2
  %i.hs = add i64 %i.hn, %i.hp
  %i.ht = add i64 %i.hs, -4
  %i.hu = add i64 %i.hq, %i.e
  %i.hv = add i64 %i.hu, %i.hr
  %i.hw = sub i64 %i.ht, %i.hv                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 2
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.hw, 188
  br i1 %min.iters.check327, label %.lr.ph.i.i208.preheader448, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i208.preheader
  %i.hz = shl nsw i64 %1, 2                       ; 3 uses
  %i.ia = shl i64 %i.ho, 1
  %i.ib = shl i64 %4, 2                           ; 2 uses
  %i.ic = add i64 %i.hz, %i.ia
  %i.id = add i64 %i.ic, -4
  %i.ie = add i64 %i.hq, %i.e
  %i.if = add i64 %i.ie, %i.ib
  %i.ig = sub i64 %i.id, %i.if
  %i.ih = and i64 %i.ig, -4                       ; 2 uses
  %i.ii = add i64 %i.hz, -4
  %i.ij = sub i64 %i.ii, %i.ih
  %i.ik = getelementptr i8, ptr %0, i64 %i.ij
  %i.il = add i64 %i.hz, %i.ho
  %i.im = add i64 %i.il, -4
  %i.in = add i64 %i.ib, %i.hq
  %i.io = add i64 %i.in, %i.ih
  %i.ip = sub i64 %i.im, %i.io
  %i.iq = getelementptr i8, ptr %0, i64 %i.ip
  %bound0329 = icmp ult ptr %i.ik, %i.gt
  %bound1330 = icmp ult ptr %i.iq, %i.a
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i208.preheader448, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.hy, 9223372036854775800  ; 3 uses
  %i.ir = mul i64 %n.vec333, -4                   ; 2 uses
  %i.is = getelementptr i8, ptr %i.a, i64 %i.ir   ; 2 uses
  %i.it = getelementptr i8, ptr %i.gt, i64 %i.ir
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.iu = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.a, i64 %i.iu ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.gt, i64 %i.iu ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !355, !alias.scope !6318
  %wide.load339 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !355, !alias.scope !6318
  %i.ix = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.iy = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.ix, align 4, !tbaa !355, !alias.scope !6319, !noalias !6318
  store <4 x i32> %wide.load339, ptr %i.iy, align 4, !tbaa !355, !alias.scope !6319, !noalias !6318
  store <4 x i32> zeroinitializer, ptr %i.iv, align 4, !tbaa !355, !alias.scope !6318
  store <4 x i32> zeroinitializer, ptr %i.iw, align 4, !tbaa !355, !alias.scope !6318
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.iz, label %middle.block341, label %vector.body334, !llvm.loop !6299

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.hy, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader448

.lr.ph.i.i208.preheader448:                       ; preds = %vector.memcheck328, %.lr.ph.i.i208.preheader, %middle.block341
  %.010.i.i209.ph = phi ptr [ %i.a, %vector.memcheck328 ], [ %i.a, %.lr.ph.i.i208.preheader ], [ %i.is, %middle.block341 ]
  %.079.i.i210.ph = phi ptr [ %i.gt, %vector.memcheck328 ], [ %i.gt, %.lr.ph.i.i208.preheader ], [ %i.it, %middle.block341 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader448, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.jb, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader448 ]
  %.079.i.i210 = phi ptr [ %i.ja, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader448 ]
  %i.ja = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.jb = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !355
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !355
  store i32 0, ptr %i.ja, align 4, !tbaa !355
  %.not.i.i211 = icmp eq ptr %3, %i.ja
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !6300

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block341, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.jd = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.is, %middle.block341 ], [ %i.jb, %.lr.ph.i.i208 ] ; 3 uses
  %i.je = sub i64 0, %4
  %i.jf = getelementptr [4 x i8], ptr %i.jd, i64 %i.je ; 12 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212
  %min.iters.check350 = icmp ult i64 %4, 8
  br i1 %min.iters.check350, label %.lr.ph.i.i215.preheader447, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph.i.i215.preheader
  %i.jg = shl i64 %4, 2
  %i.jh = getelementptr i8, ptr %5, i64 %i.jg
  %bound0352 = icmp ult ptr %i.jf, %i.jh
  %bound1353 = icmp ult ptr %5, %i.jd
  %found.conflict354 = and i1 %bound0352, %bound1353
  br i1 %found.conflict354, label %.lr.ph.i.i215.preheader447, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck351
  %n.vec356 = and i64 %4, -8                      ; 3 uses
  %i.ji = and i64 %4, 7
  %i.jj = shl i64 %n.vec356, 2                    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jf, i64 %i.jj
  %i.jl = getelementptr i8, ptr %5, i64 %i.jj
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ] ; 2 uses
  %i.jm = shl i64 %index358, 2                    ; 2 uses
  %next.gep359 = getelementptr i8, ptr %i.jf, i64 %i.jm ; 2 uses
  %next.gep360 = getelementptr i8, ptr %5, i64 %i.jm ; 3 uses
  %i.jn = getelementptr i8, ptr %next.gep360, i64 16 ; 2 uses
  %wide.load361 = load <4 x i32>, ptr %next.gep360, align 4, !tbaa !355, !alias.scope !6320
  %wide.load362 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !355, !alias.scope !6320
  %i.jo = getelementptr i8, ptr %next.gep359, i64 16
  store <4 x i32> %wide.load361, ptr %next.gep359, align 4, !tbaa !355, !alias.scope !6321, !noalias !6320
  store <4 x i32> %wide.load362, ptr %i.jo, align 4, !tbaa !355, !alias.scope !6321, !noalias !6320
  store <4 x i32> zeroinitializer, ptr %next.gep360, align 4, !tbaa !355, !alias.scope !6320
  store <4 x i32> zeroinitializer, ptr %i.jn, align 4, !tbaa !355, !alias.scope !6320
  %index.next363 = add nuw i64 %index358, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.jp, label %middle.block364, label %vector.body357, !llvm.loop !6304

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %4, %n.vec356
  br i1 %cmp.n365, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader447

.lr.ph.i.i215.preheader447:                       ; preds = %vector.memcheck351, %.lr.ph.i.i215.preheader, %middle.block364
  %.09.i.i216.ph = phi i64 [ %4, %vector.memcheck351 ], [ %4, %.lr.ph.i.i215.preheader ], [ %i.ji, %middle.block364 ] ; 4 uses
  %.048.i.i217.ph = phi ptr [ %i.jf, %vector.memcheck351 ], [ %i.jf, %.lr.ph.i.i215.preheader ], [ %i.jk, %middle.block364 ] ; 2 uses
  %.sroa.0.07.i.i218.ph = phi ptr [ %5, %vector.memcheck351 ], [ %5, %.lr.ph.i.i215.preheader ], [ %i.jl, %middle.block364 ] ; 2 uses
  %i.jq = add i64 %.09.i.i216.ph, -1
  %xtraiter461 = and i64 %.09.i.i216.ph, 3        ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader447, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.jr, %.lr.ph.i.i215.prol ], [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader447 ]
  %.048.i.i217.prol = phi ptr [ %i.ju, %.lr.ph.i.i215.prol ], [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader447 ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.jt, %.lr.ph.i.i215.prol ], [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader447 ] ; 3 uses
  %prol.iter463 = phi i64 [ %prol.iter463.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader447 ]
  %i.jr = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.js = load i32, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !355
  store i32 %i.js, ptr %.048.i.i217.prol, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !355
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter463.next = add i64 %prol.iter463, 1   ; 2 uses
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461
  br i1 %prol.iter463.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !6305

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader447
  %.09.i.i216.unr = phi i64 [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader447 ], [ %i.jr, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader447 ], [ %i.ju, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader447 ], [ %i.jt, %.lr.ph.i.i215.prol ]
  %i.jv = icmp ult i64 %i.jq, 3
  br i1 %i.jv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.kf, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.ki, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.kh, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 6 uses
  %i.jw = load i32, ptr %.sroa.0.07.i.i218, align 4, !tbaa !355
  store i32 %i.jw, ptr %.048.i.i217, align 4, !tbaa !355
  store i32 0, ptr %.sroa.0.07.i.i218, align 4, !tbaa !355
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !355
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !355
  store i32 0, ptr %i.jx, align 4, !tbaa !355
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !355
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !355
  store i32 0, ptr %i.ka, align 4, !tbaa !355
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 12 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.kf = add i64 %.09.i.i216, -4                 ; 2 uses
  %i.kg = load i32, ptr %i.kd, align 4, !tbaa !355
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !355
  store i32 0, ptr %i.kd, align 4, !tbaa !355
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %.not.i.i219.3 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i219.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !6306

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %middle.block364, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.jf
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.kj = ptrtoaddr ptr %0 to i64
  %i.kk = add i64 %i.e, -4
  %i.kl = sub i64 %i.kk, %i.kj                    ; 3 uses
  %i.km = lshr i64 %i.kl, 2
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.kl, 108
  br i1 %min.iters.check375, label %.lr.ph.i.i224.preheader445, label %vector.memcheck376

vector.memcheck376:                               ; preds = %.lr.ph.i.i224.preheader
  %i.ko = shl i64 %4, 2
  %i.kp = and i64 %i.kl, -4                       ; 2 uses
  %i.kq = add i64 %i.ko, %i.kp
  %i.kr = sub nuw nsw i64 -4, %i.kq
  %i.ks = getelementptr i8, ptr %i.jd, i64 %i.kr
  %i.kt = sub nuw nsw i64 -4, %i.kp
  %i.ku = getelementptr i8, ptr %3, i64 %i.kt
  %bound0377 = icmp ult ptr %i.ks, %3
  %bound1378 = icmp ult ptr %i.ku, %i.jf
  %found.conflict379 = and i1 %bound0377, %bound1378
  br i1 %found.conflict379, label %.lr.ph.i.i224.preheader445, label %vector.ph380

end_hunk_4
begin_hunk_5_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  store i32 %i.ey, ptr %i.a, align 4, !tbaa !355
  %i.ez = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fb = load ptr, ptr %.sroa.0.016.i.i174.ph, align 8, !tbaa !412
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fd = add nsw i64 %i.du, -1
  br label %.lr.ph.i.i171.prol.loopexit

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.du, %.lr.ph.i.i171.preheader ], [ %i.fd, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.a, %.lr.ph.i.i171.preheader ], [ %i.fc, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fb, %.lr.ph.i.i171.prol ]
  %i.fe = icmp eq i64 %i.j, %.neg420
  br i1 %i.fe, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.fq, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.fp, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.fo, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !247
  store i32 %i.fg, ptr %.01417.i.i173, align 4, !tbaa !355
  %i.fh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fj = load ptr, ptr %.sroa.0.016.i.i174, align 8, !tbaa !412 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !247
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !355
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !412
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.fq = add i64 %.018.i.i172, -2                ; 2 uses
  %.not.i.i175.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i175.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !139

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.dx
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.fr = ptrtoaddr ptr %0 to i64
  %i.fs = add i64 %i.e, -4
  %i.ft = sub i64 %i.fs, %i.fr                    ; 3 uses
  %i.fu = lshr i64 %i.ft, 2
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.ft, 124
  br i1 %min.iters.check375, label %.lr.ph.i.i180.preheader393, label %vector.memcheck376

vector.memcheck376:                               ; preds = %.lr.ph.i.i180.preheader
  %i.fw = and i64 %i.ft, -4                       ; 2 uses
  %i.fx = sub i64 %1, %i.dv
  %i.fy = shl i64 %i.fx, 2
  %i.fz = add i64 %i.fy, -4
  %i.ga = sub i64 %i.fz, %i.fw
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga
  %i.gc = sub nuw nsw i64 -4, %i.fw
  %i.gd = getelementptr i8, ptr %3, i64 %i.gc
  %bound0377 = icmp ult ptr %i.gb, %3
  %bound1378 = icmp ult ptr %i.gd, %i.dx
  %found.conflict379 = and i1 %bound0377, %bound1378
  br i1 %found.conflict379, label %.lr.ph.i.i180.preheader393, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck376
  %n.vec381 = and i64 %i.fv, 9223372036854775800  ; 3 uses
  %i.ge = mul i64 %n.vec381, -4                   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.dx, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %3, i64 %i.ge
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next388, %vector.body382 ] ; 2 uses
  %i.gh = mul i64 %index383, -4                   ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.dx, i64 %i.gh ; 2 uses
  %next.gep385 = getelementptr i8, ptr %3, i64 %i.gh ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep385, i64 -16 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %next.gep385, i64 -32 ; 2 uses
  %wide.load386 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !355, !alias.scope !6410
  %wide.load387 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !355, !alias.scope !6410
  %i.gk = getelementptr inbounds i8, ptr %next.gep384, i64 -16
  %i.gl = getelementptr inbounds i8, ptr %next.gep384, i64 -32
  store <4 x i32> %wide.load386, ptr %i.gk, align 4, !tbaa !355, !alias.scope !6411, !noalias !6410
  store <4 x i32> %wide.load387, ptr %i.gl, align 4, !tbaa !355, !alias.scope !6411, !noalias !6410
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !355, !alias.scope !6410
  store <4 x i32> zeroinitializer, ptr %i.gj, align 4, !tbaa !355, !alias.scope !6410
  %index.next388 = add nuw i64 %index383, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next388, %n.vec381
  br i1 %i.gm, label %middle.block389, label %vector.body382, !llvm.loop !6395

middle.block389:                                  ; preds = %vector.body382
  %cmp.n390 = icmp eq i64 %i.fv, %n.vec381
  br i1 %cmp.n390, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader393

.lr.ph.i.i180.preheader393:                       ; preds = %vector.memcheck376, %.lr.ph.i.i180.preheader, %middle.block389
  %.010.i.i181.ph = phi ptr [ %i.dx, %vector.memcheck376 ], [ %i.dx, %.lr.ph.i.i180.preheader ], [ %i.gf, %middle.block389 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck376 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.gg, %middle.block389 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader393, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.go, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader393 ]
  %.079.i.i182 = phi ptr [ %i.gn, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader393 ]
  %i.gn = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !355
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !355
  store i32 0, ptr %i.gn, align 4, !tbaa !355
  %.not.i.i183 = icmp eq ptr %0, %i.gn
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !6396

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block389, %bb.g
  %i.gq = phi ptr [ %i.dx, %bb.g ], [ %i.gf, %middle.block389 ], [ %i.go, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.gq
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.gt, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !355
  %i.gr = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.gt, %i.gq
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !135

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gu = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.gv = and i64 %i.i, 4
  %lcmp.mod409.not = icmp eq i64 %i.gv, 0
  br i1 %lcmp.mod409.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.gw = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gx = load i32, ptr %i.gu, align 4, !tbaa !355
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !355
  store i32 0, ptr %i.gu, align 4, !tbaa !355
  %i.gy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.j, %.lr.ph.i199.preheader ], [ %i.gw, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.gu, %.lr.ph.i199.preheader ], [ %i.ha, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.a, %.lr.ph.i199.preheader ], [ %i.hb, %.lr.ph.i199.prol ]
  %i.hc = icmp eq i64 %i.i, 4
  br i1 %i.hc, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.hi, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.hm, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.hn, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.hd = load i32, ptr %.0819.i201, align 4, !tbaa !355
  store i32 %i.hd, ptr %.01618.i202, align 4, !tbaa !355
  store i32 0, ptr %.0819.i201, align 4, !tbaa !355
  %i.he = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.hi = add i64 %.020.i200, -2                  ; 2 uses
  %i.hj = load i32, ptr %i.hg, align 4, !tbaa !355
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !355
  store i32 0, ptr %i.hg, align 4, !tbaa !355
  %i.hk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hm = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.hi, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.gu
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.ho = shl nsw i64 %1, 2
  %i.hp = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.hq = shl i64 %i.hp, 1
  %i.hr = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hs = shl i64 %4, 2
  %i.ht = add i64 %i.ho, %i.hq
  %i.hu = add i64 %i.ht, -4
  %i.hv = add i64 %i.hr, %i.e
  %i.hw = add i64 %i.hv, %i.hs
  %i.hx = sub i64 %i.hu, %i.hw                    ; 2 uses
  %i.hy = lshr i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.hx, 188
  br i1 %min.iters.check327, label %.lr.ph.i.i208.preheader398, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i208.preheader
  %i.ia = shl nsw i64 %1, 2                       ; 3 uses
  %i.ib = shl i64 %i.hp, 1
  %i.ic = shl i64 %4, 2                           ; 2 uses
  %i.id = add i64 %i.ia, %i.ib
  %i.ie = add i64 %i.id, -4
  %i.if = add i64 %i.hr, %i.e
  %i.ig = add i64 %i.if, %i.ic
  %i.ih = sub i64 %i.ie, %i.ig
  %i.ii = and i64 %i.ih, -4                       ; 2 uses
  %i.ij = add i64 %i.ia, -4
  %i.ik = sub i64 %i.ij, %i.ii
  %i.il = getelementptr i8, ptr %0, i64 %i.ik
  %i.im = add i64 %i.ia, %i.hp
  %i.in = add i64 %i.im, -4
  %i.io = add i64 %i.ic, %i.hr
  %i.ip = add i64 %i.io, %i.ii
  %i.iq = sub i64 %i.in, %i.ip
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %bound0329 = icmp ult ptr %i.il, %i.gu
  %bound1330 = icmp ult ptr %i.ir, %i.a
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i208.preheader398, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.hz, 9223372036854775800  ; 3 uses
  %i.is = mul i64 %n.vec333, -4                   ; 2 uses
  %i.it = getelementptr i8, ptr %i.a, i64 %i.is   ; 2 uses
  %i.iu = getelementptr i8, ptr %i.gu, i64 %i.is
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.iv = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.a, i64 %i.iv ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.gu, i64 %i.iv ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !355, !alias.scope !6412
  %wide.load339 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !355, !alias.scope !6412
  %i.iy = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.iz = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.iy, align 4, !tbaa !355, !alias.scope !6413, !noalias !6412
  store <4 x i32> %wide.load339, ptr %i.iz, align 4, !tbaa !355, !alias.scope !6413, !noalias !6412
  store <4 x i32> zeroinitializer, ptr %i.iw, align 4, !tbaa !355, !alias.scope !6412
  store <4 x i32> zeroinitializer, ptr %i.ix, align 4, !tbaa !355, !alias.scope !6412
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.ja, label %middle.block341, label %vector.body334, !llvm.loop !6400

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.hz, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader398

.lr.ph.i.i208.preheader398:                       ; preds = %vector.memcheck328, %.lr.ph.i.i208.preheader, %middle.block341
  %.010.i.i209.ph = phi ptr [ %i.a, %vector.memcheck328 ], [ %i.a, %.lr.ph.i.i208.preheader ], [ %i.it, %middle.block341 ]
  %.079.i.i210.ph = phi ptr [ %i.gu, %vector.memcheck328 ], [ %i.gu, %.lr.ph.i.i208.preheader ], [ %i.iu, %middle.block341 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader398, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.jc, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader398 ]
  %.079.i.i210 = phi ptr [ %i.jb, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader398 ]
  %i.jb = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.jc = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !355
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !355
  store i32 0, ptr %i.jb, align 4, !tbaa !355
  %.not.i.i211 = icmp eq ptr %3, %i.jb
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !6401

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block341, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.je = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.it, %middle.block341 ], [ %i.jc, %.lr.ph.i.i208 ] ; 2 uses
  %i.jf = sub i64 0, %4
  %i.jg = getelementptr [4 x i8], ptr %i.je, i64 %i.jf ; 9 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212
  %xtraiter411 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.jh, %.lr.ph.i.i215.prol ], [ %4, %.lr.ph.i.i215.preheader ]
  %.048.i.i217.prol = phi ptr [ %i.jl, %.lr.ph.i.i215.prol ], [ %i.jg, %.lr.ph.i.i215.preheader ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.jk, %.lr.ph.i.i215.prol ], [ %5, %.lr.ph.i.i215.preheader ] ; 2 uses
  %prol.iter413 = phi i64 [ %prol.iter413.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader ]
  %i.jh = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 16
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !247
  store i32 %i.jj, ptr %.048.i.i217.prol, align 4, !tbaa !355
  %i.jk = load ptr, ptr %.sroa.0.07.i.i218.prol, align 8, !tbaa !412 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter413.next = add i64 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i64 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !6402

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader
  %.09.i.i216.unr = phi i64 [ %4, %.lr.ph.i.i215.preheader ], [ %i.jh, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %i.jg, %.lr.ph.i.i215.preheader ], [ %i.jl, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %5, %.lr.ph.i.i215.preheader ], [ %i.jk, %.lr.ph.i.i215.prol ]
  %i.jm = icmp ult i64 %4, 4
  br i1 %i.jm, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.jz, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.kd, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.kc, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !247
  store i32 %i.jo, ptr %.048.i.i217, align 4, !tbaa !355
  %i.jp = load ptr, ptr %.sroa.0.07.i.i218, align 8, !tbaa !412 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !247
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !355
  %i.jt = load ptr, ptr %i.jp, align 8, !tbaa !412 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !247
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !355
  %i.jx = load ptr, ptr %i.jt, align 8, !tbaa !412 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.jz = add i64 %.09.i.i216, -4                 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !247
  store i32 %i.kb, ptr %i.jy, align 4, !tbaa !355
  %i.kc = load ptr, ptr %i.jx, align 8, !tbaa !412
  %i.kd = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %.not.i.i219.3 = icmp eq i64 %i.jz, 0
  br i1 %.not.i.i219.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !58

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.jg
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.ke = ptrtoaddr ptr %0 to i64
  %i.kf = add i64 %i.e, -4
  %i.kg = sub i64 %i.kf, %i.ke                    ; 3 uses
  %i.kh = lshr i64 %i.kg, 2
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check351 = icmp ult i64 %i.kg, 108
  br i1 %min.iters.check351, label %.lr.ph.i.i224.preheader396, label %vector.memcheck352

vector.memcheck352:                               ; preds = %.lr.ph.i.i224.preheader
  %i.kj = shl i64 %4, 2
  %i.kk = and i64 %i.kg, -4                       ; 2 uses
  %i.kl = add i64 %i.kj, %i.kk
  %i.km = sub nuw nsw i64 -4, %i.kl
  %i.kn = getelementptr i8, ptr %i.je, i64 %i.km
  %i.ko = sub nuw nsw i64 -4, %i.kk
  %i.kp = getelementptr i8, ptr %3, i64 %i.ko
  %bound0353 = icmp ult ptr %i.kn, %3
  %bound1354 = icmp ult ptr %i.kp, %i.jg
  %found.conflict355 = and i1 %bound0353, %bound1354
  br i1 %found.conflict355, label %.lr.ph.i.i224.preheader396, label %vector.ph356

vector.ph356:                                     ; preds = %vector.memcheck352
  %n.vec357 = and i64 %i.ki, 9223372036854775800  ; 3 uses
  %i.kq = mul i64 %n.vec357, -4                   ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jg, i64 %i.kq  ; 2 uses
  %i.ks = getelementptr i8, ptr %3, i64 %i.kq
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body358 ] ; 2 uses
  %i.kt = mul i64 %index359, -4                   ; 2 uses
  %next.gep360 = getelementptr i8, ptr %i.jg, i64 %i.kt ; 2 uses
  %next.gep361 = getelementptr i8, ptr %3, i64 %i.kt ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %next.gep361, i64 -16 ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %next.gep361, i64 -32 ; 2 uses
  %wide.load362 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !355, !alias.scope !6414
  %wide.load363 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !355, !alias.scope !6414
  %i.kw = getelementptr inbounds i8, ptr %next.gep360, i64 -16
  %i.kx = getelementptr inbounds i8, ptr %next.gep360, i64 -32
  store <4 x i32> %wide.load362, ptr %i.kw, align 4, !tbaa !355, !alias.scope !6415, !noalias !6414
  store <4 x i32> %wide.load363, ptr %i.kx, align 4, !tbaa !355, !alias.scope !6415, !noalias !6414
  store <4 x i32> zeroinitializer, ptr %i.ku, align 4, !tbaa !355, !alias.scope !6414
  store <4 x i32> zeroinitializer, ptr %i.kv, align 4, !tbaa !355, !alias.scope !6414
  %index.next364 = add nuw i64 %index359, 8       ; 2 uses
  %i.ky = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.ky, label %middle.block365, label %vector.body358, !llvm.loop !6406

middle.block365:                                  ; preds = %vector.body358
  %cmp.n366 = icmp eq i64 %i.ki, %n.vec357
  br i1 %cmp.n366, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader396

.lr.ph.i.i224.preheader396:                       ; preds = %vector.memcheck352, %.lr.ph.i.i224.preheader, %middle.block365
  %.010.i.i225.ph = phi ptr [ %i.jg, %vector.memcheck352 ], [ %i.jg, %.lr.ph.i.i224.preheader ], [ %i.kr, %middle.block365 ]
  %.079.i.i226.ph = phi ptr [ %3, %vector.memcheck352 ], [ %3, %.lr.ph.i.i224.preheader ], [ %i.ks, %middle.block365 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader396, %.lr.ph.i.i224
  %.010.i.i225 = phi ptr [ %i.la, %.lr.ph.i.i224 ], [ %.010.i.i225.ph, %.lr.ph.i.i224.preheader396 ]
  %.079.i.i226 = phi ptr [ %i.kz, %.lr.ph.i.i224 ], [ %.079.i.i226.ph, %.lr.ph.i.i224.preheader396 ]
  %i.kz = getelementptr inbounds i8, ptr %.079.i.i226, i64 -4 ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %.010.i.i225, i64 -4 ; 3 uses
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !355
  store i32 %i.lb, ptr %i.la, align 4, !tbaa !355
  store i32 0, ptr %i.kz, align 4, !tbaa !355
  %.not.i.i227 = icmp eq ptr %0, %i.kz
  br i1 %.not.i.i227, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224, !llvm.loop !6407
end_hunk_5
begin_hunk_6_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvT0_mSB_SB_mT1_RT_:bb.a
  %.pre = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  br label %.loopexit

.lr.ph.i159.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159
  %.018.i160 = phi ptr [ %i.dc, %.lr.ph.i159 ], [ %3, %.lr.ph.i159.preheader ] ; 3 uses
  %.01517.i161 = phi ptr [ %i.dd, %.lr.ph.i159 ], [ %i.cy, %.lr.ph.i159.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i161) ]
  %i.cz = load i32, ptr %.018.i160, align 4, !tbaa !355
  store i32 %i.cz, ptr %.01517.i161, align 4, !tbaa !355
  store i32 0, ptr %.018.i160, align 4, !tbaa !355
  %i.da = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1                        ; 2 uses
  store i32 %i.db, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i160, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i161, i64 4
  %.not.i162 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i162, label %.loopexit, label %.lr.ph.i159, !llvm.loop !134

.loopexit:                                        ; preds = %.lr.ph.i159, %..loopexit_crit_edge
  %i.de = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.db, %.lr.ph.i159 ]
  %.neg252 = sub i64 %i.l, %i.m
  %i.df = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg252 ; 8 uses
  %i.dg = load i32, ptr %5, align 4, !tbaa !247
  %i.dh = add i32 %i.de, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !355
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.dk = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.dk, ptr %i.b, align 4, !tbaa !355
  %i.dl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %.not.i165 = icmp eq ptr %3, %i.df
  br i1 %.not.i165, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i166 = icmp eq ptr %0, %3
  br i1 %.not8.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171, label %.lr.ph.i.i167.preheader

.lr.ph.i.i167.preheader:                          ; preds = %bb.g
  %i.dn = ptrtoaddr ptr %0 to i64
  %i.do = add i64 %i.f, -4
  %i.dp = sub i64 %i.do, %i.dn                    ; 3 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.dp, 140
  br i1 %min.iters.check357, label %.lr.ph.i.i167.preheader375, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph.i.i167.preheader
  %i.ds = shl nsw i64 %1, 2
  %i.dt = and i64 %i.dp, -4                       ; 2 uses
  %i.du = shl i64 %i.m, 2
  %i.dv = add i64 %i.k, %i.ds
  %i.dw = add i64 %i.dv, -4
  %i.dx = add i64 %i.dt, %i.du
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = getelementptr i8, ptr %0, i64 %i.dy
  %i.ea = sub nuw nsw i64 -4, %i.dt
  %i.eb = getelementptr i8, ptr %3, i64 %i.ea
  %bound0359 = icmp ult ptr %i.dz, %3
  %bound1360 = icmp ult ptr %i.eb, %i.df
  %found.conflict361 = and i1 %bound0359, %bound1360
  br i1 %found.conflict361, label %.lr.ph.i.i167.preheader375, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %n.vec363 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.ec = mul i64 %n.vec363, -4                   ; 2 uses
  %i.ed = getelementptr i8, ptr %i.df, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %3, i64 %i.ec
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next370, %vector.body364 ] ; 2 uses
  %i.ef = mul i64 %index365, -4                   ; 2 uses
  %next.gep366 = getelementptr i8, ptr %i.df, i64 %i.ef ; 2 uses
  %next.gep367 = getelementptr i8, ptr %3, i64 %i.ef ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %next.gep367, i64 -16 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %next.gep367, i64 -32 ; 2 uses
  %wide.load368 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !355, !alias.scope !6487
  %wide.load369 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !355, !alias.scope !6487
  %i.ei = getelementptr inbounds i8, ptr %next.gep366, i64 -16
  %i.ej = getelementptr inbounds i8, ptr %next.gep366, i64 -32
  store <4 x i32> %wide.load368, ptr %i.ei, align 4, !tbaa !355, !alias.scope !6488, !noalias !6487
  store <4 x i32> %wide.load369, ptr %i.ej, align 4, !tbaa !355, !alias.scope !6488, !noalias !6487
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !355, !alias.scope !6487
  store <4 x i32> zeroinitializer, ptr %i.eh, align 4, !tbaa !355, !alias.scope !6487
  %index.next370 = add nuw i64 %index365, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next370, %n.vec363
  br i1 %i.ek, label %middle.block371, label %vector.body364, !llvm.loop !6473

middle.block371:                                  ; preds = %vector.body364
  %cmp.n372 = icmp eq i64 %i.dr, %n.vec363
  br i1 %cmp.n372, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171, label %.lr.ph.i.i167.preheader375

.lr.ph.i.i167.preheader375:                       ; preds = %vector.memcheck358, %.lr.ph.i.i167.preheader, %middle.block371
  %.010.i.i168.ph = phi ptr [ %i.df, %vector.memcheck358 ], [ %i.df, %.lr.ph.i.i167.preheader ], [ %i.ed, %middle.block371 ]
  %.079.i.i169.ph = phi ptr [ %3, %vector.memcheck358 ], [ %3, %.lr.ph.i.i167.preheader ], [ %i.ee, %middle.block371 ]
  br label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %.lr.ph.i.i167.preheader375, %.lr.ph.i.i167
  %.010.i.i168 = phi ptr [ %i.em, %.lr.ph.i.i167 ], [ %.010.i.i168.ph, %.lr.ph.i.i167.preheader375 ]
  %.079.i.i169 = phi ptr [ %i.el, %.lr.ph.i.i167 ], [ %.079.i.i169.ph, %.lr.ph.i.i167.preheader375 ]
  %i.el = getelementptr inbounds i8, ptr %.079.i.i169, i64 -4 ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %.010.i.i168, i64 -4 ; 3 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !355
  store i32 %i.en, ptr %i.em, align 4, !tbaa !355
  store i32 0, ptr %i.el, align 4, !tbaa !355
  %.not.i.i170 = icmp eq ptr %0, %i.el
  br i1 %.not.i.i170, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171, label %.lr.ph.i.i167, !llvm.loop !6474

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171: ; preds = %.lr.ph.i.i167, %middle.block371, %bb.g
  %i.eo = phi ptr [ %i.df, %bb.g ], [ %i.ed, %middle.block371 ], [ %i.em, %.lr.ph.i.i167 ] ; 2 uses
  %.not3.i172 = icmp eq ptr %0, %i.eo
  br i1 %.not3.i172, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171, %.lr.ph.i173
  %storemerge4.i174 = phi ptr [ %i.er, %.lr.ph.i173 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i174, align 4, !tbaa !355
  %i.ep = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge4.i174, i64 4 ; 2 uses
  %.not.i175 = icmp eq ptr %i.er, %i.eo
  br i1 %.not.i175, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i173, !llvm.loop !135

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.es = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i185 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i185, label %.loopexit254, label %.lr.ph.i186.preheader

.lr.ph.i186.preheader:                            ; preds = %bb.h
  %i.et = and i64 %i.k, 4
  %lcmp.mod389.not = icmp eq i64 %i.et, 0
  br i1 %lcmp.mod389.not, label %.lr.ph.i186.prol.loopexit, label %.lr.ph.i186.prol

.lr.ph.i186.prol:                                 ; preds = %.lr.ph.i186.preheader
  %i.eu = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ev = load i32, ptr %i.es, align 4, !tbaa !355
  store i32 %i.ev, ptr %i.b, align 4, !tbaa !355
  store i32 0, ptr %i.es, align 4, !tbaa !355
  %i.ew = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i186.prol.loopexit

.lr.ph.i186.prol.loopexit:                        ; preds = %.lr.ph.i186.prol, %.lr.ph.i186.preheader
  %.020.i187.unr = phi i64 [ %i.l, %.lr.ph.i186.preheader ], [ %i.eu, %.lr.ph.i186.prol ]
  %.0819.i188.unr = phi ptr [ %i.es, %.lr.ph.i186.preheader ], [ %i.ey, %.lr.ph.i186.prol ]
  %.01618.i189.unr = phi ptr [ %i.b, %.lr.ph.i186.preheader ], [ %i.ez, %.lr.ph.i186.prol ]
  %i.fa = icmp eq i64 %i.k, 4
  br i1 %i.fa, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.lr.ph.i186.prol.loopexit, %.lr.ph.i186
  %.020.i187 = phi i64 [ %i.fg, %.lr.ph.i186 ], [ %.020.i187.unr, %.lr.ph.i186.prol.loopexit ]
  %.0819.i188 = phi ptr [ %i.fk, %.lr.ph.i186 ], [ %.0819.i188.unr, %.lr.ph.i186.prol.loopexit ] ; 4 uses
  %.01618.i189 = phi ptr [ %i.fl, %.lr.ph.i186 ], [ %.01618.i189.unr, %.lr.ph.i186.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i189) ]
  %i.fb = load i32, ptr %.0819.i188, align 4, !tbaa !355
  store i32 %i.fb, ptr %.01618.i189, align 4, !tbaa !355
  store i32 0, ptr %.0819.i188, align 4, !tbaa !355
  %i.fc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fe = getelementptr inbounds nuw i8, ptr %.0819.i188, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.01618.i189, i64 4
  %i.fg = add i64 %.020.i187, -2                  ; 2 uses
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !355
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !355
  store i32 0, ptr %i.fe, align 4, !tbaa !355
  %i.fi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.fk = getelementptr inbounds nuw i8, ptr %.0819.i188, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.01618.i189, i64 8
  %.not.i190.1 = icmp eq i64 %i.fg, 0
  br i1 %.not.i190.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192, label %.lr.ph.i186, !llvm.loop !133

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192: ; preds = %.lr.ph.i186, %.lr.ph.i186.prol.loopexit
  %.not8.i.i194 = icmp eq ptr %3, %i.es
  br i1 %.not8.i.i194, label %.loopexit254, label %.lr.ph.i.i195.preheader

.lr.ph.i.i195.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192
  %i.fm = shl nsw i64 %1, 2
  %i.fn = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fo = shl i64 %i.fn, 1
  %i.fp = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fq = shl i64 %4, 2
  %i.fr = add i64 %i.fm, %i.fo
  %i.fs = add i64 %i.fr, -4
  %i.ft = add i64 %i.fp, %i.f
  %i.fu = add i64 %i.ft, %i.fq
  %i.fv = sub i64 %i.fs, %i.fu                    ; 2 uses
  %i.fw = lshr i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check309 = icmp ult i64 %i.fv, 188
  br i1 %min.iters.check309, label %.lr.ph.i.i195.preheader380, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.i.i195.preheader
  %i.fy = shl nsw i64 %1, 2                       ; 3 uses
  %i.fz = shl i64 %i.fn, 1
  %i.ga = shl i64 %4, 2                           ; 2 uses
  %i.gb = add i64 %i.fy, %i.fz
  %i.gc = add i64 %i.gb, -4
  %i.gd = add i64 %i.fp, %i.f
  %i.ge = add i64 %i.gd, %i.ga
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = and i64 %i.gf, -4                       ; 2 uses
  %i.gh = add i64 %i.fy, -4
  %i.gi = sub i64 %i.gh, %i.gg
  %i.gj = getelementptr i8, ptr %0, i64 %i.gi
  %i.gk = add i64 %i.fy, %i.fn
  %i.gl = add i64 %i.gk, -4
  %i.gm = add i64 %i.ga, %i.fp
  %i.gn = add i64 %i.gm, %i.gg
  %i.go = sub i64 %i.gl, %i.gn
  %i.gp = getelementptr i8, ptr %0, i64 %i.go
  %bound0311 = icmp ult ptr %i.gj, %i.es
  %bound1312 = icmp ult ptr %i.gp, %i.b
  %found.conflict313 = and i1 %bound0311, %bound1312
  br i1 %found.conflict313, label %.lr.ph.i.i195.preheader380, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck310
  %n.vec315 = and i64 %i.fx, 9223372036854775800  ; 3 uses
  %i.gq = mul i64 %n.vec315, -4                   ; 2 uses
  %i.gr = getelementptr i8, ptr %i.b, i64 %i.gq   ; 2 uses
  %i.gs = getelementptr i8, ptr %i.es, i64 %i.gq
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.gt = mul i64 %index317, -4                   ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.b, i64 %i.gt ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.es, i64 %i.gt ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %next.gep319, i64 -16 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %next.gep319, i64 -32 ; 2 uses
  %wide.load320 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !355, !alias.scope !6489
  %wide.load321 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !355, !alias.scope !6489
  %i.gw = getelementptr inbounds i8, ptr %next.gep318, i64 -16
  %i.gx = getelementptr inbounds i8, ptr %next.gep318, i64 -32
  store <4 x i32> %wide.load320, ptr %i.gw, align 4, !tbaa !355, !alias.scope !6490, !noalias !6489
  store <4 x i32> %wide.load321, ptr %i.gx, align 4, !tbaa !355, !alias.scope !6490, !noalias !6489
  store <4 x i32> zeroinitializer, ptr %i.gu, align 4, !tbaa !355, !alias.scope !6489
  store <4 x i32> zeroinitializer, ptr %i.gv, align 4, !tbaa !355, !alias.scope !6489
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.gy, label %middle.block323, label %vector.body316, !llvm.loop !6478

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.fx, %n.vec315
  br i1 %cmp.n324, label %.loopexit254, label %.lr.ph.i.i195.preheader380

.lr.ph.i.i195.preheader380:                       ; preds = %vector.memcheck310, %.lr.ph.i.i195.preheader, %middle.block323
  %.010.i.i196.ph = phi ptr [ %i.b, %vector.memcheck310 ], [ %i.b, %.lr.ph.i.i195.preheader ], [ %i.gr, %middle.block323 ]
  %.079.i.i197.ph = phi ptr [ %i.es, %vector.memcheck310 ], [ %i.es, %.lr.ph.i.i195.preheader ], [ %i.gs, %middle.block323 ]
  br label %.lr.ph.i.i195

.lr.ph.i.i195:                                    ; preds = %.lr.ph.i.i195.preheader380, %.lr.ph.i.i195
  %.010.i.i196 = phi ptr [ %i.ha, %.lr.ph.i.i195 ], [ %.010.i.i196.ph, %.lr.ph.i.i195.preheader380 ]
  %.079.i.i197 = phi ptr [ %i.gz, %.lr.ph.i.i195 ], [ %.079.i.i197.ph, %.lr.ph.i.i195.preheader380 ]
  %i.gz = getelementptr inbounds i8, ptr %.079.i.i197, i64 -4 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %.010.i.i196, i64 -4 ; 3 uses
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !355
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !355
  store i32 0, ptr %i.gz, align 4, !tbaa !355
  %.not.i.i198 = icmp eq ptr %3, %i.gz
  br i1 %.not.i.i198, label %.loopexit254, label %.lr.ph.i.i195, !llvm.loop !6479

.loopexit254:                                     ; preds = %.lr.ph.i.i195, %middle.block323, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192
  %i.hc = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192 ], [ %i.gr, %middle.block323 ], [ %i.ha, %.lr.ph.i.i195 ] ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.a ; 8 uses
  %i.he = load i32, ptr %5, align 4, !tbaa !247
  %i.hf = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !355
  %i.hh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.hi = add i32 %i.hh, -1
  store i32 %i.hi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %.not.i200 = icmp eq ptr %3, %i.hd
  br i1 %.not.i200, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %.loopexit254
  %.not8.i.i201 = icmp eq ptr %0, %3
  br i1 %.not8.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206, label %.lr.ph.i.i202.preheader

.lr.ph.i.i202.preheader:                          ; preds = %bb.i
  %i.hj = ptrtoaddr ptr %0 to i64
  %i.hk = add i64 %i.f, -4
  %i.hl = sub i64 %i.hk, %i.hj                    ; 3 uses
  %i.hm = lshr i64 %i.hl, 2
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.hl, 108
  br i1 %min.iters.check333, label %.lr.ph.i.i202.preheader378, label %vector.memcheck334

vector.memcheck334:                               ; preds = %.lr.ph.i.i202.preheader
  %i.ho = shl i64 %4, 2
  %i.hp = and i64 %i.hl, -4                       ; 2 uses
  %i.hq = add i64 %i.ho, %i.hp
  %i.hr = sub nuw nsw i64 -4, %i.hq
  %i.hs = getelementptr i8, ptr %i.hc, i64 %i.hr
  %i.ht = sub nuw nsw i64 -4, %i.hp
  %i.hu = getelementptr i8, ptr %3, i64 %i.ht
  %bound0335 = icmp ult ptr %i.hs, %3
  %bound1336 = icmp ult ptr %i.hu, %i.hd
  %found.conflict337 = and i1 %bound0335, %bound1336
  br i1 %found.conflict337, label %.lr.ph.i.i202.preheader378, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck334
  %n.vec339 = and i64 %i.hn, 9223372036854775800  ; 3 uses
  %i.hv = mul i64 %n.vec339, -4                   ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hd, i64 %i.hv  ; 2 uses
  %i.hx = getelementptr i8, ptr %3, i64 %i.hv
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next346, %vector.body340 ] ; 2 uses
  %i.hy = mul i64 %index341, -4                   ; 2 uses
  %next.gep342 = getelementptr i8, ptr %i.hd, i64 %i.hy ; 2 uses
  %next.gep343 = getelementptr i8, ptr %3, i64 %i.hy ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %next.gep343, i64 -16 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %next.gep343, i64 -32 ; 2 uses
  %wide.load344 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !355, !alias.scope !6491
  %wide.load345 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !355, !alias.scope !6491
  %i.ib = getelementptr inbounds i8, ptr %next.gep342, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep342, i64 -32
  store <4 x i32> %wide.load344, ptr %i.ib, align 4, !tbaa !355, !alias.scope !6492, !noalias !6491
  store <4 x i32> %wide.load345, ptr %i.ic, align 4, !tbaa !355, !alias.scope !6492, !noalias !6491
  store <4 x i32> zeroinitializer, ptr %i.hz, align 4, !tbaa !355, !alias.scope !6491
  store <4 x i32> zeroinitializer, ptr %i.ia, align 4, !tbaa !355, !alias.scope !6491
  %index.next346 = add nuw i64 %index341, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next346, %n.vec339
  br i1 %i.id, label %middle.block347, label %vector.body340, !llvm.loop !6483

middle.block347:                                  ; preds = %vector.body340
  %cmp.n348 = icmp eq i64 %i.hn, %n.vec339
  br i1 %cmp.n348, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206, label %.lr.ph.i.i202.preheader378

.lr.ph.i.i202.preheader378:                       ; preds = %vector.memcheck334, %.lr.ph.i.i202.preheader, %middle.block347
  %.010.i.i203.ph = phi ptr [ %i.hd, %vector.memcheck334 ], [ %i.hd, %.lr.ph.i.i202.preheader ], [ %i.hw, %middle.block347 ]
  %.079.i.i204.ph = phi ptr [ %3, %vector.memcheck334 ], [ %3, %.lr.ph.i.i202.preheader ], [ %i.hx, %middle.block347 ]
  br label %.lr.ph.i.i202

.lr.ph.i.i202:                                    ; preds = %.lr.ph.i.i202.preheader378, %.lr.ph.i.i202
  %.010.i.i203 = phi ptr [ %i.if, %.lr.ph.i.i202 ], [ %.010.i.i203.ph, %.lr.ph.i.i202.preheader378 ]
  %.079.i.i204 = phi ptr [ %i.ie, %.lr.ph.i.i202 ], [ %.079.i.i204.ph, %.lr.ph.i.i202.preheader378 ]
  %i.ie = getelementptr inbounds i8, ptr %.079.i.i204, i64 -4 ; 4 uses
  %i.if = getelementptr inbounds i8, ptr %.010.i.i203, i64 -4 ; 3 uses
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !355
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !355
  store i32 0, ptr %i.ie, align 4, !tbaa !355
  %.not.i.i205 = icmp eq ptr %0, %i.ie
  br i1 %.not.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206, label %.lr.ph.i.i202, !llvm.loop !6484

_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206: ; preds = %.lr.ph.i.i202, %middle.block347, %bb.i
  %i.ih = phi ptr [ %i.hd, %bb.i ], [ %i.hw, %middle.block347 ], [ %i.if, %.lr.ph.i.i202 ] ; 2 uses
  %.not3.i207 = icmp eq ptr %0, %i.ih
  br i1 %.not3.i207, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206, %.lr.ph.i208
  %storemerge4.i209 = phi ptr [ %i.ik, %.lr.ph.i208 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i209, align 4, !tbaa !355
  %i.ii = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ij = add i32 %i.ii, -1
  store i32 %i.ij, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !247
  %i.ik = getelementptr inbounds nuw i8, ptr %storemerge4.i209, i64 4 ; 2 uses
  %.not.i210 = icmp eq ptr %i.ik, %i.ih
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i208, !llvm.loop !135

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i208, %.lr.ph.i173, %.loopexit254, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit206, %_ZN5boost9container25move_backward_overlappingIPNS0_4test11movable_intEEET_S5_S5_S5_.exit171, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj2EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread, label %_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i

_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !470    ; 2 uses
  %i.d = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 7, i64 noundef 4, i64 noundef 4, i64 noundef %i.d, i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %i.c) ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0        ; 10 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !261
  %i.h = lshr i64 %i.g, 2                         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit

_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread: ; preds = %bb.a, %_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i
  call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit: ; preds = %_ZN5boost9container9allocatorINS0_4test11movable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i
  %i.i = extractvalue { ptr, i32 } %i.e, 1
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  %.not22 = icmp eq ptr %i.c, null
  %.not = or i1 %.not22, %.not.i.i.i.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !470    ; 13 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit
end_hunk_6
begin_hunk_7_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEEvT0_mSF_SF_mT1_RT_:bb.a
  store i32 %i.hc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !7081
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gy
  br i1 %i.he, label %bb.n, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180

bb.n:                                             ; preds = %.lr.ph.i.i175
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i176, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !259, !noalias !7081 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180: ; preds = %bb.n, %.lr.ph.i.i175
  %.sroa.11.1.i181 = phi ptr [ %i.hf, %bb.n ], [ %.sroa.11.0.i176, %.lr.ph.i.i175 ] ; 2 uses
  %i.hi = phi ptr [ %i.hh, %bb.n ], [ %i.gy, %.lr.ph.i.i175 ] ; 2 uses
  %i.hj = phi ptr [ %i.hg, %bb.n ], [ %i.hd, %.lr.ph.i.i175 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.01214.i.i179, i64 4
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !247, !noalias !7081
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !367, !noalias !7081
  %i.hm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !7081
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247, !noalias !7081
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hi
  br i1 %i.hp, label %bb.o, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1

bb.o:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i181, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !259, !noalias !7081 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1: ; preds = %bb.o, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180
  %.sroa.11.1.i181.1 = phi ptr [ %i.hq, %bb.o ], [ %.sroa.11.1.i181, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180 ]
  %i.ht = phi ptr [ %i.hs, %bb.o ], [ %i.hi, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180 ]
  %i.hu = phi ptr [ %i.hr, %bb.o ], [ %i.ho, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.01214.i.i179, i64 8
  %i.hw = add i64 %.015.i.i178, -2                ; 2 uses
  %.not.i.i183.1 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i183.1, label %.loopexit, label %.lr.ph.i.i175, !llvm.loop !142

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i180.1, %.lr.ph.i.i175.prol.loopexit
  %.not.i187 = icmp eq ptr %3, %i.eu
  br i1 %.not.i187, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not8.i.i188 = icmp eq ptr %0, %3
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %bb.p
  %i.hx = ptrtoaddr ptr %0 to i64
  %i.hy = add i64 %i.e, -4
  %i.hz = sub i64 %i.hy, %i.hx                    ; 3 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.hz, 124
  br i1 %min.iters.check418, label %.lr.ph.i.i189.preheader436, label %vector.memcheck419

vector.memcheck419:                               ; preds = %.lr.ph.i.i189.preheader
  %i.ic = and i64 %i.hz, -4                       ; 2 uses
  %i.id = sub i64 %1, %i.es
  %i.ie = shl i64 %i.id, 2
  %i.if = add i64 %i.ie, -4
  %i.ig = sub i64 %i.if, %i.ic
  %i.ih = getelementptr i8, ptr %0, i64 %i.ig
  %i.ii = sub nuw nsw i64 -4, %i.ic
  %i.ij = getelementptr i8, ptr %3, i64 %i.ii
  %bound0420 = icmp ult ptr %i.ih, %3
  %bound1421 = icmp ult ptr %i.ij, %i.eu
  %found.conflict422 = and i1 %bound0420, %bound1421
  br i1 %found.conflict422, label %.lr.ph.i.i189.preheader436, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck419
  %n.vec424 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.ik = mul i64 %n.vec424, -4                   ; 2 uses
  %i.il = getelementptr i8, ptr %i.eu, i64 %i.ik  ; 2 uses
  %i.im = getelementptr i8, ptr %3, i64 %i.ik
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next431, %vector.body425 ] ; 2 uses
  %i.in = mul i64 %index426, -4                   ; 2 uses
  %next.gep427 = getelementptr i8, ptr %i.eu, i64 %i.in ; 2 uses
  %next.gep428 = getelementptr i8, ptr %3, i64 %i.in ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %next.gep428, i64 -16 ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %next.gep428, i64 -32 ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %i.io, align 4, !tbaa !367, !alias.scope !7082
  %wide.load430 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !367, !alias.scope !7082
  %i.iq = getelementptr inbounds i8, ptr %next.gep427, i64 -16
  %i.ir = getelementptr inbounds i8, ptr %next.gep427, i64 -32
  store <4 x i32> %wide.load429, ptr %i.iq, align 4, !tbaa !367, !alias.scope !7083, !noalias !7082
  store <4 x i32> %wide.load430, ptr %i.ir, align 4, !tbaa !367, !alias.scope !7083, !noalias !7082
  store <4 x i32> zeroinitializer, ptr %i.io, align 4, !tbaa !367, !alias.scope !7082
  store <4 x i32> zeroinitializer, ptr %i.ip, align 4, !tbaa !367, !alias.scope !7082
  %index.next431 = add nuw i64 %index426, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.is, label %middle.block432, label %vector.body425, !llvm.loop !7063

middle.block432:                                  ; preds = %vector.body425
  %cmp.n433 = icmp eq i64 %i.ib, %n.vec424
  br i1 %cmp.n433, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader436

.lr.ph.i.i189.preheader436:                       ; preds = %vector.memcheck419, %.lr.ph.i.i189.preheader, %middle.block432
  %.010.i.i190.ph = phi ptr [ %i.eu, %vector.memcheck419 ], [ %i.eu, %.lr.ph.i.i189.preheader ], [ %i.il, %middle.block432 ]
  %.079.i.i191.ph = phi ptr [ %3, %vector.memcheck419 ], [ %3, %.lr.ph.i.i189.preheader ], [ %i.im, %middle.block432 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader436, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.iu, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader436 ]
  %.079.i.i191 = phi ptr [ %i.it, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader436 ]
  %i.it = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !367
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !367
  store i32 0, ptr %i.it, align 4, !tbaa !367
  %.not.i.i192 = icmp eq ptr %0, %i.it
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !7064

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block432, %bb.p
  %i.iw = phi ptr [ %i.eu, %bb.p ], [ %i.il, %middle.block432 ], [ %i.iu, %.lr.ph.i.i189 ] ; 2 uses
  %.not3.i194 = icmp eq ptr %0, %i.iw
  br i1 %.not3.i194, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit193, %.lr.ph.i195
  %storemerge4.i196 = phi ptr [ %i.iz, %.lr.ph.i195 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit193 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i196, align 4, !tbaa !367
  %i.ix = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.iy = add i32 %i.ix, -1
  store i32 %i.iy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge4.i196, i64 4 ; 2 uses
  %.not.i197 = icmp eq ptr %i.iz, %i.iw
  br i1 %.not.i197, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i195, !llvm.loop !145

bb.q:                                             ; preds = %bb.h
  %.idx = sub i64 0, %i.i
  %i.ja = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i207 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.q
  %i.jb = and i64 %i.i, 4
  %lcmp.mod455.not = icmp eq i64 %i.jb, 0
  br i1 %lcmp.mod455.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader
  %i.jc = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.jd = load i32, ptr %i.ja, align 4, !tbaa !367
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !367
  store i32 0, ptr %i.ja, align 4, !tbaa !367
  %i.je = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i208.prol.loopexit

.lr.ph.i208.prol.loopexit:                        ; preds = %.lr.ph.i208.prol, %.lr.ph.i208.preheader
  %.020.i209.unr = phi i64 [ %i.j, %.lr.ph.i208.preheader ], [ %i.jc, %.lr.ph.i208.prol ]
  %.0819.i210.unr = phi ptr [ %i.ja, %.lr.ph.i208.preheader ], [ %i.jg, %.lr.ph.i208.prol ]
  %.01618.i211.unr = phi ptr [ %i.a, %.lr.ph.i208.preheader ], [ %i.jh, %.lr.ph.i208.prol ]
  %i.ji = icmp eq i64 %i.i, 4
  br i1 %i.ji, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208
  %.020.i209 = phi i64 [ %i.jo, %.lr.ph.i208 ], [ %.020.i209.unr, %.lr.ph.i208.prol.loopexit ]
  %.0819.i210 = phi ptr [ %i.js, %.lr.ph.i208 ], [ %.0819.i210.unr, %.lr.ph.i208.prol.loopexit ] ; 4 uses
  %.01618.i211 = phi ptr [ %i.jt, %.lr.ph.i208 ], [ %.01618.i211.unr, %.lr.ph.i208.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i211) ]
  %i.jj = load i32, ptr %.0819.i210, align 4, !tbaa !367
  store i32 %i.jj, ptr %.01618.i211, align 4, !tbaa !367
  store i32 0, ptr %.0819.i210, align 4, !tbaa !367
  %i.jk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.jm = getelementptr inbounds nuw i8, ptr %.0819.i210, i64 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.01618.i211, i64 4
  %i.jo = add i64 %.020.i209, -2                  ; 2 uses
  %i.jp = load i32, ptr %i.jm, align 4, !tbaa !367
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !367
  store i32 0, ptr %i.jm, align 4, !tbaa !367
  %i.jq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.jr = add i32 %i.jq, 1
  store i32 %i.jr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.js = getelementptr inbounds nuw i8, ptr %.0819.i210, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %.01618.i211, i64 8
  %.not.i212.1 = icmp eq i64 %i.jo, 0
  br i1 %.not.i212.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214, label %.lr.ph.i208, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214: ; preds = %.lr.ph.i208, %.lr.ph.i208.prol.loopexit
  %.not8.i.i216 = icmp eq ptr %3, %i.ja
  br i1 %.not8.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i.i217.preheader

.lr.ph.i.i217.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214
  %i.ju = shl nsw i64 %1, 2
  %i.jv = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.jw = shl i64 %i.jv, 1
  %i.jx = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.jy = shl i64 %4, 2
  %i.jz = add i64 %i.ju, %i.jw
  %i.ka = add i64 %i.jz, -4
  %i.kb = add i64 %i.jx, %i.e
  %i.kc = add i64 %i.kb, %i.jy
  %i.kd = sub i64 %i.ka, %i.kc                    ; 2 uses
  %i.ke = lshr i64 %i.kd, 2
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.kd, 188
  br i1 %min.iters.check370, label %.lr.ph.i.i217.preheader442, label %vector.memcheck371

vector.memcheck371:                               ; preds = %.lr.ph.i.i217.preheader
  %i.kg = shl nsw i64 %1, 2                       ; 3 uses
  %i.kh = shl i64 %i.jv, 1
  %i.ki = shl i64 %4, 2                           ; 2 uses
  %i.kj = add i64 %i.kg, %i.kh
  %i.kk = add i64 %i.kj, -4
  %i.kl = add i64 %i.jx, %i.e
  %i.km = add i64 %i.kl, %i.ki
  %i.kn = sub i64 %i.kk, %i.km
  %i.ko = and i64 %i.kn, -4                       ; 2 uses
  %i.kp = add i64 %i.kg, -4
  %i.kq = sub i64 %i.kp, %i.ko
  %i.kr = getelementptr i8, ptr %0, i64 %i.kq
  %i.ks = add i64 %i.kg, %i.jv
  %i.kt = add i64 %i.ks, -4
  %i.ku = add i64 %i.ki, %i.jx
  %i.kv = add i64 %i.ku, %i.ko
  %i.kw = sub i64 %i.kt, %i.kv
  %i.kx = getelementptr i8, ptr %0, i64 %i.kw
  %bound0372 = icmp ult ptr %i.kr, %i.ja
  %bound1373 = icmp ult ptr %i.kx, %i.a
  %found.conflict374 = and i1 %bound0372, %bound1373
  br i1 %found.conflict374, label %.lr.ph.i.i217.preheader442, label %vector.ph375

vector.ph375:                                     ; preds = %vector.memcheck371
  %n.vec376 = and i64 %i.kf, 9223372036854775800  ; 3 uses
  %i.ky = mul i64 %n.vec376, -4                   ; 2 uses
  %i.kz = getelementptr i8, ptr %i.a, i64 %i.ky   ; 2 uses
  %i.la = getelementptr i8, ptr %i.ja, i64 %i.ky
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next383, %vector.body377 ] ; 2 uses
  %i.lb = mul i64 %index378, -4                   ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.a, i64 %i.lb ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.ja, i64 %i.lb ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %next.gep380, i64 -16 ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %next.gep380, i64 -32 ; 2 uses
  %wide.load381 = load <4 x i32>, ptr %i.lc, align 4, !tbaa !367, !alias.scope !7084
  %wide.load382 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !367, !alias.scope !7084
  %i.le = getelementptr inbounds i8, ptr %next.gep379, i64 -16
  %i.lf = getelementptr inbounds i8, ptr %next.gep379, i64 -32
  store <4 x i32> %wide.load381, ptr %i.le, align 4, !tbaa !367, !alias.scope !7085, !noalias !7084
  store <4 x i32> %wide.load382, ptr %i.lf, align 4, !tbaa !367, !alias.scope !7085, !noalias !7084
  store <4 x i32> zeroinitializer, ptr %i.lc, align 4, !tbaa !367, !alias.scope !7084
  store <4 x i32> zeroinitializer, ptr %i.ld, align 4, !tbaa !367, !alias.scope !7084
  %index.next383 = add nuw i64 %index378, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next383, %n.vec376
  br i1 %i.lg, label %middle.block384, label %vector.body377, !llvm.loop !7068

middle.block384:                                  ; preds = %vector.body377
  %cmp.n385 = icmp eq i64 %i.kf, %n.vec376
  br i1 %cmp.n385, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i.i217.preheader442

.lr.ph.i.i217.preheader442:                       ; preds = %vector.memcheck371, %.lr.ph.i.i217.preheader, %middle.block384
  %.010.i.i218.ph = phi ptr [ %i.a, %vector.memcheck371 ], [ %i.a, %.lr.ph.i.i217.preheader ], [ %i.kz, %middle.block384 ]
  %.079.i.i219.ph = phi ptr [ %i.ja, %vector.memcheck371 ], [ %i.ja, %.lr.ph.i.i217.preheader ], [ %i.la, %middle.block384 ]
  br label %.lr.ph.i.i217

.lr.ph.i.i217:                                    ; preds = %.lr.ph.i.i217.preheader442, %.lr.ph.i.i217
  %.010.i.i218 = phi ptr [ %i.li, %.lr.ph.i.i217 ], [ %.010.i.i218.ph, %.lr.ph.i.i217.preheader442 ]
  %.079.i.i219 = phi ptr [ %i.lh, %.lr.ph.i.i217 ], [ %.079.i.i219.ph, %.lr.ph.i.i217.preheader442 ]
  %i.lh = getelementptr inbounds i8, ptr %.079.i.i219, i64 -4 ; 4 uses
  %i.li = getelementptr inbounds i8, ptr %.010.i.i218, i64 -4 ; 3 uses
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !367
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !367
  store i32 0, ptr %i.lh, align 4, !tbaa !367
  %.not.i.i220 = icmp eq ptr %3, %i.lh
  br i1 %.not.i.i220, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221, label %.lr.ph.i.i217, !llvm.loop !7069

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221: ; preds = %.lr.ph.i.i217, %middle.block384, %bb.q, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214
  %i.lk = phi ptr [ %3, %bb.q ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit214 ], [ %i.kz, %middle.block384 ], [ %i.li, %.lr.ph.i.i217 ] ; 2 uses
  %i.ll = sub i64 0, %4
  %i.lm = getelementptr [4 x i8], ptr %i.lk, i64 %i.ll ; 10 uses
  %.not4.i.i222 = icmp eq i64 %4, 0
  br i1 %.not4.i.i222, label %.loopexit281, label %.lr.ph.i.i223.preheader

.lr.ph.i.i223.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !432 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !431 ; 3 uses
  %i.lr = load ptr, ptr %5, align 8, !tbaa !434   ; 3 uses
  %xtraiter457 = and i64 %4, 1
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %.lr.ph.i.i223.prol.loopexit, label %.lr.ph.i.i223.prol

.lr.ph.i.i223.prol:                               ; preds = %.lr.ph.i.i223.preheader
  %i.ls = add nsw i64 %4, -1
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !247, !noalias !7086
  store i32 %i.lt, ptr %i.lm, align 4, !tbaa !367, !noalias !7086
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 4 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lq
  br i1 %i.lv, label %bb.r, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol

bb.r:                                             ; preds = %.lr.ph.i.i223.prol
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !259, !noalias !7086 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol: ; preds = %bb.r, %.lr.ph.i.i223.prol
  %.sroa.11.1.i229.prol = phi ptr [ %i.lw, %bb.r ], [ %i.lo, %.lr.ph.i.i223.prol ]
  %i.lz = phi ptr [ %i.ly, %bb.r ], [ %i.lq, %.lr.ph.i.i223.prol ]
  %i.ma = phi ptr [ %i.lx, %bb.r ], [ %i.lu, %.lr.ph.i.i223.prol ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  br label %.lr.ph.i.i223.prol.loopexit

.lr.ph.i.i223.prol.loopexit:                      ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol, %.lr.ph.i.i223.preheader
  %.sroa.11.0.i224.unr = phi ptr [ %i.lo, %.lr.ph.i.i223.preheader ], [ %.sroa.11.1.i229.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.unr460 = phi ptr [ %i.lq, %.lr.ph.i.i223.preheader ], [ %i.lz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.unr461 = phi ptr [ %i.lr, %.lr.ph.i.i223.preheader ], [ %i.ma, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.06.i.i226.unr = phi ptr [ %i.lm, %.lr.ph.i.i223.preheader ], [ %i.mb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %.035.i.i227.unr = phi i64 [ %4, %.lr.ph.i.i223.preheader ], [ %i.ls, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.prol ]
  %i.mc = icmp eq i64 %4, 1
  br i1 %i.mc, label %.loopexit281, label %.lr.ph.i.i223

.lr.ph.i.i223:                                    ; preds = %.lr.ph.i.i223.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1
  %.sroa.11.0.i224 = phi ptr [ %.sroa.11.1.i229.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.sroa.11.0.i224.unr, %.lr.ph.i.i223.prol.loopexit ] ; 2 uses
  %i.md = phi ptr [ %i.mv, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.unr460, %.lr.ph.i.i223.prol.loopexit ] ; 2 uses
  %i.me = phi ptr [ %i.mw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.unr461, %.lr.ph.i.i223.prol.loopexit ] ; 2 uses
  %.06.i.i226 = phi ptr [ %i.mx, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.06.i.i226.unr, %.lr.ph.i.i223.prol.loopexit ] ; 3 uses
  %.035.i.i227 = phi i64 [ %i.mo, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1 ], [ %.035.i.i227.unr, %.lr.ph.i.i223.prol.loopexit ]
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !247, !noalias !7086
  store i32 %i.mf, ptr %.06.i.i226, align 4, !tbaa !367, !noalias !7086
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.md
  br i1 %i.mh, label %bb.s, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228

bb.s:                                             ; preds = %.lr.ph.i.i223
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i224, i64 8 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !259, !noalias !7086 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228: ; preds = %bb.s, %.lr.ph.i.i223
  %.sroa.11.1.i229 = phi ptr [ %i.mi, %bb.s ], [ %.sroa.11.0.i224, %.lr.ph.i.i223 ] ; 2 uses
  %i.ml = phi ptr [ %i.mk, %bb.s ], [ %i.md, %.lr.ph.i.i223 ] ; 2 uses
  %i.mm = phi ptr [ %i.mj, %bb.s ], [ %i.mg, %.lr.ph.i.i223 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.06.i.i226, i64 4
  %i.mo = add i64 %.035.i.i227, -2                ; 2 uses
  %i.mp = load i32, ptr %i.mm, align 4, !tbaa !247, !noalias !7086
  store i32 %i.mp, ptr %i.mn, align 4, !tbaa !367, !noalias !7086
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 4 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.ml
  br i1 %i.mr, label %bb.t, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1

bb.t:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i229, i64 8 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !259, !noalias !7086 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1: ; preds = %bb.t, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228
  %.sroa.11.1.i229.1 = phi ptr [ %i.ms, %bb.t ], [ %.sroa.11.1.i229, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228 ]
  %i.mv = phi ptr [ %i.mu, %bb.t ], [ %i.ml, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228 ]
  %i.mw = phi ptr [ %i.mt, %bb.t ], [ %i.mq, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228 ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.06.i.i226, i64 8
  %.not.i.i231.1 = icmp eq i64 %i.mo, 0
  br i1 %.not.i.i231.1, label %.loopexit281, label %.lr.ph.i.i223, !llvm.loop !72

.loopexit281:                                     ; preds = %.lr.ph.i.i223.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i228.1, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit221
  %.not.i235 = icmp eq ptr %3, %i.lm
  br i1 %.not.i235, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.u

bb.u:                                             ; preds = %.loopexit281
  %.not8.i.i236 = icmp eq ptr %0, %3
  br i1 %.not8.i.i236, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit241, label %.lr.ph.i.i237.preheader

.lr.ph.i.i237.preheader:                          ; preds = %bb.u
  %i.my = ptrtoaddr ptr %0 to i64
  %i.mz = add i64 %i.e, -4
  %i.na = sub i64 %i.mz, %i.my                    ; 3 uses
  %i.nb = lshr i64 %i.na, 2
  %i.nc = add nuw nsw i64 %i.nb, 1                ; 2 uses
  %min.iters.check394 = icmp ult i64 %i.na, 108
  br i1 %min.iters.check394, label %.lr.ph.i.i237.preheader440, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.lr.ph.i.i237.preheader
  %i.nd = shl i64 %4, 2
  %i.ne = and i64 %i.na, -4                       ; 2 uses
  %i.nf = add i64 %i.nd, %i.ne
  %i.ng = sub nuw nsw i64 -4, %i.nf
  %i.nh = getelementptr i8, ptr %i.lk, i64 %i.ng
  %i.ni = sub nuw nsw i64 -4, %i.ne
  %i.nj = getelementptr i8, ptr %3, i64 %i.ni
  %bound0396 = icmp ult ptr %i.nh, %3
  %bound1397 = icmp ult ptr %i.nj, %i.lm
  %found.conflict398 = and i1 %bound0396, %bound1397
  br i1 %found.conflict398, label %.lr.ph.i.i237.preheader440, label %vector.ph399

vector.ph399:                                     ; preds = %vector.memcheck395
  %n.vec400 = and i64 %i.nc, 9223372036854775800  ; 3 uses
  %i.nk = mul i64 %n.vec400, -4                   ; 2 uses
  %i.nl = getelementptr i8, ptr %i.lm, i64 %i.nk  ; 2 uses
  %i.nm = getelementptr i8, ptr %3, i64 %i.nk
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next407, %vector.body401 ] ; 2 uses
  %i.nn = mul i64 %index402, -4                   ; 2 uses
  %next.gep403 = getelementptr i8, ptr %i.lm, i64 %i.nn ; 2 uses
  %next.gep404 = getelementptr i8, ptr %3, i64 %i.nn ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %next.gep404, i64 -16 ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %next.gep404, i64 -32 ; 2 uses
  %wide.load405 = load <4 x i32>, ptr %i.no, align 4, !tbaa !367, !alias.scope !7087
  %wide.load406 = load <4 x i32>, ptr %i.np, align 4, !tbaa !367, !alias.scope !7087
end_hunk_7
begin_hunk_8_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %.01315.i.i170.prol, i64 4 ; 2 uses
  %prol.iter410.next = add i64 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i64 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %.lr.ph.i.i168.prol.loopexit, label %.lr.ph.i.i168.prol, !llvm.loop !7154

.lr.ph.i.i168.prol.loopexit:                      ; preds = %.lr.ph.i.i168.prol, %.lr.ph.i.i168.preheader
  %.016.i.i169.unr = phi i64 [ %i.dp, %.lr.ph.i.i168.preheader ], [ %i.ek, %.lr.ph.i.i168.prol ]
  %.01315.i.i170.unr = phi ptr [ %i.a, %.lr.ph.i.i168.preheader ], [ %i.en, %.lr.ph.i.i168.prol ]
  %i.eo = sub nsw i64 %i.g, %i.j
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.prol.loopexit, %.lr.ph.i.i168
  %.016.i.i169 = phi i64 [ %i.ex, %.lr.ph.i.i168 ], [ %.016.i.i169.unr, %.lr.ph.i.i168.prol.loopexit ]
  %.01315.i.i170 = phi ptr [ %i.ez, %.lr.ph.i.i168 ], [ %.01315.i.i170.unr, %.lr.ph.i.i168.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i170) ]
  store i32 0, ptr %.01315.i.i170, align 4, !tbaa !367
  %i.eq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.es = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 4
  store i32 0, ptr %i.es, align 4, !tbaa !367
  %i.et = add i32 %i.eq, 2
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !367
  %i.ev = add i32 %i.eq, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 12
  %i.ex = add i64 %.016.i.i169, -4                ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !367
  %i.ey = add i32 %i.eq, 4
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 16
  %.not.i.i171.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i171.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168, !llvm.loop !140

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172: ; preds = %.lr.ph.i.i168, %.lr.ph.i.i168.prol.loopexit
  %.not.i173 = icmp eq ptr %3, %i.ds
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172
  %.not8.i.i174 = icmp eq ptr %0, %3
  br i1 %.not8.i.i174, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %bb.g
  %i.fa = ptrtoaddr ptr %0 to i64
  %i.fb = add i64 %i.e, -4
  %i.fc = sub i64 %i.fb, %i.fa                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check364 = icmp ult i64 %i.fc, 124
  br i1 %min.iters.check364, label %.lr.ph.i.i175.preheader382, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph.i.i175.preheader
  %i.ff = and i64 %i.fc, -4                       ; 2 uses
  %i.fg = sub i64 %1, %i.dq
  %i.fh = shl i64 %i.fg, 2
  %i.fi = add i64 %i.fh, -4
  %i.fj = sub i64 %i.fi, %i.ff
  %i.fk = getelementptr i8, ptr %0, i64 %i.fj
  %i.fl = sub nuw nsw i64 -4, %i.ff
  %i.fm = getelementptr i8, ptr %3, i64 %i.fl
  %bound0366 = icmp ult ptr %i.fk, %3
  %bound1367 = icmp ult ptr %i.fm, %i.ds
  %found.conflict368 = and i1 %bound0366, %bound1367
  br i1 %found.conflict368, label %.lr.ph.i.i175.preheader382, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck365
  %n.vec370 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.fn = mul i64 %n.vec370, -4                   ; 2 uses
  %i.fo = getelementptr i8, ptr %i.ds, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %3, i64 %i.fn
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.fq = mul i64 %index372, -4                   ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.ds, i64 %i.fq ; 2 uses
  %next.gep374 = getelementptr i8, ptr %3, i64 %i.fq ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %next.gep374, i64 -16 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %next.gep374, i64 -32 ; 2 uses
  %wide.load375 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !367, !alias.scope !7173
  %wide.load376 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !367, !alias.scope !7173
  %i.ft = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.fu = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  store <4 x i32> %wide.load375, ptr %i.ft, align 4, !tbaa !367, !alias.scope !7174, !noalias !7173
  store <4 x i32> %wide.load376, ptr %i.fu, align 4, !tbaa !367, !alias.scope !7174, !noalias !7173
  store <4 x i32> zeroinitializer, ptr %i.fr, align 4, !tbaa !367, !alias.scope !7173
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !367, !alias.scope !7173
  %index.next377 = add nuw i64 %index372, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.fv, label %middle.block378, label %vector.body371, !llvm.loop !7158

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.fe, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader382

.lr.ph.i.i175.preheader382:                       ; preds = %vector.memcheck365, %.lr.ph.i.i175.preheader, %middle.block378
  %.010.i.i176.ph = phi ptr [ %i.ds, %vector.memcheck365 ], [ %i.ds, %.lr.ph.i.i175.preheader ], [ %i.fo, %middle.block378 ]
  %.079.i.i177.ph = phi ptr [ %3, %vector.memcheck365 ], [ %3, %.lr.ph.i.i175.preheader ], [ %i.fp, %middle.block378 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader382, %.lr.ph.i.i175
  %.010.i.i176 = phi ptr [ %i.fx, %.lr.ph.i.i175 ], [ %.010.i.i176.ph, %.lr.ph.i.i175.preheader382 ]
  %.079.i.i177 = phi ptr [ %i.fw, %.lr.ph.i.i175 ], [ %.079.i.i177.ph, %.lr.ph.i.i175.preheader382 ]
  %i.fw = getelementptr inbounds i8, ptr %.079.i.i177, i64 -4 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %.010.i.i176, i64 -4 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !367
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !367
  store i32 0, ptr %i.fw, align 4, !tbaa !367
  %.not.i.i178 = icmp eq ptr %0, %i.fw
  br i1 %.not.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175, !llvm.loop !7159

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179: ; preds = %.lr.ph.i.i175, %middle.block378, %bb.g
  %i.fz = phi ptr [ %i.ds, %bb.g ], [ %i.fo, %middle.block378 ], [ %i.fx, %.lr.ph.i.i175 ] ; 2 uses
  %.not3.i180 = icmp eq ptr %0, %i.fz
  br i1 %.not3.i180, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, %.lr.ph.i181
  %storemerge4.i182 = phi ptr [ %i.gc, %.lr.ph.i181 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i182, align 4, !tbaa !367
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gb = add i32 %i.ga, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i182, i64 4 ; 2 uses
  %.not.i183 = icmp eq ptr %i.gc, %i.fz
  br i1 %.not.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gd = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i193 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i193, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i194.preheader

.lr.ph.i194.preheader:                            ; preds = %bb.h
  %i.ge = and i64 %i.i, 4
  %lcmp.mod398.not = icmp eq i64 %i.ge, 0
  br i1 %lcmp.mod398.not, label %.lr.ph.i194.prol.loopexit, label %.lr.ph.i194.prol

.lr.ph.i194.prol:                                 ; preds = %.lr.ph.i194.preheader
  %i.gf = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !367
  store i32 %i.gg, ptr %i.a, align 4, !tbaa !367
  store i32 0, ptr %i.gd, align 4, !tbaa !367
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i194.prol.loopexit

.lr.ph.i194.prol.loopexit:                        ; preds = %.lr.ph.i194.prol, %.lr.ph.i194.preheader
  %.020.i195.unr = phi i64 [ %i.j, %.lr.ph.i194.preheader ], [ %i.gf, %.lr.ph.i194.prol ]
  %.0819.i196.unr = phi ptr [ %i.gd, %.lr.ph.i194.preheader ], [ %i.gj, %.lr.ph.i194.prol ]
  %.01618.i197.unr = phi ptr [ %i.a, %.lr.ph.i194.preheader ], [ %i.gk, %.lr.ph.i194.prol ]
  %i.gl = icmp eq i64 %i.i, 4
  br i1 %i.gl, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194
  %.020.i195 = phi i64 [ %i.gr, %.lr.ph.i194 ], [ %.020.i195.unr, %.lr.ph.i194.prol.loopexit ]
  %.0819.i196 = phi ptr [ %i.gv, %.lr.ph.i194 ], [ %.0819.i196.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  %.01618.i197 = phi ptr [ %i.gw, %.lr.ph.i194 ], [ %.01618.i197.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i197) ]
  %i.gm = load i32, ptr %.0819.i196, align 4, !tbaa !367
  store i32 %i.gm, ptr %.01618.i197, align 4, !tbaa !367
  store i32 0, ptr %.0819.i196, align 4, !tbaa !367
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gp = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 4
  %i.gr = add i64 %.020.i195, -2                  ; 2 uses
  %i.gs = load i32, ptr %i.gp, align 4, !tbaa !367
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !367
  store i32 0, ptr %i.gp, align 4, !tbaa !367
  %i.gt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gv = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 8
  %.not.i198.1 = icmp eq i64 %i.gr, 0
  br i1 %.not.i198.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200: ; preds = %.lr.ph.i194, %.lr.ph.i194.prol.loopexit
  %.not8.i.i202 = icmp eq ptr %3, %i.gd
  br i1 %.not8.i.i202, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader

.lr.ph.i.i203.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.gx = shl nsw i64 %1, 2
  %i.gy = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.gz = shl i64 %i.gy, 1
  %i.ha = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hb = shl i64 %4, 2
  %i.hc = add i64 %i.gx, %i.gz
  %i.hd = add i64 %i.hc, -4
  %i.he = add i64 %i.ha, %i.e
  %i.hf = add i64 %i.he, %i.hb
  %i.hg = sub i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.hg, 188
  br i1 %min.iters.check316, label %.lr.ph.i.i203.preheader386, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.i203.preheader
  %i.hj = shl nsw i64 %1, 2                       ; 3 uses
  %i.hk = shl i64 %i.gy, 1
  %i.hl = shl i64 %4, 2                           ; 2 uses
  %i.hm = add i64 %i.hj, %i.hk
  %i.hn = add i64 %i.hm, -4
  %i.ho = add i64 %i.ha, %i.e
  %i.hp = add i64 %i.ho, %i.hl
  %i.hq = sub i64 %i.hn, %i.hp
  %i.hr = and i64 %i.hq, -4                       ; 2 uses
  %i.hs = add i64 %i.hj, -4
  %i.ht = sub i64 %i.hs, %i.hr
  %i.hu = getelementptr i8, ptr %0, i64 %i.ht
  %i.hv = add i64 %i.hj, %i.gy
  %i.hw = add i64 %i.hv, -4
  %i.hx = add i64 %i.hl, %i.ha
  %i.hy = add i64 %i.hx, %i.hr
  %i.hz = sub i64 %i.hw, %i.hy
  %i.ia = getelementptr i8, ptr %0, i64 %i.hz
  %bound0318 = icmp ult ptr %i.hu, %i.gd
  %bound1319 = icmp ult ptr %i.ia, %i.a
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i203.preheader386, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.hi, 9223372036854775800  ; 3 uses
  %i.ib = mul i64 %n.vec322, -4                   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.a, i64 %i.ib   ; 2 uses
  %i.id = getelementptr i8, ptr %i.gd, i64 %i.ib
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.ie = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.a, i64 %i.ie ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.gd, i64 %i.ie ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %next.gep326, i64 -16 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep326, i64 -32 ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.if, align 4, !tbaa !367, !alias.scope !7175
  %wide.load328 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !367, !alias.scope !7175
  %i.ih = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.ih, align 4, !tbaa !367, !alias.scope !7176, !noalias !7175
  store <4 x i32> %wide.load328, ptr %i.ii, align 4, !tbaa !367, !alias.scope !7176, !noalias !7175
  store <4 x i32> zeroinitializer, ptr %i.if, align 4, !tbaa !367, !alias.scope !7175
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !367, !alias.scope !7175
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.ij, label %middle.block330, label %vector.body323, !llvm.loop !7163

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.hi, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader386

.lr.ph.i.i203.preheader386:                       ; preds = %vector.memcheck317, %.lr.ph.i.i203.preheader, %middle.block330
  %.010.i.i204.ph = phi ptr [ %i.a, %vector.memcheck317 ], [ %i.a, %.lr.ph.i.i203.preheader ], [ %i.ic, %middle.block330 ]
  %.079.i.i205.ph = phi ptr [ %i.gd, %vector.memcheck317 ], [ %i.gd, %.lr.ph.i.i203.preheader ], [ %i.id, %middle.block330 ]
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %.lr.ph.i.i203.preheader386, %.lr.ph.i.i203
  %.010.i.i204 = phi ptr [ %i.il, %.lr.ph.i.i203 ], [ %.010.i.i204.ph, %.lr.ph.i.i203.preheader386 ]
  %.079.i.i205 = phi ptr [ %i.ik, %.lr.ph.i.i203 ], [ %.079.i.i205.ph, %.lr.ph.i.i203.preheader386 ]
  %i.ik = getelementptr inbounds i8, ptr %.079.i.i205, i64 -4 ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %.010.i.i204, i64 -4 ; 3 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !367
  store i32 %i.im, ptr %i.il, align 4, !tbaa !367
  store i32 0, ptr %i.ik, align 4, !tbaa !367
  %.not.i.i206 = icmp eq ptr %3, %i.ik
  br i1 %.not.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203, !llvm.loop !7164

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207: ; preds = %.lr.ph.i.i203, %middle.block330, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.in = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200 ], [ %i.ic, %middle.block330 ], [ %i.il, %.lr.ph.i.i203 ] ; 2 uses
  %i.io = sub i64 0, %4
  %i.ip = getelementptr [4 x i8], ptr %i.in, i64 %i.io ; 9 uses
  %.not8.i208 = icmp eq i64 %4, 0
  br i1 %.not8.i208, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.preheader.i209

.lr.ph.preheader.i209:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207
  %.pre.i210 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.iq = add i32 %.pre.i210, 1                   ; 2 uses
  %xtraiter400 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol

.lr.ph.i211.prol:                                 ; preds = %.lr.ph.preheader.i209, %.lr.ph.i211.prol
  %i.ir = phi i32 [ %i.iu, %.lr.ph.i211.prol ], [ %i.iq, %.lr.ph.preheader.i209 ]
  %.010.i212.prol = phi ptr [ %i.it, %.lr.ph.i211.prol ], [ %i.ip, %.lr.ph.preheader.i209 ] ; 2 uses
  %.079.i213.prol = phi i64 [ %i.is, %.lr.ph.i211.prol ], [ %4, %.lr.ph.preheader.i209 ]
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.lr.ph.i211.prol ], [ 0, %.lr.ph.preheader.i209 ]
  %i.is = add i64 %.079.i213.prol, -1             ; 2 uses
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i212.prol, align 4, !tbaa !367
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i212.prol, i64 4 ; 2 uses
  %i.iu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.iv = add i32 %i.iu, -1
  store i32 %i.iv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol, !llvm.loop !7165

.lr.ph.i211.prol.loopexit:                        ; preds = %.lr.ph.i211.prol, %.lr.ph.preheader.i209
  %.unr403 = phi i32 [ %i.iq, %.lr.ph.preheader.i209 ], [ %i.iu, %.lr.ph.i211.prol ]
  %.010.i212.unr = phi ptr [ %i.ip, %.lr.ph.preheader.i209 ], [ %i.it, %.lr.ph.i211.prol ]
  %.079.i213.unr = phi i64 [ %4, %.lr.ph.preheader.i209 ], [ %i.is, %.lr.ph.i211.prol ]
  %i.iw = icmp ult i64 %4, 4
  br i1 %i.iw, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211
  %i.ix = phi i32 [ %i.jd, %.lr.ph.i211 ], [ %.unr403, %.lr.ph.i211.prol.loopexit ]
  %.010.i212 = phi ptr [ %i.jc, %.lr.ph.i211 ], [ %.010.i212.unr, %.lr.ph.i211.prol.loopexit ] ; 5 uses
  %.079.i213 = phi i64 [ %i.jb, %.lr.ph.i211 ], [ %.079.i213.unr, %.lr.ph.i211.prol.loopexit ]
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i212, align 4, !tbaa !367
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i212, i64 4
  store i32 0, ptr %i.iy, align 4, !tbaa !367
  %i.iz = getelementptr inbounds nuw i8, ptr %.010.i212, i64 8
  store i32 0, ptr %i.iz, align 4, !tbaa !367
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i212, i64 12
  %i.jb = add i64 %.079.i213, -4                  ; 2 uses
  store i32 0, ptr %i.ja, align 4, !tbaa !367
  %i.jc = getelementptr inbounds nuw i8, ptr %.010.i212, i64 16
  %i.jd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.je = add i32 %i.jd, -1
  store i32 %i.je, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not.i214.3 = icmp eq i64 %i.jb, 0
  br i1 %.not.i214.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211, !llvm.loop !147

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215: ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207
  %.not.i216 = icmp eq ptr %3, %i.ip
  br i1 %.not.i216, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215
  %.not8.i.i217 = icmp eq ptr %0, %3
  br i1 %.not8.i.i217, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader

.lr.ph.i.i218.preheader:                          ; preds = %bb.i
  %i.jf = ptrtoaddr ptr %0 to i64
  %i.jg = add i64 %i.e, -4
  %i.jh = sub i64 %i.jg, %i.jf                    ; 3 uses
  %i.ji = lshr i64 %i.jh, 2
  %i.jj = add nuw nsw i64 %i.ji, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.jh, 108
  br i1 %min.iters.check340, label %.lr.ph.i.i218.preheader384, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i.i218.preheader
  %i.jk = shl i64 %4, 2
  %i.jl = and i64 %i.jh, -4                       ; 2 uses
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = sub nuw nsw i64 -4, %i.jm
  %i.jo = getelementptr i8, ptr %i.in, i64 %i.jn
  %i.jp = sub nuw nsw i64 -4, %i.jl
  %i.jq = getelementptr i8, ptr %3, i64 %i.jp
  %bound0342 = icmp ult ptr %i.jo, %3
  %bound1343 = icmp ult ptr %i.jq, %i.ip
  %found.conflict344 = and i1 %bound0342, %bound1343
  br i1 %found.conflict344, label %.lr.ph.i.i218.preheader384, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.jj, 9223372036854775800  ; 3 uses
  %i.jr = mul i64 %n.vec346, -4                   ; 2 uses
  %i.js = getelementptr i8, ptr %i.ip, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %3, i64 %i.jr
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.ju = mul i64 %index348, -4                   ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.ip, i64 %i.ju ; 2 uses
  %next.gep350 = getelementptr i8, ptr %3, i64 %i.ju ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %next.gep350, i64 -16 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %next.gep350, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !367, !alias.scope !7177
  %wide.load352 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !367, !alias.scope !7177
  %i.jx = getelementptr inbounds i8, ptr %next.gep349, i64 -16
  %i.jy = getelementptr inbounds i8, ptr %next.gep349, i64 -32
  store <4 x i32> %wide.load351, ptr %i.jx, align 4, !tbaa !367, !alias.scope !7178, !noalias !7177
  store <4 x i32> %wide.load352, ptr %i.jy, align 4, !tbaa !367, !alias.scope !7178, !noalias !7177
  store <4 x i32> zeroinitializer, ptr %i.jv, align 4, !tbaa !367, !alias.scope !7177
  store <4 x i32> zeroinitializer, ptr %i.jw, align 4, !tbaa !367, !alias.scope !7177
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.jz, label %middle.block354, label %vector.body347, !llvm.loop !7169

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.jj, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader384

.lr.ph.i.i218.preheader384:                       ; preds = %vector.memcheck341, %.lr.ph.i.i218.preheader, %middle.block354
  %.010.i.i219.ph = phi ptr [ %i.ip, %vector.memcheck341 ], [ %i.ip, %.lr.ph.i.i218.preheader ], [ %i.js, %middle.block354 ]
  %.079.i.i220.ph = phi ptr [ %3, %vector.memcheck341 ], [ %3, %.lr.ph.i.i218.preheader ], [ %i.jt, %middle.block354 ]
  br label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %.lr.ph.i.i218.preheader384, %.lr.ph.i.i218
  %.010.i.i219 = phi ptr [ %i.kb, %.lr.ph.i.i218 ], [ %.010.i.i219.ph, %.lr.ph.i.i218.preheader384 ]
  %.079.i.i220 = phi ptr [ %i.ka, %.lr.ph.i.i218 ], [ %.079.i.i220.ph, %.lr.ph.i.i218.preheader384 ]
  %i.ka = getelementptr inbounds i8, ptr %.079.i.i220, i64 -4 ; 4 uses
  %i.kb = getelementptr inbounds i8, ptr %.010.i.i219, i64 -4 ; 3 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !367
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !367
  store i32 0, ptr %i.ka, align 4, !tbaa !367
  %.not.i.i221 = icmp eq ptr %0, %i.ka
  br i1 %.not.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218, !llvm.loop !7170

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222: ; preds = %.lr.ph.i.i218, %middle.block354, %bb.i
  %i.kd = phi ptr [ %i.ip, %bb.i ], [ %i.js, %middle.block354 ], [ %i.kb, %.lr.ph.i.i218 ] ; 2 uses
  %.not3.i223 = icmp eq ptr %0, %i.kd
  br i1 %.not3.i223, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i224
end_hunk_8
begin_hunk_9_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.l, %i.h
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dd, %.lr.ph.i155 ], [ %i.cy, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cz = load i32, ptr %.018.i156, align 4, !tbaa !367
  store i32 %i.cz, ptr %.01517.i157, align 4, !tbaa !367
  store i32 0, ptr %.018.i156, align 4, !tbaa !367
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !144

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.df, ptr %i.de, align 4, !tbaa !367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.b, align 4, !tbaa !367
  store i32 0, ptr %5, align 4, !tbaa !367
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not.i161 = icmp eq ptr %3, %i.de
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.di = ptrtoaddr ptr %0 to i64
  %i.dj = add i64 %i.f, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dk, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dn = shl nsw i64 %1, 2
  %i.do = and i64 %i.dk, -4                       ; 2 uses
  %i.dp = shl i64 %i.m, 2
  %i.dq = add i64 %i.k, %i.dn
  %i.dr = add i64 %i.dq, -4
  %i.ds = add i64 %i.do, %i.dp
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = sub nuw nsw i64 -4, %i.do
  %i.dw = getelementptr i8, ptr %3, i64 %i.dv
  %bound0348 = icmp ult ptr %i.du, %3
  %bound1349 = icmp ult ptr %i.dw, %i.de
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.de, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 %i.dx
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.ea = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.de, i64 %i.ea ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !367, !alias.scope !7244
  %wide.load358 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !367, !alias.scope !7244
  %i.ed = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.ed, align 4, !tbaa !367, !alias.scope !7245, !noalias !7244
  store <4 x i32> %wide.load358, ptr %i.ee, align 4, !tbaa !367, !alias.scope !7245, !noalias !7244
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !367, !alias.scope !7244
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !367, !alias.scope !7244
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ef, label %middle.block360, label %vector.body353, !llvm.loop !7230

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dm, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.de, %vector.memcheck347 ], [ %i.de, %.lr.ph.i.i163.preheader ], [ %i.dy, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dz, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.eh, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.eg, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !367
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !367
  store i32 0, ptr %i.eg, align 4, !tbaa !367
  %.not.i.i166 = icmp eq ptr %0, %i.eg
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !7231

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.ej = phi ptr [ %i.de, %bb.g ], [ %i.dy, %middle.block360 ], [ %i.eh, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.ej
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.em, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !367
  %i.ek = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.em, %i.ej
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.en = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.eo = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.ep = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !367
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !367
  store i32 0, ptr %i.en, align 4, !tbaa !367
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.ep, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.en, %.lr.ph.i182.preheader ], [ %i.et, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.eu, %.lr.ph.i182.prol ]
  %i.ev = icmp eq i64 %i.k, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.fb, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.ff, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fg, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.ew = load i32, ptr %.0819.i184, align 4, !tbaa !367
  store i32 %i.ew, ptr %.01618.i185, align 4, !tbaa !367
  store i32 0, ptr %.0819.i184, align 4, !tbaa !367
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.fb = add i64 %.020.i183, -2                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !367
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !367
  store i32 0, ptr %i.ez, align 4, !tbaa !367
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ff = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.fb, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.en
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.fh = shl nsw i64 %1, 2
  %i.fi = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fj = shl i64 %i.fi, 1
  %i.fk = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fl = shl i64 %4, 2
  %i.fm = add i64 %i.fh, %i.fj
  %i.fn = add i64 %i.fm, -4
  %i.fo = add i64 %i.fk, %i.f
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = sub i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fq, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.ft = shl nsw i64 %1, 2                       ; 3 uses
  %i.fu = shl i64 %i.fi, 1
  %i.fv = shl i64 %4, 2                           ; 2 uses
  %i.fw = add i64 %i.ft, %i.fu
  %i.fx = add i64 %i.fw, -4
  %i.fy = add i64 %i.fk, %i.f
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = and i64 %i.ga, -4                       ; 2 uses
  %i.gc = add i64 %i.ft, -4
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = add i64 %i.ft, %i.fi
  %i.gg = add i64 %i.gf, -4
  %i.gh = add i64 %i.fv, %i.fk
  %i.gi = add i64 %i.gh, %i.gb
  %i.gj = sub i64 %i.gg, %i.gi
  %i.gk = getelementptr i8, ptr %0, i64 %i.gj
  %bound0300 = icmp ult ptr %i.ge, %i.en
  %bound1301 = icmp ult ptr %i.gk, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fs, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.b, i64 %i.gl   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.go = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.go ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.en, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !367, !alias.scope !7246
  %wide.load310 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !367, !alias.scope !7246
  %i.gr = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gr, align 4, !tbaa !367, !alias.scope !7247, !noalias !7246
  store <4 x i32> %wide.load310, ptr %i.gs, align 4, !tbaa !367, !alias.scope !7247, !noalias !7246
  store <4 x i32> zeroinitializer, ptr %i.gp, align 4, !tbaa !367, !alias.scope !7246
  store <4 x i32> zeroinitializer, ptr %i.gq, align 4, !tbaa !367, !alias.scope !7246
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gt, label %middle.block312, label %vector.body305, !llvm.loop !7235

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fs, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gm, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.en, %vector.memcheck299 ], [ %i.en, %.lr.ph.i.i191.preheader ], [ %i.gn, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gv, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gu, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gu = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !367
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !367
  store i32 0, ptr %i.gu, align 4, !tbaa !367
  %.not.i.i194 = icmp eq ptr %3, %i.gu
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !7236

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gm, %middle.block312 ], [ %i.gv, %.lr.ph.i.i191 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.a ; 8 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !367
  store i32 0, ptr %5, align 4, !tbaa !367
  %.not.i196 = icmp eq ptr %3, %i.gy
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.ha = ptrtoaddr ptr %0 to i64
  %i.hb = add i64 %i.f, -4
  %i.hc = sub i64 %i.hb, %i.ha                    ; 3 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hc, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.hf = shl i64 %4, 2
  %i.hg = and i64 %i.hc, -4                       ; 2 uses
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = sub nuw nsw i64 -4, %i.hh
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi
  %i.hk = sub nuw nsw i64 -4, %i.hg
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %bound0324 = icmp ult ptr %i.hj, %3
  %bound1325 = icmp ult ptr %i.hl, %i.gy
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %3, i64 %i.hm
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hp = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gy, i64 %i.hp ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7248
  %wide.load334 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !367, !alias.scope !7248
  %i.hs = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hs, align 4, !tbaa !367, !alias.scope !7249, !noalias !7248
  store <4 x i32> %wide.load334, ptr %i.ht, align 4, !tbaa !367, !alias.scope !7249, !noalias !7248
  store <4 x i32> zeroinitializer, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7248
  store <4 x i32> zeroinitializer, ptr %i.hr, align 4, !tbaa !367, !alias.scope !7248
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hu, label %middle.block336, label %vector.body329, !llvm.loop !7240

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.he, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gy, %vector.memcheck323 ], [ %i.gy, %.lr.ph.i.i198.preheader ], [ %i.hn, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.ho, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hw, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hv, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !367
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !367
  store i32 0, ptr %i.hv, align 4, !tbaa !367
  %.not.i.i201 = icmp eq ptr %0, %i.hv
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !7241

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hy = phi ptr [ %i.gy, %bb.i ], [ %i.hn, %middle.block336 ], [ %i.hw, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hy
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.ib, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !367
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !145

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !449    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !486  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !479    ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !367
  store i32 %i.j, ptr %i.h, align 4, !tbaa !367
  store i32 0, ptr %4, align 4, !tbaa !367
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_9
begin_hunk_10_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  store i32 0, ptr %.sroa.0.016.i.i174.ph, align 4, !tbaa !367
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174.ph, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fe = add nsw i64 %i.dr, -1
  br label %.lr.ph.i.i171.prol.loopexit

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.dr, %.lr.ph.i.i171.preheader ], [ %i.fe, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.a, %.lr.ph.i.i171.preheader ], [ %i.fd, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fc, %.lr.ph.i.i171.prol ]
  %i.ff = icmp eq i64 %i.j, %.neg470
  br i1 %i.ff, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.fp, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.fo, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.fn, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.fg = load i32, ptr %.sroa.0.016.i.i174, align 4, !tbaa !367
  store i32 %i.fg, ptr %.01417.i.i173, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.016.i.i174, align 4, !tbaa !367
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !367
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !367
  store i32 0, ptr %i.fj, align 4, !tbaa !367
  %i.fm = add i32 %i.fh, 2
  store i32 %i.fm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.fp = add i64 %.018.i.i172, -2                ; 2 uses
  %.not.i.i175.1 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i175.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !148

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.du
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.fq = ptrtoaddr ptr %0 to i64
  %i.fr = add i64 %i.e, -4
  %i.fs = sub i64 %i.fr, %i.fq                    ; 3 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check423 = icmp ult i64 %i.fs, 124
  br i1 %min.iters.check423, label %.lr.ph.i.i180.preheader441, label %vector.memcheck424

vector.memcheck424:                               ; preds = %.lr.ph.i.i180.preheader
  %i.fv = and i64 %i.fs, -4                       ; 2 uses
  %i.fw = sub i64 %1, %i.ds
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.fv
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz
  %i.gb = sub nuw nsw i64 -4, %i.fv
  %i.gc = getelementptr i8, ptr %3, i64 %i.gb
  %bound0425 = icmp ult ptr %i.ga, %3
  %bound1426 = icmp ult ptr %i.gc, %i.du
  %found.conflict427 = and i1 %bound0425, %bound1426
  br i1 %found.conflict427, label %.lr.ph.i.i180.preheader441, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck424
  %n.vec429 = and i64 %i.fu, 9223372036854775800  ; 3 uses
  %i.gd = mul i64 %n.vec429, -4                   ; 2 uses
  %i.ge = getelementptr i8, ptr %i.du, i64 %i.gd  ; 2 uses
  %i.gf = getelementptr i8, ptr %3, i64 %i.gd
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.gg = mul i64 %index431, -4                   ; 2 uses
  %next.gep432 = getelementptr i8, ptr %i.du, i64 %i.gg ; 2 uses
  %next.gep433 = getelementptr i8, ptr %3, i64 %i.gg ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep433, i64 -16 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep433, i64 -32 ; 2 uses
  %wide.load434 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !367, !alias.scope !7410
  %wide.load435 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !367, !alias.scope !7410
  %i.gj = getelementptr inbounds i8, ptr %next.gep432, i64 -16
  %i.gk = getelementptr inbounds i8, ptr %next.gep432, i64 -32
  store <4 x i32> %wide.load434, ptr %i.gj, align 4, !tbaa !367, !alias.scope !7411, !noalias !7410
  store <4 x i32> %wide.load435, ptr %i.gk, align 4, !tbaa !367, !alias.scope !7411, !noalias !7410
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !367, !alias.scope !7410
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !367, !alias.scope !7410
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.gl, label %middle.block437, label %vector.body430, !llvm.loop !7388

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.fu, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader441

.lr.ph.i.i180.preheader441:                       ; preds = %vector.memcheck424, %.lr.ph.i.i180.preheader, %middle.block437
  %.010.i.i181.ph = phi ptr [ %i.du, %vector.memcheck424 ], [ %i.du, %.lr.ph.i.i180.preheader ], [ %i.ge, %middle.block437 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck424 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.gf, %middle.block437 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader441, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.gn, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader441 ]
  %.079.i.i182 = phi ptr [ %i.gm, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader441 ]
  %i.gm = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !367
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !367
  store i32 0, ptr %i.gm, align 4, !tbaa !367
  %.not.i.i183 = icmp eq ptr %0, %i.gm
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !7389

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block437, %bb.g
  %i.gp = phi ptr [ %i.du, %bb.g ], [ %i.ge, %middle.block437 ], [ %i.gn, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.gp
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.gs, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !367
  %i.gq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gr = add i32 %i.gq, -1
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.gs, %i.gp
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gt = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.gu = and i64 %i.i, 4
  %lcmp.mod459.not = icmp eq i64 %i.gu, 0
  br i1 %lcmp.mod459.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.gv = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !367
  store i32 %i.gw, ptr %i.a, align 4, !tbaa !367
  store i32 0, ptr %i.gt, align 4, !tbaa !367
  %i.gx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.j, %.lr.ph.i199.preheader ], [ %i.gv, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.gt, %.lr.ph.i199.preheader ], [ %i.gz, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.a, %.lr.ph.i199.preheader ], [ %i.ha, %.lr.ph.i199.prol ]
  %i.hb = icmp eq i64 %i.i, 4
  br i1 %i.hb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.hh, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.hl, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.hm, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.hc = load i32, ptr %.0819.i201, align 4, !tbaa !367
  store i32 %i.hc, ptr %.01618.i202, align 4, !tbaa !367
  store i32 0, ptr %.0819.i201, align 4, !tbaa !367
  %i.hd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hf = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.hh = add i64 %.020.i200, -2                  ; 2 uses
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !367
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !367
  store i32 0, ptr %i.hf, align 4, !tbaa !367
  %i.hj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hl = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.hh, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.gt
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.hn = shl nsw i64 %1, 2
  %i.ho = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.hp = shl i64 %i.ho, 1
  %i.hq = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hr = shl i64 %4, 2
  %i.hs = add i64 %i.hn, %i.hp
  %i.ht = add i64 %i.hs, -4
  %i.hu = add i64 %i.hq, %i.e
  %i.hv = add i64 %i.hu, %i.hr
  %i.hw = sub i64 %i.ht, %i.hv                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 2
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.hw, 188
  br i1 %min.iters.check327, label %.lr.ph.i.i208.preheader448, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i208.preheader
  %i.hz = shl nsw i64 %1, 2                       ; 3 uses
  %i.ia = shl i64 %i.ho, 1
  %i.ib = shl i64 %4, 2                           ; 2 uses
  %i.ic = add i64 %i.hz, %i.ia
  %i.id = add i64 %i.ic, -4
  %i.ie = add i64 %i.hq, %i.e
  %i.if = add i64 %i.ie, %i.ib
  %i.ig = sub i64 %i.id, %i.if
  %i.ih = and i64 %i.ig, -4                       ; 2 uses
  %i.ii = add i64 %i.hz, -4
  %i.ij = sub i64 %i.ii, %i.ih
  %i.ik = getelementptr i8, ptr %0, i64 %i.ij
  %i.il = add i64 %i.hz, %i.ho
  %i.im = add i64 %i.il, -4
  %i.in = add i64 %i.ib, %i.hq
  %i.io = add i64 %i.in, %i.ih
  %i.ip = sub i64 %i.im, %i.io
  %i.iq = getelementptr i8, ptr %0, i64 %i.ip
  %bound0329 = icmp ult ptr %i.ik, %i.gt
  %bound1330 = icmp ult ptr %i.iq, %i.a
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i208.preheader448, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.hy, 9223372036854775800  ; 3 uses
  %i.ir = mul i64 %n.vec333, -4                   ; 2 uses
  %i.is = getelementptr i8, ptr %i.a, i64 %i.ir   ; 2 uses
  %i.it = getelementptr i8, ptr %i.gt, i64 %i.ir
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.iu = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.a, i64 %i.iu ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.gt, i64 %i.iu ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !367, !alias.scope !7412
  %wide.load339 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !367, !alias.scope !7412
  %i.ix = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.iy = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.ix, align 4, !tbaa !367, !alias.scope !7413, !noalias !7412
  store <4 x i32> %wide.load339, ptr %i.iy, align 4, !tbaa !367, !alias.scope !7413, !noalias !7412
  store <4 x i32> zeroinitializer, ptr %i.iv, align 4, !tbaa !367, !alias.scope !7412
  store <4 x i32> zeroinitializer, ptr %i.iw, align 4, !tbaa !367, !alias.scope !7412
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.iz, label %middle.block341, label %vector.body334, !llvm.loop !7393

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.hy, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader448

.lr.ph.i.i208.preheader448:                       ; preds = %vector.memcheck328, %.lr.ph.i.i208.preheader, %middle.block341
  %.010.i.i209.ph = phi ptr [ %i.a, %vector.memcheck328 ], [ %i.a, %.lr.ph.i.i208.preheader ], [ %i.is, %middle.block341 ]
  %.079.i.i210.ph = phi ptr [ %i.gt, %vector.memcheck328 ], [ %i.gt, %.lr.ph.i.i208.preheader ], [ %i.it, %middle.block341 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader448, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.jb, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader448 ]
  %.079.i.i210 = phi ptr [ %i.ja, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader448 ]
  %i.ja = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.jb = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !367
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !367
  store i32 0, ptr %i.ja, align 4, !tbaa !367
  %.not.i.i211 = icmp eq ptr %3, %i.ja
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !7394

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block341, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.jd = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.is, %middle.block341 ], [ %i.jb, %.lr.ph.i.i208 ] ; 3 uses
  %i.je = sub i64 0, %4
  %i.jf = getelementptr [4 x i8], ptr %i.jd, i64 %i.je ; 12 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %min.iters.check350 = icmp ult i64 %4, 8
  br i1 %min.iters.check350, label %.lr.ph.i.i215.preheader447, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph.i.i215.preheader
  %i.jg = shl i64 %4, 2
  %i.jh = getelementptr i8, ptr %5, i64 %i.jg
  %bound0352 = icmp ult ptr %i.jf, %i.jh
  %bound1353 = icmp ult ptr %5, %i.jd
  %found.conflict354 = and i1 %bound0352, %bound1353
  br i1 %found.conflict354, label %.lr.ph.i.i215.preheader447, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck351
  %n.vec356 = and i64 %4, -8                      ; 3 uses
  %i.ji = and i64 %4, 7
  %i.jj = shl i64 %n.vec356, 2                    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jf, i64 %i.jj
  %i.jl = getelementptr i8, ptr %5, i64 %i.jj
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ] ; 2 uses
  %i.jm = shl i64 %index358, 2                    ; 2 uses
  %next.gep359 = getelementptr i8, ptr %i.jf, i64 %i.jm ; 2 uses
  %next.gep360 = getelementptr i8, ptr %5, i64 %i.jm ; 3 uses
  %i.jn = getelementptr i8, ptr %next.gep360, i64 16 ; 2 uses
  %wide.load361 = load <4 x i32>, ptr %next.gep360, align 4, !tbaa !367, !alias.scope !7414
  %wide.load362 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !367, !alias.scope !7414
  %i.jo = getelementptr i8, ptr %next.gep359, i64 16
  store <4 x i32> %wide.load361, ptr %next.gep359, align 4, !tbaa !367, !alias.scope !7415, !noalias !7414
  store <4 x i32> %wide.load362, ptr %i.jo, align 4, !tbaa !367, !alias.scope !7415, !noalias !7414
  store <4 x i32> zeroinitializer, ptr %next.gep360, align 4, !tbaa !367, !alias.scope !7414
  store <4 x i32> zeroinitializer, ptr %i.jn, align 4, !tbaa !367, !alias.scope !7414
  %index.next363 = add nuw i64 %index358, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.jp, label %middle.block364, label %vector.body357, !llvm.loop !7398

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %4, %n.vec356
  br i1 %cmp.n365, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader447

.lr.ph.i.i215.preheader447:                       ; preds = %vector.memcheck351, %.lr.ph.i.i215.preheader, %middle.block364
  %.09.i.i216.ph = phi i64 [ %4, %vector.memcheck351 ], [ %4, %.lr.ph.i.i215.preheader ], [ %i.ji, %middle.block364 ] ; 4 uses
  %.048.i.i217.ph = phi ptr [ %i.jf, %vector.memcheck351 ], [ %i.jf, %.lr.ph.i.i215.preheader ], [ %i.jk, %middle.block364 ] ; 2 uses
  %.sroa.0.07.i.i218.ph = phi ptr [ %5, %vector.memcheck351 ], [ %5, %.lr.ph.i.i215.preheader ], [ %i.jl, %middle.block364 ] ; 2 uses
  %i.jq = add i64 %.09.i.i216.ph, -1
  %xtraiter461 = and i64 %.09.i.i216.ph, 3        ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader447, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.jr, %.lr.ph.i.i215.prol ], [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader447 ]
  %.048.i.i217.prol = phi ptr [ %i.ju, %.lr.ph.i.i215.prol ], [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader447 ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.jt, %.lr.ph.i.i215.prol ], [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader447 ] ; 3 uses
  %prol.iter463 = phi i64 [ %prol.iter463.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader447 ]
  %i.jr = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.js = load i32, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !367
  store i32 %i.js, ptr %.048.i.i217.prol, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !367
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter463.next = add i64 %prol.iter463, 1   ; 2 uses
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461
  br i1 %prol.iter463.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !7399

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader447
  %.09.i.i216.unr = phi i64 [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader447 ], [ %i.jr, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader447 ], [ %i.ju, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader447 ], [ %i.jt, %.lr.ph.i.i215.prol ]
  %i.jv = icmp ult i64 %i.jq, 3
  br i1 %i.jv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.kf, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.ki, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.kh, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 6 uses
  %i.jw = load i32, ptr %.sroa.0.07.i.i218, align 4, !tbaa !367
  store i32 %i.jw, ptr %.048.i.i217, align 4, !tbaa !367
  store i32 0, ptr %.sroa.0.07.i.i218, align 4, !tbaa !367
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !367
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !367
  store i32 0, ptr %i.jx, align 4, !tbaa !367
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !367
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !367
  store i32 0, ptr %i.ka, align 4, !tbaa !367
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 12 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.kf = add i64 %.09.i.i216, -4                 ; 2 uses
  %i.kg = load i32, ptr %i.kd, align 4, !tbaa !367
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !367
  store i32 0, ptr %i.kd, align 4, !tbaa !367
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %.not.i.i219.3 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i219.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !7400

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %middle.block364, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.jf
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.kj = ptrtoaddr ptr %0 to i64
  %i.kk = add i64 %i.e, -4
  %i.kl = sub i64 %i.kk, %i.kj                    ; 3 uses
  %i.km = lshr i64 %i.kl, 2
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.kl, 108
  br i1 %min.iters.check375, label %.lr.ph.i.i224.preheader445, label %vector.memcheck376

vector.memcheck376:                               ; preds = %.lr.ph.i.i224.preheader
  %i.ko = shl i64 %4, 2
  %i.kp = and i64 %i.kl, -4                       ; 2 uses
  %i.kq = add i64 %i.ko, %i.kp
  %i.kr = sub nuw nsw i64 -4, %i.kq
  %i.ks = getelementptr i8, ptr %i.jd, i64 %i.kr
  %i.kt = sub nuw nsw i64 -4, %i.kp
  %i.ku = getelementptr i8, ptr %3, i64 %i.kt
  %bound0377 = icmp ult ptr %i.ks, %3
  %bound1378 = icmp ult ptr %i.ku, %i.jf
  %found.conflict379 = and i1 %bound0377, %bound1378
  br i1 %found.conflict379, label %.lr.ph.i.i224.preheader445, label %vector.ph380

end_hunk_10
begin_hunk_11_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %prol.iter429.next = add i64 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i64 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !7535

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader
  %.017.i.i167.unr = phi i64 [ %i.du, %.lr.ph.i.i166.preheader ], [ %i.eg, %.lr.ph.i.i166.prol ]
  %.01416.i.i168.unr = phi ptr [ %i.a, %.lr.ph.i.i166.preheader ], [ %i.ek, %.lr.ph.i.i166.prol ]
  %i.el = sub nsw i64 %i.g, %i.j
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.017.i.i167 = phi i64 [ %i.ex, %.lr.ph.i.i166 ], [ %.017.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.01416.i.i168 = phi ptr [ %i.fa, %.lr.ph.i.i166 ], [ %.01416.i.i168.unr, %.lr.ph.i.i166.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i168) ]
  %i.en = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.en, ptr %.01416.i.i168, align 4, !tbaa !367
  %i.eo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.eq = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 4
  %i.er = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !367
  %i.es = add i32 %i.eo, 2
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 8
  %i.eu = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !367
  %i.ev = add i32 %i.eo, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 12
  %i.ex = add i64 %.017.i.i167, -4                ; 2 uses
  %i.ey = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !367
  %i.ez = add i32 %i.eo, 4
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 16
  %.not.i.i169.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i169.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166, !llvm.loop !149

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170: ; preds = %.lr.ph.i.i166, %.lr.ph.i.i166.prol.loopexit
  %.not.i171 = icmp eq ptr %3, %i.dx
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170
  %.not8.i.i172 = icmp eq ptr %0, %3
  br i1 %.not8.i.i172, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader

.lr.ph.i.i173.preheader:                          ; preds = %bb.g
  %i.fb = ptrtoaddr ptr %0 to i64
  %i.fc = add i64 %i.e, -4
  %i.fd = sub i64 %i.fc, %i.fb                    ; 3 uses
  %i.fe = lshr i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check391 = icmp ult i64 %i.fd, 124
  br i1 %min.iters.check391, label %.lr.ph.i.i173.preheader409, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.i.i173.preheader
  %i.fg = and i64 %i.fd, -4                       ; 2 uses
  %i.fh = sub i64 %1, %i.dv
  %i.fi = shl i64 %i.fh, 2
  %i.fj = add i64 %i.fi, -4
  %i.fk = sub i64 %i.fj, %i.fg
  %i.fl = getelementptr i8, ptr %0, i64 %i.fk
  %i.fm = sub nuw nsw i64 -4, %i.fg
  %i.fn = getelementptr i8, ptr %3, i64 %i.fm
  %bound0393 = icmp ult ptr %i.fl, %3
  %bound1394 = icmp ult ptr %i.fn, %i.dx
  %found.conflict395 = and i1 %bound0393, %bound1394
  br i1 %found.conflict395, label %.lr.ph.i.i173.preheader409, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.ff, 9223372036854775800  ; 3 uses
  %i.fo = mul i64 %n.vec397, -4                   ; 2 uses
  %i.fp = getelementptr i8, ptr %i.dx, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %3, i64 %i.fo
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.fr = mul i64 %index399, -4                   ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.dx, i64 %i.fr ; 2 uses
  %next.gep401 = getelementptr i8, ptr %3, i64 %i.fr ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %next.gep401, i64 -16 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %next.gep401, i64 -32 ; 2 uses
  %wide.load402 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !367, !alias.scope !7555
  %wide.load403 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !367, !alias.scope !7555
  %i.fu = getelementptr inbounds i8, ptr %next.gep400, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %next.gep400, i64 -32
  store <4 x i32> %wide.load402, ptr %i.fu, align 4, !tbaa !367, !alias.scope !7556, !noalias !7555
  store <4 x i32> %wide.load403, ptr %i.fv, align 4, !tbaa !367, !alias.scope !7556, !noalias !7555
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !367, !alias.scope !7555
  store <4 x i32> zeroinitializer, ptr %i.ft, align 4, !tbaa !367, !alias.scope !7555
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.fw, label %middle.block405, label %vector.body398, !llvm.loop !7539

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.ff, %n.vec397
  br i1 %cmp.n406, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader409

.lr.ph.i.i173.preheader409:                       ; preds = %vector.memcheck392, %.lr.ph.i.i173.preheader, %middle.block405
  %.010.i.i174.ph = phi ptr [ %i.dx, %vector.memcheck392 ], [ %i.dx, %.lr.ph.i.i173.preheader ], [ %i.fp, %middle.block405 ]
  %.079.i.i175.ph = phi ptr [ %3, %vector.memcheck392 ], [ %3, %.lr.ph.i.i173.preheader ], [ %i.fq, %middle.block405 ]
  br label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173.preheader409, %.lr.ph.i.i173
  %.010.i.i174 = phi ptr [ %i.fy, %.lr.ph.i.i173 ], [ %.010.i.i174.ph, %.lr.ph.i.i173.preheader409 ]
  %.079.i.i175 = phi ptr [ %i.fx, %.lr.ph.i.i173 ], [ %.079.i.i175.ph, %.lr.ph.i.i173.preheader409 ]
  %i.fx = getelementptr inbounds i8, ptr %.079.i.i175, i64 -4 ; 4 uses
  %i.fy = getelementptr inbounds i8, ptr %.010.i.i174, i64 -4 ; 3 uses
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !367
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !367
  store i32 0, ptr %i.fx, align 4, !tbaa !367
  %.not.i.i176 = icmp eq ptr %0, %i.fx
  br i1 %.not.i.i176, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173, !llvm.loop !7540

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177: ; preds = %.lr.ph.i.i173, %middle.block405, %bb.g
  %i.ga = phi ptr [ %i.dx, %bb.g ], [ %i.fp, %middle.block405 ], [ %i.fy, %.lr.ph.i.i173 ] ; 2 uses
  %.not3.i178 = icmp eq ptr %0, %i.ga
  br i1 %.not3.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, %.lr.ph.i179
  %storemerge4.i180 = phi ptr [ %i.gd, %.lr.ph.i179 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i180, align 4, !tbaa !367
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i180, i64 4 ; 2 uses
  %.not.i181 = icmp eq ptr %i.gd, %i.ga
  br i1 %.not.i181, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.ge = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i191 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i191, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i192.preheader

.lr.ph.i192.preheader:                            ; preds = %bb.h
  %i.gf = and i64 %i.i, 4
  %lcmp.mod425.not = icmp eq i64 %i.gf, 0
  br i1 %lcmp.mod425.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol

.lr.ph.i192.prol:                                 ; preds = %.lr.ph.i192.preheader
  %i.gg = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gh = load i32, ptr %i.ge, align 4, !tbaa !367
  store i32 %i.gh, ptr %i.a, align 4, !tbaa !367
  store i32 0, ptr %i.ge, align 4, !tbaa !367
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i192.prol.loopexit

.lr.ph.i192.prol.loopexit:                        ; preds = %.lr.ph.i192.prol, %.lr.ph.i192.preheader
  %.020.i193.unr = phi i64 [ %i.j, %.lr.ph.i192.preheader ], [ %i.gg, %.lr.ph.i192.prol ]
  %.0819.i194.unr = phi ptr [ %i.ge, %.lr.ph.i192.preheader ], [ %i.gk, %.lr.ph.i192.prol ]
  %.01618.i195.unr = phi ptr [ %i.a, %.lr.ph.i192.preheader ], [ %i.gl, %.lr.ph.i192.prol ]
  %i.gm = icmp eq i64 %i.i, 4
  br i1 %i.gm, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.prol.loopexit, %.lr.ph.i192
  %.020.i193 = phi i64 [ %i.gs, %.lr.ph.i192 ], [ %.020.i193.unr, %.lr.ph.i192.prol.loopexit ]
  %.0819.i194 = phi ptr [ %i.gw, %.lr.ph.i192 ], [ %.0819.i194.unr, %.lr.ph.i192.prol.loopexit ] ; 4 uses
  %.01618.i195 = phi ptr [ %i.gx, %.lr.ph.i192 ], [ %.01618.i195.unr, %.lr.ph.i192.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i195) ]
  %i.gn = load i32, ptr %.0819.i194, align 4, !tbaa !367
  store i32 %i.gn, ptr %.01618.i195, align 4, !tbaa !367
  store i32 0, ptr %.0819.i194, align 4, !tbaa !367
  %i.go = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gq = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 4
  %i.gs = add i64 %.020.i193, -2                  ; 2 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !367
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !367
  store i32 0, ptr %i.gq, align 4, !tbaa !367
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gw = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 8
  %.not.i196.1 = icmp eq i64 %i.gs, 0
  br i1 %.not.i196.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198: ; preds = %.lr.ph.i192, %.lr.ph.i192.prol.loopexit
  %.not8.i.i200 = icmp eq ptr %3, %i.ge
  br i1 %.not8.i.i200, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.gy = shl nsw i64 %1, 2
  %i.gz = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.ha = shl i64 %i.gz, 1
  %i.hb = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hc = shl i64 %4, 2
  %i.hd = add i64 %i.gy, %i.ha
  %i.he = add i64 %i.hd, -4
  %i.hf = add i64 %i.hb, %i.e
  %i.hg = add i64 %i.hf, %i.hc
  %i.hh = sub i64 %i.he, %i.hg                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 2
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.hh, 188
  br i1 %min.iters.check317, label %.lr.ph.i.i201.preheader413, label %vector.memcheck318

vector.memcheck318:                               ; preds = %.lr.ph.i.i201.preheader
  %i.hk = shl nsw i64 %1, 2                       ; 3 uses
  %i.hl = shl i64 %i.gz, 1
  %i.hm = shl i64 %4, 2                           ; 2 uses
  %i.hn = add i64 %i.hk, %i.hl
  %i.ho = add i64 %i.hn, -4
  %i.hp = add i64 %i.hb, %i.e
  %i.hq = add i64 %i.hp, %i.hm
  %i.hr = sub i64 %i.ho, %i.hq
  %i.hs = and i64 %i.hr, -4                       ; 2 uses
  %i.ht = add i64 %i.hk, -4
  %i.hu = sub i64 %i.ht, %i.hs
  %i.hv = getelementptr i8, ptr %0, i64 %i.hu
  %i.hw = add i64 %i.hk, %i.gz
  %i.hx = add i64 %i.hw, -4
  %i.hy = add i64 %i.hm, %i.hb
  %i.hz = add i64 %i.hy, %i.hs
  %i.ia = sub i64 %i.hx, %i.hz
  %i.ib = getelementptr i8, ptr %0, i64 %i.ia
  %bound0319 = icmp ult ptr %i.hv, %i.ge
  %bound1320 = icmp ult ptr %i.ib, %i.a
  %found.conflict321 = and i1 %bound0319, %bound1320
  br i1 %found.conflict321, label %.lr.ph.i.i201.preheader413, label %vector.ph322

vector.ph322:                                     ; preds = %vector.memcheck318
  %n.vec323 = and i64 %i.hj, 9223372036854775800  ; 3 uses
  %i.ic = mul i64 %n.vec323, -4                   ; 2 uses
  %i.id = getelementptr i8, ptr %i.a, i64 %i.ic   ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ge, i64 %i.ic
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 2 uses
  %i.if = mul i64 %index325, -4                   ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.a, i64 %i.if ; 2 uses
  %next.gep327 = getelementptr i8, ptr %i.ge, i64 %i.if ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep327, i64 -16 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %next.gep327, i64 -32 ; 2 uses
  %wide.load328 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !367, !alias.scope !7557
  %wide.load329 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !367, !alias.scope !7557
  %i.ii = getelementptr inbounds i8, ptr %next.gep326, i64 -16
  %i.ij = getelementptr inbounds i8, ptr %next.gep326, i64 -32
  store <4 x i32> %wide.load328, ptr %i.ii, align 4, !tbaa !367, !alias.scope !7558, !noalias !7557
  store <4 x i32> %wide.load329, ptr %i.ij, align 4, !tbaa !367, !alias.scope !7558, !noalias !7557
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !367, !alias.scope !7557
  store <4 x i32> zeroinitializer, ptr %i.ih, align 4, !tbaa !367, !alias.scope !7557
  %index.next330 = add nuw i64 %index325, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.ik, label %middle.block331, label %vector.body324, !llvm.loop !7544

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %i.hj, %n.vec323
  br i1 %cmp.n332, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader413

.lr.ph.i.i201.preheader413:                       ; preds = %vector.memcheck318, %.lr.ph.i.i201.preheader, %middle.block331
  %.010.i.i202.ph = phi ptr [ %i.a, %vector.memcheck318 ], [ %i.a, %.lr.ph.i.i201.preheader ], [ %i.id, %middle.block331 ]
  %.079.i.i203.ph = phi ptr [ %i.ge, %vector.memcheck318 ], [ %i.ge, %.lr.ph.i.i201.preheader ], [ %i.ie, %middle.block331 ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader413, %.lr.ph.i.i201
  %.010.i.i202 = phi ptr [ %i.im, %.lr.ph.i.i201 ], [ %.010.i.i202.ph, %.lr.ph.i.i201.preheader413 ]
  %.079.i.i203 = phi ptr [ %i.il, %.lr.ph.i.i201 ], [ %.079.i.i203.ph, %.lr.ph.i.i201.preheader413 ]
  %i.il = getelementptr inbounds i8, ptr %.079.i.i203, i64 -4 ; 4 uses
  %i.im = getelementptr inbounds i8, ptr %.010.i.i202, i64 -4 ; 3 uses
  %i.in = load i32, ptr %i.il, align 4, !tbaa !367
  store i32 %i.in, ptr %i.im, align 4, !tbaa !367
  store i32 0, ptr %i.il, align 4, !tbaa !367
  %.not.i.i204 = icmp eq ptr %3, %i.il
  br i1 %.not.i.i204, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201, !llvm.loop !7545

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205: ; preds = %.lr.ph.i.i201, %middle.block331, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.io = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198 ], [ %i.id, %middle.block331 ], [ %i.im, %.lr.ph.i.i201 ] ; 2 uses
  %i.ip = sub i64 0, %4
  %i.iq = getelementptr [4 x i8], ptr %i.io, i64 %i.ip ; 10 uses
  %.not5.i206 = icmp eq i64 %4, 0
  br i1 %.not5.i206, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205
  %.pre.i208 = load i32, ptr %5, align 4, !tbaa !367 ; 2 uses
  %min.iters.check336 = icmp ult i64 %4, 8
  br i1 %min.iters.check336, label %scalar.ph335.preheader, label %vector.ph337

vector.ph337:                                     ; preds = %.lr.ph.i207
  %n.vec338 = and i64 %4, -8                      ; 3 uses
  %i.ir = and i64 %4, 7
  %i.is = shl i64 %n.vec338, 2
  %i.it = getelementptr i8, ptr %i.iq, i64 %i.is
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i208, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next342, %vector.body339 ] ; 2 uses
  %i.iu = shl i64 %index340, 2
  %next.gep341 = getelementptr i8, ptr %i.iq, i64 %i.iu ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep341, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep341, align 4, !tbaa !367
  store <4 x i32> %broadcast.splat, ptr %i.iv, align 4, !tbaa !367
  %index.next342 = add nuw i64 %index340, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next342, %n.vec338
  br i1 %i.iw, label %middle.block343, label %vector.body339, !llvm.loop !7546

middle.block343:                                  ; preds = %vector.body339
  %cmp.n344 = icmp eq i64 %4, %n.vec338
  br i1 %cmp.n344, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212, label %scalar.ph335.preheader

scalar.ph335.preheader:                           ; preds = %.lr.ph.i207, %middle.block343
  %.07.i209.ph = phi i64 [ %4, %.lr.ph.i207 ], [ %i.ir, %middle.block343 ]
  %.046.i210.ph = phi ptr [ %i.iq, %.lr.ph.i207 ], [ %i.it, %middle.block343 ]
  br label %scalar.ph335

scalar.ph335:                                     ; preds = %scalar.ph335.preheader, %scalar.ph335
  %.07.i209 = phi i64 [ %i.ix, %scalar.ph335 ], [ %.07.i209.ph, %scalar.ph335.preheader ]
  %.046.i210 = phi ptr [ %i.iy, %scalar.ph335 ], [ %.046.i210.ph, %scalar.ph335.preheader ] ; 2 uses
  %i.ix = add i64 %.07.i209, -1                   ; 2 uses
  store i32 %.pre.i208, ptr %.046.i210, align 4, !tbaa !367
  %i.iy = getelementptr inbounds nuw i8, ptr %.046.i210, i64 4
  %.not.i211 = icmp eq i64 %i.ix, 0
  br i1 %.not.i211, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212, label %scalar.ph335, !llvm.loop !7547

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212: ; preds = %scalar.ph335, %middle.block343, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205
  %.not.i213 = icmp eq ptr %3, %i.iq
  br i1 %.not.i213, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212
  %.not8.i.i214 = icmp eq ptr %0, %3
  br i1 %.not8.i.i214, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %bb.i
  %i.iz = ptrtoaddr ptr %0 to i64
  %i.ja = add i64 %i.e, -4
  %i.jb = sub i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = lshr i64 %i.jb, 2
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check353 = icmp ult i64 %i.jb, 108
  br i1 %min.iters.check353, label %.lr.ph.i.i215.preheader411, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.i.i215.preheader
  %i.je = shl i64 %4, 2
  %i.jf = and i64 %i.jb, -4                       ; 2 uses
  %i.jg = add i64 %i.je, %i.jf
  %i.jh = sub nuw nsw i64 -4, %i.jg
  %i.ji = getelementptr i8, ptr %i.io, i64 %i.jh
  %i.jj = sub nuw nsw i64 -4, %i.jf
  %i.jk = getelementptr i8, ptr %3, i64 %i.jj
  %bound0355 = icmp ult ptr %i.ji, %3
  %bound1356 = icmp ult ptr %i.jk, %i.iq
  %found.conflict357 = and i1 %bound0355, %bound1356
  br i1 %found.conflict357, label %.lr.ph.i.i215.preheader411, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck354
  %n.vec359 = and i64 %i.jd, 9223372036854775800  ; 3 uses
  %i.jl = mul i64 %n.vec359, -4                   ; 2 uses
  %i.jm = getelementptr i8, ptr %i.iq, i64 %i.jl  ; 2 uses
  %i.jn = getelementptr i8, ptr %3, i64 %i.jl
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next366, %vector.body360 ] ; 2 uses
  %i.jo = mul i64 %index361, -4                   ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.iq, i64 %i.jo ; 2 uses
  %next.gep363 = getelementptr i8, ptr %3, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %next.gep363, i64 -16 ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %next.gep363, i64 -32 ; 2 uses
  %wide.load364 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !367, !alias.scope !7559
  %wide.load365 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !367, !alias.scope !7559
  %i.jr = getelementptr inbounds i8, ptr %next.gep362, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep362, i64 -32
  store <4 x i32> %wide.load364, ptr %i.jr, align 4, !tbaa !367, !alias.scope !7560, !noalias !7559
  store <4 x i32> %wide.load365, ptr %i.js, align 4, !tbaa !367, !alias.scope !7560, !noalias !7559
  store <4 x i32> zeroinitializer, ptr %i.jp, align 4, !tbaa !367, !alias.scope !7559
  store <4 x i32> zeroinitializer, ptr %i.jq, align 4, !tbaa !367, !alias.scope !7559
  %index.next366 = add nuw i64 %index361, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.jt, label %middle.block367, label %vector.body360, !llvm.loop !7551

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.jd, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader411

.lr.ph.i.i215.preheader411:                       ; preds = %vector.memcheck354, %.lr.ph.i.i215.preheader, %middle.block367
  %.010.i.i216.ph = phi ptr [ %i.iq, %vector.memcheck354 ], [ %i.iq, %.lr.ph.i.i215.preheader ], [ %i.jm, %middle.block367 ]
  %.079.i.i217.ph = phi ptr [ %3, %vector.memcheck354 ], [ %3, %.lr.ph.i.i215.preheader ], [ %i.jn, %middle.block367 ]
  br label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.preheader411, %.lr.ph.i.i215
  %.010.i.i216 = phi ptr [ %i.jv, %.lr.ph.i.i215 ], [ %.010.i.i216.ph, %.lr.ph.i.i215.preheader411 ]
  %.079.i.i217 = phi ptr [ %i.ju, %.lr.ph.i.i215 ], [ %.079.i.i217.ph, %.lr.ph.i.i215.preheader411 ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i217, i64 -4 ; 4 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i216, i64 -4 ; 3 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !367
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !367
  store i32 0, ptr %i.ju, align 4, !tbaa !367
  %.not.i.i218 = icmp eq ptr %0, %i.ju
  br i1 %.not.i.i218, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215, !llvm.loop !7552

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219: ; preds = %.lr.ph.i.i215, %middle.block367, %bb.i
  %i.jx = phi ptr [ %i.iq, %bb.i ], [ %i.jm, %middle.block367 ], [ %i.jv, %.lr.ph.i.i215 ] ; 2 uses
  %.not3.i220 = icmp eq ptr %0, %i.jx
  br i1 %.not3.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, %.lr.ph.i221
  %storemerge4.i222 = phi ptr [ %i.ka, %.lr.ph.i221 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i222, align 4, !tbaa !367
  %i.jy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.jz = add i32 %i.jy, -1
  store i32 %i.jz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
end_hunk_11
begin_hunk_12_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_:bb.a
  br i1 %.not3.i144.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.preheader, !llvm.loop !146

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.l, %i.h
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dd, %.lr.ph.i155 ], [ %i.cy, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cz = load i32, ptr %.018.i156, align 4, !tbaa !367
  store i32 %i.cz, ptr %.01517.i157, align 4, !tbaa !367
  store i32 0, ptr %.018.i156, align 4, !tbaa !367
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !144

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !367   ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.df, ptr %i.b, align 4, !tbaa !367
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not.i161 = icmp eq ptr %3, %i.de
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.di = ptrtoaddr ptr %0 to i64
  %i.dj = add i64 %i.f, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dk, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dn = shl nsw i64 %1, 2
  %i.do = and i64 %i.dk, -4                       ; 2 uses
  %i.dp = shl i64 %i.m, 2
  %i.dq = add i64 %i.k, %i.dn
  %i.dr = add i64 %i.dq, -4
  %i.ds = add i64 %i.do, %i.dp
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = sub nuw nsw i64 -4, %i.do
  %i.dw = getelementptr i8, ptr %3, i64 %i.dv
  %bound0348 = icmp ult ptr %i.du, %3
  %bound1349 = icmp ult ptr %i.dw, %i.de
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.de, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 %i.dx
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.ea = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.de, i64 %i.ea ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !367, !alias.scope !7632
  %wide.load358 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !367, !alias.scope !7632
  %i.ed = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.ed, align 4, !tbaa !367, !alias.scope !7633, !noalias !7632
  store <4 x i32> %wide.load358, ptr %i.ee, align 4, !tbaa !367, !alias.scope !7633, !noalias !7632
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !367, !alias.scope !7632
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !367, !alias.scope !7632
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ef, label %middle.block360, label %vector.body353, !llvm.loop !7618

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dm, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.de, %vector.memcheck347 ], [ %i.de, %.lr.ph.i.i163.preheader ], [ %i.dy, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dz, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.eh, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.eg, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !367
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !367
  store i32 0, ptr %i.eg, align 4, !tbaa !367
  %.not.i.i166 = icmp eq ptr %0, %i.eg
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !7619

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.ej = phi ptr [ %i.de, %bb.g ], [ %i.dy, %middle.block360 ], [ %i.eh, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.ej
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.em, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !367
  %i.ek = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.em, %i.ej
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.en = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.eo = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.ep = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !367
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !367
  store i32 0, ptr %i.en, align 4, !tbaa !367
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.ep, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.en, %.lr.ph.i182.preheader ], [ %i.et, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.eu, %.lr.ph.i182.prol ]
  %i.ev = icmp eq i64 %i.k, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.fb, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.ff, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fg, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.ew = load i32, ptr %.0819.i184, align 4, !tbaa !367
  store i32 %i.ew, ptr %.01618.i185, align 4, !tbaa !367
  store i32 0, ptr %.0819.i184, align 4, !tbaa !367
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.fb = add i64 %.020.i183, -2                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !367
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !367
  store i32 0, ptr %i.ez, align 4, !tbaa !367
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ff = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.fb, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.en
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.fh = shl nsw i64 %1, 2
  %i.fi = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fj = shl i64 %i.fi, 1
  %i.fk = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fl = shl i64 %4, 2
  %i.fm = add i64 %i.fh, %i.fj
  %i.fn = add i64 %i.fm, -4
  %i.fo = add i64 %i.fk, %i.f
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = sub i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fq, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.ft = shl nsw i64 %1, 2                       ; 3 uses
  %i.fu = shl i64 %i.fi, 1
  %i.fv = shl i64 %4, 2                           ; 2 uses
  %i.fw = add i64 %i.ft, %i.fu
  %i.fx = add i64 %i.fw, -4
  %i.fy = add i64 %i.fk, %i.f
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = and i64 %i.ga, -4                       ; 2 uses
  %i.gc = add i64 %i.ft, -4
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = add i64 %i.ft, %i.fi
  %i.gg = add i64 %i.gf, -4
  %i.gh = add i64 %i.fv, %i.fk
  %i.gi = add i64 %i.gh, %i.gb
  %i.gj = sub i64 %i.gg, %i.gi
  %i.gk = getelementptr i8, ptr %0, i64 %i.gj
  %bound0300 = icmp ult ptr %i.ge, %i.en
  %bound1301 = icmp ult ptr %i.gk, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fs, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.b, i64 %i.gl   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.go = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.go ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.en, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !367, !alias.scope !7634
  %wide.load310 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !367, !alias.scope !7634
  %i.gr = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gr, align 4, !tbaa !367, !alias.scope !7635, !noalias !7634
  store <4 x i32> %wide.load310, ptr %i.gs, align 4, !tbaa !367, !alias.scope !7635, !noalias !7634
  store <4 x i32> zeroinitializer, ptr %i.gp, align 4, !tbaa !367, !alias.scope !7634
  store <4 x i32> zeroinitializer, ptr %i.gq, align 4, !tbaa !367, !alias.scope !7634
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gt, label %middle.block312, label %vector.body305, !llvm.loop !7623

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fs, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gm, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.en, %vector.memcheck299 ], [ %i.en, %.lr.ph.i.i191.preheader ], [ %i.gn, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gv, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gu, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gu = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !367
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !367
  store i32 0, ptr %i.gu, align 4, !tbaa !367
  %.not.i.i194 = icmp eq ptr %3, %i.gu
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !7624

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gm, %middle.block312 ], [ %i.gv, %.lr.ph.i.i191 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.a ; 8 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !367
  %.not.i196 = icmp eq ptr %3, %i.gy
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.ha = ptrtoaddr ptr %0 to i64
  %i.hb = add i64 %i.f, -4
  %i.hc = sub i64 %i.hb, %i.ha                    ; 3 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hc, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.hf = shl i64 %4, 2
  %i.hg = and i64 %i.hc, -4                       ; 2 uses
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = sub nuw nsw i64 -4, %i.hh
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi
  %i.hk = sub nuw nsw i64 -4, %i.hg
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %bound0324 = icmp ult ptr %i.hj, %3
  %bound1325 = icmp ult ptr %i.hl, %i.gy
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %3, i64 %i.hm
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hp = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gy, i64 %i.hp ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7636
  %wide.load334 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !367, !alias.scope !7636
  %i.hs = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hs, align 4, !tbaa !367, !alias.scope !7637, !noalias !7636
  store <4 x i32> %wide.load334, ptr %i.ht, align 4, !tbaa !367, !alias.scope !7637, !noalias !7636
  store <4 x i32> zeroinitializer, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7636
  store <4 x i32> zeroinitializer, ptr %i.hr, align 4, !tbaa !367, !alias.scope !7636
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hu, label %middle.block336, label %vector.body329, !llvm.loop !7628

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.he, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gy, %vector.memcheck323 ], [ %i.gy, %.lr.ph.i.i198.preheader ], [ %i.hn, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.ho, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hw, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hv, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !367
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !367
  store i32 0, ptr %i.hv, align 4, !tbaa !367
  %.not.i.i201 = icmp eq ptr %0, %i.hv
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !7629

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hy = phi ptr [ %i.gy, %bb.i ], [ %i.hn, %middle.block336 ], [ %i.hw, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hy
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.ib, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !367
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !145

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENSE_4and_INSE_12is_differentINSE_17integral_constantIjLj2EEENSK_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISD_EENSE_5bool_ILb1EEESS_EENSR_ILb0EEESU_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !479, !noalias !7652 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !486, !noalias !7653 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !451    ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !451    ; 2 uses
  %i.g = icmp ne ptr %i.e, %i.f
  %i.h = icmp ne i64 %i.c, 0
  %or.cond12 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond12, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.07.013 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !367
  store i32 %i.j, ptr %.sroa.07.013, align 4, !tbaa !367
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !451
  %i.m = load ptr, ptr %2, align 8, !tbaa !451    ; 2 uses
  %i.n = icmp ne ptr %i.l, %i.m
  %i.o = icmp ne ptr %i.k, %i.d
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !7642

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %.lcssa11 = phi ptr [ %i.e, %bb.a ], [ %i.l, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.p = icmp eq ptr %.lcssa11, %.lcssa
  br i1 %i.p, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %.critedge
end_hunk_12
begin_hunk_13_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRS4_EEEEEvT0_mSB_SB_mT1_RT_:bb.a
  br i1 %.not3.i144.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.preheader, !llvm.loop !146

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.l, %i.h
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dd, %.lr.ph.i155 ], [ %i.cy, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cz = load i32, ptr %.018.i156, align 4, !tbaa !367
  store i32 %i.cz, ptr %.01517.i157, align 4, !tbaa !367
  store i32 0, ptr %.018.i156, align 4, !tbaa !367
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !144

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !367   ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.df, ptr %i.b, align 4, !tbaa !367
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not.i161 = icmp eq ptr %3, %i.de
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.di = ptrtoaddr ptr %0 to i64
  %i.dj = add i64 %i.f, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dk, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dn = shl nsw i64 %1, 2
  %i.do = and i64 %i.dk, -4                       ; 2 uses
  %i.dp = shl i64 %i.m, 2
  %i.dq = add i64 %i.k, %i.dn
  %i.dr = add i64 %i.dq, -4
  %i.ds = add i64 %i.do, %i.dp
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = sub nuw nsw i64 -4, %i.do
  %i.dw = getelementptr i8, ptr %3, i64 %i.dv
  %bound0348 = icmp ult ptr %i.du, %3
  %bound1349 = icmp ult ptr %i.dw, %i.de
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.de, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 %i.dx
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.ea = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.de, i64 %i.ea ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !367, !alias.scope !7717
  %wide.load358 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !367, !alias.scope !7717
  %i.ed = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.ed, align 4, !tbaa !367, !alias.scope !7718, !noalias !7717
  store <4 x i32> %wide.load358, ptr %i.ee, align 4, !tbaa !367, !alias.scope !7718, !noalias !7717
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !367, !alias.scope !7717
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !367, !alias.scope !7717
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ef, label %middle.block360, label %vector.body353, !llvm.loop !7703

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dm, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.de, %vector.memcheck347 ], [ %i.de, %.lr.ph.i.i163.preheader ], [ %i.dy, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dz, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.eh, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.eg, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !367
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !367
  store i32 0, ptr %i.eg, align 4, !tbaa !367
  %.not.i.i166 = icmp eq ptr %0, %i.eg
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !7704

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.ej = phi ptr [ %i.de, %bb.g ], [ %i.dy, %middle.block360 ], [ %i.eh, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.ej
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.em, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !367
  %i.ek = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.em, %i.ej
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.en = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.eo = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.ep = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !367
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !367
  store i32 0, ptr %i.en, align 4, !tbaa !367
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.ep, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.en, %.lr.ph.i182.preheader ], [ %i.et, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.eu, %.lr.ph.i182.prol ]
  %i.ev = icmp eq i64 %i.k, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.fb, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.ff, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fg, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.ew = load i32, ptr %.0819.i184, align 4, !tbaa !367
  store i32 %i.ew, ptr %.01618.i185, align 4, !tbaa !367
  store i32 0, ptr %.0819.i184, align 4, !tbaa !367
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.fb = add i64 %.020.i183, -2                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !367
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !367
  store i32 0, ptr %i.ez, align 4, !tbaa !367
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ff = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.fb, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.en
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.fh = shl nsw i64 %1, 2
  %i.fi = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fj = shl i64 %i.fi, 1
  %i.fk = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fl = shl i64 %4, 2
  %i.fm = add i64 %i.fh, %i.fj
  %i.fn = add i64 %i.fm, -4
  %i.fo = add i64 %i.fk, %i.f
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = sub i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fq, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.ft = shl nsw i64 %1, 2                       ; 3 uses
  %i.fu = shl i64 %i.fi, 1
  %i.fv = shl i64 %4, 2                           ; 2 uses
  %i.fw = add i64 %i.ft, %i.fu
  %i.fx = add i64 %i.fw, -4
  %i.fy = add i64 %i.fk, %i.f
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = and i64 %i.ga, -4                       ; 2 uses
  %i.gc = add i64 %i.ft, -4
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = add i64 %i.ft, %i.fi
  %i.gg = add i64 %i.gf, -4
  %i.gh = add i64 %i.fv, %i.fk
  %i.gi = add i64 %i.gh, %i.gb
  %i.gj = sub i64 %i.gg, %i.gi
  %i.gk = getelementptr i8, ptr %0, i64 %i.gj
  %bound0300 = icmp ult ptr %i.ge, %i.en
  %bound1301 = icmp ult ptr %i.gk, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fs, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.b, i64 %i.gl   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.go = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.go ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.en, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !367, !alias.scope !7719
  %wide.load310 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !367, !alias.scope !7719
  %i.gr = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gr, align 4, !tbaa !367, !alias.scope !7720, !noalias !7719
  store <4 x i32> %wide.load310, ptr %i.gs, align 4, !tbaa !367, !alias.scope !7720, !noalias !7719
  store <4 x i32> zeroinitializer, ptr %i.gp, align 4, !tbaa !367, !alias.scope !7719
  store <4 x i32> zeroinitializer, ptr %i.gq, align 4, !tbaa !367, !alias.scope !7719
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gt, label %middle.block312, label %vector.body305, !llvm.loop !7708

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fs, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gm, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.en, %vector.memcheck299 ], [ %i.en, %.lr.ph.i.i191.preheader ], [ %i.gn, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gv, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gu, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gu = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !367
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !367
  store i32 0, ptr %i.gu, align 4, !tbaa !367
  %.not.i.i194 = icmp eq ptr %3, %i.gu
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !7709

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gm, %middle.block312 ], [ %i.gv, %.lr.ph.i.i191 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.a ; 8 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !367
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !367
  %.not.i196 = icmp eq ptr %3, %i.gy
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.ha = ptrtoaddr ptr %0 to i64
  %i.hb = add i64 %i.f, -4
  %i.hc = sub i64 %i.hb, %i.ha                    ; 3 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hc, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.hf = shl i64 %4, 2
  %i.hg = and i64 %i.hc, -4                       ; 2 uses
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = sub nuw nsw i64 -4, %i.hh
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi
  %i.hk = sub nuw nsw i64 -4, %i.hg
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %bound0324 = icmp ult ptr %i.hj, %3
  %bound1325 = icmp ult ptr %i.hl, %i.gy
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %3, i64 %i.hm
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hp = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gy, i64 %i.hp ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7721
  %wide.load334 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !367, !alias.scope !7721
  %i.hs = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hs, align 4, !tbaa !367, !alias.scope !7722, !noalias !7721
  store <4 x i32> %wide.load334, ptr %i.ht, align 4, !tbaa !367, !alias.scope !7722, !noalias !7721
  store <4 x i32> zeroinitializer, ptr %i.hq, align 4, !tbaa !367, !alias.scope !7721
  store <4 x i32> zeroinitializer, ptr %i.hr, align 4, !tbaa !367, !alias.scope !7721
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hu, label %middle.block336, label %vector.body329, !llvm.loop !7713

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.he, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gy, %vector.memcheck323 ], [ %i.gy, %.lr.ph.i.i198.preheader ], [ %i.hn, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.ho, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hw, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hv, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !367
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !367
  store i32 0, ptr %i.hv, align 4, !tbaa !367
  %.not.i.i201 = icmp eq ptr %0, %i.hv
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !7714

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hy = phi ptr [ %i.gy, %bb.i ], [ %i.hn, %middle.block336 ], [ %i.hw, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hy
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.ib, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !367
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !145

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignIPS3_EEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj2EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !481
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 3, i64 noundef 4, i64 noundef 4, i64 noundef %i.d, i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, i32 } %i.k, 0        ; 5 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !261
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread: ; preds = %bb.b, %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i
  call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i
  %i.o = extractvalue { ptr, i32 } %i.k, 1
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  %.not.not35 = icmp eq ptr %i.j, null
  %.not.not = or i1 %.not.not35, %.not.i.i.i.i
  br i1 %.not.not, label %bb.c, label %bb.f
end_hunk_13
begin_hunk_14_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  store i32 %i.ey, ptr %i.a, align 4, !tbaa !367
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fb = load ptr, ptr %.sroa.0.016.i.i174.ph, align 8, !tbaa !412
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fd = add nsw i64 %i.du, -1
  br label %.lr.ph.i.i171.prol.loopexit

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.du, %.lr.ph.i.i171.preheader ], [ %i.fd, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.a, %.lr.ph.i.i171.preheader ], [ %i.fc, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fb, %.lr.ph.i.i171.prol ]
  %i.fe = icmp eq i64 %i.j, %.neg420
  br i1 %i.fe, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.fq, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.fp, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.fo, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !247
  store i32 %i.fg, ptr %.01417.i.i173, align 4, !tbaa !367
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fj = load ptr, ptr %.sroa.0.016.i.i174, align 8, !tbaa !412 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !247
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !367
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !412
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.fq = add i64 %.018.i.i172, -2                ; 2 uses
  %.not.i.i175.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i175.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !150

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.dx
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.fr = ptrtoaddr ptr %0 to i64
  %i.fs = add i64 %i.e, -4
  %i.ft = sub i64 %i.fs, %i.fr                    ; 3 uses
  %i.fu = lshr i64 %i.ft, 2
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.ft, 124
  br i1 %min.iters.check375, label %.lr.ph.i.i180.preheader393, label %vector.memcheck376

vector.memcheck376:                               ; preds = %.lr.ph.i.i180.preheader
  %i.fw = and i64 %i.ft, -4                       ; 2 uses
  %i.fx = sub i64 %1, %i.dv
  %i.fy = shl i64 %i.fx, 2
  %i.fz = add i64 %i.fy, -4
  %i.ga = sub i64 %i.fz, %i.fw
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga
  %i.gc = sub nuw nsw i64 -4, %i.fw
  %i.gd = getelementptr i8, ptr %3, i64 %i.gc
  %bound0377 = icmp ult ptr %i.gb, %3
  %bound1378 = icmp ult ptr %i.gd, %i.dx
  %found.conflict379 = and i1 %bound0377, %bound1378
  br i1 %found.conflict379, label %.lr.ph.i.i180.preheader393, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck376
  %n.vec381 = and i64 %i.fv, 9223372036854775800  ; 3 uses
  %i.ge = mul i64 %n.vec381, -4                   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.dx, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %3, i64 %i.ge
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next388, %vector.body382 ] ; 2 uses
  %i.gh = mul i64 %index383, -4                   ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.dx, i64 %i.gh ; 2 uses
  %next.gep385 = getelementptr i8, ptr %3, i64 %i.gh ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep385, i64 -16 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %next.gep385, i64 -32 ; 2 uses
  %wide.load386 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !367, !alias.scope !7820
  %wide.load387 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !367, !alias.scope !7820
  %i.gk = getelementptr inbounds i8, ptr %next.gep384, i64 -16
  %i.gl = getelementptr inbounds i8, ptr %next.gep384, i64 -32
  store <4 x i32> %wide.load386, ptr %i.gk, align 4, !tbaa !367, !alias.scope !7821, !noalias !7820
  store <4 x i32> %wide.load387, ptr %i.gl, align 4, !tbaa !367, !alias.scope !7821, !noalias !7820
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !367, !alias.scope !7820
  store <4 x i32> zeroinitializer, ptr %i.gj, align 4, !tbaa !367, !alias.scope !7820
  %index.next388 = add nuw i64 %index383, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next388, %n.vec381
  br i1 %i.gm, label %middle.block389, label %vector.body382, !llvm.loop !7805

middle.block389:                                  ; preds = %vector.body382
  %cmp.n390 = icmp eq i64 %i.fv, %n.vec381
  br i1 %cmp.n390, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader393

.lr.ph.i.i180.preheader393:                       ; preds = %vector.memcheck376, %.lr.ph.i.i180.preheader, %middle.block389
  %.010.i.i181.ph = phi ptr [ %i.dx, %vector.memcheck376 ], [ %i.dx, %.lr.ph.i.i180.preheader ], [ %i.gf, %middle.block389 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck376 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.gg, %middle.block389 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader393, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.go, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader393 ]
  %.079.i.i182 = phi ptr [ %i.gn, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader393 ]
  %i.gn = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !367
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !367
  store i32 0, ptr %i.gn, align 4, !tbaa !367
  %.not.i.i183 = icmp eq ptr %0, %i.gn
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !7806

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block389, %bb.g
  %i.gq = phi ptr [ %i.dx, %bb.g ], [ %i.gf, %middle.block389 ], [ %i.go, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.gq
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.gt, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !367
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.gt, %i.gq
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gu = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.gv = and i64 %i.i, 4
  %lcmp.mod409.not = icmp eq i64 %i.gv, 0
  br i1 %lcmp.mod409.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.gw = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gx = load i32, ptr %i.gu, align 4, !tbaa !367
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !367
  store i32 0, ptr %i.gu, align 4, !tbaa !367
  %i.gy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.j, %.lr.ph.i199.preheader ], [ %i.gw, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.gu, %.lr.ph.i199.preheader ], [ %i.ha, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.a, %.lr.ph.i199.preheader ], [ %i.hb, %.lr.ph.i199.prol ]
  %i.hc = icmp eq i64 %i.i, 4
  br i1 %i.hc, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.hi, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.hm, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.hn, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.hd = load i32, ptr %.0819.i201, align 4, !tbaa !367
  store i32 %i.hd, ptr %.01618.i202, align 4, !tbaa !367
  store i32 0, ptr %.0819.i201, align 4, !tbaa !367
  %i.he = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.hi = add i64 %.020.i200, -2                  ; 2 uses
  %i.hj = load i32, ptr %i.hg, align 4, !tbaa !367
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !367
  store i32 0, ptr %i.hg, align 4, !tbaa !367
  %i.hk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hm = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.hi, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.gu
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.ho = shl nsw i64 %1, 2
  %i.hp = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.hq = shl i64 %i.hp, 1
  %i.hr = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hs = shl i64 %4, 2
  %i.ht = add i64 %i.ho, %i.hq
  %i.hu = add i64 %i.ht, -4
  %i.hv = add i64 %i.hr, %i.e
  %i.hw = add i64 %i.hv, %i.hs
  %i.hx = sub i64 %i.hu, %i.hw                    ; 2 uses
  %i.hy = lshr i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.hx, 188
  br i1 %min.iters.check327, label %.lr.ph.i.i208.preheader398, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i208.preheader
  %i.ia = shl nsw i64 %1, 2                       ; 3 uses
  %i.ib = shl i64 %i.hp, 1
  %i.ic = shl i64 %4, 2                           ; 2 uses
  %i.id = add i64 %i.ia, %i.ib
  %i.ie = add i64 %i.id, -4
  %i.if = add i64 %i.hr, %i.e
  %i.ig = add i64 %i.if, %i.ic
  %i.ih = sub i64 %i.ie, %i.ig
  %i.ii = and i64 %i.ih, -4                       ; 2 uses
  %i.ij = add i64 %i.ia, -4
  %i.ik = sub i64 %i.ij, %i.ii
  %i.il = getelementptr i8, ptr %0, i64 %i.ik
  %i.im = add i64 %i.ia, %i.hp
  %i.in = add i64 %i.im, -4
  %i.io = add i64 %i.ic, %i.hr
  %i.ip = add i64 %i.io, %i.ii
  %i.iq = sub i64 %i.in, %i.ip
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %bound0329 = icmp ult ptr %i.il, %i.gu
  %bound1330 = icmp ult ptr %i.ir, %i.a
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i208.preheader398, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.hz, 9223372036854775800  ; 3 uses
  %i.is = mul i64 %n.vec333, -4                   ; 2 uses
  %i.it = getelementptr i8, ptr %i.a, i64 %i.is   ; 2 uses
  %i.iu = getelementptr i8, ptr %i.gu, i64 %i.is
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.iv = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.a, i64 %i.iv ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.gu, i64 %i.iv ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !367, !alias.scope !7822
  %wide.load339 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !367, !alias.scope !7822
  %i.iy = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.iz = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.iy, align 4, !tbaa !367, !alias.scope !7823, !noalias !7822
  store <4 x i32> %wide.load339, ptr %i.iz, align 4, !tbaa !367, !alias.scope !7823, !noalias !7822
  store <4 x i32> zeroinitializer, ptr %i.iw, align 4, !tbaa !367, !alias.scope !7822
  store <4 x i32> zeroinitializer, ptr %i.ix, align 4, !tbaa !367, !alias.scope !7822
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.ja, label %middle.block341, label %vector.body334, !llvm.loop !7810

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.hz, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader398

.lr.ph.i.i208.preheader398:                       ; preds = %vector.memcheck328, %.lr.ph.i.i208.preheader, %middle.block341
  %.010.i.i209.ph = phi ptr [ %i.a, %vector.memcheck328 ], [ %i.a, %.lr.ph.i.i208.preheader ], [ %i.it, %middle.block341 ]
  %.079.i.i210.ph = phi ptr [ %i.gu, %vector.memcheck328 ], [ %i.gu, %.lr.ph.i.i208.preheader ], [ %i.iu, %middle.block341 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader398, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.jc, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader398 ]
  %.079.i.i210 = phi ptr [ %i.jb, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader398 ]
  %i.jb = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.jc = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.jd = load i32, ptr %i.jb, align 4, !tbaa !367
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !367
  store i32 0, ptr %i.jb, align 4, !tbaa !367
  %.not.i.i211 = icmp eq ptr %3, %i.jb
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !7811

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block341, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.je = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.it, %middle.block341 ], [ %i.jc, %.lr.ph.i.i208 ] ; 2 uses
  %i.jf = sub i64 0, %4
  %i.jg = getelementptr [4 x i8], ptr %i.je, i64 %i.jf ; 9 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %xtraiter411 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.jh, %.lr.ph.i.i215.prol ], [ %4, %.lr.ph.i.i215.preheader ]
  %.048.i.i217.prol = phi ptr [ %i.jl, %.lr.ph.i.i215.prol ], [ %i.jg, %.lr.ph.i.i215.preheader ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.jk, %.lr.ph.i.i215.prol ], [ %5, %.lr.ph.i.i215.preheader ] ; 2 uses
  %prol.iter413 = phi i64 [ %prol.iter413.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader ]
  %i.jh = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 16
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !247
  store i32 %i.jj, ptr %.048.i.i217.prol, align 4, !tbaa !367
  %i.jk = load ptr, ptr %.sroa.0.07.i.i218.prol, align 8, !tbaa !412 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter413.next = add i64 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i64 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !7812

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader
  %.09.i.i216.unr = phi i64 [ %4, %.lr.ph.i.i215.preheader ], [ %i.jh, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %i.jg, %.lr.ph.i.i215.preheader ], [ %i.jl, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %5, %.lr.ph.i.i215.preheader ], [ %i.jk, %.lr.ph.i.i215.prol ]
  %i.jm = icmp ult i64 %4, 4
  br i1 %i.jm, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.jz, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.kd, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.kc, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !247
  store i32 %i.jo, ptr %.048.i.i217, align 4, !tbaa !367
  %i.jp = load ptr, ptr %.sroa.0.07.i.i218, align 8, !tbaa !412 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !247
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !367
  %i.jt = load ptr, ptr %i.jp, align 8, !tbaa !412 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !247
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !367
  %i.jx = load ptr, ptr %i.jt, align 8, !tbaa !412 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.jz = add i64 %.09.i.i216, -4                 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !247
  store i32 %i.kb, ptr %i.jy, align 4, !tbaa !367
  %i.kc = load ptr, ptr %i.jx, align 8, !tbaa !412
  %i.kd = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %.not.i.i219.3 = icmp eq i64 %i.jz, 0
  br i1 %.not.i.i219.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !75

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.jg
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.ke = ptrtoaddr ptr %0 to i64
  %i.kf = add i64 %i.e, -4
  %i.kg = sub i64 %i.kf, %i.ke                    ; 3 uses
  %i.kh = lshr i64 %i.kg, 2
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check351 = icmp ult i64 %i.kg, 108
  br i1 %min.iters.check351, label %.lr.ph.i.i224.preheader396, label %vector.memcheck352

vector.memcheck352:                               ; preds = %.lr.ph.i.i224.preheader
  %i.kj = shl i64 %4, 2
  %i.kk = and i64 %i.kg, -4                       ; 2 uses
  %i.kl = add i64 %i.kj, %i.kk
  %i.km = sub nuw nsw i64 -4, %i.kl
  %i.kn = getelementptr i8, ptr %i.je, i64 %i.km
  %i.ko = sub nuw nsw i64 -4, %i.kk
  %i.kp = getelementptr i8, ptr %3, i64 %i.ko
  %bound0353 = icmp ult ptr %i.kn, %3
  %bound1354 = icmp ult ptr %i.kp, %i.jg
  %found.conflict355 = and i1 %bound0353, %bound1354
  br i1 %found.conflict355, label %.lr.ph.i.i224.preheader396, label %vector.ph356

vector.ph356:                                     ; preds = %vector.memcheck352
  %n.vec357 = and i64 %i.ki, 9223372036854775800  ; 3 uses
  %i.kq = mul i64 %n.vec357, -4                   ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jg, i64 %i.kq  ; 2 uses
  %i.ks = getelementptr i8, ptr %3, i64 %i.kq
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body358 ] ; 2 uses
  %i.kt = mul i64 %index359, -4                   ; 2 uses
  %next.gep360 = getelementptr i8, ptr %i.jg, i64 %i.kt ; 2 uses
  %next.gep361 = getelementptr i8, ptr %3, i64 %i.kt ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %next.gep361, i64 -16 ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %next.gep361, i64 -32 ; 2 uses
  %wide.load362 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !367, !alias.scope !7824
  %wide.load363 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !367, !alias.scope !7824
  %i.kw = getelementptr inbounds i8, ptr %next.gep360, i64 -16
  %i.kx = getelementptr inbounds i8, ptr %next.gep360, i64 -32
  store <4 x i32> %wide.load362, ptr %i.kw, align 4, !tbaa !367, !alias.scope !7825, !noalias !7824
  store <4 x i32> %wide.load363, ptr %i.kx, align 4, !tbaa !367, !alias.scope !7825, !noalias !7824
  store <4 x i32> zeroinitializer, ptr %i.ku, align 4, !tbaa !367, !alias.scope !7824
  store <4 x i32> zeroinitializer, ptr %i.kv, align 4, !tbaa !367, !alias.scope !7824
  %index.next364 = add nuw i64 %index359, 8       ; 2 uses
  %i.ky = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.ky, label %middle.block365, label %vector.body358, !llvm.loop !7816

middle.block365:                                  ; preds = %vector.body358
  %cmp.n366 = icmp eq i64 %i.ki, %n.vec357
  br i1 %cmp.n366, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader396

.lr.ph.i.i224.preheader396:                       ; preds = %vector.memcheck352, %.lr.ph.i.i224.preheader, %middle.block365
  %.010.i.i225.ph = phi ptr [ %i.jg, %vector.memcheck352 ], [ %i.jg, %.lr.ph.i.i224.preheader ], [ %i.kr, %middle.block365 ]
  %.079.i.i226.ph = phi ptr [ %3, %vector.memcheck352 ], [ %3, %.lr.ph.i.i224.preheader ], [ %i.ks, %middle.block365 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader396, %.lr.ph.i.i224
  %.010.i.i225 = phi ptr [ %i.la, %.lr.ph.i.i224 ], [ %.010.i.i225.ph, %.lr.ph.i.i224.preheader396 ]
  %.079.i.i226 = phi ptr [ %i.kz, %.lr.ph.i.i224 ], [ %.079.i.i226.ph, %.lr.ph.i.i224.preheader396 ]
  %i.kz = getelementptr inbounds i8, ptr %.079.i.i226, i64 -4 ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %.010.i.i225, i64 -4 ; 3 uses
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !367
  store i32 %i.lb, ptr %i.la, align 4, !tbaa !367
  store i32 0, ptr %i.kz, align 4, !tbaa !367
  %.not.i.i227 = icmp eq ptr %0, %i.kz
  br i1 %.not.i.i227, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224, !llvm.loop !7817
end_hunk_14
begin_hunk_15_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvT0_mSB_SB_mT1_RT_:bb.a
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  br label %.loopexit

.lr.ph.i159.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159
  %.018.i160 = phi ptr [ %i.dc, %.lr.ph.i159 ], [ %3, %.lr.ph.i159.preheader ] ; 3 uses
  %.01517.i161 = phi ptr [ %i.dd, %.lr.ph.i159 ], [ %i.cy, %.lr.ph.i159.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i161) ]
  %i.cz = load i32, ptr %.018.i160, align 4, !tbaa !367
  store i32 %i.cz, ptr %.01517.i161, align 4, !tbaa !367
  store i32 0, ptr %.018.i160, align 4, !tbaa !367
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1                        ; 2 uses
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i160, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i161, i64 4
  %.not.i162 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i162, label %.loopexit, label %.lr.ph.i159, !llvm.loop !144

.loopexit:                                        ; preds = %.lr.ph.i159, %..loopexit_crit_edge
  %i.de = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.db, %.lr.ph.i159 ]
  %.neg252 = sub i64 %i.l, %i.m
  %i.df = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg252 ; 8 uses
  %i.dg = load i32, ptr %5, align 4, !tbaa !247
  %i.dh = add i32 %i.de, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !367
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.dk = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.dk, ptr %i.b, align 4, !tbaa !367
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not.i165 = icmp eq ptr %3, %i.df
  br i1 %.not.i165, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i166 = icmp eq ptr %0, %3
  br i1 %.not8.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171, label %.lr.ph.i.i167.preheader

.lr.ph.i.i167.preheader:                          ; preds = %bb.g
  %i.dn = ptrtoaddr ptr %0 to i64
  %i.do = add i64 %i.f, -4
  %i.dp = sub i64 %i.do, %i.dn                    ; 3 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.dp, 140
  br i1 %min.iters.check357, label %.lr.ph.i.i167.preheader375, label %vector.memcheck358

vector.memcheck358:                               ; preds = %.lr.ph.i.i167.preheader
  %i.ds = shl nsw i64 %1, 2
  %i.dt = and i64 %i.dp, -4                       ; 2 uses
  %i.du = shl i64 %i.m, 2
  %i.dv = add i64 %i.k, %i.ds
  %i.dw = add i64 %i.dv, -4
  %i.dx = add i64 %i.dt, %i.du
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = getelementptr i8, ptr %0, i64 %i.dy
  %i.ea = sub nuw nsw i64 -4, %i.dt
  %i.eb = getelementptr i8, ptr %3, i64 %i.ea
  %bound0359 = icmp ult ptr %i.dz, %3
  %bound1360 = icmp ult ptr %i.eb, %i.df
  %found.conflict361 = and i1 %bound0359, %bound1360
  br i1 %found.conflict361, label %.lr.ph.i.i167.preheader375, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck358
  %n.vec363 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.ec = mul i64 %n.vec363, -4                   ; 2 uses
  %i.ed = getelementptr i8, ptr %i.df, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %3, i64 %i.ec
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next370, %vector.body364 ] ; 2 uses
  %i.ef = mul i64 %index365, -4                   ; 2 uses
  %next.gep366 = getelementptr i8, ptr %i.df, i64 %i.ef ; 2 uses
  %next.gep367 = getelementptr i8, ptr %3, i64 %i.ef ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %next.gep367, i64 -16 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %next.gep367, i64 -32 ; 2 uses
  %wide.load368 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !367, !alias.scope !7897
  %wide.load369 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !367, !alias.scope !7897
  %i.ei = getelementptr inbounds i8, ptr %next.gep366, i64 -16
  %i.ej = getelementptr inbounds i8, ptr %next.gep366, i64 -32
  store <4 x i32> %wide.load368, ptr %i.ei, align 4, !tbaa !367, !alias.scope !7898, !noalias !7897
  store <4 x i32> %wide.load369, ptr %i.ej, align 4, !tbaa !367, !alias.scope !7898, !noalias !7897
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !367, !alias.scope !7897
  store <4 x i32> zeroinitializer, ptr %i.eh, align 4, !tbaa !367, !alias.scope !7897
  %index.next370 = add nuw i64 %index365, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next370, %n.vec363
  br i1 %i.ek, label %middle.block371, label %vector.body364, !llvm.loop !7883

middle.block371:                                  ; preds = %vector.body364
  %cmp.n372 = icmp eq i64 %i.dr, %n.vec363
  br i1 %cmp.n372, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171, label %.lr.ph.i.i167.preheader375

.lr.ph.i.i167.preheader375:                       ; preds = %vector.memcheck358, %.lr.ph.i.i167.preheader, %middle.block371
  %.010.i.i168.ph = phi ptr [ %i.df, %vector.memcheck358 ], [ %i.df, %.lr.ph.i.i167.preheader ], [ %i.ed, %middle.block371 ]
  %.079.i.i169.ph = phi ptr [ %3, %vector.memcheck358 ], [ %3, %.lr.ph.i.i167.preheader ], [ %i.ee, %middle.block371 ]
  br label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %.lr.ph.i.i167.preheader375, %.lr.ph.i.i167
  %.010.i.i168 = phi ptr [ %i.em, %.lr.ph.i.i167 ], [ %.010.i.i168.ph, %.lr.ph.i.i167.preheader375 ]
  %.079.i.i169 = phi ptr [ %i.el, %.lr.ph.i.i167 ], [ %.079.i.i169.ph, %.lr.ph.i.i167.preheader375 ]
  %i.el = getelementptr inbounds i8, ptr %.079.i.i169, i64 -4 ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %.010.i.i168, i64 -4 ; 3 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !367
  store i32 %i.en, ptr %i.em, align 4, !tbaa !367
  store i32 0, ptr %i.el, align 4, !tbaa !367
  %.not.i.i170 = icmp eq ptr %0, %i.el
  br i1 %.not.i.i170, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171, label %.lr.ph.i.i167, !llvm.loop !7884

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171: ; preds = %.lr.ph.i.i167, %middle.block371, %bb.g
  %i.eo = phi ptr [ %i.df, %bb.g ], [ %i.ed, %middle.block371 ], [ %i.em, %.lr.ph.i.i167 ] ; 2 uses
  %.not3.i172 = icmp eq ptr %0, %i.eo
  br i1 %.not3.i172, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171, %.lr.ph.i173
  %storemerge4.i174 = phi ptr [ %i.er, %.lr.ph.i173 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i174, align 4, !tbaa !367
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge4.i174, i64 4 ; 2 uses
  %.not.i175 = icmp eq ptr %i.er, %i.eo
  br i1 %.not.i175, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i173, !llvm.loop !145

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.es = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i185 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i185, label %.loopexit254, label %.lr.ph.i186.preheader

.lr.ph.i186.preheader:                            ; preds = %bb.h
  %i.et = and i64 %i.k, 4
  %lcmp.mod389.not = icmp eq i64 %i.et, 0
  br i1 %lcmp.mod389.not, label %.lr.ph.i186.prol.loopexit, label %.lr.ph.i186.prol

.lr.ph.i186.prol:                                 ; preds = %.lr.ph.i186.preheader
  %i.eu = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ev = load i32, ptr %i.es, align 4, !tbaa !367
  store i32 %i.ev, ptr %i.b, align 4, !tbaa !367
  store i32 0, ptr %i.es, align 4, !tbaa !367
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i186.prol.loopexit

.lr.ph.i186.prol.loopexit:                        ; preds = %.lr.ph.i186.prol, %.lr.ph.i186.preheader
  %.020.i187.unr = phi i64 [ %i.l, %.lr.ph.i186.preheader ], [ %i.eu, %.lr.ph.i186.prol ]
  %.0819.i188.unr = phi ptr [ %i.es, %.lr.ph.i186.preheader ], [ %i.ey, %.lr.ph.i186.prol ]
  %.01618.i189.unr = phi ptr [ %i.b, %.lr.ph.i186.preheader ], [ %i.ez, %.lr.ph.i186.prol ]
  %i.fa = icmp eq i64 %i.k, 4
  br i1 %i.fa, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.lr.ph.i186.prol.loopexit, %.lr.ph.i186
  %.020.i187 = phi i64 [ %i.fg, %.lr.ph.i186 ], [ %.020.i187.unr, %.lr.ph.i186.prol.loopexit ]
  %.0819.i188 = phi ptr [ %i.fk, %.lr.ph.i186 ], [ %.0819.i188.unr, %.lr.ph.i186.prol.loopexit ] ; 4 uses
  %.01618.i189 = phi ptr [ %i.fl, %.lr.ph.i186 ], [ %.01618.i189.unr, %.lr.ph.i186.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i189) ]
  %i.fb = load i32, ptr %.0819.i188, align 4, !tbaa !367
  store i32 %i.fb, ptr %.01618.i189, align 4, !tbaa !367
  store i32 0, ptr %.0819.i188, align 4, !tbaa !367
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fe = getelementptr inbounds nuw i8, ptr %.0819.i188, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.01618.i189, i64 4
  %i.fg = add i64 %.020.i187, -2                  ; 2 uses
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !367
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !367
  store i32 0, ptr %i.fe, align 4, !tbaa !367
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.fk = getelementptr inbounds nuw i8, ptr %.0819.i188, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.01618.i189, i64 8
  %.not.i190.1 = icmp eq i64 %i.fg, 0
  br i1 %.not.i190.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192, label %.lr.ph.i186, !llvm.loop !143

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192: ; preds = %.lr.ph.i186, %.lr.ph.i186.prol.loopexit
  %.not8.i.i194 = icmp eq ptr %3, %i.es
  br i1 %.not8.i.i194, label %.loopexit254, label %.lr.ph.i.i195.preheader

.lr.ph.i.i195.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192
  %i.fm = shl nsw i64 %1, 2
  %i.fn = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fo = shl i64 %i.fn, 1
  %i.fp = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fq = shl i64 %4, 2
  %i.fr = add i64 %i.fm, %i.fo
  %i.fs = add i64 %i.fr, -4
  %i.ft = add i64 %i.fp, %i.f
  %i.fu = add i64 %i.ft, %i.fq
  %i.fv = sub i64 %i.fs, %i.fu                    ; 2 uses
  %i.fw = lshr i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %min.iters.check309 = icmp ult i64 %i.fv, 188
  br i1 %min.iters.check309, label %.lr.ph.i.i195.preheader380, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.i.i195.preheader
  %i.fy = shl nsw i64 %1, 2                       ; 3 uses
  %i.fz = shl i64 %i.fn, 1
  %i.ga = shl i64 %4, 2                           ; 2 uses
  %i.gb = add i64 %i.fy, %i.fz
  %i.gc = add i64 %i.gb, -4
  %i.gd = add i64 %i.fp, %i.f
  %i.ge = add i64 %i.gd, %i.ga
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = and i64 %i.gf, -4                       ; 2 uses
  %i.gh = add i64 %i.fy, -4
  %i.gi = sub i64 %i.gh, %i.gg
  %i.gj = getelementptr i8, ptr %0, i64 %i.gi
  %i.gk = add i64 %i.fy, %i.fn
  %i.gl = add i64 %i.gk, -4
  %i.gm = add i64 %i.ga, %i.fp
  %i.gn = add i64 %i.gm, %i.gg
  %i.go = sub i64 %i.gl, %i.gn
  %i.gp = getelementptr i8, ptr %0, i64 %i.go
  %bound0311 = icmp ult ptr %i.gj, %i.es
  %bound1312 = icmp ult ptr %i.gp, %i.b
  %found.conflict313 = and i1 %bound0311, %bound1312
  br i1 %found.conflict313, label %.lr.ph.i.i195.preheader380, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck310
  %n.vec315 = and i64 %i.fx, 9223372036854775800  ; 3 uses
  %i.gq = mul i64 %n.vec315, -4                   ; 2 uses
  %i.gr = getelementptr i8, ptr %i.b, i64 %i.gq   ; 2 uses
  %i.gs = getelementptr i8, ptr %i.es, i64 %i.gq
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.gt = mul i64 %index317, -4                   ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.b, i64 %i.gt ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.es, i64 %i.gt ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %next.gep319, i64 -16 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %next.gep319, i64 -32 ; 2 uses
  %wide.load320 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !367, !alias.scope !7899
  %wide.load321 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !367, !alias.scope !7899
  %i.gw = getelementptr inbounds i8, ptr %next.gep318, i64 -16
  %i.gx = getelementptr inbounds i8, ptr %next.gep318, i64 -32
  store <4 x i32> %wide.load320, ptr %i.gw, align 4, !tbaa !367, !alias.scope !7900, !noalias !7899
  store <4 x i32> %wide.load321, ptr %i.gx, align 4, !tbaa !367, !alias.scope !7900, !noalias !7899
  store <4 x i32> zeroinitializer, ptr %i.gu, align 4, !tbaa !367, !alias.scope !7899
  store <4 x i32> zeroinitializer, ptr %i.gv, align 4, !tbaa !367, !alias.scope !7899
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.gy, label %middle.block323, label %vector.body316, !llvm.loop !7888

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.fx, %n.vec315
  br i1 %cmp.n324, label %.loopexit254, label %.lr.ph.i.i195.preheader380

.lr.ph.i.i195.preheader380:                       ; preds = %vector.memcheck310, %.lr.ph.i.i195.preheader, %middle.block323
  %.010.i.i196.ph = phi ptr [ %i.b, %vector.memcheck310 ], [ %i.b, %.lr.ph.i.i195.preheader ], [ %i.gr, %middle.block323 ]
  %.079.i.i197.ph = phi ptr [ %i.es, %vector.memcheck310 ], [ %i.es, %.lr.ph.i.i195.preheader ], [ %i.gs, %middle.block323 ]
  br label %.lr.ph.i.i195

.lr.ph.i.i195:                                    ; preds = %.lr.ph.i.i195.preheader380, %.lr.ph.i.i195
  %.010.i.i196 = phi ptr [ %i.ha, %.lr.ph.i.i195 ], [ %.010.i.i196.ph, %.lr.ph.i.i195.preheader380 ]
  %.079.i.i197 = phi ptr [ %i.gz, %.lr.ph.i.i195 ], [ %.079.i.i197.ph, %.lr.ph.i.i195.preheader380 ]
  %i.gz = getelementptr inbounds i8, ptr %.079.i.i197, i64 -4 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %.010.i.i196, i64 -4 ; 3 uses
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !367
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !367
  store i32 0, ptr %i.gz, align 4, !tbaa !367
  %.not.i.i198 = icmp eq ptr %3, %i.gz
  br i1 %.not.i.i198, label %.loopexit254, label %.lr.ph.i.i195, !llvm.loop !7889

.loopexit254:                                     ; preds = %.lr.ph.i.i195, %middle.block323, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192
  %i.hc = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit192 ], [ %i.gr, %middle.block323 ], [ %i.ha, %.lr.ph.i.i195 ] ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.a ; 8 uses
  %i.he = load i32, ptr %5, align 4, !tbaa !247
  %i.hf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !367
  %i.hh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.hi = add i32 %i.hh, -1
  store i32 %i.hi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %.not.i200 = icmp eq ptr %3, %i.hd
  br i1 %.not.i200, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %.loopexit254
  %.not8.i.i201 = icmp eq ptr %0, %3
  br i1 %.not8.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206, label %.lr.ph.i.i202.preheader

.lr.ph.i.i202.preheader:                          ; preds = %bb.i
  %i.hj = ptrtoaddr ptr %0 to i64
  %i.hk = add i64 %i.f, -4
  %i.hl = sub i64 %i.hk, %i.hj                    ; 3 uses
  %i.hm = lshr i64 %i.hl, 2
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.hl, 108
  br i1 %min.iters.check333, label %.lr.ph.i.i202.preheader378, label %vector.memcheck334

vector.memcheck334:                               ; preds = %.lr.ph.i.i202.preheader
  %i.ho = shl i64 %4, 2
  %i.hp = and i64 %i.hl, -4                       ; 2 uses
  %i.hq = add i64 %i.ho, %i.hp
  %i.hr = sub nuw nsw i64 -4, %i.hq
  %i.hs = getelementptr i8, ptr %i.hc, i64 %i.hr
  %i.ht = sub nuw nsw i64 -4, %i.hp
  %i.hu = getelementptr i8, ptr %3, i64 %i.ht
  %bound0335 = icmp ult ptr %i.hs, %3
  %bound1336 = icmp ult ptr %i.hu, %i.hd
  %found.conflict337 = and i1 %bound0335, %bound1336
  br i1 %found.conflict337, label %.lr.ph.i.i202.preheader378, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck334
  %n.vec339 = and i64 %i.hn, 9223372036854775800  ; 3 uses
  %i.hv = mul i64 %n.vec339, -4                   ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hd, i64 %i.hv  ; 2 uses
  %i.hx = getelementptr i8, ptr %3, i64 %i.hv
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next346, %vector.body340 ] ; 2 uses
  %i.hy = mul i64 %index341, -4                   ; 2 uses
  %next.gep342 = getelementptr i8, ptr %i.hd, i64 %i.hy ; 2 uses
  %next.gep343 = getelementptr i8, ptr %3, i64 %i.hy ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %next.gep343, i64 -16 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %next.gep343, i64 -32 ; 2 uses
  %wide.load344 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !367, !alias.scope !7901
  %wide.load345 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !367, !alias.scope !7901
  %i.ib = getelementptr inbounds i8, ptr %next.gep342, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep342, i64 -32
  store <4 x i32> %wide.load344, ptr %i.ib, align 4, !tbaa !367, !alias.scope !7902, !noalias !7901
  store <4 x i32> %wide.load345, ptr %i.ic, align 4, !tbaa !367, !alias.scope !7902, !noalias !7901
  store <4 x i32> zeroinitializer, ptr %i.hz, align 4, !tbaa !367, !alias.scope !7901
  store <4 x i32> zeroinitializer, ptr %i.ia, align 4, !tbaa !367, !alias.scope !7901
  %index.next346 = add nuw i64 %index341, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next346, %n.vec339
  br i1 %i.id, label %middle.block347, label %vector.body340, !llvm.loop !7893

middle.block347:                                  ; preds = %vector.body340
  %cmp.n348 = icmp eq i64 %i.hn, %n.vec339
  br i1 %cmp.n348, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206, label %.lr.ph.i.i202.preheader378

.lr.ph.i.i202.preheader378:                       ; preds = %vector.memcheck334, %.lr.ph.i.i202.preheader, %middle.block347
  %.010.i.i203.ph = phi ptr [ %i.hd, %vector.memcheck334 ], [ %i.hd, %.lr.ph.i.i202.preheader ], [ %i.hw, %middle.block347 ]
  %.079.i.i204.ph = phi ptr [ %3, %vector.memcheck334 ], [ %3, %.lr.ph.i.i202.preheader ], [ %i.hx, %middle.block347 ]
  br label %.lr.ph.i.i202

.lr.ph.i.i202:                                    ; preds = %.lr.ph.i.i202.preheader378, %.lr.ph.i.i202
  %.010.i.i203 = phi ptr [ %i.if, %.lr.ph.i.i202 ], [ %.010.i.i203.ph, %.lr.ph.i.i202.preheader378 ]
  %.079.i.i204 = phi ptr [ %i.ie, %.lr.ph.i.i202 ], [ %.079.i.i204.ph, %.lr.ph.i.i202.preheader378 ]
  %i.ie = getelementptr inbounds i8, ptr %.079.i.i204, i64 -4 ; 4 uses
  %i.if = getelementptr inbounds i8, ptr %.010.i.i203, i64 -4 ; 3 uses
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !367
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !367
  store i32 0, ptr %i.ie, align 4, !tbaa !367
  %.not.i.i205 = icmp eq ptr %0, %i.ie
  br i1 %.not.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206, label %.lr.ph.i.i202, !llvm.loop !7894

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206: ; preds = %.lr.ph.i.i202, %middle.block347, %bb.i
  %i.ih = phi ptr [ %i.hd, %bb.i ], [ %i.hw, %middle.block347 ], [ %i.if, %.lr.ph.i.i202 ] ; 2 uses
  %.not3.i207 = icmp eq ptr %0, %i.ih
  br i1 %.not3.i207, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206, %.lr.ph.i208
  %storemerge4.i209 = phi ptr [ %i.ik, %.lr.ph.i208 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i209, align 4, !tbaa !367
  %i.ii = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ij = add i32 %i.ii, -1
  store i32 %i.ij, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !247
  %i.ik = getelementptr inbounds nuw i8, ptr %storemerge4.i209, i64 4 ; 2 uses
  %.not.i210 = icmp eq ptr %i.ik, %i.ih
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i208, !llvm.loop !145

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i208, %.lr.ph.i173, %.loopexit254, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit206, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit171, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container6vectorINS2_4test12copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.298") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 6 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !247    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !488
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !489
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !490
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.h = invoke { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.g, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef null)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.i = extractvalue { ptr, i32 } %i.h, 0        ; 4 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i.i, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEEC2ImEENS0_27vector_uninitialized_size_tET_.exit.i

_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i.i: ; preds = %.noexc
  invoke void @_ZN5boost9container15throw_bad_allocEv() #24
          to label %.noexc2 unwind label %bb.c

end_hunk_15
begin_hunk_16_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEEvT0_mSF_SF_mT1_RT_:bb.a
bb.n:                                             ; preds = %.lr.ph.i.i173
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i174, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !259, !noalias !8432 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178: ; preds = %bb.n, %.lr.ph.i.i173
  %.sroa.11.1.i179 = phi ptr [ %i.hg, %bb.n ], [ %.sroa.11.0.i174, %.lr.ph.i.i173 ] ; 2 uses
  %i.hj = phi ptr [ %i.hi, %bb.n ], [ %i.gz, %.lr.ph.i.i173 ] ; 2 uses
  %i.hk = phi ptr [ %i.hh, %bb.n ], [ %i.he, %.lr.ph.i.i173 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01214.i.i177, i64 4
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !247, !noalias !8432
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !318, !noalias !8432
  %i.hn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8432
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8432
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.hj
  br i1 %i.hq, label %bb.o, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1

bb.o:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i179, i64 8 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !259, !noalias !8432 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1: ; preds = %bb.o, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178
  %.sroa.11.1.i179.1 = phi ptr [ %i.hr, %bb.o ], [ %.sroa.11.1.i179, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178 ]
  %i.hu = phi ptr [ %i.ht, %bb.o ], [ %i.hj, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178 ]
  %i.hv = phi ptr [ %i.hs, %bb.o ], [ %i.hp, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.01214.i.i177, i64 8
  %i.hx = add i64 %.015.i.i176, -2                ; 2 uses
  %.not.i.i181.1 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i181.1, label %.loopexit, label %.lr.ph.i.i173, !llvm.loop !156

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1, %.lr.ph.i.i173.prol.loopexit
  %.not.i185 = icmp eq ptr %3, %i.ev
  br i1 %.not.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not8.i.i186 = icmp eq ptr %0, %3
  br i1 %.not8.i.i186, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, label %.lr.ph.i.i187.preheader

.lr.ph.i.i187.preheader:                          ; preds = %bb.p
  %i.hy = add i64 %i.f, -4
  %i.hz = sub i64 %i.hy, %i.a                     ; 2 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check402 = icmp ult i64 %i.hz, 92
  br i1 %min.iters.check402, label %.lr.ph.i.i187.preheader418, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph.i.i187.preheader
  %i.ic = shl nsw i64 %1, 2
  %i.id = add i64 %i.ic, %i.a
  %i.ie = sub i64 %i.f, %i.id
  %.neg = shl i64 %i.et, 2
  %i.if = add i64 %.neg, %i.ie
  %i.ig = add i64 %i.if, -1
  %diff.check400 = icmp ult i64 %i.ig, 31
  br i1 %diff.check400, label %.lr.ph.i.i187.preheader418, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck399
  %n.vec404 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.ih = mul i64 %n.vec404, -4                   ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ev, i64 %i.ih  ; 2 uses
  %i.ij = getelementptr i8, ptr %3, i64 %i.ih
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next411, %vector.body405 ] ; 2 uses
  %i.ik = mul i64 %index406, -4                   ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.ev, i64 %i.ik ; 2 uses
  %next.gep408 = getelementptr i8, ptr %3, i64 %i.ik ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %next.gep408, i64 -16
  %i.im = getelementptr inbounds i8, ptr %next.gep408, i64 -32
  %wide.load409 = load <4 x i32>, ptr %i.il, align 4, !tbaa !318
  %wide.load410 = load <4 x i32>, ptr %i.im, align 4, !tbaa !318
  %i.in = getelementptr inbounds i8, ptr %next.gep407, i64 -16
  %i.io = getelementptr inbounds i8, ptr %next.gep407, i64 -32
  store <4 x i32> %wide.load409, ptr %i.in, align 4, !tbaa !318
  store <4 x i32> %wide.load410, ptr %i.io, align 4, !tbaa !318
  %index.next411 = add nuw i64 %index406, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next411, %n.vec404
  br i1 %i.ip, label %middle.block412, label %vector.body405, !llvm.loop !8421

middle.block412:                                  ; preds = %vector.body405
  %cmp.n413 = icmp eq i64 %i.ib, %n.vec404
  br i1 %cmp.n413, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, label %.lr.ph.i.i187.preheader418

.lr.ph.i.i187.preheader418:                       ; preds = %vector.memcheck399, %.lr.ph.i.i187.preheader, %middle.block412
  %.010.i.i188.ph = phi ptr [ %i.ev, %vector.memcheck399 ], [ %i.ev, %.lr.ph.i.i187.preheader ], [ %i.ii, %middle.block412 ]
  %.079.i.i189.ph = phi ptr [ %3, %vector.memcheck399 ], [ %3, %.lr.ph.i.i187.preheader ], [ %i.ij, %middle.block412 ]
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %.lr.ph.i.i187.preheader418, %.lr.ph.i.i187
  %.010.i.i188 = phi ptr [ %i.ir, %.lr.ph.i.i187 ], [ %.010.i.i188.ph, %.lr.ph.i.i187.preheader418 ]
  %.079.i.i189 = phi ptr [ %i.iq, %.lr.ph.i.i187 ], [ %.079.i.i189.ph, %.lr.ph.i.i187.preheader418 ]
  %i.iq = getelementptr inbounds i8, ptr %.079.i.i189, i64 -4 ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %.010.i.i188, i64 -4 ; 3 uses
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !318
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !318
  %.not.i.i190 = icmp eq ptr %0, %i.iq
  br i1 %.not.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, label %.lr.ph.i.i187, !llvm.loop !8422

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191: ; preds = %.lr.ph.i.i187, %middle.block412, %bb.p
  %i.it = phi ptr [ %i.ev, %bb.p ], [ %i.ii, %middle.block412 ], [ %i.ir, %.lr.ph.i.i187 ] ; 2 uses
  %.not3.i192 = icmp eq ptr %0, %i.it
  br i1 %.not3.i192, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, %.lr.ph.i193
  %storemerge4.i194 = phi ptr [ %i.iw, %.lr.ph.i193 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i194, align 4, !tbaa !318
  %i.iu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iv = add i32 %i.iu, -1
  store i32 %i.iv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iw = getelementptr inbounds nuw i8, ptr %storemerge4.i194, i64 4 ; 2 uses
  %.not.i195 = icmp eq ptr %i.iw, %i.it
  br i1 %.not.i195, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i193, !llvm.loop !157

bb.q:                                             ; preds = %bb.h
  %.idx = sub i64 0, %i.j
  %i.ix = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 6 uses
  %.not17.i205 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i206.preheader

.lr.ph.i206.preheader:                            ; preds = %bb.q
  %xtraiter436 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod437.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %.lr.ph.i206.prol.loopexit, label %.lr.ph.i206.prol

.lr.ph.i206.prol:                                 ; preds = %.lr.ph.i206.preheader, %.lr.ph.i206.prol
  %.020.i207.prol = phi i64 [ %i.iy, %.lr.ph.i206.prol ], [ %i.k, %.lr.ph.i206.preheader ]
  %.0819.i208.prol = phi ptr [ %i.jc, %.lr.ph.i206.prol ], [ %i.ix, %.lr.ph.i206.preheader ] ; 2 uses
  %.01618.i209.prol = phi ptr [ %i.jd, %.lr.ph.i206.prol ], [ %i.b, %.lr.ph.i206.preheader ] ; 3 uses
  %prol.iter438 = phi i64 [ %prol.iter438.next, %.lr.ph.i206.prol ], [ 0, %.lr.ph.i206.preheader ]
  %i.iy = add i64 %.020.i207.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i209.prol) ]
  %i.iz = load i32, ptr %.0819.i208.prol, align 4, !tbaa !318
  store i32 %i.iz, ptr %.01618.i209.prol, align 4, !tbaa !318
  %i.ja = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jc = getelementptr inbounds nuw i8, ptr %.0819.i208.prol, i64 4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.01618.i209.prol, i64 4 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i206.prol.loopexit, label %.lr.ph.i206.prol, !llvm.loop !8423

.lr.ph.i206.prol.loopexit:                        ; preds = %.lr.ph.i206.prol, %.lr.ph.i206.preheader
  %.020.i207.unr = phi i64 [ %i.k, %.lr.ph.i206.preheader ], [ %i.iy, %.lr.ph.i206.prol ]
  %.0819.i208.unr = phi ptr [ %i.ix, %.lr.ph.i206.preheader ], [ %i.jc, %.lr.ph.i206.prol ]
  %.01618.i209.unr = phi ptr [ %i.b, %.lr.ph.i206.preheader ], [ %i.jd, %.lr.ph.i206.prol ]
  %i.je = icmp ult i64 %i.k, 4
  br i1 %i.je, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.prol.loopexit, %.lr.ph.i206
  %.020.i207 = phi i64 [ %i.js, %.lr.ph.i206 ], [ %.020.i207.unr, %.lr.ph.i206.prol.loopexit ]
  %.0819.i208 = phi ptr [ %i.jv, %.lr.ph.i206 ], [ %.0819.i208.unr, %.lr.ph.i206.prol.loopexit ] ; 5 uses
  %.01618.i209 = phi ptr [ %i.jw, %.lr.ph.i206 ], [ %.01618.i209.unr, %.lr.ph.i206.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i209) ]
  %i.jf = load i32, ptr %.0819.i208, align 4, !tbaa !318
  store i32 %i.jf, ptr %.01618.i209, align 4, !tbaa !318
  %i.jg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ji = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 4
  %i.jj = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 4
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !318
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !318
  %i.jl = add i32 %i.jg, 2
  store i32 %i.jl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jm = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 8
  %i.jo = load i32, ptr %i.jm, align 4, !tbaa !318
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !318
  %i.jp = add i32 %i.jg, 3
  store i32 %i.jp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jq = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 12
  %i.jr = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 12
  %i.js = add i64 %.020.i207, -4                  ; 2 uses
  %i.jt = load i32, ptr %i.jq, align 4, !tbaa !318
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !318
  %i.ju = add i32 %i.jg, 4
  store i32 %i.ju, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jv = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 16
  %.not.i210.3 = icmp eq i64 %i.js, 0
  br i1 %.not.i210.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212, label %.lr.ph.i206, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212: ; preds = %.lr.ph.i206, %.lr.ph.i206.prol.loopexit
  %.not8.i.i214 = icmp eq ptr %3, %i.ix
  br i1 %.not8.i.i214, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212
  %i.jx = shl nsw i64 %1, 2
  %i.jy = shl i64 %i.a, 1
  %i.jz = ptrtoaddr ptr %2 to i64
  %i.ka = shl i64 %4, 2
  %i.kb = add i64 %i.jx, %i.jy
  %i.kc = add i64 %i.kb, -4
  %i.kd = add i64 %i.jz, %i.f
  %i.ke = add i64 %i.kd, %i.ka
  %i.kf = sub i64 %i.kc, %i.ke                    ; 2 uses
  %i.kg = lshr i64 %i.kf, 2
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.kf, 28
  %diff.check366 = icmp ugt i64 %i.j, -32
  %or.cond416 = or i1 %min.iters.check368, %diff.check366
  br i1 %or.cond416, label %.lr.ph.i.i215.preheader424, label %vector.ph369

vector.ph369:                                     ; preds = %.lr.ph.i.i215.preheader
  %n.vec370 = and i64 %i.kh, 9223372036854775800  ; 3 uses
  %i.ki = mul i64 %n.vec370, -4                   ; 2 uses
  %i.kj = getelementptr i8, ptr %i.b, i64 %i.ki   ; 2 uses
  %i.kk = getelementptr i8, ptr %i.ix, i64 %i.ki
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.kl = mul i64 %index372, -4                   ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.b, i64 %i.kl ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.ix, i64 %i.kl ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %next.gep374, i64 -16
  %i.kn = getelementptr inbounds i8, ptr %next.gep374, i64 -32
  %wide.load375 = load <4 x i32>, ptr %i.km, align 4, !tbaa !318
  %wide.load376 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !318
  %i.ko = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.kp = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  store <4 x i32> %wide.load375, ptr %i.ko, align 4, !tbaa !318
  store <4 x i32> %wide.load376, ptr %i.kp, align 4, !tbaa !318
  %index.next377 = add nuw i64 %index372, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.kq, label %middle.block378, label %vector.body371, !llvm.loop !8424

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.kh, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader424

.lr.ph.i.i215.preheader424:                       ; preds = %.lr.ph.i.i215.preheader, %middle.block378
  %.010.i.i216.ph = phi ptr [ %i.b, %.lr.ph.i.i215.preheader ], [ %i.kj, %middle.block378 ]
  %.079.i.i217.ph = phi ptr [ %i.ix, %.lr.ph.i.i215.preheader ], [ %i.kk, %middle.block378 ]
  br label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.preheader424, %.lr.ph.i.i215
  %.010.i.i216 = phi ptr [ %i.ks, %.lr.ph.i.i215 ], [ %.010.i.i216.ph, %.lr.ph.i.i215.preheader424 ]
  %.079.i.i217 = phi ptr [ %i.kr, %.lr.ph.i.i215 ], [ %.079.i.i217.ph, %.lr.ph.i.i215.preheader424 ]
  %i.kr = getelementptr inbounds i8, ptr %.079.i.i217, i64 -4 ; 3 uses
  %i.ks = getelementptr inbounds i8, ptr %.010.i.i216, i64 -4 ; 3 uses
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !318
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !318
  %.not.i.i218 = icmp eq ptr %3, %i.kr
  br i1 %.not.i.i218, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215, !llvm.loop !8425

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219: ; preds = %.lr.ph.i.i215, %middle.block378, %bb.q, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212
  %i.ku = phi ptr [ %3, %bb.q ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212 ], [ %i.kj, %middle.block378 ], [ %i.ks, %.lr.ph.i.i215 ] ; 2 uses
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %i.kw = sub i64 0, %4
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kw ; 9 uses
  %.not4.i.i220 = icmp eq i64 %4, 0
  br i1 %.not4.i.i220, label %.loopexit279, label %.lr.ph.i.i221.preheader

.lr.ph.i.i221.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !432 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !431 ; 3 uses
  %i.lc = load ptr, ptr %5, align 8, !tbaa !434   ; 3 uses
  %xtraiter439 = and i64 %4, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %.lr.ph.i.i221.prol.loopexit, label %.lr.ph.i.i221.prol

.lr.ph.i.i221.prol:                               ; preds = %.lr.ph.i.i221.preheader
  %i.ld = add nsw i64 %4, -1
  %i.le = load i32, ptr %i.lc, align 4, !tbaa !247, !noalias !8433
  store i32 %i.le, ptr %i.kx, align 4, !tbaa !318, !noalias !8433
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.lb
  br i1 %i.lg, label %bb.r, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol

bb.r:                                             ; preds = %.lr.ph.i.i221.prol
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !259, !noalias !8433 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol: ; preds = %bb.r, %.lr.ph.i.i221.prol
  %.sroa.11.1.i227.prol = phi ptr [ %i.lh, %bb.r ], [ %i.kz, %.lr.ph.i.i221.prol ]
  %i.lk = phi ptr [ %i.lj, %bb.r ], [ %i.lb, %.lr.ph.i.i221.prol ]
  %i.ll = phi ptr [ %i.li, %bb.r ], [ %i.lf, %.lr.ph.i.i221.prol ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  br label %.lr.ph.i.i221.prol.loopexit

.lr.ph.i.i221.prol.loopexit:                      ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol, %.lr.ph.i.i221.preheader
  %.sroa.11.0.i222.unr = phi ptr [ %i.kz, %.lr.ph.i.i221.preheader ], [ %.sroa.11.1.i227.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol ]
  %.unr442 = phi ptr [ %i.lb, %.lr.ph.i.i221.preheader ], [ %i.lk, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol ]
  %.unr443 = phi ptr [ %i.lc, %.lr.ph.i.i221.preheader ], [ %i.ll, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol ]
  %.06.i.i224.unr = phi ptr [ %i.kx, %.lr.ph.i.i221.preheader ], [ %i.lm, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol ]
  %.035.i.i225.unr = phi i64 [ %4, %.lr.ph.i.i221.preheader ], [ %i.ld, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.prol ]
  %i.ln = icmp eq i64 %4, 1
  br i1 %i.ln, label %.loopexit279, label %.lr.ph.i.i221

.lr.ph.i.i221:                                    ; preds = %.lr.ph.i.i221.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1
  %.sroa.11.0.i222 = phi ptr [ %.sroa.11.1.i227.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1 ], [ %.sroa.11.0.i222.unr, %.lr.ph.i.i221.prol.loopexit ] ; 2 uses
  %i.lo = phi ptr [ %i.mg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1 ], [ %.unr442, %.lr.ph.i.i221.prol.loopexit ] ; 2 uses
  %i.lp = phi ptr [ %i.mh, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1 ], [ %.unr443, %.lr.ph.i.i221.prol.loopexit ] ; 2 uses
  %.06.i.i224 = phi ptr [ %i.mi, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1 ], [ %.06.i.i224.unr, %.lr.ph.i.i221.prol.loopexit ] ; 3 uses
  %.035.i.i225 = phi i64 [ %i.lz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1 ], [ %.035.i.i225.unr, %.lr.ph.i.i221.prol.loopexit ]
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !247, !noalias !8433
  store i32 %i.lq, ptr %.06.i.i224, align 4, !tbaa !318, !noalias !8433
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 4 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.lo
  br i1 %i.ls, label %bb.s, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226

bb.s:                                             ; preds = %.lr.ph.i.i221
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i222, i64 8 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !259, !noalias !8433 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226: ; preds = %bb.s, %.lr.ph.i.i221
  %.sroa.11.1.i227 = phi ptr [ %i.lt, %bb.s ], [ %.sroa.11.0.i222, %.lr.ph.i.i221 ] ; 2 uses
  %i.lw = phi ptr [ %i.lv, %bb.s ], [ %i.lo, %.lr.ph.i.i221 ] ; 2 uses
  %i.lx = phi ptr [ %i.lu, %bb.s ], [ %i.lr, %.lr.ph.i.i221 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.06.i.i224, i64 4
  %i.lz = add i64 %.035.i.i225, -2                ; 2 uses
  %i.ma = load i32, ptr %i.lx, align 4, !tbaa !247, !noalias !8433
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !318, !noalias !8433
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lw
  br i1 %i.mc, label %bb.t, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1

bb.t:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i227, i64 8 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !259, !noalias !8433 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1: ; preds = %bb.t, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226
  %.sroa.11.1.i227.1 = phi ptr [ %i.md, %bb.t ], [ %.sroa.11.1.i227, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226 ]
  %i.mg = phi ptr [ %i.mf, %bb.t ], [ %i.lw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226 ]
  %i.mh = phi ptr [ %i.me, %bb.t ], [ %i.mb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226 ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.06.i.i224, i64 8
  %.not.i.i229.1 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i229.1, label %.loopexit279, label %.lr.ph.i.i221, !llvm.loop !87

.loopexit279:                                     ; preds = %.lr.ph.i.i221.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i226.1, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219
  %.not.i233 = icmp eq ptr %3, %i.kx
  br i1 %.not.i233, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.u

bb.u:                                             ; preds = %.loopexit279
  %.not8.i.i234 = icmp eq ptr %0, %3
  br i1 %.not8.i.i234, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239, label %.lr.ph.i.i235.preheader

.lr.ph.i.i235.preheader:                          ; preds = %bb.u
  %i.mj = add i64 %i.f, -4
  %i.mk = sub i64 %i.mj, %i.a                     ; 2 uses
  %i.ml = lshr i64 %i.mk, 2
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %min.iters.check385 = icmp ult i64 %i.mk, 76
  br i1 %min.iters.check385, label %.lr.ph.i.i235.preheader422, label %vector.memcheck382

vector.memcheck382:                               ; preds = %.lr.ph.i.i235.preheader
  %i.mn = shl i64 %4, 2
  %i.mo = add i64 %i.mn, %i.f
  %i.mp = sub i64 %i.kv, %i.mo
  %diff.check383 = icmp ugt i64 %i.mp, -32
  br i1 %diff.check383, label %.lr.ph.i.i235.preheader422, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck382
  %n.vec387 = and i64 %i.mm, 9223372036854775800  ; 3 uses
  %i.mq = mul i64 %n.vec387, -4                   ; 2 uses
  %i.mr = getelementptr i8, ptr %i.kx, i64 %i.mq  ; 2 uses
  %i.ms = getelementptr i8, ptr %3, i64 %i.mq
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next394, %vector.body388 ] ; 2 uses
  %i.mt = mul i64 %index389, -4                   ; 2 uses
  %next.gep390 = getelementptr i8, ptr %i.kx, i64 %i.mt ; 2 uses
  %next.gep391 = getelementptr i8, ptr %3, i64 %i.mt ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %next.gep391, i64 -16
  %i.mv = getelementptr inbounds i8, ptr %next.gep391, i64 -32
  %wide.load392 = load <4 x i32>, ptr %i.mu, align 4, !tbaa !318
  %wide.load393 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !318
  %i.mw = getelementptr inbounds i8, ptr %next.gep390, i64 -16
  %i.mx = getelementptr inbounds i8, ptr %next.gep390, i64 -32
  store <4 x i32> %wide.load392, ptr %i.mw, align 4, !tbaa !318
  store <4 x i32> %wide.load393, ptr %i.mx, align 4, !tbaa !318
  %index.next394 = add nuw i64 %index389, 8       ; 2 uses
  %i.my = icmp eq i64 %index.next394, %n.vec387
  br i1 %i.my, label %middle.block395, label %vector.body388, !llvm.loop !8428

middle.block395:                                  ; preds = %vector.body388
  %cmp.n396 = icmp eq i64 %i.mm, %n.vec387
  br i1 %cmp.n396, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit239, label %.lr.ph.i.i235.preheader422

.lr.ph.i.i235.preheader422:                       ; preds = %vector.memcheck382, %.lr.ph.i.i235.preheader, %middle.block395
  %.010.i.i236.ph = phi ptr [ %i.kx, %vector.memcheck382 ], [ %i.kx, %.lr.ph.i.i235.preheader ], [ %i.mr, %middle.block395 ]
  %.079.i.i237.ph = phi ptr [ %3, %vector.memcheck382 ], [ %3, %.lr.ph.i.i235.preheader ], [ %i.ms, %middle.block395 ]
  br label %.lr.ph.i.i235

end_hunk_16
begin_hunk_17_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %prol.iter392.cmp.not = icmp eq i64 %prol.iter392.next, %xtraiter390
  br i1 %prol.iter392.cmp.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !8477

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader
  %.016.i.i167.unr = phi i64 [ %i.dq, %.lr.ph.i.i166.preheader ], [ %i.el, %.lr.ph.i.i166.prol ]
  %.01315.i.i168.unr = phi ptr [ %i.b, %.lr.ph.i.i166.preheader ], [ %i.eo, %.lr.ph.i.i166.prol ]
  %i.ep = sub nsw i64 %i.h, %i.k
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.016.i.i167 = phi i64 [ %i.ey, %.lr.ph.i.i166 ], [ %.016.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.01315.i.i168 = phi ptr [ %i.fa, %.lr.ph.i.i166 ], [ %.01315.i.i168.unr, %.lr.ph.i.i166.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i168) ]
  store i32 0, ptr %.01315.i.i168, align 4, !tbaa !318
  %i.er = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 4
  store i32 0, ptr %i.et, align 4, !tbaa !318
  %i.eu = add i32 %i.er, 2
  store i32 %i.eu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ev = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 8
  store i32 0, ptr %i.ev, align 4, !tbaa !318
  %i.ew = add i32 %i.er, 3
  store i32 %i.ew, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ex = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 12
  %i.ey = add i64 %.016.i.i167, -4                ; 2 uses
  store i32 0, ptr %i.ex, align 4, !tbaa !318
  %i.ez = add i32 %i.er, 4
  store i32 %i.ez, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 16
  %.not.i.i169.3 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i169.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166, !llvm.loop !151

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170: ; preds = %.lr.ph.i.i166, %.lr.ph.i.i166.prol.loopexit
  %.not.i171 = icmp eq ptr %3, %i.dt
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170
  %.not8.i.i172 = icmp eq ptr %0, %3
  br i1 %.not8.i.i172, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader

.lr.ph.i.i173.preheader:                          ; preds = %bb.g
  %i.fb = add i64 %i.f, -4
  %i.fc = sub i64 %i.fb, %i.a                     ; 2 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check348 = icmp ult i64 %i.fc, 92
  br i1 %min.iters.check348, label %.lr.ph.i.i173.preheader364, label %vector.memcheck345

vector.memcheck345:                               ; preds = %.lr.ph.i.i173.preheader
  %i.ff = shl nsw i64 %1, 2
  %i.fg = add i64 %i.ff, %i.a
  %i.fh = sub i64 %i.f, %i.fg
  %.neg = shl i64 %i.dr, 2
  %i.fi = add i64 %.neg, %i.fh
  %i.fj = add i64 %i.fi, -1
  %diff.check346 = icmp ult i64 %i.fj, 31
  br i1 %diff.check346, label %.lr.ph.i.i173.preheader364, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck345
  %n.vec350 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.fk = mul i64 %n.vec350, -4                   ; 2 uses
  %i.fl = getelementptr i8, ptr %i.dt, i64 %i.fk  ; 2 uses
  %i.fm = getelementptr i8, ptr %3, i64 %i.fk
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.fn = mul i64 %index352, -4                   ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.dt, i64 %i.fn ; 2 uses
  %next.gep354 = getelementptr i8, ptr %3, i64 %i.fn ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %next.gep354, i64 -16
  %i.fp = getelementptr inbounds i8, ptr %next.gep354, i64 -32
  %wide.load355 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !318
  %wide.load356 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !318
  %i.fq = getelementptr inbounds i8, ptr %next.gep353, i64 -16
  %i.fr = getelementptr inbounds i8, ptr %next.gep353, i64 -32
  store <4 x i32> %wide.load355, ptr %i.fq, align 4, !tbaa !318
  store <4 x i32> %wide.load356, ptr %i.fr, align 4, !tbaa !318
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.fs, label %middle.block358, label %vector.body351, !llvm.loop !8478

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %i.fe, %n.vec350
  br i1 %cmp.n359, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader364

.lr.ph.i.i173.preheader364:                       ; preds = %vector.memcheck345, %.lr.ph.i.i173.preheader, %middle.block358
  %.010.i.i174.ph = phi ptr [ %i.dt, %vector.memcheck345 ], [ %i.dt, %.lr.ph.i.i173.preheader ], [ %i.fl, %middle.block358 ]
  %.079.i.i175.ph = phi ptr [ %3, %vector.memcheck345 ], [ %3, %.lr.ph.i.i173.preheader ], [ %i.fm, %middle.block358 ]
  br label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173.preheader364, %.lr.ph.i.i173
  %.010.i.i174 = phi ptr [ %i.fu, %.lr.ph.i.i173 ], [ %.010.i.i174.ph, %.lr.ph.i.i173.preheader364 ]
  %.079.i.i175 = phi ptr [ %i.ft, %.lr.ph.i.i173 ], [ %.079.i.i175.ph, %.lr.ph.i.i173.preheader364 ]
  %i.ft = getelementptr inbounds i8, ptr %.079.i.i175, i64 -4 ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.010.i.i174, i64 -4 ; 3 uses
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !318
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !318
  %.not.i.i176 = icmp eq ptr %0, %i.ft
  br i1 %.not.i.i176, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173, !llvm.loop !8479

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177: ; preds = %.lr.ph.i.i173, %middle.block358, %bb.g
  %i.fw = phi ptr [ %i.dt, %bb.g ], [ %i.fl, %middle.block358 ], [ %i.fu, %.lr.ph.i.i173 ] ; 2 uses
  %.not3.i178 = icmp eq ptr %0, %i.fw
  br i1 %.not3.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, %.lr.ph.i179
  %storemerge4.i180 = phi ptr [ %i.fz, %.lr.ph.i179 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i180, align 4, !tbaa !318
  %i.fx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i180, i64 4 ; 2 uses
  %.not.i181 = icmp eq ptr %i.fz, %i.fw
  br i1 %.not.i181, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.j
  %i.ga = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 6 uses
  %.not17.i191 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i191, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i192.preheader

.lr.ph.i192.preheader:                            ; preds = %bb.h
  %xtraiter379 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol

.lr.ph.i192.prol:                                 ; preds = %.lr.ph.i192.preheader, %.lr.ph.i192.prol
  %.020.i193.prol = phi i64 [ %i.gb, %.lr.ph.i192.prol ], [ %i.k, %.lr.ph.i192.preheader ]
  %.0819.i194.prol = phi ptr [ %i.gf, %.lr.ph.i192.prol ], [ %i.ga, %.lr.ph.i192.preheader ] ; 2 uses
  %.01618.i195.prol = phi ptr [ %i.gg, %.lr.ph.i192.prol ], [ %i.b, %.lr.ph.i192.preheader ] ; 3 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph.i192.prol ], [ 0, %.lr.ph.i192.preheader ]
  %i.gb = add i64 %.020.i193.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i195.prol) ]
  %i.gc = load i32, ptr %.0819.i194.prol, align 4, !tbaa !318
  store i32 %i.gc, ptr %.01618.i195.prol, align 4, !tbaa !318
  %i.gd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gf = getelementptr inbounds nuw i8, ptr %.0819.i194.prol, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i195.prol, i64 4 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol, !llvm.loop !8480

.lr.ph.i192.prol.loopexit:                        ; preds = %.lr.ph.i192.prol, %.lr.ph.i192.preheader
  %.020.i193.unr = phi i64 [ %i.k, %.lr.ph.i192.preheader ], [ %i.gb, %.lr.ph.i192.prol ]
  %.0819.i194.unr = phi ptr [ %i.ga, %.lr.ph.i192.preheader ], [ %i.gf, %.lr.ph.i192.prol ]
  %.01618.i195.unr = phi ptr [ %i.b, %.lr.ph.i192.preheader ], [ %i.gg, %.lr.ph.i192.prol ]
  %i.gh = icmp ult i64 %i.k, 4
  br i1 %i.gh, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.prol.loopexit, %.lr.ph.i192
  %.020.i193 = phi i64 [ %i.gv, %.lr.ph.i192 ], [ %.020.i193.unr, %.lr.ph.i192.prol.loopexit ]
  %.0819.i194 = phi ptr [ %i.gy, %.lr.ph.i192 ], [ %.0819.i194.unr, %.lr.ph.i192.prol.loopexit ] ; 5 uses
  %.01618.i195 = phi ptr [ %i.gz, %.lr.ph.i192 ], [ %.01618.i195.unr, %.lr.ph.i192.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i195) ]
  %i.gi = load i32, ptr %.0819.i194, align 4, !tbaa !318
  store i32 %i.gi, ptr %.01618.i195, align 4, !tbaa !318
  %i.gj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gl = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 4
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !318
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !318
  %i.go = add i32 %i.gj, 2
  store i32 %i.go, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gp = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 8
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !318
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !318
  %i.gs = add i32 %i.gj, 3
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gt = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 12
  %i.gv = add i64 %.020.i193, -4                  ; 2 uses
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !318
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !318
  %i.gx = add i32 %i.gj, 4
  store i32 %i.gx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gy = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 16
  %.not.i196.3 = icmp eq i64 %i.gv, 0
  br i1 %.not.i196.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198: ; preds = %.lr.ph.i192, %.lr.ph.i192.prol.loopexit
  %.not8.i.i200 = icmp eq ptr %3, %i.ga
  br i1 %.not8.i.i200, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.ha = shl nsw i64 %1, 2
  %i.hb = shl i64 %i.a, 1
  %i.hc = ptrtoaddr ptr %2 to i64
  %i.hd = shl i64 %4, 2
  %i.he = add i64 %i.ha, %i.hb
  %i.hf = add i64 %i.he, -4
  %i.hg = add i64 %i.hc, %i.f
  %i.hh = add i64 %i.hg, %i.hd
  %i.hi = sub i64 %i.hf, %i.hh                    ; 2 uses
  %i.hj = lshr i64 %i.hi, 2
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check314 = icmp ult i64 %i.hi, 28
  %diff.check312 = icmp ugt i64 %i.j, -32
  %or.cond362 = or i1 %min.iters.check314, %diff.check312
  br i1 %or.cond362, label %.lr.ph.i.i201.preheader368, label %vector.ph315

vector.ph315:                                     ; preds = %.lr.ph.i.i201.preheader
  %n.vec316 = and i64 %i.hk, 9223372036854775800  ; 3 uses
  %i.hl = mul i64 %n.vec316, -4                   ; 2 uses
  %i.hm = getelementptr i8, ptr %i.b, i64 %i.hl   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.ga, i64 %i.hl
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next323, %vector.body317 ] ; 2 uses
  %i.ho = mul i64 %index318, -4                   ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.b, i64 %i.ho ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.ga, i64 %i.ho ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %next.gep320, i64 -16
  %i.hq = getelementptr inbounds i8, ptr %next.gep320, i64 -32
  %wide.load321 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !318
  %wide.load322 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !318
  %i.hr = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.hs = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  store <4 x i32> %wide.load321, ptr %i.hr, align 4, !tbaa !318
  store <4 x i32> %wide.load322, ptr %i.hs, align 4, !tbaa !318
  %index.next323 = add nuw i64 %index318, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next323, %n.vec316
  br i1 %i.ht, label %middle.block324, label %vector.body317, !llvm.loop !8481

middle.block324:                                  ; preds = %vector.body317
  %cmp.n325 = icmp eq i64 %i.hk, %n.vec316
  br i1 %cmp.n325, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader368

.lr.ph.i.i201.preheader368:                       ; preds = %.lr.ph.i.i201.preheader, %middle.block324
  %.010.i.i202.ph = phi ptr [ %i.b, %.lr.ph.i.i201.preheader ], [ %i.hm, %middle.block324 ]
  %.079.i.i203.ph = phi ptr [ %i.ga, %.lr.ph.i.i201.preheader ], [ %i.hn, %middle.block324 ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader368, %.lr.ph.i.i201
  %.010.i.i202 = phi ptr [ %i.hv, %.lr.ph.i.i201 ], [ %.010.i.i202.ph, %.lr.ph.i.i201.preheader368 ]
  %.079.i.i203 = phi ptr [ %i.hu, %.lr.ph.i.i201 ], [ %.079.i.i203.ph, %.lr.ph.i.i201.preheader368 ]
  %i.hu = getelementptr inbounds i8, ptr %.079.i.i203, i64 -4 ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %.010.i.i202, i64 -4 ; 3 uses
  %i.hw = load i32, ptr %i.hu, align 4, !tbaa !318
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !318
  %.not.i.i204 = icmp eq ptr %3, %i.hu
  br i1 %.not.i.i204, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201, !llvm.loop !8482

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205: ; preds = %.lr.ph.i.i201, %middle.block324, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.hx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198 ], [ %i.hm, %middle.block324 ], [ %i.hv, %.lr.ph.i.i201 ] ; 2 uses
  %i.hy = ptrtoaddr ptr %i.hx to i64
  %i.hz = sub i64 0, %4
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.hz ; 8 uses
  %.not8.i206 = icmp eq i64 %4, 0
  br i1 %.not8.i206, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit213, label %.lr.ph.preheader.i207

.lr.ph.preheader.i207:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205
  %.pre.i208 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ib = add i32 %.pre.i208, 1                   ; 2 uses
  %xtraiter382 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i209.prol.loopexit, label %.lr.ph.i209.prol

.lr.ph.i209.prol:                                 ; preds = %.lr.ph.preheader.i207, %.lr.ph.i209.prol
  %i.ic = phi i32 [ %i.if, %.lr.ph.i209.prol ], [ %i.ib, %.lr.ph.preheader.i207 ]
  %.010.i210.prol = phi ptr [ %i.ie, %.lr.ph.i209.prol ], [ %i.ia, %.lr.ph.preheader.i207 ] ; 2 uses
  %.079.i211.prol = phi i64 [ %i.id, %.lr.ph.i209.prol ], [ %4, %.lr.ph.preheader.i207 ]
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph.i209.prol ], [ 0, %.lr.ph.preheader.i207 ]
  %i.id = add i64 %.079.i211.prol, -1             ; 2 uses
  store i32 %i.ic, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i210.prol, align 4, !tbaa !318
  %i.ie = getelementptr inbounds nuw i8, ptr %.010.i210.prol, i64 4 ; 2 uses
  %i.if = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.ig = add i32 %i.if, -1
  store i32 %i.ig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph.i209.prol.loopexit, label %.lr.ph.i209.prol, !llvm.loop !8483

.lr.ph.i209.prol.loopexit:                        ; preds = %.lr.ph.i209.prol, %.lr.ph.preheader.i207
  %.unr385 = phi i32 [ %i.ib, %.lr.ph.preheader.i207 ], [ %i.if, %.lr.ph.i209.prol ]
  %.010.i210.unr = phi ptr [ %i.ia, %.lr.ph.preheader.i207 ], [ %i.ie, %.lr.ph.i209.prol ]
  %.079.i211.unr = phi i64 [ %4, %.lr.ph.preheader.i207 ], [ %i.id, %.lr.ph.i209.prol ]
  %i.ih = icmp ult i64 %4, 4
  br i1 %i.ih, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit213, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %.lr.ph.i209.prol.loopexit, %.lr.ph.i209
  %i.ii = phi i32 [ %i.io, %.lr.ph.i209 ], [ %.unr385, %.lr.ph.i209.prol.loopexit ]
  %.010.i210 = phi ptr [ %i.in, %.lr.ph.i209 ], [ %.010.i210.unr, %.lr.ph.i209.prol.loopexit ] ; 5 uses
  %.079.i211 = phi i64 [ %i.im, %.lr.ph.i209 ], [ %.079.i211.unr, %.lr.ph.i209.prol.loopexit ]
  store i32 %i.ii, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i210, align 4, !tbaa !318
  %i.ij = getelementptr inbounds nuw i8, ptr %.010.i210, i64 4
  store i32 0, ptr %i.ij, align 4, !tbaa !318
  %i.ik = getelementptr inbounds nuw i8, ptr %.010.i210, i64 8
  store i32 0, ptr %i.ik, align 4, !tbaa !318
  %i.il = getelementptr inbounds nuw i8, ptr %.010.i210, i64 12
  %i.im = add i64 %.079.i211, -4                  ; 2 uses
  store i32 0, ptr %i.il, align 4, !tbaa !318
  %i.in = getelementptr inbounds nuw i8, ptr %.010.i210, i64 16
  %i.io = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.ip = add i32 %i.io, -1
  store i32 %i.ip, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i212.3 = icmp eq i64 %i.im, 0
  br i1 %.not.i212.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit213, label %.lr.ph.i209, !llvm.loop !159

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit213: ; preds = %.lr.ph.i209.prol.loopexit, %.lr.ph.i209, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205
  %.not.i214 = icmp eq ptr %3, %i.ia
  br i1 %.not.i214, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit213
  %.not8.i.i215 = icmp eq ptr %0, %3
  br i1 %.not8.i.i215, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.i
  %i.iq = add i64 %i.f, -4
  %i.ir = sub i64 %i.iq, %i.a                     ; 2 uses
  %i.is = lshr i64 %i.ir, 2
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check331 = icmp ult i64 %i.ir, 76
  br i1 %min.iters.check331, label %.lr.ph.i.i216.preheader366, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i216.preheader
  %i.iu = shl i64 %4, 2
  %i.iv = add i64 %i.iu, %i.f
  %i.iw = sub i64 %i.hy, %i.iv
  %diff.check329 = icmp ugt i64 %i.iw, -32
  br i1 %diff.check329, label %.lr.ph.i.i216.preheader366, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.it, 9223372036854775800  ; 3 uses
  %i.ix = mul i64 %n.vec333, -4                   ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ia, i64 %i.ix  ; 2 uses
  %i.iz = getelementptr i8, ptr %3, i64 %i.ix
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.ja = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.ia, i64 %i.ja ; 2 uses
  %next.gep337 = getelementptr i8, ptr %3, i64 %i.ja ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %next.gep337, i64 -16
  %i.jc = getelementptr inbounds i8, ptr %next.gep337, i64 -32
  %wide.load338 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !318
  %wide.load339 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !318
  %i.jd = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.je = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.jd, align 4, !tbaa !318
  store <4 x i32> %wide.load339, ptr %i.je, align 4, !tbaa !318
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.jf, label %middle.block341, label %vector.body334, !llvm.loop !8484

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.it, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220, label %.lr.ph.i.i216.preheader366

.lr.ph.i.i216.preheader366:                       ; preds = %vector.memcheck328, %.lr.ph.i.i216.preheader, %middle.block341
  %.010.i.i217.ph = phi ptr [ %i.ia, %vector.memcheck328 ], [ %i.ia, %.lr.ph.i.i216.preheader ], [ %i.iy, %middle.block341 ]
  %.079.i.i218.ph = phi ptr [ %3, %vector.memcheck328 ], [ %3, %.lr.ph.i.i216.preheader ], [ %i.iz, %middle.block341 ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader366, %.lr.ph.i.i216
  %.010.i.i217 = phi ptr [ %i.jh, %.lr.ph.i.i216 ], [ %.010.i.i217.ph, %.lr.ph.i.i216.preheader366 ]
  %.079.i.i218 = phi ptr [ %i.jg, %.lr.ph.i.i216 ], [ %.079.i.i218.ph, %.lr.ph.i.i216.preheader366 ]
  %i.jg = getelementptr inbounds i8, ptr %.079.i.i218, i64 -4 ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %.010.i.i217, i64 -4 ; 3 uses
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !318
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !318
  %.not.i.i219 = icmp eq ptr %0, %i.jg
  br i1 %.not.i.i219, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220, label %.lr.ph.i.i216, !llvm.loop !8485

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220: ; preds = %.lr.ph.i.i216, %middle.block341, %bb.i
  %i.jj = phi ptr [ %i.ia, %bb.i ], [ %i.iy, %middle.block341 ], [ %i.jh, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i221 = icmp eq ptr %0, %i.jj
  br i1 %.not3.i221, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220, %.lr.ph.i222
  %storemerge4.i223 = phi ptr [ %i.jm, %.lr.ph.i222 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i223, align 4, !tbaa !318
  %i.jk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jl = add i32 %i.jk, -1
  store i32 %i.jl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jm = getelementptr inbounds nuw i8, ptr %storemerge4.i223, i64 4 ; 2 uses
  %.not.i224 = icmp eq ptr %i.jm, %i.jj
  br i1 %.not.i224, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i222, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i140, %.lr.ph.i222, %.lr.ph.i179, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit213, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit220, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENS8_IS9_Lb1EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8488)
  %i.a = load ptr, ptr %2, align 8, !tbaa !326, !noalias !8488 ; 5 uses
end_hunk_17
begin_hunk_18_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a
bb.e:                                             ; preds = %bb.a
  %i.cy = icmp ugt i64 %i.m, %i.i
  br i1 %i.cy, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i152 = icmp eq ptr %3, %i.c
  br i1 %.not16.i152, label %.loopexit, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %bb.f
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.j
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %.lr.ph.i153
  %.018.i154 = phi ptr [ %i.dd, %.lr.ph.i153 ], [ %3, %.lr.ph.i153.preheader ] ; 2 uses
  %.01517.i155 = phi ptr [ %i.de, %.lr.ph.i153 ], [ %i.cz, %.lr.ph.i153.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i155) ]
  %i.da = load i32, ptr %.018.i154, align 4, !tbaa !318
  store i32 %i.da, ptr %.01517.i155, align 4, !tbaa !318
  %i.db = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.018.i154, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01517.i155, i64 4
  %.not.i156 = icmp eq ptr %i.dd, %i.c
  br i1 %.not.i156, label %.loopexit, label %.lr.ph.i153, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i153, %bb.f
  %.neg242 = sub i64 %i.m, %i.n
  %i.df = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.neg242 ; 7 uses
  %i.dg = load i32, ptr %5, align 4, !tbaa !318   ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !318
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i159 = icmp eq ptr %3, %i.df
  br i1 %.not.i159, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i160 = icmp eq ptr %0, %3
  br i1 %.not8.i.i160, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.g
  %i.dj = add i64 %i.g, -4
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.dk, 108
  br i1 %min.iters.check330, label %.lr.ph.i.i161.preheader345, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i161.preheader
  %i.dn = shl i64 %i.n, 2
  %i.do = add i64 %i.dn, %i.g
  %i.dp = add i64 %i.l, %i.a
  %i.dq = shl nsw i64 %1, 2
  %i.dr = add i64 %i.dp, %i.dq
  %i.ds = sub i64 %i.dr, %i.do
  %diff.check328 = icmp ugt i64 %i.ds, -32
  br i1 %diff.check328, label %.lr.ph.i.i161.preheader345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck327
  %n.vec332 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dt = mul i64 %n.vec332, -4                   ; 2 uses
  %i.du = getelementptr i8, ptr %i.df, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %3, i64 %i.dt
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.dw = mul i64 %index334, -4                   ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.df, i64 %i.dw ; 2 uses
  %next.gep336 = getelementptr i8, ptr %3, i64 %i.dw ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.dy = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  %wide.load337 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !318
  %wide.load338 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !318
  %i.dz = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %i.ea = getelementptr inbounds i8, ptr %next.gep335, i64 -32
  store <4 x i32> %wide.load337, ptr %i.dz, align 4, !tbaa !318
  store <4 x i32> %wide.load338, ptr %i.ea, align 4, !tbaa !318
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.eb, label %middle.block340, label %vector.body333, !llvm.loop !8507

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.dm, %n.vec332
  br i1 %cmp.n341, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader345

.lr.ph.i.i161.preheader345:                       ; preds = %vector.memcheck327, %.lr.ph.i.i161.preheader, %middle.block340
  %.010.i.i162.ph = phi ptr [ %i.df, %vector.memcheck327 ], [ %i.df, %.lr.ph.i.i161.preheader ], [ %i.du, %middle.block340 ]
  %.079.i.i163.ph = phi ptr [ %3, %vector.memcheck327 ], [ %3, %.lr.ph.i.i161.preheader ], [ %i.dv, %middle.block340 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader345, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ed, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader345 ]
  %.079.i.i163 = phi ptr [ %i.ec, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader345 ]
  %i.ec = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !318
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !318
  %.not.i.i164 = icmp eq ptr %0, %i.ec
  br i1 %.not.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161, !llvm.loop !8508

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165: ; preds = %.lr.ph.i.i161, %middle.block340, %bb.g
  %i.ef = phi ptr [ %i.df, %bb.g ], [ %i.du, %middle.block340 ], [ %i.ed, %.lr.ph.i.i161 ] ; 2 uses
  %.not3.i166 = icmp eq ptr %0, %i.ef
  br i1 %.not3.i166, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %.lr.ph.i167
  %storemerge4.i168 = phi ptr [ %i.ei, %.lr.ph.i167 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i168, align 4, !tbaa !318
  %i.eg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eh = add i32 %i.eg, -1
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = getelementptr inbounds nuw i8, ptr %storemerge4.i168, i64 4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ei, %i.ef
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.ej = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i179 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.h
  %xtraiter357 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180.prol
  %.020.i181.prol = phi i64 [ %i.ek, %.lr.ph.i180.prol ], [ %i.m, %.lr.ph.i180.preheader ]
  %.0819.i182.prol = phi ptr [ %i.eo, %.lr.ph.i180.prol ], [ %i.ej, %.lr.ph.i180.preheader ] ; 2 uses
  %.01618.i183.prol = phi ptr [ %i.ep, %.lr.ph.i180.prol ], [ %i.c, %.lr.ph.i180.preheader ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i180.prol ], [ 0, %.lr.ph.i180.preheader ]
  %i.ek = add i64 %.020.i181.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183.prol) ]
  %i.el = load i32, ptr %.0819.i182.prol, align 4, !tbaa !318
  store i32 %i.el, ptr %.01618.i183.prol, align 4, !tbaa !318
  %i.em = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eo = getelementptr inbounds nuw i8, ptr %.0819.i182.prol, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01618.i183.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol, !llvm.loop !8509

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader
  %.020.i181.unr = phi i64 [ %i.m, %.lr.ph.i180.preheader ], [ %i.ek, %.lr.ph.i180.prol ]
  %.0819.i182.unr = phi ptr [ %i.ej, %.lr.ph.i180.preheader ], [ %i.eo, %.lr.ph.i180.prol ]
  %.01618.i183.unr = phi ptr [ %i.c, %.lr.ph.i180.preheader ], [ %i.ep, %.lr.ph.i180.prol ]
  %i.eq = icmp ult i64 %i.m, 4
  br i1 %i.eq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.020.i181 = phi i64 [ %i.fe, %.lr.ph.i180 ], [ %.020.i181.unr, %.lr.ph.i180.prol.loopexit ]
  %.0819.i182 = phi ptr [ %i.fh, %.lr.ph.i180 ], [ %.0819.i182.unr, %.lr.ph.i180.prol.loopexit ] ; 5 uses
  %.01618.i183 = phi ptr [ %i.fi, %.lr.ph.i180 ], [ %.01618.i183.unr, %.lr.ph.i180.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183) ]
  %i.er = load i32, ptr %.0819.i182, align 4, !tbaa !318
  store i32 %i.er, ptr %.01618.i183, align 4, !tbaa !318
  %i.es = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 4
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !318
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !318
  %i.ex = add i32 %i.es, 2
  store i32 %i.ex, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ey = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !318
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !318
  %i.fb = add i32 %i.es, 3
  store i32 %i.fb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 12
  %i.fe = add i64 %.020.i181, -4                  ; 2 uses
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !318
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !318
  %i.fg = add i32 %i.es, 4
  store i32 %i.fg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fh = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 16
  %.not.i184.3 = icmp eq i64 %i.fe, 0
  br i1 %.not.i184.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186: ; preds = %.lr.ph.i180, %.lr.ph.i180.prol.loopexit
  %.not8.i.i188 = icmp eq ptr %3, %i.ej
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.fj = shl nsw i64 %1, 2
  %i.fk = shl i64 %i.a, 1
  %i.fl = ptrtoaddr ptr %2 to i64
  %i.fm = shl i64 %4, 2
  %i.fn = add i64 %i.fj, %i.fk
  %i.fo = add i64 %i.fn, -4
  %i.fp = add i64 %i.fl, %i.g
  %i.fq = add i64 %i.fp, %i.fm
  %i.fr = sub i64 %i.fo, %i.fq                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.fr, 28
  %diff.check294 = icmp ugt i64 %i.l, -32
  %or.cond344 = or i1 %min.iters.check296, %diff.check294
  br i1 %or.cond344, label %.lr.ph.i.i189.preheader349, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i189.preheader
  %n.vec298 = and i64 %i.ft, 9223372036854775800  ; 3 uses
  %i.fu = mul i64 %n.vec298, -4                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.c, i64 %i.fu   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ej, i64 %i.fu
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.fx = mul i64 %index300, -4                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.c, i64 %i.fx ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.ej, i64 %i.fx ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep302, i64 -16
  %i.fz = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !318
  %wide.load304 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !318
  %i.ga = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.gb = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i32> %wide.load303, ptr %i.ga, align 4, !tbaa !318
  store <4 x i32> %wide.load304, ptr %i.gb, align 4, !tbaa !318
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.gc, label %middle.block306, label %vector.body299, !llvm.loop !8510

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ft, %n.vec298
  br i1 %cmp.n307, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader349

.lr.ph.i.i189.preheader349:                       ; preds = %.lr.ph.i.i189.preheader, %middle.block306
  %.010.i.i190.ph = phi ptr [ %i.c, %.lr.ph.i.i189.preheader ], [ %i.fv, %middle.block306 ]
  %.079.i.i191.ph = phi ptr [ %i.ej, %.lr.ph.i.i189.preheader ], [ %i.fw, %middle.block306 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader349, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.ge, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader349 ]
  %.079.i.i191 = phi ptr [ %i.gd, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader349 ]
  %i.gd = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 3 uses
  %i.ge = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !318
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !318
  %.not.i.i192 = icmp eq ptr %3, %i.gd
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !8511

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block306, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.gg = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186 ], [ %i.fv, %middle.block306 ], [ %i.ge, %.lr.ph.i.i189 ] ; 2 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.b ; 7 uses
  %i.gj = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !318
  %.not.i194 = icmp eq ptr %3, %i.gi
  br i1 %.not.i194, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193
  %.not8.i.i195 = icmp eq ptr %0, %3
  br i1 %.not8.i.i195, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196.preheader

.lr.ph.i.i196.preheader:                          ; preds = %bb.i
  %i.gk = add i64 %i.g, -4
  %i.gl = sub i64 %i.gk, %i.a                     ; 2 uses
  %i.gm = lshr i64 %i.gl, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.gl, 76
  br i1 %min.iters.check313, label %.lr.ph.i.i196.preheader347, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.i.i196.preheader
  %i.go = shl i64 %4, 2
  %i.gp = add i64 %i.go, %i.g
  %i.gq = sub i64 %i.gh, %i.gp
  %diff.check311 = icmp ugt i64 %i.gq, -32
  br i1 %diff.check311, label %.lr.ph.i.i196.preheader347, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck310
  %n.vec315 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.gr = mul i64 %n.vec315, -4                   ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gi, i64 %i.gr  ; 2 uses
  %i.gt = getelementptr i8, ptr %3, i64 %i.gr
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.gu = mul i64 %index317, -4                   ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.gi, i64 %i.gu ; 2 uses
  %next.gep319 = getelementptr i8, ptr %3, i64 %i.gu ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.gw = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  %wide.load320 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !318
  %wide.load321 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !318
  %i.gx = getelementptr inbounds i8, ptr %next.gep318, i64 -16
  %i.gy = getelementptr inbounds i8, ptr %next.gep318, i64 -32
  store <4 x i32> %wide.load320, ptr %i.gx, align 4, !tbaa !318
  store <4 x i32> %wide.load321, ptr %i.gy, align 4, !tbaa !318
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.gz, label %middle.block323, label %vector.body316, !llvm.loop !8512

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.gn, %n.vec315
  br i1 %cmp.n324, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196.preheader347

.lr.ph.i.i196.preheader347:                       ; preds = %vector.memcheck310, %.lr.ph.i.i196.preheader, %middle.block323
  %.010.i.i197.ph = phi ptr [ %i.gi, %vector.memcheck310 ], [ %i.gi, %.lr.ph.i.i196.preheader ], [ %i.gs, %middle.block323 ]
  %.079.i.i198.ph = phi ptr [ %3, %vector.memcheck310 ], [ %3, %.lr.ph.i.i196.preheader ], [ %i.gt, %middle.block323 ]
  br label %.lr.ph.i.i196

.lr.ph.i.i196:                                    ; preds = %.lr.ph.i.i196.preheader347, %.lr.ph.i.i196
  %.010.i.i197 = phi ptr [ %i.hb, %.lr.ph.i.i196 ], [ %.010.i.i197.ph, %.lr.ph.i.i196.preheader347 ]
  %.079.i.i198 = phi ptr [ %i.ha, %.lr.ph.i.i196 ], [ %.079.i.i198.ph, %.lr.ph.i.i196.preheader347 ]
  %i.ha = getelementptr inbounds i8, ptr %.079.i.i198, i64 -4 ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %.010.i.i197, i64 -4 ; 3 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !318
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !318
  %.not.i.i199 = icmp eq ptr %0, %i.ha
  br i1 %.not.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196, !llvm.loop !8513

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200: ; preds = %.lr.ph.i.i196, %middle.block323, %bb.i
  %i.hd = phi ptr [ %i.gi, %bb.i ], [ %i.gs, %middle.block323 ], [ %i.hb, %.lr.ph.i.i196 ] ; 2 uses
  %.not3.i201 = icmp eq ptr %0, %i.hd
  br i1 %.not3.i201, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %.lr.ph.i202
  %storemerge4.i203 = phi ptr [ %i.hg, %.lr.ph.i202 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i203, align 4, !tbaa !318
  %i.he = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %storemerge4.i203, i64 4 ; 2 uses
  %.not.i204 = icmp eq ptr %i.hg, %i.hd
  br i1 %.not.i204, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i202, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i136, %.lr.ph.i202, %.lr.ph.i167, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !326    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !490
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !495  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !488    ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter78 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.l = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !318
  store i32 %i.l, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !318
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !8514

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.k, 3
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
end_hunk_18
begin_hunk_19_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %.018.i.i170 = phi i64 [ %i.gv, %.lr.ph.i.i169 ], [ %.018.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ]
  %.01417.i.i171 = phi ptr [ %i.gu, %.lr.ph.i.i169 ], [ %.01417.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i172 = phi ptr [ %i.gt, %.lr.ph.i.i169 ], [ %.sroa.0.016.i.i172.unr, %.lr.ph.i.i169.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i171) ]
  %i.ge = load i32, ptr %.sroa.0.016.i.i172, align 4, !tbaa !318
  store i32 %i.ge, ptr %.01417.i.i171, align 4, !tbaa !318
  %i.gf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 4
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !318
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !318
  %i.gk = add i32 %i.gf, 2
  store i32 %i.gk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 8
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !318
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !318
  %i.go = add i32 %i.gf, 3
  store i32 %i.go, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 12
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !318
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !318
  %i.gs = add i32 %i.gf, 4
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 16
  %i.gv = add i64 %.018.i.i170, -4                ; 2 uses
  %.not.i.i173.3 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i173.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175, label %.lr.ph.i.i169, !llvm.loop !160

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175: ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.prol.loopexit
  %.not.i176 = icmp eq ptr %3, %i.ee
  br i1 %.not.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175
  %.not8.i.i177 = icmp eq ptr %0, %3
  br i1 %.not8.i.i177, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.g
  %i.gw = add i64 %i.g, -4
  %i.gx = sub i64 %i.gw, %i.b                     ; 2 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check395 = icmp ult i64 %i.gx, 92
  br i1 %min.iters.check395, label %.lr.ph.i.i178.preheader414, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.i.i178.preheader
  %i.ha = shl nsw i64 %1, 2
  %i.hb = add i64 %i.ha, %i.b
  %i.hc = sub i64 %i.g, %i.hb
  %.neg = shl i64 %i.ec, 2
  %i.hd = add i64 %.neg, %i.hc
  %i.he = add i64 %i.hd, -1
  %diff.check393 = icmp ult i64 %i.he, 31
  br i1 %diff.check393, label %.lr.ph.i.i178.preheader414, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hf = mul i64 %n.vec397, -4                   ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ee, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %3, i64 %i.hf
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.hi = mul i64 %index399, -4                   ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.ee, i64 %i.hi ; 2 uses
  %next.gep401 = getelementptr i8, ptr %3, i64 %i.hi ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %next.gep401, i64 -16
  %i.hk = getelementptr inbounds i8, ptr %next.gep401, i64 -32
  %wide.load402 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !318
  %wide.load403 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !318
  %i.hl = getelementptr inbounds i8, ptr %next.gep400, i64 -16
  %i.hm = getelementptr inbounds i8, ptr %next.gep400, i64 -32
  store <4 x i32> %wide.load402, ptr %i.hl, align 4, !tbaa !318
  store <4 x i32> %wide.load403, ptr %i.hm, align 4, !tbaa !318
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.hn, label %middle.block405, label %vector.body398, !llvm.loop !8577

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.gz, %n.vec397
  br i1 %cmp.n406, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader414

.lr.ph.i.i178.preheader414:                       ; preds = %vector.memcheck392, %.lr.ph.i.i178.preheader, %middle.block405
  %.010.i.i179.ph = phi ptr [ %i.ee, %vector.memcheck392 ], [ %i.ee, %.lr.ph.i.i178.preheader ], [ %i.hg, %middle.block405 ]
  %.079.i.i180.ph = phi ptr [ %3, %vector.memcheck392 ], [ %3, %.lr.ph.i.i178.preheader ], [ %i.hh, %middle.block405 ]
  br label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.preheader414, %.lr.ph.i.i178
  %.010.i.i179 = phi ptr [ %i.hp, %.lr.ph.i.i178 ], [ %.010.i.i179.ph, %.lr.ph.i.i178.preheader414 ]
  %.079.i.i180 = phi ptr [ %i.ho, %.lr.ph.i.i178 ], [ %.079.i.i180.ph, %.lr.ph.i.i178.preheader414 ]
  %i.ho = getelementptr inbounds i8, ptr %.079.i.i180, i64 -4 ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %.010.i.i179, i64 -4 ; 3 uses
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !318
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !318
  %.not.i.i181 = icmp eq ptr %0, %i.ho
  br i1 %.not.i.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178, !llvm.loop !8578

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182: ; preds = %.lr.ph.i.i178, %middle.block405, %bb.g
  %i.hr = phi ptr [ %i.ee, %bb.g ], [ %i.hg, %middle.block405 ], [ %i.hp, %.lr.ph.i.i178 ] ; 2 uses
  %.not3.i183 = icmp eq ptr %0, %i.hr
  br i1 %.not3.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %.lr.ph.i184
  %storemerge4.i185 = phi ptr [ %i.hu, %.lr.ph.i184 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i185, align 4, !tbaa !318
  %i.hs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ht = add i32 %i.hs, -1
  store i32 %i.ht, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hu = getelementptr inbounds nuw i8, ptr %storemerge4.i185, i64 4 ; 2 uses
  %.not.i186 = icmp eq ptr %i.hu, %i.hr
  br i1 %.not.i186, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.hv = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i196 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i196, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %bb.h
  %xtraiter432 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %.020.i198.prol = phi i64 [ %i.hw, %.lr.ph.i197.prol ], [ %i.l, %.lr.ph.i197.preheader ]
  %.0819.i199.prol = phi ptr [ %i.ia, %.lr.ph.i197.prol ], [ %i.hv, %.lr.ph.i197.preheader ] ; 2 uses
  %.01618.i200.prol = phi ptr [ %i.ib, %.lr.ph.i197.prol ], [ %i.c, %.lr.ph.i197.preheader ] ; 3 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %i.hw = add i64 %.020.i198.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200.prol) ]
  %i.hx = load i32, ptr %.0819.i199.prol, align 4, !tbaa !318
  store i32 %i.hx, ptr %.01618.i200.prol, align 4, !tbaa !318
  %i.hy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ia = getelementptr inbounds nuw i8, ptr %.0819.i199.prol, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01618.i200.prol, i64 4 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !8579

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %.020.i198.unr = phi i64 [ %i.l, %.lr.ph.i197.preheader ], [ %i.hw, %.lr.ph.i197.prol ]
  %.0819.i199.unr = phi ptr [ %i.hv, %.lr.ph.i197.preheader ], [ %i.ia, %.lr.ph.i197.prol ]
  %.01618.i200.unr = phi ptr [ %i.c, %.lr.ph.i197.preheader ], [ %i.ib, %.lr.ph.i197.prol ]
  %i.ic = icmp ult i64 %i.l, 4
  br i1 %i.ic, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %.020.i198 = phi i64 [ %i.iq, %.lr.ph.i197 ], [ %.020.i198.unr, %.lr.ph.i197.prol.loopexit ]
  %.0819.i199 = phi ptr [ %i.it, %.lr.ph.i197 ], [ %.0819.i199.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %.01618.i200 = phi ptr [ %i.iu, %.lr.ph.i197 ], [ %.01618.i200.unr, %.lr.ph.i197.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200) ]
  %i.id = load i32, ptr %.0819.i199, align 4, !tbaa !318
  store i32 %i.id, ptr %.01618.i200, align 4, !tbaa !318
  %i.ie = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ig = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 4
  %i.ii = load i32, ptr %i.ig, align 4, !tbaa !318
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !318
  %i.ij = add i32 %i.ie, 2
  store i32 %i.ij, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ik = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 8
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !318
  store i32 %i.im, ptr %i.il, align 4, !tbaa !318
  %i.in = add i32 %i.ie, 3
  store i32 %i.in, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.io = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 12
  %i.ip = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 12
  %i.iq = add i64 %.020.i198, -4                  ; 2 uses
  %i.ir = load i32, ptr %i.io, align 4, !tbaa !318
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !318
  %i.is = add i32 %i.ie, 4
  store i32 %i.is, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.it = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 16
  %.not.i201.3 = icmp eq i64 %i.iq, 0
  br i1 %.not.i201.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203: ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %.not8.i.i205 = icmp eq ptr %3, %i.hv
  br i1 %.not8.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader

.lr.ph.i.i206.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.iv = shl nsw i64 %1, 2
  %i.iw = shl i64 %i.b, 1
  %i.ix = ptrtoaddr ptr %2 to i64
  %i.iy = shl i64 %4, 2
  %i.iz = add i64 %i.iv, %i.iw
  %i.ja = add i64 %i.iz, -4
  %i.jb = add i64 %i.ix, %i.g
  %i.jc = add i64 %i.jb, %i.iy
  %i.jd = sub i64 %i.ja, %i.jc                    ; 2 uses
  %i.je = lshr i64 %i.jd, 2
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.jd, 28
  %diff.check323 = icmp ugt i64 %i.k, -32
  %or.cond410 = or i1 %min.iters.check325, %diff.check323
  br i1 %or.cond410, label %.lr.ph.i.i206.preheader421, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i206.preheader
  %n.vec327 = and i64 %i.jf, 9223372036854775800  ; 3 uses
  %i.jg = mul i64 %n.vec327, -4                   ; 2 uses
  %i.jh = getelementptr i8, ptr %i.c, i64 %i.jg   ; 2 uses
  %i.ji = getelementptr i8, ptr %i.hv, i64 %i.jg
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.jj = mul i64 %index329, -4                   ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.c, i64 %i.jj ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.hv, i64 %i.jj ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.jl = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  %wide.load332 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !318
  %wide.load333 = load <4 x i32>, ptr %i.jl, align 4, !tbaa !318
  %i.jm = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.jn = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  store <4 x i32> %wide.load332, ptr %i.jm, align 4, !tbaa !318
  store <4 x i32> %wide.load333, ptr %i.jn, align 4, !tbaa !318
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.jo, label %middle.block335, label %vector.body328, !llvm.loop !8580

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.jf, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader421

.lr.ph.i.i206.preheader421:                       ; preds = %.lr.ph.i.i206.preheader, %middle.block335
  %.010.i.i207.ph = phi ptr [ %i.c, %.lr.ph.i.i206.preheader ], [ %i.jh, %middle.block335 ]
  %.079.i.i208.ph = phi ptr [ %i.hv, %.lr.ph.i.i206.preheader ], [ %i.ji, %middle.block335 ]
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206.preheader421, %.lr.ph.i.i206
  %.010.i.i207 = phi ptr [ %i.jq, %.lr.ph.i.i206 ], [ %.010.i.i207.ph, %.lr.ph.i.i206.preheader421 ]
  %.079.i.i208 = phi ptr [ %i.jp, %.lr.ph.i.i206 ], [ %.079.i.i208.ph, %.lr.ph.i.i206.preheader421 ]
  %i.jp = getelementptr inbounds i8, ptr %.079.i.i208, i64 -4 ; 3 uses
  %i.jq = getelementptr inbounds i8, ptr %.010.i.i207, i64 -4 ; 3 uses
  %i.jr = load i32, ptr %i.jp, align 4, !tbaa !318
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !318
  %.not.i.i209 = icmp eq ptr %3, %i.jp
  br i1 %.not.i.i209, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206, !llvm.loop !8581

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210: ; preds = %.lr.ph.i.i206, %middle.block335, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.js = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203 ], [ %i.jh, %middle.block335 ], [ %i.jq, %.lr.ph.i.i206 ] ; 2 uses
  %i.jt = ptrtoaddr ptr %i.js to i64              ; 2 uses
  %i.ju = sub i64 0, %4
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ju ; 10 uses
  %.not6.i.i212 = icmp eq i64 %4, 0
  br i1 %.not6.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210
  %min.iters.check342 = icmp ult i64 %4, 16
  br i1 %min.iters.check342, label %.lr.ph.i.i213.preheader420, label %vector.memcheck339

vector.memcheck339:                               ; preds = %.lr.ph.i.i213.preheader
  %i.jw = shl i64 %4, 2
  %i.jx = add i64 %i.jw, %i.a
  %i.jy = sub i64 %i.jx, %i.jt
  %diff.check340 = icmp ugt i64 %i.jy, -32
  br i1 %diff.check340, label %.lr.ph.i.i213.preheader420, label %vector.ph343

vector.ph343:                                     ; preds = %vector.memcheck339
  %n.vec344 = and i64 %4, -8                      ; 3 uses
  %i.jz = and i64 %4, 7
  %i.ka = shl i64 %n.vec344, 2                    ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jv, i64 %i.ka
  %i.kc = getelementptr i8, ptr %5, i64 %i.ka
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph343
  %index346 = phi i64 [ 0, %vector.ph343 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %i.kd = shl i64 %index346, 2                    ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.jv, i64 %i.kd ; 2 uses
  %next.gep348 = getelementptr i8, ptr %5, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep348, i64 16
  %wide.load349 = load <4 x i32>, ptr %next.gep348, align 4, !tbaa !318
  %wide.load350 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !318
  %i.kf = getelementptr i8, ptr %next.gep347, i64 16
  store <4 x i32> %wide.load349, ptr %next.gep347, align 4, !tbaa !318
  store <4 x i32> %wide.load350, ptr %i.kf, align 4, !tbaa !318
  %index.next351 = add nuw i64 %index346, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next351, %n.vec344
  br i1 %i.kg, label %middle.block352, label %vector.body345, !llvm.loop !8582

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %4, %n.vec344
  br i1 %cmp.n353, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader420

.lr.ph.i.i213.preheader420:                       ; preds = %vector.memcheck339, %.lr.ph.i.i213.preheader, %middle.block352
  %.09.i.i214.ph = phi i64 [ %4, %vector.memcheck339 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.jz, %middle.block352 ] ; 4 uses
  %.048.i.i215.ph = phi ptr [ %i.jv, %vector.memcheck339 ], [ %i.jv, %.lr.ph.i.i213.preheader ], [ %i.kb, %middle.block352 ] ; 2 uses
  %.sroa.0.07.i.i216.ph = phi ptr [ %5, %vector.memcheck339 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.kc, %middle.block352 ] ; 2 uses
  %i.kh = add i64 %.09.i.i214.ph, -1
  %xtraiter435 = and i64 %.09.i.i214.ph, 7        ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader420, %.lr.ph.i.i213.prol
  %.09.i.i214.prol = phi i64 [ %i.ki, %.lr.ph.i.i213.prol ], [ %.09.i.i214.ph, %.lr.ph.i.i213.preheader420 ]
  %.048.i.i215.prol = phi ptr [ %i.kl, %.lr.ph.i.i213.prol ], [ %.048.i.i215.ph, %.lr.ph.i.i213.preheader420 ] ; 2 uses
  %.sroa.0.07.i.i216.prol = phi ptr [ %i.kk, %.lr.ph.i.i213.prol ], [ %.sroa.0.07.i.i216.ph, %.lr.ph.i.i213.preheader420 ] ; 2 uses
  %prol.iter437 = phi i64 [ %prol.iter437.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader420 ]
  %i.ki = add i64 %.09.i.i214.prol, -1            ; 2 uses
  %i.kj = load i32, ptr %.sroa.0.07.i.i216.prol, align 4, !tbaa !318
  store i32 %i.kj, ptr %.048.i.i215.prol, align 4, !tbaa !318
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216.prol, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.048.i.i215.prol, i64 4 ; 2 uses
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !8583

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader420
  %.09.i.i214.unr = phi i64 [ %.09.i.i214.ph, %.lr.ph.i.i213.preheader420 ], [ %i.ki, %.lr.ph.i.i213.prol ]
  %.048.i.i215.unr = phi ptr [ %.048.i.i215.ph, %.lr.ph.i.i213.preheader420 ], [ %i.kl, %.lr.ph.i.i213.prol ]
  %.sroa.0.07.i.i216.unr = phi ptr [ %.sroa.0.07.i.i216.ph, %.lr.ph.i.i213.preheader420 ], [ %i.kk, %.lr.ph.i.i213.prol ]
  %i.km = icmp ult i64 %i.kh, 7
  br i1 %i.km, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.09.i.i214 = phi i64 [ %i.li, %.lr.ph.i.i213 ], [ %.09.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.048.i.i215 = phi ptr [ %i.ll, %.lr.ph.i.i213 ], [ %.048.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i216 = phi ptr [ %i.lk, %.lr.ph.i.i213 ], [ %.sroa.0.07.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.kn = load i32, ptr %.sroa.0.07.i.i216, align 4, !tbaa !318
  store i32 %i.kn, ptr %.048.i.i215, align 4, !tbaa !318
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 4
  %i.kq = load i32, ptr %i.ko, align 4, !tbaa !318
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !318
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 8
  %i.kt = load i32, ptr %i.kr, align 4, !tbaa !318
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !318
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 12
  %i.kv = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 12
  %i.kw = load i32, ptr %i.ku, align 4, !tbaa !318
  store i32 %i.kw, ptr %i.kv, align 4, !tbaa !318
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 16
  %i.kz = load i32, ptr %i.kx, align 4, !tbaa !318
  store i32 %i.kz, ptr %i.ky, align 4, !tbaa !318
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 20
  %i.lb = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 20
  %i.lc = load i32, ptr %i.la, align 4, !tbaa !318
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !318
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 24
  %i.le = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 24
  %i.lf = load i32, ptr %i.ld, align 4, !tbaa !318
  store i32 %i.lf, ptr %i.le, align 4, !tbaa !318
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 28
  %i.lh = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 28
  %i.li = add i64 %.09.i.i214, -8                 ; 2 uses
  %i.lj = load i32, ptr %i.lg, align 4, !tbaa !318
  store i32 %i.lj, ptr %i.lh, align 4, !tbaa !318
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.li, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !8584

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block352, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210
  %.not.i220 = icmp eq ptr %3, %i.jv
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.lm = add i64 %i.g, -4
  %i.ln = sub i64 %i.lm, %i.b                     ; 2 uses
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check360 = icmp ult i64 %i.ln, 76
  br i1 %min.iters.check360, label %.lr.ph.i.i222.preheader418, label %vector.memcheck357

vector.memcheck357:                               ; preds = %.lr.ph.i.i222.preheader
  %i.lq = shl i64 %4, 2
  %i.lr = add i64 %i.lq, %i.g
  %i.ls = sub i64 %i.jt, %i.lr
  %diff.check358 = icmp ugt i64 %i.ls, -32
  br i1 %diff.check358, label %.lr.ph.i.i222.preheader418, label %vector.ph361

vector.ph361:                                     ; preds = %vector.memcheck357
  %n.vec362 = and i64 %i.lp, 9223372036854775800  ; 3 uses
  %i.lt = mul i64 %n.vec362, -4                   ; 2 uses
  %i.lu = getelementptr i8, ptr %i.jv, i64 %i.lt  ; 2 uses
  %i.lv = getelementptr i8, ptr %3, i64 %i.lt
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph361
  %index364 = phi i64 [ 0, %vector.ph361 ], [ %index.next369, %vector.body363 ] ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %.017.i.i165.unr = phi i64 [ %i.dv, %.lr.ph.i.i164.preheader ], [ %i.eh, %.lr.ph.i.i164.prol ]
  %.01416.i.i166.unr = phi ptr [ %i.b, %.lr.ph.i.i164.preheader ], [ %i.el, %.lr.ph.i.i164.prol ]
  %i.em = sub nsw i64 %i.h, %i.k
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.017.i.i165 = phi i64 [ %i.ey, %.lr.ph.i.i164 ], [ %.017.i.i165.unr, %.lr.ph.i.i164.prol.loopexit ]
  %.01416.i.i166 = phi ptr [ %i.fb, %.lr.ph.i.i164 ], [ %.01416.i.i166.unr, %.lr.ph.i.i164.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i166) ]
  %i.eo = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.eo, ptr %.01416.i.i166, align 4, !tbaa !318
  %i.ep = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 4
  %i.es = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.es, ptr %i.er, align 4, !tbaa !318
  %i.et = add i32 %i.ep, 2
  store i32 %i.et, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 8
  %i.ev = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !318
  %i.ew = add i32 %i.ep, 3
  store i32 %i.ew, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ex = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 12
  %i.ey = add i64 %.017.i.i165, -4                ; 2 uses
  %i.ez = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !318
  %i.fa = add i32 %i.ep, 4
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fb = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 16
  %.not.i.i167.3 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i167.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168, label %.lr.ph.i.i164, !llvm.loop !154

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168: ; preds = %.lr.ph.i.i164, %.lr.ph.i.i164.prol.loopexit
  %.not.i169 = icmp eq ptr %3, %i.dy
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168
  %.not8.i.i170 = icmp eq ptr %0, %3
  br i1 %.not8.i.i170, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %bb.g
  %i.fc = add i64 %i.f, -4
  %i.fd = sub i64 %i.fc, %i.a                     ; 2 uses
  %i.fe = lshr i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.fd, 92
  br i1 %min.iters.check375, label %.lr.ph.i.i171.preheader391, label %vector.memcheck372

vector.memcheck372:                               ; preds = %.lr.ph.i.i171.preheader
  %i.fg = shl nsw i64 %1, 2
  %i.fh = add i64 %i.fg, %i.a
  %i.fi = sub i64 %i.f, %i.fh
  %.neg = shl i64 %i.dw, 2
  %i.fj = add i64 %.neg, %i.fi
  %i.fk = add i64 %i.fj, -1
  %diff.check373 = icmp ult i64 %i.fk, 31
  br i1 %diff.check373, label %.lr.ph.i.i171.preheader391, label %vector.ph376

vector.ph376:                                     ; preds = %vector.memcheck372
  %n.vec377 = and i64 %i.ff, 9223372036854775800  ; 3 uses
  %i.fl = mul i64 %n.vec377, -4                   ; 2 uses
  %i.fm = getelementptr i8, ptr %i.dy, i64 %i.fl  ; 2 uses
  %i.fn = getelementptr i8, ptr %3, i64 %i.fl
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next384, %vector.body378 ] ; 2 uses
  %i.fo = mul i64 %index379, -4                   ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.dy, i64 %i.fo ; 2 uses
  %next.gep381 = getelementptr i8, ptr %3, i64 %i.fo ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %next.gep381, i64 -16
  %i.fq = getelementptr inbounds i8, ptr %next.gep381, i64 -32
  %wide.load382 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !318
  %wide.load383 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !318
  %i.fr = getelementptr inbounds i8, ptr %next.gep380, i64 -16
  %i.fs = getelementptr inbounds i8, ptr %next.gep380, i64 -32
  store <4 x i32> %wide.load382, ptr %i.fr, align 4, !tbaa !318
  store <4 x i32> %wide.load383, ptr %i.fs, align 4, !tbaa !318
  %index.next384 = add nuw i64 %index379, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next384, %n.vec377
  br i1 %i.ft, label %middle.block385, label %vector.body378, !llvm.loop !8672

middle.block385:                                  ; preds = %vector.body378
  %cmp.n386 = icmp eq i64 %i.ff, %n.vec377
  br i1 %cmp.n386, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, label %.lr.ph.i.i171.preheader391

.lr.ph.i.i171.preheader391:                       ; preds = %vector.memcheck372, %.lr.ph.i.i171.preheader, %middle.block385
  %.010.i.i172.ph = phi ptr [ %i.dy, %vector.memcheck372 ], [ %i.dy, %.lr.ph.i.i171.preheader ], [ %i.fm, %middle.block385 ]
  %.079.i.i173.ph = phi ptr [ %3, %vector.memcheck372 ], [ %3, %.lr.ph.i.i171.preheader ], [ %i.fn, %middle.block385 ]
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.preheader391, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.fv, %.lr.ph.i.i171 ], [ %.010.i.i172.ph, %.lr.ph.i.i171.preheader391 ]
  %.079.i.i173 = phi ptr [ %i.fu, %.lr.ph.i.i171 ], [ %.079.i.i173.ph, %.lr.ph.i.i171.preheader391 ]
  %i.fu = getelementptr inbounds i8, ptr %.079.i.i173, i64 -4 ; 3 uses
  %i.fv = getelementptr inbounds i8, ptr %.010.i.i172, i64 -4 ; 3 uses
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !318
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !318
  %.not.i.i174 = icmp eq ptr %0, %i.fu
  br i1 %.not.i.i174, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, label %.lr.ph.i.i171, !llvm.loop !8673

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175: ; preds = %.lr.ph.i.i171, %middle.block385, %bb.g
  %i.fx = phi ptr [ %i.dy, %bb.g ], [ %i.fm, %middle.block385 ], [ %i.fv, %.lr.ph.i.i171 ] ; 2 uses
  %.not3.i176 = icmp eq ptr %0, %i.fx
  br i1 %.not3.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, %.lr.ph.i177
  %storemerge4.i178 = phi ptr [ %i.ga, %.lr.ph.i177 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i178, align 4, !tbaa !318
  %i.fy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fz = add i32 %i.fy, -1
  store i32 %i.fz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i178, i64 4 ; 2 uses
  %.not.i179 = icmp eq ptr %i.ga, %i.fx
  br i1 %.not.i179, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i177, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.j
  %i.gb = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 6 uses
  %.not17.i189 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i189, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %bb.h
  %xtraiter406 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader, %.lr.ph.i190.prol
  %.020.i191.prol = phi i64 [ %i.gc, %.lr.ph.i190.prol ], [ %i.k, %.lr.ph.i190.preheader ]
  %.0819.i192.prol = phi ptr [ %i.gg, %.lr.ph.i190.prol ], [ %i.gb, %.lr.ph.i190.preheader ] ; 2 uses
  %.01618.i193.prol = phi ptr [ %i.gh, %.lr.ph.i190.prol ], [ %i.b, %.lr.ph.i190.preheader ] ; 3 uses
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.lr.ph.i190.prol ], [ 0, %.lr.ph.i190.preheader ]
  %i.gc = add i64 %.020.i191.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i193.prol) ]
  %i.gd = load i32, ptr %.0819.i192.prol, align 4, !tbaa !318
  store i32 %i.gd, ptr %.01618.i193.prol, align 4, !tbaa !318
  %i.ge = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gg = getelementptr inbounds nuw i8, ptr %.0819.i192.prol, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.01618.i193.prol, i64 4 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol, !llvm.loop !8674

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader
  %.020.i191.unr = phi i64 [ %i.k, %.lr.ph.i190.preheader ], [ %i.gc, %.lr.ph.i190.prol ]
  %.0819.i192.unr = phi ptr [ %i.gb, %.lr.ph.i190.preheader ], [ %i.gg, %.lr.ph.i190.prol ]
  %.01618.i193.unr = phi ptr [ %i.b, %.lr.ph.i190.preheader ], [ %i.gh, %.lr.ph.i190.prol ]
  %i.gi = icmp ult i64 %i.k, 4
  br i1 %i.gi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %.020.i191 = phi i64 [ %i.gw, %.lr.ph.i190 ], [ %.020.i191.unr, %.lr.ph.i190.prol.loopexit ]
  %.0819.i192 = phi ptr [ %i.gz, %.lr.ph.i190 ], [ %.0819.i192.unr, %.lr.ph.i190.prol.loopexit ] ; 5 uses
  %.01618.i193 = phi ptr [ %i.ha, %.lr.ph.i190 ], [ %.01618.i193.unr, %.lr.ph.i190.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i193) ]
  %i.gj = load i32, ptr %.0819.i192, align 4, !tbaa !318
  store i32 %i.gj, ptr %.01618.i193, align 4, !tbaa !318
  %i.gk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gm = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 4
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !318
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !318
  %i.gp = add i32 %i.gk, 2
  store i32 %i.gp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gq = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 8
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !318
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !318
  %i.gt = add i32 %i.gk, 3
  store i32 %i.gt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gu = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 12
  %i.gw = add i64 %.020.i191, -4                  ; 2 uses
  %i.gx = load i32, ptr %i.gu, align 4, !tbaa !318
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !318
  %i.gy = add i32 %i.gk, 4
  store i32 %i.gy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gz = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 16
  %.not.i194.3 = icmp eq i64 %i.gw, 0
  br i1 %.not.i194.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196, label %.lr.ph.i190, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196: ; preds = %.lr.ph.i190, %.lr.ph.i190.prol.loopexit
  %.not8.i.i198 = icmp eq ptr %3, %i.gb
  br i1 %.not8.i.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196
  %i.hb = shl nsw i64 %1, 2
  %i.hc = shl i64 %i.a, 1
  %i.hd = ptrtoaddr ptr %2 to i64
  %i.he = shl i64 %4, 2
  %i.hf = add i64 %i.hb, %i.hc
  %i.hg = add i64 %i.hf, -4
  %i.hh = add i64 %i.hd, %i.f
  %i.hi = add i64 %i.hh, %i.he
  %i.hj = sub i64 %i.hg, %i.hi                    ; 2 uses
  %i.hk = lshr i64 %i.hj, 2
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.hj, 28
  %diff.check313 = icmp ugt i64 %i.j, -32
  %or.cond389 = or i1 %min.iters.check315, %diff.check313
  br i1 %or.cond389, label %.lr.ph.i.i199.preheader395, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.i.i199.preheader
  %n.vec317 = and i64 %i.hl, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec317, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.b, i64 %i.hm   ; 2 uses
  %i.ho = getelementptr i8, ptr %i.gb, i64 %i.hm
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 2 uses
  %i.hp = mul i64 %index319, -4                   ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.b, i64 %i.hp ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.gb, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep321, i64 -16
  %i.hr = getelementptr inbounds i8, ptr %next.gep321, i64 -32
  %wide.load322 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !318
  %wide.load323 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !318
  %i.hs = getelementptr inbounds i8, ptr %next.gep320, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep320, i64 -32
  store <4 x i32> %wide.load322, ptr %i.hs, align 4, !tbaa !318
  store <4 x i32> %wide.load323, ptr %i.ht, align 4, !tbaa !318
  %index.next324 = add nuw i64 %index319, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.hu, label %middle.block325, label %vector.body318, !llvm.loop !8675

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %i.hl, %n.vec317
  br i1 %cmp.n326, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i.i199.preheader395

.lr.ph.i.i199.preheader395:                       ; preds = %.lr.ph.i.i199.preheader, %middle.block325
  %.010.i.i200.ph = phi ptr [ %i.b, %.lr.ph.i.i199.preheader ], [ %i.hn, %middle.block325 ]
  %.079.i.i201.ph = phi ptr [ %i.gb, %.lr.ph.i.i199.preheader ], [ %i.ho, %middle.block325 ]
  br label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.preheader395, %.lr.ph.i.i199
  %.010.i.i200 = phi ptr [ %i.hw, %.lr.ph.i.i199 ], [ %.010.i.i200.ph, %.lr.ph.i.i199.preheader395 ]
  %.079.i.i201 = phi ptr [ %i.hv, %.lr.ph.i.i199 ], [ %.079.i.i201.ph, %.lr.ph.i.i199.preheader395 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i201, i64 -4 ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i200, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !318
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !318
  %.not.i.i202 = icmp eq ptr %3, %i.hv
  br i1 %.not.i.i202, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i.i199, !llvm.loop !8676

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203: ; preds = %.lr.ph.i.i199, %middle.block325, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196
  %i.hy = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196 ], [ %i.hn, %middle.block325 ], [ %i.hw, %.lr.ph.i.i199 ] ; 2 uses
  %i.hz = ptrtoaddr ptr %i.hy to i64
  %i.ia = sub i64 0, %4
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ia ; 9 uses
  %.not5.i204 = icmp eq i64 %4, 0
  br i1 %.not5.i204, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit210, label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203
  %.pre.i206 = load i32, ptr %5, align 4, !tbaa !318 ; 2 uses
  %min.iters.check330 = icmp ult i64 %4, 8
  br i1 %min.iters.check330, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph.i205
  %n.vec332 = and i64 %4, -8                      ; 3 uses
  %i.ic = and i64 %4, 7
  %i.id = shl i64 %n.vec332, 2
  %i.ie = getelementptr i8, ptr %i.ib, i64 %i.id
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i206, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next336, %vector.body333 ] ; 2 uses
  %i.if = shl i64 %index334, 2
  %next.gep335 = getelementptr i8, ptr %i.ib, i64 %i.if ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep335, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep335, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat, ptr %i.ig, align 4, !tbaa !318
  %index.next336 = add nuw i64 %index334, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next336, %n.vec332
  br i1 %i.ih, label %middle.block337, label %vector.body333, !llvm.loop !8677

middle.block337:                                  ; preds = %vector.body333
  %cmp.n338 = icmp eq i64 %4, %n.vec332
  br i1 %cmp.n338, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit210, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %.lr.ph.i205, %middle.block337
  %.07.i207.ph = phi i64 [ %4, %.lr.ph.i205 ], [ %i.ic, %middle.block337 ]
  %.046.i208.ph = phi ptr [ %i.ib, %.lr.ph.i205 ], [ %i.ie, %middle.block337 ]
  br label %scalar.ph329

scalar.ph329:                                     ; preds = %scalar.ph329.preheader, %scalar.ph329
  %.07.i207 = phi i64 [ %i.ii, %scalar.ph329 ], [ %.07.i207.ph, %scalar.ph329.preheader ]
  %.046.i208 = phi ptr [ %i.ij, %scalar.ph329 ], [ %.046.i208.ph, %scalar.ph329.preheader ] ; 2 uses
  %i.ii = add i64 %.07.i207, -1                   ; 2 uses
  store i32 %.pre.i206, ptr %.046.i208, align 4, !tbaa !318
  %i.ij = getelementptr inbounds nuw i8, ptr %.046.i208, i64 4
  %.not.i209 = icmp eq i64 %i.ii, 0
  br i1 %.not.i209, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit210, label %scalar.ph329, !llvm.loop !8678

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit210: ; preds = %scalar.ph329, %middle.block337, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203
  %.not.i211 = icmp eq ptr %3, %i.ib
  br i1 %.not.i211, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit210
  %.not8.i.i212 = icmp eq ptr %0, %3
  br i1 %.not8.i.i212, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %bb.i
  %i.ik = add i64 %i.f, -4
  %i.il = sub i64 %i.ik, %i.a                     ; 2 uses
  %i.im = lshr i64 %i.il, 2
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %i.il, 76
  br i1 %min.iters.check344, label %.lr.ph.i.i213.preheader393, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i.i213.preheader
  %i.io = shl i64 %4, 2
  %i.ip = add i64 %i.io, %i.f
  %i.iq = sub i64 %i.hz, %i.ip
  %diff.check342 = icmp ugt i64 %i.iq, -32
  br i1 %diff.check342, label %.lr.ph.i.i213.preheader393, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.in, 9223372036854775800  ; 3 uses
  %i.ir = mul i64 %n.vec346, -4                   ; 2 uses
  %i.is = getelementptr i8, ptr %i.ib, i64 %i.ir  ; 2 uses
  %i.it = getelementptr i8, ptr %3, i64 %i.ir
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.iu = mul i64 %index348, -4                   ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.ib, i64 %i.iu ; 2 uses
  %next.gep350 = getelementptr i8, ptr %3, i64 %i.iu ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %next.gep350, i64 -16
  %i.iw = getelementptr inbounds i8, ptr %next.gep350, i64 -32
  %wide.load351 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !318
  %wide.load352 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !318
  %i.ix = getelementptr inbounds i8, ptr %next.gep349, i64 -16
  %i.iy = getelementptr inbounds i8, ptr %next.gep349, i64 -32
  store <4 x i32> %wide.load351, ptr %i.ix, align 4, !tbaa !318
  store <4 x i32> %wide.load352, ptr %i.iy, align 4, !tbaa !318
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.iz, label %middle.block354, label %vector.body347, !llvm.loop !8679

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.in, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader393

.lr.ph.i.i213.preheader393:                       ; preds = %vector.memcheck341, %.lr.ph.i.i213.preheader, %middle.block354
  %.010.i.i214.ph = phi ptr [ %i.ib, %vector.memcheck341 ], [ %i.ib, %.lr.ph.i.i213.preheader ], [ %i.is, %middle.block354 ]
  %.079.i.i215.ph = phi ptr [ %3, %vector.memcheck341 ], [ %3, %.lr.ph.i.i213.preheader ], [ %i.it, %middle.block354 ]
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.preheader393, %.lr.ph.i.i213
  %.010.i.i214 = phi ptr [ %i.jb, %.lr.ph.i.i213 ], [ %.010.i.i214.ph, %.lr.ph.i.i213.preheader393 ]
  %.079.i.i215 = phi ptr [ %i.ja, %.lr.ph.i.i213 ], [ %.079.i.i215.ph, %.lr.ph.i.i213.preheader393 ]
  %i.ja = getelementptr inbounds i8, ptr %.079.i.i215, i64 -4 ; 3 uses
  %i.jb = getelementptr inbounds i8, ptr %.010.i.i214, i64 -4 ; 3 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !318
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !318
  %.not.i.i216 = icmp eq ptr %0, %i.ja
  br i1 %.not.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213, !llvm.loop !8680

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217: ; preds = %.lr.ph.i.i213, %middle.block354, %bb.i
  %i.jd = phi ptr [ %i.ib, %bb.i ], [ %i.is, %middle.block354 ], [ %i.jb, %.lr.ph.i.i213 ] ; 2 uses
  %.not3.i218 = icmp eq ptr %0, %i.jd
  br i1 %.not3.i218, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217, %.lr.ph.i219
  %storemerge4.i220 = phi ptr [ %i.jg, %.lr.ph.i219 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i220, align 4, !tbaa !318
  %i.je = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jg = getelementptr inbounds nuw i8, ptr %storemerge4.i220, i64 4 ; 2 uses
  %.not.i221 = icmp eq ptr %i.jg, %i.jd
  br i1 %.not.i221, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i219, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i219, %.lr.ph.i177, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit210, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit217, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj2EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = sub i64 %2, %4                           ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !490
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.b, 2305843009213693951
end_hunk_20
begin_hunk_21_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_:bb.a
bb.e:                                             ; preds = %bb.a
  %i.cy = icmp ugt i64 %i.m, %i.i
  br i1 %i.cy, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i152 = icmp eq ptr %3, %i.c
  br i1 %.not16.i152, label %.loopexit, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %bb.f
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.j
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %.lr.ph.i153
  %.018.i154 = phi ptr [ %i.dd, %.lr.ph.i153 ], [ %3, %.lr.ph.i153.preheader ] ; 2 uses
  %.01517.i155 = phi ptr [ %i.de, %.lr.ph.i153 ], [ %i.cz, %.lr.ph.i153.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i155) ]
  %i.da = load i32, ptr %.018.i154, align 4, !tbaa !318
  store i32 %i.da, ptr %.01517.i155, align 4, !tbaa !318
  %i.db = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.018.i154, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01517.i155, i64 4
  %.not.i156 = icmp eq ptr %i.dd, %i.c
  br i1 %.not.i156, label %.loopexit, label %.lr.ph.i153, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i153, %bb.f
  %.neg242 = sub i64 %i.m, %i.n
  %i.df = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.neg242 ; 7 uses
  %i.dg = load i32, ptr %5, align 4, !tbaa !318   ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !318
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i159 = icmp eq ptr %3, %i.df
  br i1 %.not.i159, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i160 = icmp eq ptr %0, %3
  br i1 %.not8.i.i160, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.g
  %i.dj = add i64 %i.g, -4
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.dk, 108
  br i1 %min.iters.check330, label %.lr.ph.i.i161.preheader345, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i161.preheader
  %i.dn = shl i64 %i.n, 2
  %i.do = add i64 %i.dn, %i.g
  %i.dp = add i64 %i.l, %i.a
  %i.dq = shl nsw i64 %1, 2
  %i.dr = add i64 %i.dp, %i.dq
  %i.ds = sub i64 %i.dr, %i.do
  %diff.check328 = icmp ugt i64 %i.ds, -32
  br i1 %diff.check328, label %.lr.ph.i.i161.preheader345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck327
  %n.vec332 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dt = mul i64 %n.vec332, -4                   ; 2 uses
  %i.du = getelementptr i8, ptr %i.df, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %3, i64 %i.dt
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.dw = mul i64 %index334, -4                   ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.df, i64 %i.dw ; 2 uses
  %next.gep336 = getelementptr i8, ptr %3, i64 %i.dw ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.dy = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  %wide.load337 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !318
  %wide.load338 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !318
  %i.dz = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %i.ea = getelementptr inbounds i8, ptr %next.gep335, i64 -32
  store <4 x i32> %wide.load337, ptr %i.dz, align 4, !tbaa !318
  store <4 x i32> %wide.load338, ptr %i.ea, align 4, !tbaa !318
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.eb, label %middle.block340, label %vector.body333, !llvm.loop !8709

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.dm, %n.vec332
  br i1 %cmp.n341, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader345

.lr.ph.i.i161.preheader345:                       ; preds = %vector.memcheck327, %.lr.ph.i.i161.preheader, %middle.block340
  %.010.i.i162.ph = phi ptr [ %i.df, %vector.memcheck327 ], [ %i.df, %.lr.ph.i.i161.preheader ], [ %i.du, %middle.block340 ]
  %.079.i.i163.ph = phi ptr [ %3, %vector.memcheck327 ], [ %3, %.lr.ph.i.i161.preheader ], [ %i.dv, %middle.block340 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader345, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ed, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader345 ]
  %.079.i.i163 = phi ptr [ %i.ec, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader345 ]
  %i.ec = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !318
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !318
  %.not.i.i164 = icmp eq ptr %0, %i.ec
  br i1 %.not.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161, !llvm.loop !8710

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165: ; preds = %.lr.ph.i.i161, %middle.block340, %bb.g
  %i.ef = phi ptr [ %i.df, %bb.g ], [ %i.du, %middle.block340 ], [ %i.ed, %.lr.ph.i.i161 ] ; 2 uses
  %.not3.i166 = icmp eq ptr %0, %i.ef
  br i1 %.not3.i166, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %.lr.ph.i167
  %storemerge4.i168 = phi ptr [ %i.ei, %.lr.ph.i167 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i168, align 4, !tbaa !318
  %i.eg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eh = add i32 %i.eg, -1
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = getelementptr inbounds nuw i8, ptr %storemerge4.i168, i64 4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ei, %i.ef
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.ej = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i179 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.h
  %xtraiter357 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180.prol
  %.020.i181.prol = phi i64 [ %i.ek, %.lr.ph.i180.prol ], [ %i.m, %.lr.ph.i180.preheader ]
  %.0819.i182.prol = phi ptr [ %i.eo, %.lr.ph.i180.prol ], [ %i.ej, %.lr.ph.i180.preheader ] ; 2 uses
  %.01618.i183.prol = phi ptr [ %i.ep, %.lr.ph.i180.prol ], [ %i.c, %.lr.ph.i180.preheader ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i180.prol ], [ 0, %.lr.ph.i180.preheader ]
  %i.ek = add i64 %.020.i181.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183.prol) ]
  %i.el = load i32, ptr %.0819.i182.prol, align 4, !tbaa !318
  store i32 %i.el, ptr %.01618.i183.prol, align 4, !tbaa !318
  %i.em = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eo = getelementptr inbounds nuw i8, ptr %.0819.i182.prol, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01618.i183.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol, !llvm.loop !8711

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader
  %.020.i181.unr = phi i64 [ %i.m, %.lr.ph.i180.preheader ], [ %i.ek, %.lr.ph.i180.prol ]
  %.0819.i182.unr = phi ptr [ %i.ej, %.lr.ph.i180.preheader ], [ %i.eo, %.lr.ph.i180.prol ]
  %.01618.i183.unr = phi ptr [ %i.c, %.lr.ph.i180.preheader ], [ %i.ep, %.lr.ph.i180.prol ]
  %i.eq = icmp ult i64 %i.m, 4
  br i1 %i.eq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.020.i181 = phi i64 [ %i.fe, %.lr.ph.i180 ], [ %.020.i181.unr, %.lr.ph.i180.prol.loopexit ]
  %.0819.i182 = phi ptr [ %i.fh, %.lr.ph.i180 ], [ %.0819.i182.unr, %.lr.ph.i180.prol.loopexit ] ; 5 uses
  %.01618.i183 = phi ptr [ %i.fi, %.lr.ph.i180 ], [ %.01618.i183.unr, %.lr.ph.i180.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183) ]
  %i.er = load i32, ptr %.0819.i182, align 4, !tbaa !318
  store i32 %i.er, ptr %.01618.i183, align 4, !tbaa !318
  %i.es = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 4
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !318
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !318
  %i.ex = add i32 %i.es, 2
  store i32 %i.ex, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ey = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !318
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !318
  %i.fb = add i32 %i.es, 3
  store i32 %i.fb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 12
  %i.fe = add i64 %.020.i181, -4                  ; 2 uses
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !318
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !318
  %i.fg = add i32 %i.es, 4
  store i32 %i.fg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fh = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 16
  %.not.i184.3 = icmp eq i64 %i.fe, 0
  br i1 %.not.i184.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186: ; preds = %.lr.ph.i180, %.lr.ph.i180.prol.loopexit
  %.not8.i.i188 = icmp eq ptr %3, %i.ej
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.fj = shl nsw i64 %1, 2
  %i.fk = shl i64 %i.a, 1
  %i.fl = ptrtoaddr ptr %2 to i64
  %i.fm = shl i64 %4, 2
  %i.fn = add i64 %i.fj, %i.fk
  %i.fo = add i64 %i.fn, -4
  %i.fp = add i64 %i.fl, %i.g
  %i.fq = add i64 %i.fp, %i.fm
  %i.fr = sub i64 %i.fo, %i.fq                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.fr, 28
  %diff.check294 = icmp ugt i64 %i.l, -32
  %or.cond344 = or i1 %min.iters.check296, %diff.check294
  br i1 %or.cond344, label %.lr.ph.i.i189.preheader349, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i189.preheader
  %n.vec298 = and i64 %i.ft, 9223372036854775800  ; 3 uses
  %i.fu = mul i64 %n.vec298, -4                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.c, i64 %i.fu   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ej, i64 %i.fu
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.fx = mul i64 %index300, -4                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.c, i64 %i.fx ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.ej, i64 %i.fx ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep302, i64 -16
  %i.fz = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !318
  %wide.load304 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !318
  %i.ga = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.gb = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i32> %wide.load303, ptr %i.ga, align 4, !tbaa !318
  store <4 x i32> %wide.load304, ptr %i.gb, align 4, !tbaa !318
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.gc, label %middle.block306, label %vector.body299, !llvm.loop !8712

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ft, %n.vec298
  br i1 %cmp.n307, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader349

.lr.ph.i.i189.preheader349:                       ; preds = %.lr.ph.i.i189.preheader, %middle.block306
  %.010.i.i190.ph = phi ptr [ %i.c, %.lr.ph.i.i189.preheader ], [ %i.fv, %middle.block306 ]
  %.079.i.i191.ph = phi ptr [ %i.ej, %.lr.ph.i.i189.preheader ], [ %i.fw, %middle.block306 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader349, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.ge, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader349 ]
  %.079.i.i191 = phi ptr [ %i.gd, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader349 ]
  %i.gd = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 3 uses
  %i.ge = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !318
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !318
  %.not.i.i192 = icmp eq ptr %3, %i.gd
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !8713

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block306, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.gg = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186 ], [ %i.fv, %middle.block306 ], [ %i.ge, %.lr.ph.i.i189 ] ; 2 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.b ; 7 uses
  %i.gj = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !318
  %.not.i194 = icmp eq ptr %3, %i.gi
  br i1 %.not.i194, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193
  %.not8.i.i195 = icmp eq ptr %0, %3
  br i1 %.not8.i.i195, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196.preheader

.lr.ph.i.i196.preheader:                          ; preds = %bb.i
  %i.gk = add i64 %i.g, -4
  %i.gl = sub i64 %i.gk, %i.a                     ; 2 uses
  %i.gm = lshr i64 %i.gl, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.gl, 76
  br i1 %min.iters.check313, label %.lr.ph.i.i196.preheader347, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.i.i196.preheader
  %i.go = shl i64 %4, 2
  %i.gp = add i64 %i.go, %i.g
  %i.gq = sub i64 %i.gh, %i.gp
  %diff.check311 = icmp ugt i64 %i.gq, -32
  br i1 %diff.check311, label %.lr.ph.i.i196.preheader347, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck310
  %n.vec315 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.gr = mul i64 %n.vec315, -4                   ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gi, i64 %i.gr  ; 2 uses
  %i.gt = getelementptr i8, ptr %3, i64 %i.gr
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.gu = mul i64 %index317, -4                   ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.gi, i64 %i.gu ; 2 uses
  %next.gep319 = getelementptr i8, ptr %3, i64 %i.gu ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.gw = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  %wide.load320 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !318
  %wide.load321 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !318
  %i.gx = getelementptr inbounds i8, ptr %next.gep318, i64 -16
  %i.gy = getelementptr inbounds i8, ptr %next.gep318, i64 -32
  store <4 x i32> %wide.load320, ptr %i.gx, align 4, !tbaa !318
  store <4 x i32> %wide.load321, ptr %i.gy, align 4, !tbaa !318
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.gz, label %middle.block323, label %vector.body316, !llvm.loop !8714

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.gn, %n.vec315
  br i1 %cmp.n324, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196.preheader347

.lr.ph.i.i196.preheader347:                       ; preds = %vector.memcheck310, %.lr.ph.i.i196.preheader, %middle.block323
  %.010.i.i197.ph = phi ptr [ %i.gi, %vector.memcheck310 ], [ %i.gi, %.lr.ph.i.i196.preheader ], [ %i.gs, %middle.block323 ]
  %.079.i.i198.ph = phi ptr [ %3, %vector.memcheck310 ], [ %3, %.lr.ph.i.i196.preheader ], [ %i.gt, %middle.block323 ]
  br label %.lr.ph.i.i196

.lr.ph.i.i196:                                    ; preds = %.lr.ph.i.i196.preheader347, %.lr.ph.i.i196
  %.010.i.i197 = phi ptr [ %i.hb, %.lr.ph.i.i196 ], [ %.010.i.i197.ph, %.lr.ph.i.i196.preheader347 ]
  %.079.i.i198 = phi ptr [ %i.ha, %.lr.ph.i.i196 ], [ %.079.i.i198.ph, %.lr.ph.i.i196.preheader347 ]
  %i.ha = getelementptr inbounds i8, ptr %.079.i.i198, i64 -4 ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %.010.i.i197, i64 -4 ; 3 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !318
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !318
  %.not.i.i199 = icmp eq ptr %0, %i.ha
  br i1 %.not.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196, !llvm.loop !8715

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200: ; preds = %.lr.ph.i.i196, %middle.block323, %bb.i
  %i.hd = phi ptr [ %i.gi, %bb.i ], [ %i.gs, %middle.block323 ], [ %i.hb, %.lr.ph.i.i196 ] ; 2 uses
  %.not3.i201 = icmp eq ptr %0, %i.hd
  br i1 %.not3.i201, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %.lr.ph.i202
  %storemerge4.i203 = phi ptr [ %i.hg, %.lr.ph.i202 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i203, align 4, !tbaa !318
  %i.he = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %storemerge4.i203, i64 4 ; 2 uses
  %.not.i204 = icmp eq ptr %i.hg, %i.hd
  br i1 %.not.i204, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i202, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i136, %.lr.ph.i202, %.lr.ph.i167, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignINS2_22input_iterator_wrapperINS0_12vec_iteratorIPS3_Lb0EEEEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENSE_4and_INSE_12is_differentINSE_17integral_constantIjLj2EEENSK_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISD_EENSE_5bool_ILb1EEESS_EENSR_ILb0EEESU_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !488, !noalias !8729 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !495, !noalias !8730 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !336    ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !336    ; 2 uses
  %i.g = icmp ne ptr %i.e, %i.f
  %i.h = icmp ne i64 %i.c, 0
  %or.cond12 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond12, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.07.013 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.sroa.07.013, align 4, !tbaa !318
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !336
  %i.m = load ptr, ptr %2, align 8, !tbaa !336    ; 2 uses
  %i.n = icmp ne ptr %i.l, %i.m
  %i.o = icmp ne ptr %i.k, %i.d
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !8720

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %.lcssa11 = phi ptr [ %i.e, %bb.a ], [ %i.l, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.p = icmp eq ptr %.lcssa11, %.lcssa
  br i1 %i.p, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %.critedge
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = ptrtoint ptr %.sroa.07.0.lcssa to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 6 uses
  %.not3.i.i = icmp eq ptr %i.d, %.sroa.07.0.lcssa
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.preheader.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.w = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !318
end_hunk_21
begin_hunk_22_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRS4_EEEEEvT0_mSB_SB_mT1_RT_:bb.a
bb.e:                                             ; preds = %bb.a
  %i.cy = icmp ugt i64 %i.m, %i.i
  br i1 %i.cy, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i152 = icmp eq ptr %3, %i.c
  br i1 %.not16.i152, label %.loopexit, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %bb.f
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.j
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %.lr.ph.i153
  %.018.i154 = phi ptr [ %i.dd, %.lr.ph.i153 ], [ %3, %.lr.ph.i153.preheader ] ; 2 uses
  %.01517.i155 = phi ptr [ %i.de, %.lr.ph.i153 ], [ %i.cz, %.lr.ph.i153.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i155) ]
  %i.da = load i32, ptr %.018.i154, align 4, !tbaa !318
  store i32 %i.da, ptr %.01517.i155, align 4, !tbaa !318
  %i.db = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.018.i154, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01517.i155, i64 4
  %.not.i156 = icmp eq ptr %i.dd, %i.c
  br i1 %.not.i156, label %.loopexit, label %.lr.ph.i153, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i153, %bb.f
  %.neg242 = sub i64 %i.m, %i.n
  %i.df = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.neg242 ; 7 uses
  %i.dg = load i32, ptr %5, align 4, !tbaa !318   ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !318
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i159 = icmp eq ptr %3, %i.df
  br i1 %.not.i159, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i160 = icmp eq ptr %0, %3
  br i1 %.not8.i.i160, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.g
  %i.dj = add i64 %i.g, -4
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.dk, 108
  br i1 %min.iters.check330, label %.lr.ph.i.i161.preheader345, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i161.preheader
  %i.dn = shl i64 %i.n, 2
  %i.do = add i64 %i.dn, %i.g
  %i.dp = add i64 %i.l, %i.a
  %i.dq = shl nsw i64 %1, 2
  %i.dr = add i64 %i.dp, %i.dq
  %i.ds = sub i64 %i.dr, %i.do
  %diff.check328 = icmp ugt i64 %i.ds, -32
  br i1 %diff.check328, label %.lr.ph.i.i161.preheader345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck327
  %n.vec332 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dt = mul i64 %n.vec332, -4                   ; 2 uses
  %i.du = getelementptr i8, ptr %i.df, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %3, i64 %i.dt
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.dw = mul i64 %index334, -4                   ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.df, i64 %i.dw ; 2 uses
  %next.gep336 = getelementptr i8, ptr %3, i64 %i.dw ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.dy = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  %wide.load337 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !318
  %wide.load338 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !318
  %i.dz = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %i.ea = getelementptr inbounds i8, ptr %next.gep335, i64 -32
  store <4 x i32> %wide.load337, ptr %i.dz, align 4, !tbaa !318
  store <4 x i32> %wide.load338, ptr %i.ea, align 4, !tbaa !318
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.eb, label %middle.block340, label %vector.body333, !llvm.loop !8751

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.dm, %n.vec332
  br i1 %cmp.n341, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader345

.lr.ph.i.i161.preheader345:                       ; preds = %vector.memcheck327, %.lr.ph.i.i161.preheader, %middle.block340
  %.010.i.i162.ph = phi ptr [ %i.df, %vector.memcheck327 ], [ %i.df, %.lr.ph.i.i161.preheader ], [ %i.du, %middle.block340 ]
  %.079.i.i163.ph = phi ptr [ %3, %vector.memcheck327 ], [ %3, %.lr.ph.i.i161.preheader ], [ %i.dv, %middle.block340 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader345, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ed, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader345 ]
  %.079.i.i163 = phi ptr [ %i.ec, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader345 ]
  %i.ec = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !318
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !318
  %.not.i.i164 = icmp eq ptr %0, %i.ec
  br i1 %.not.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161, !llvm.loop !8752

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165: ; preds = %.lr.ph.i.i161, %middle.block340, %bb.g
  %i.ef = phi ptr [ %i.df, %bb.g ], [ %i.du, %middle.block340 ], [ %i.ed, %.lr.ph.i.i161 ] ; 2 uses
  %.not3.i166 = icmp eq ptr %0, %i.ef
  br i1 %.not3.i166, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %.lr.ph.i167
  %storemerge4.i168 = phi ptr [ %i.ei, %.lr.ph.i167 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i168, align 4, !tbaa !318
  %i.eg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eh = add i32 %i.eg, -1
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = getelementptr inbounds nuw i8, ptr %storemerge4.i168, i64 4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ei, %i.ef
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.ej = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i179 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.h
  %xtraiter357 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180.prol
  %.020.i181.prol = phi i64 [ %i.ek, %.lr.ph.i180.prol ], [ %i.m, %.lr.ph.i180.preheader ]
  %.0819.i182.prol = phi ptr [ %i.eo, %.lr.ph.i180.prol ], [ %i.ej, %.lr.ph.i180.preheader ] ; 2 uses
  %.01618.i183.prol = phi ptr [ %i.ep, %.lr.ph.i180.prol ], [ %i.c, %.lr.ph.i180.preheader ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i180.prol ], [ 0, %.lr.ph.i180.preheader ]
  %i.ek = add i64 %.020.i181.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183.prol) ]
  %i.el = load i32, ptr %.0819.i182.prol, align 4, !tbaa !318
  store i32 %i.el, ptr %.01618.i183.prol, align 4, !tbaa !318
  %i.em = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eo = getelementptr inbounds nuw i8, ptr %.0819.i182.prol, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01618.i183.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol, !llvm.loop !8753

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader
  %.020.i181.unr = phi i64 [ %i.m, %.lr.ph.i180.preheader ], [ %i.ek, %.lr.ph.i180.prol ]
  %.0819.i182.unr = phi ptr [ %i.ej, %.lr.ph.i180.preheader ], [ %i.eo, %.lr.ph.i180.prol ]
  %.01618.i183.unr = phi ptr [ %i.c, %.lr.ph.i180.preheader ], [ %i.ep, %.lr.ph.i180.prol ]
  %i.eq = icmp ult i64 %i.m, 4
  br i1 %i.eq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.020.i181 = phi i64 [ %i.fe, %.lr.ph.i180 ], [ %.020.i181.unr, %.lr.ph.i180.prol.loopexit ]
  %.0819.i182 = phi ptr [ %i.fh, %.lr.ph.i180 ], [ %.0819.i182.unr, %.lr.ph.i180.prol.loopexit ] ; 5 uses
  %.01618.i183 = phi ptr [ %i.fi, %.lr.ph.i180 ], [ %.01618.i183.unr, %.lr.ph.i180.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183) ]
  %i.er = load i32, ptr %.0819.i182, align 4, !tbaa !318
  store i32 %i.er, ptr %.01618.i183, align 4, !tbaa !318
  %i.es = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 4
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !318
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !318
  %i.ex = add i32 %i.es, 2
  store i32 %i.ex, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ey = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !318
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !318
  %i.fb = add i32 %i.es, 3
  store i32 %i.fb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 12
  %i.fe = add i64 %.020.i181, -4                  ; 2 uses
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !318
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !318
  %i.fg = add i32 %i.es, 4
  store i32 %i.fg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fh = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 16
  %.not.i184.3 = icmp eq i64 %i.fe, 0
  br i1 %.not.i184.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186: ; preds = %.lr.ph.i180, %.lr.ph.i180.prol.loopexit
  %.not8.i.i188 = icmp eq ptr %3, %i.ej
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.fj = shl nsw i64 %1, 2
  %i.fk = shl i64 %i.a, 1
  %i.fl = ptrtoaddr ptr %2 to i64
  %i.fm = shl i64 %4, 2
  %i.fn = add i64 %i.fj, %i.fk
  %i.fo = add i64 %i.fn, -4
  %i.fp = add i64 %i.fl, %i.g
  %i.fq = add i64 %i.fp, %i.fm
  %i.fr = sub i64 %i.fo, %i.fq                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.fr, 28
  %diff.check294 = icmp ugt i64 %i.l, -32
  %or.cond344 = or i1 %min.iters.check296, %diff.check294
  br i1 %or.cond344, label %.lr.ph.i.i189.preheader349, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i189.preheader
  %n.vec298 = and i64 %i.ft, 9223372036854775800  ; 3 uses
  %i.fu = mul i64 %n.vec298, -4                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.c, i64 %i.fu   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.ej, i64 %i.fu
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.fx = mul i64 %index300, -4                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.c, i64 %i.fx ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.ej, i64 %i.fx ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %next.gep302, i64 -16
  %i.fz = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !318
  %wide.load304 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !318
  %i.ga = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.gb = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i32> %wide.load303, ptr %i.ga, align 4, !tbaa !318
  store <4 x i32> %wide.load304, ptr %i.gb, align 4, !tbaa !318
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.gc, label %middle.block306, label %vector.body299, !llvm.loop !8754

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.ft, %n.vec298
  br i1 %cmp.n307, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader349

.lr.ph.i.i189.preheader349:                       ; preds = %.lr.ph.i.i189.preheader, %middle.block306
  %.010.i.i190.ph = phi ptr [ %i.c, %.lr.ph.i.i189.preheader ], [ %i.fv, %middle.block306 ]
  %.079.i.i191.ph = phi ptr [ %i.ej, %.lr.ph.i.i189.preheader ], [ %i.fw, %middle.block306 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader349, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.ge, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader349 ]
  %.079.i.i191 = phi ptr [ %i.gd, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader349 ]
  %i.gd = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 3 uses
  %i.ge = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !318
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !318
  %.not.i.i192 = icmp eq ptr %3, %i.gd
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !8755

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block306, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.gg = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186 ], [ %i.fv, %middle.block306 ], [ %i.ge, %.lr.ph.i.i189 ] ; 2 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.b ; 7 uses
  %i.gj = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !318
  %.not.i194 = icmp eq ptr %3, %i.gi
  br i1 %.not.i194, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193
  %.not8.i.i195 = icmp eq ptr %0, %3
  br i1 %.not8.i.i195, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196.preheader

.lr.ph.i.i196.preheader:                          ; preds = %bb.i
  %i.gk = add i64 %i.g, -4
  %i.gl = sub i64 %i.gk, %i.a                     ; 2 uses
  %i.gm = lshr i64 %i.gl, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %i.gl, 76
  br i1 %min.iters.check313, label %.lr.ph.i.i196.preheader347, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.i.i196.preheader
  %i.go = shl i64 %4, 2
  %i.gp = add i64 %i.go, %i.g
  %i.gq = sub i64 %i.gh, %i.gp
  %diff.check311 = icmp ugt i64 %i.gq, -32
  br i1 %diff.check311, label %.lr.ph.i.i196.preheader347, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck310
  %n.vec315 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.gr = mul i64 %n.vec315, -4                   ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gi, i64 %i.gr  ; 2 uses
  %i.gt = getelementptr i8, ptr %3, i64 %i.gr
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.gu = mul i64 %index317, -4                   ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.gi, i64 %i.gu ; 2 uses
  %next.gep319 = getelementptr i8, ptr %3, i64 %i.gu ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.gw = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  %wide.load320 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !318
  %wide.load321 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !318
  %i.gx = getelementptr inbounds i8, ptr %next.gep318, i64 -16
  %i.gy = getelementptr inbounds i8, ptr %next.gep318, i64 -32
  store <4 x i32> %wide.load320, ptr %i.gx, align 4, !tbaa !318
  store <4 x i32> %wide.load321, ptr %i.gy, align 4, !tbaa !318
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.gz, label %middle.block323, label %vector.body316, !llvm.loop !8756

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.gn, %n.vec315
  br i1 %cmp.n324, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196.preheader347

.lr.ph.i.i196.preheader347:                       ; preds = %vector.memcheck310, %.lr.ph.i.i196.preheader, %middle.block323
  %.010.i.i197.ph = phi ptr [ %i.gi, %vector.memcheck310 ], [ %i.gi, %.lr.ph.i.i196.preheader ], [ %i.gs, %middle.block323 ]
  %.079.i.i198.ph = phi ptr [ %3, %vector.memcheck310 ], [ %3, %.lr.ph.i.i196.preheader ], [ %i.gt, %middle.block323 ]
  br label %.lr.ph.i.i196

.lr.ph.i.i196:                                    ; preds = %.lr.ph.i.i196.preheader347, %.lr.ph.i.i196
  %.010.i.i197 = phi ptr [ %i.hb, %.lr.ph.i.i196 ], [ %.010.i.i197.ph, %.lr.ph.i.i196.preheader347 ]
  %.079.i.i198 = phi ptr [ %i.ha, %.lr.ph.i.i196 ], [ %.079.i.i198.ph, %.lr.ph.i.i196.preheader347 ]
  %i.ha = getelementptr inbounds i8, ptr %.079.i.i198, i64 -4 ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %.010.i.i197, i64 -4 ; 3 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !318
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !318
  %.not.i.i199 = icmp eq ptr %0, %i.ha
  br i1 %.not.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, label %.lr.ph.i.i196, !llvm.loop !8757

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200: ; preds = %.lr.ph.i.i196, %middle.block323, %bb.i
  %i.hd = phi ptr [ %i.gi, %bb.i ], [ %i.gs, %middle.block323 ], [ %i.hb, %.lr.ph.i.i196 ] ; 2 uses
  %.not3.i201 = icmp eq ptr %0, %i.hd
  br i1 %.not3.i201, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %.lr.ph.i202
  %storemerge4.i203 = phi ptr [ %i.hg, %.lr.ph.i202 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i203, align 4, !tbaa !318
  %i.he = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %storemerge4.i203, i64 4 ; 2 uses
  %.not.i204 = icmp eq ptr %i.hg, %i.hd
  br i1 %.not.i204, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i202, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i136, %.lr.ph.i202, %.lr.ph.i167, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit200, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6assignIPS3_EEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj2EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !490
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.i, label %_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread, label %_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i

_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !488    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 3, i64 noundef 4, i64 noundef 4, i64 noundef %i.d, i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, i32 } %i.k, 0        ; 5 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !261
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit

_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread: ; preds = %bb.b, %_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i
  call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit: ; preds = %_ZN5boost9container9allocatorINS0_4test12copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i
  %i.o = extractvalue { ptr, i32 } %i.k, 1
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  %.not.not35 = icmp eq ptr %i.j, null
  %.not.not = or i1 %.not.not35, %.not.i.i.i.i
  br i1 %.not.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS4_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !488    ; 4 uses
  %.not17 = icmp eq ptr %i.p, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !495  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.r, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter99 = and i64 %i.r, 3                   ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ] ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fe = add nsw i64 %i.dv, -1
  br label %.lr.ph.i.i169.prol.loopexit

.lr.ph.i.i169.prol.loopexit:                      ; preds = %.lr.ph.i.i169.prol, %.lr.ph.i.i169.preheader
  %.018.i.i170.unr = phi i64 [ %i.dv, %.lr.ph.i.i169.preheader ], [ %i.fe, %.lr.ph.i.i169.prol ]
  %.01417.i.i171.unr = phi ptr [ %i.b, %.lr.ph.i.i169.preheader ], [ %i.fd, %.lr.ph.i.i169.prol ]
  %.sroa.0.016.i.i172.unr = phi ptr [ %.sroa.0.016.i.i172.ph, %.lr.ph.i.i169.preheader ], [ %i.fc, %.lr.ph.i.i169.prol ]
  %i.ff = icmp eq i64 %i.k, %.neg403
  br i1 %i.ff, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %.018.i.i170 = phi i64 [ %i.fr, %.lr.ph.i.i169 ], [ %.018.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ]
  %.01417.i.i171 = phi ptr [ %i.fq, %.lr.ph.i.i169 ], [ %.01417.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i172 = phi ptr [ %i.fp, %.lr.ph.i.i169 ], [ %.sroa.0.016.i.i172.unr, %.lr.ph.i.i169.prol.loopexit ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i171) ]
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !247
  store i32 %i.fh, ptr %.01417.i.i171, align 4, !tbaa !318
  %i.fi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fk = load ptr, ptr %.sroa.0.016.i.i172, align 8, !tbaa !412 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !247
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !318
  %i.fo = add i32 %i.fi, 2
  store i32 %i.fo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !412
  %i.fq = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 8
  %i.fr = add i64 %.018.i.i170, -2                ; 2 uses
  %.not.i.i173.1 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i173.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175, label %.lr.ph.i.i169, !llvm.loop !161

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175: ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.prol.loopexit
  %.not.i176 = icmp eq ptr %3, %i.dy
  br i1 %.not.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175
  %.not8.i.i177 = icmp eq ptr %0, %3
  br i1 %.not8.i.i177, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.g
  %i.fs = add i64 %i.f, -4
  %i.ft = sub i64 %i.fs, %i.a                     ; 2 uses
  %i.fu = lshr i64 %i.ft, 2
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check359 = icmp ult i64 %i.ft, 92
  br i1 %min.iters.check359, label %.lr.ph.i.i178.preheader375, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph.i.i178.preheader
  %i.fw = shl nsw i64 %1, 2
  %i.fx = add i64 %i.fw, %i.a
  %i.fy = sub i64 %i.f, %i.fx
  %.neg = shl i64 %i.dw, 2
  %i.fz = add i64 %.neg, %i.fy
  %i.ga = add i64 %i.fz, -1
  %diff.check357 = icmp ult i64 %i.ga, 31
  br i1 %diff.check357, label %.lr.ph.i.i178.preheader375, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck356
  %n.vec361 = and i64 %i.fv, 9223372036854775800  ; 3 uses
  %i.gb = mul i64 %n.vec361, -4                   ; 2 uses
  %i.gc = getelementptr i8, ptr %i.dy, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %3, i64 %i.gb
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 2 uses
  %i.ge = mul i64 %index363, -4                   ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.dy, i64 %i.ge ; 2 uses
  %next.gep365 = getelementptr i8, ptr %3, i64 %i.ge ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %next.gep365, i64 -16
  %i.gg = getelementptr inbounds i8, ptr %next.gep365, i64 -32
  %wide.load366 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !318
  %wide.load367 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !318
  %i.gh = getelementptr inbounds i8, ptr %next.gep364, i64 -16
  %i.gi = getelementptr inbounds i8, ptr %next.gep364, i64 -32
  store <4 x i32> %wide.load366, ptr %i.gh, align 4, !tbaa !318
  store <4 x i32> %wide.load367, ptr %i.gi, align 4, !tbaa !318
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.gj, label %middle.block369, label %vector.body362, !llvm.loop !8804

middle.block369:                                  ; preds = %vector.body362
  %cmp.n370 = icmp eq i64 %i.fv, %n.vec361
  br i1 %cmp.n370, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader375

.lr.ph.i.i178.preheader375:                       ; preds = %vector.memcheck356, %.lr.ph.i.i178.preheader, %middle.block369
  %.010.i.i179.ph = phi ptr [ %i.dy, %vector.memcheck356 ], [ %i.dy, %.lr.ph.i.i178.preheader ], [ %i.gc, %middle.block369 ]
  %.079.i.i180.ph = phi ptr [ %3, %vector.memcheck356 ], [ %3, %.lr.ph.i.i178.preheader ], [ %i.gd, %middle.block369 ]
  br label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.preheader375, %.lr.ph.i.i178
  %.010.i.i179 = phi ptr [ %i.gl, %.lr.ph.i.i178 ], [ %.010.i.i179.ph, %.lr.ph.i.i178.preheader375 ]
  %.079.i.i180 = phi ptr [ %i.gk, %.lr.ph.i.i178 ], [ %.079.i.i180.ph, %.lr.ph.i.i178.preheader375 ]
  %i.gk = getelementptr inbounds i8, ptr %.079.i.i180, i64 -4 ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %.010.i.i179, i64 -4 ; 3 uses
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !318
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !318
  %.not.i.i181 = icmp eq ptr %0, %i.gk
  br i1 %.not.i.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178, !llvm.loop !8805

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182: ; preds = %.lr.ph.i.i178, %middle.block369, %bb.g
  %i.gn = phi ptr [ %i.dy, %bb.g ], [ %i.gc, %middle.block369 ], [ %i.gl, %.lr.ph.i.i178 ] ; 2 uses
  %.not3.i183 = icmp eq ptr %0, %i.gn
  br i1 %.not3.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %.lr.ph.i184
  %storemerge4.i185 = phi ptr [ %i.gq, %.lr.ph.i184 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i185, align 4, !tbaa !318
  %i.go = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gp = add i32 %i.go, -1
  store i32 %i.gp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gq = getelementptr inbounds nuw i8, ptr %storemerge4.i185, i64 4 ; 2 uses
  %.not.i186 = icmp eq ptr %i.gq, %i.gn
  br i1 %.not.i186, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.j
  %i.gr = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 6 uses
  %.not17.i196 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i196, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %bb.h
  %xtraiter390 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %.020.i198.prol = phi i64 [ %i.gs, %.lr.ph.i197.prol ], [ %i.k, %.lr.ph.i197.preheader ]
  %.0819.i199.prol = phi ptr [ %i.gw, %.lr.ph.i197.prol ], [ %i.gr, %.lr.ph.i197.preheader ] ; 2 uses
  %.01618.i200.prol = phi ptr [ %i.gx, %.lr.ph.i197.prol ], [ %i.b, %.lr.ph.i197.preheader ] ; 3 uses
  %prol.iter392 = phi i64 [ %prol.iter392.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %i.gs = add i64 %.020.i198.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200.prol) ]
  %i.gt = load i32, ptr %.0819.i199.prol, align 4, !tbaa !318
  store i32 %i.gt, ptr %.01618.i200.prol, align 4, !tbaa !318
  %i.gu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gw = getelementptr inbounds nuw i8, ptr %.0819.i199.prol, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i200.prol, i64 4 ; 2 uses
  %prol.iter392.next = add i64 %prol.iter392, 1   ; 2 uses
  %prol.iter392.cmp.not = icmp eq i64 %prol.iter392.next, %xtraiter390
  br i1 %prol.iter392.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !8806

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %.020.i198.unr = phi i64 [ %i.k, %.lr.ph.i197.preheader ], [ %i.gs, %.lr.ph.i197.prol ]
  %.0819.i199.unr = phi ptr [ %i.gr, %.lr.ph.i197.preheader ], [ %i.gw, %.lr.ph.i197.prol ]
  %.01618.i200.unr = phi ptr [ %i.b, %.lr.ph.i197.preheader ], [ %i.gx, %.lr.ph.i197.prol ]
  %i.gy = icmp ult i64 %i.k, 4
  br i1 %i.gy, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %.020.i198 = phi i64 [ %i.hm, %.lr.ph.i197 ], [ %.020.i198.unr, %.lr.ph.i197.prol.loopexit ]
  %.0819.i199 = phi ptr [ %i.hp, %.lr.ph.i197 ], [ %.0819.i199.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %.01618.i200 = phi ptr [ %i.hq, %.lr.ph.i197 ], [ %.01618.i200.unr, %.lr.ph.i197.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200) ]
  %i.gz = load i32, ptr %.0819.i199, align 4, !tbaa !318
  store i32 %i.gz, ptr %.01618.i200, align 4, !tbaa !318
  %i.ha = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hc = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 4
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !318
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !318
  %i.hf = add i32 %i.ha, 2
  store i32 %i.hf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 8
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !318
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !318
  %i.hj = add i32 %i.ha, 3
  store i32 %i.hj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hk = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 12
  %i.hl = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 12
  %i.hm = add i64 %.020.i198, -4                  ; 2 uses
  %i.hn = load i32, ptr %i.hk, align 4, !tbaa !318
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !318
  %i.ho = add i32 %i.ha, 4
  store i32 %i.ho, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hp = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 16
  %.not.i201.3 = icmp eq i64 %i.hm, 0
  br i1 %.not.i201.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203: ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %.not8.i.i205 = icmp eq ptr %3, %i.gr
  br i1 %.not8.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader

.lr.ph.i.i206.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.hr = shl nsw i64 %1, 2
  %i.hs = shl i64 %i.a, 1
  %i.ht = ptrtoaddr ptr %2 to i64
  %i.hu = shl i64 %4, 2
  %i.hv = add i64 %i.hr, %i.hs
  %i.hw = add i64 %i.hv, -4
  %i.hx = add i64 %i.ht, %i.f
  %i.hy = add i64 %i.hx, %i.hu
  %i.hz = sub i64 %i.hw, %i.hy                    ; 2 uses
  %i.ia = lshr i64 %i.hz, 2
  %i.ib = add nuw nsw i64 %i.ia, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.hz, 28
  %diff.check323 = icmp ugt i64 %i.j, -32
  %or.cond373 = or i1 %min.iters.check325, %diff.check323
  br i1 %or.cond373, label %.lr.ph.i.i206.preheader380, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i206.preheader
  %n.vec327 = and i64 %i.ib, 9223372036854775800  ; 3 uses
  %i.ic = mul i64 %n.vec327, -4                   ; 2 uses
  %i.id = getelementptr i8, ptr %i.b, i64 %i.ic   ; 2 uses
  %i.ie = getelementptr i8, ptr %i.gr, i64 %i.ic
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.if = mul i64 %index329, -4                   ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.b, i64 %i.if ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gr, i64 %i.if ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ih = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  %wide.load332 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !318
  %wide.load333 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !318
  %i.ii = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.ij = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  store <4 x i32> %wide.load332, ptr %i.ii, align 4, !tbaa !318
  store <4 x i32> %wide.load333, ptr %i.ij, align 4, !tbaa !318
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.ik, label %middle.block335, label %vector.body328, !llvm.loop !8807

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.ib, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader380

.lr.ph.i.i206.preheader380:                       ; preds = %.lr.ph.i.i206.preheader, %middle.block335
  %.010.i.i207.ph = phi ptr [ %i.b, %.lr.ph.i.i206.preheader ], [ %i.id, %middle.block335 ]
  %.079.i.i208.ph = phi ptr [ %i.gr, %.lr.ph.i.i206.preheader ], [ %i.ie, %middle.block335 ]
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206.preheader380, %.lr.ph.i.i206
  %.010.i.i207 = phi ptr [ %i.im, %.lr.ph.i.i206 ], [ %.010.i.i207.ph, %.lr.ph.i.i206.preheader380 ]
  %.079.i.i208 = phi ptr [ %i.il, %.lr.ph.i.i206 ], [ %.079.i.i208.ph, %.lr.ph.i.i206.preheader380 ]
  %i.il = getelementptr inbounds i8, ptr %.079.i.i208, i64 -4 ; 3 uses
  %i.im = getelementptr inbounds i8, ptr %.010.i.i207, i64 -4 ; 3 uses
  %i.in = load i32, ptr %i.il, align 4, !tbaa !318
  store i32 %i.in, ptr %i.im, align 4, !tbaa !318
  %.not.i.i209 = icmp eq ptr %3, %i.il
  br i1 %.not.i.i209, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206, !llvm.loop !8808

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210: ; preds = %.lr.ph.i.i206, %middle.block335, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.io = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203 ], [ %i.id, %middle.block335 ], [ %i.im, %.lr.ph.i.i206 ] ; 2 uses
  %i.ip = ptrtoaddr ptr %i.io to i64
  %i.iq = sub i64 0, %4
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.iq ; 8 uses
  %.not6.i.i212 = icmp eq i64 %4, 0
  br i1 %.not6.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210
  %xtraiter393 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader, %.lr.ph.i.i213.prol
  %.09.i.i214.prol = phi i64 [ %i.is, %.lr.ph.i.i213.prol ], [ %4, %.lr.ph.i.i213.preheader ]
  %.048.i.i215.prol = phi ptr [ %i.iw, %.lr.ph.i.i213.prol ], [ %i.ir, %.lr.ph.i.i213.preheader ] ; 2 uses
  %.sroa.0.07.i.i216.prol = phi ptr [ %i.iv, %.lr.ph.i.i213.prol ], [ %5, %.lr.ph.i.i213.preheader ] ; 2 uses
  %prol.iter395 = phi i64 [ %prol.iter395.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader ]
  %i.is = add i64 %.09.i.i214.prol, -1            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216.prol, i64 16
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !247
  store i32 %i.iu, ptr %.048.i.i215.prol, align 4, !tbaa !318
  %i.iv = load ptr, ptr %.sroa.0.07.i.i216.prol, align 8, !tbaa !412 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.048.i.i215.prol, i64 4 ; 2 uses
  %prol.iter395.next = add i64 %prol.iter395, 1   ; 2 uses
  %prol.iter395.cmp.not = icmp eq i64 %prol.iter395.next, %xtraiter393
  br i1 %prol.iter395.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !8809

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader
  %.09.i.i214.unr = phi i64 [ %4, %.lr.ph.i.i213.preheader ], [ %i.is, %.lr.ph.i.i213.prol ]
  %.048.i.i215.unr = phi ptr [ %i.ir, %.lr.ph.i.i213.preheader ], [ %i.iw, %.lr.ph.i.i213.prol ]
  %.sroa.0.07.i.i216.unr = phi ptr [ %5, %.lr.ph.i.i213.preheader ], [ %i.iv, %.lr.ph.i.i213.prol ]
  %i.ix = icmp ult i64 %4, 4
  br i1 %i.ix, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.09.i.i214 = phi i64 [ %i.jk, %.lr.ph.i.i213 ], [ %.09.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.048.i.i215 = phi ptr [ %i.jo, %.lr.ph.i.i213 ], [ %.048.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i216 = phi ptr [ %i.jn, %.lr.ph.i.i213 ], [ %.sroa.0.07.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i216, i64 16
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !247
  store i32 %i.iz, ptr %.048.i.i215, align 4, !tbaa !318
  %i.ja = load ptr, ptr %.sroa.0.07.i.i216, align 8, !tbaa !412 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !247
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !318
  %i.je = load ptr, ptr %i.ja, align 8, !tbaa !412 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !247
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !318
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !412 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 12
  %i.jk = add i64 %.09.i.i214, -4                 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !247
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !318
  %i.jn = load ptr, ptr %i.ji, align 8, !tbaa !412
  %i.jo = getelementptr inbounds nuw i8, ptr %.048.i.i215, i64 16
  %.not.i.i217.3 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i217.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !89

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210
  %.not.i220 = icmp eq ptr %3, %i.ir
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.jp = add i64 %i.f, -4
  %i.jq = sub i64 %i.jp, %i.a                     ; 2 uses
  %i.jr = lshr i64 %i.jq, 2
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check342 = icmp ult i64 %i.jq, 76
  br i1 %min.iters.check342, label %.lr.ph.i.i222.preheader378, label %vector.memcheck339

vector.memcheck339:                               ; preds = %.lr.ph.i.i222.preheader
  %i.jt = shl i64 %4, 2
  %i.ju = add i64 %i.jt, %i.f
  %i.jv = sub i64 %i.ip, %i.ju
  %diff.check340 = icmp ugt i64 %i.jv, -32
  br i1 %diff.check340, label %.lr.ph.i.i222.preheader378, label %vector.ph343

vector.ph343:                                     ; preds = %vector.memcheck339
  %n.vec344 = and i64 %i.js, 9223372036854775800  ; 3 uses
  %i.jw = mul i64 %n.vec344, -4                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ir, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %3, i64 %i.jw
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph343
  %index346 = phi i64 [ 0, %vector.ph343 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %i.jz = mul i64 %index346, -4                   ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.ir, i64 %i.jz ; 2 uses
  %next.gep348 = getelementptr i8, ptr %3, i64 %i.jz ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %next.gep348, i64 -16
  %i.kb = getelementptr inbounds i8, ptr %next.gep348, i64 -32
  %wide.load349 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !318
  %wide.load350 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !318
  %i.kc = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.kd = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  store <4 x i32> %wide.load349, ptr %i.kc, align 4, !tbaa !318
  store <4 x i32> %wide.load350, ptr %i.kd, align 4, !tbaa !318
  %index.next351 = add nuw i64 %index346, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next351, %n.vec344
  br i1 %i.ke, label %middle.block352, label %vector.body345, !llvm.loop !8810

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %i.js, %n.vec344
  br i1 %cmp.n353, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader378

.lr.ph.i.i222.preheader378:                       ; preds = %vector.memcheck339, %.lr.ph.i.i222.preheader, %middle.block352
  %.010.i.i223.ph = phi ptr [ %i.ir, %vector.memcheck339 ], [ %i.ir, %.lr.ph.i.i222.preheader ], [ %i.jx, %middle.block352 ]
  %.079.i.i224.ph = phi ptr [ %3, %vector.memcheck339 ], [ %3, %.lr.ph.i.i222.preheader ], [ %i.jy, %middle.block352 ]
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %.lr.ph.i.i222.preheader378, %.lr.ph.i.i222
  %.010.i.i223 = phi ptr [ %i.kg, %.lr.ph.i.i222 ], [ %.010.i.i223.ph, %.lr.ph.i.i222.preheader378 ]
  %.079.i.i224 = phi ptr [ %i.kf, %.lr.ph.i.i222 ], [ %.079.i.i224.ph, %.lr.ph.i.i222.preheader378 ]
  %i.kf = getelementptr inbounds i8, ptr %.079.i.i224, i64 -4 ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %.010.i.i223, i64 -4 ; 3 uses
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !318
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !318
  %.not.i.i225 = icmp eq ptr %0, %i.kf
  br i1 %.not.i.i225, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222, !llvm.loop !8811

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226: ; preds = %.lr.ph.i.i222, %middle.block352, %bb.i
  %i.ki = phi ptr [ %i.ir, %bb.i ], [ %i.jx, %middle.block352 ], [ %i.kg, %.lr.ph.i.i222 ] ; 2 uses
  %.not3.i227 = icmp eq ptr %0, %i.ki
  br i1 %.not3.i227, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, %.lr.ph.i228
  %storemerge4.i229 = phi ptr [ %i.kl, %.lr.ph.i228 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i229, align 4, !tbaa !318
  %i.kj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.kk = add i32 %i.kj, -1
  store i32 %i.kk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.kl = getelementptr inbounds nuw i8, ptr %storemerge4.i229, i64 4 ; 2 uses
  %.not.i230 = icmp eq ptr %i.kl, %i.ki
  br i1 %.not.i230, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i228, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i140, %.lr.ph.i228, %.lr.ph.i184, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit226, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

end_hunk_23
begin_hunk_24_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvT0_mSB_SB_mT1_RT_:bb.a

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.j
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.dd, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.de, %.lr.ph.i157 ], [ %i.cz, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.da = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.da, ptr %.01517.i159, align 4, !tbaa !318
  %i.db = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.dd, %i.c
  br i1 %.not.i160, label %.loopexit, label %.lr.ph.i157, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i157, %..loopexit_crit_edge
  %i.df = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.dc, %.lr.ph.i157 ]
  %.neg250 = sub i64 %i.m, %i.n
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.neg250 ; 7 uses
  %i.dh = load i32, ptr %5, align 4, !tbaa !247
  %i.di = add i32 %i.df, 1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.dj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.dl = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.dl, ptr %i.c, align 4, !tbaa !318
  %i.dm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i163 = icmp eq ptr %3, %i.dg
  br i1 %.not.i163, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i164 = icmp eq ptr %0, %3
  br i1 %.not8.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %bb.g
  %i.do = add i64 %i.g, -4
  %i.dp = sub i64 %i.do, %i.a                     ; 2 uses
  %i.dq = lshr i64 %i.dp, 2
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check341 = icmp ult i64 %i.dp, 108
  br i1 %min.iters.check341, label %.lr.ph.i.i165.preheader356, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i.i165.preheader
  %i.ds = shl i64 %i.n, 2
  %i.dt = add i64 %i.ds, %i.g
  %i.du = add i64 %i.l, %i.a
  %i.dv = shl nsw i64 %1, 2
  %i.dw = add i64 %i.du, %i.dv
  %i.dx = sub i64 %i.dw, %i.dt
  %diff.check339 = icmp ugt i64 %i.dx, -32
  br i1 %diff.check339, label %.lr.ph.i.i165.preheader356, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.dr, 9223372036854775800  ; 3 uses
  %i.dy = mul i64 %n.vec343, -4                   ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dg, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %3, i64 %i.dy
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next350, %vector.body344 ] ; 2 uses
  %i.eb = mul i64 %index345, -4                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.dg, i64 %i.eb ; 2 uses
  %next.gep347 = getelementptr i8, ptr %3, i64 %i.eb ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.ed = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  %wide.load348 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !318
  %wide.load349 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !318
  %i.ee = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.ef = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  store <4 x i32> %wide.load348, ptr %i.ee, align 4, !tbaa !318
  store <4 x i32> %wide.load349, ptr %i.ef, align 4, !tbaa !318
  %index.next350 = add nuw i64 %index345, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next350, %n.vec343
  br i1 %i.eg, label %middle.block351, label %vector.body344, !llvm.loop !8830

middle.block351:                                  ; preds = %vector.body344
  %cmp.n352 = icmp eq i64 %i.dr, %n.vec343
  br i1 %cmp.n352, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader356

.lr.ph.i.i165.preheader356:                       ; preds = %vector.memcheck338, %.lr.ph.i.i165.preheader, %middle.block351
  %.010.i.i166.ph = phi ptr [ %i.dg, %vector.memcheck338 ], [ %i.dg, %.lr.ph.i.i165.preheader ], [ %i.dz, %middle.block351 ]
  %.079.i.i167.ph = phi ptr [ %3, %vector.memcheck338 ], [ %3, %.lr.ph.i.i165.preheader ], [ %i.ea, %middle.block351 ]
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader356, %.lr.ph.i.i165
  %.010.i.i166 = phi ptr [ %i.ei, %.lr.ph.i.i165 ], [ %.010.i.i166.ph, %.lr.ph.i.i165.preheader356 ]
  %.079.i.i167 = phi ptr [ %i.eh, %.lr.ph.i.i165 ], [ %.079.i.i167.ph, %.lr.ph.i.i165.preheader356 ]
  %i.eh = getelementptr inbounds i8, ptr %.079.i.i167, i64 -4 ; 3 uses
  %i.ei = getelementptr inbounds i8, ptr %.010.i.i166, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !318
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !318
  %.not.i.i168 = icmp eq ptr %0, %i.eh
  br i1 %.not.i.i168, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165, !llvm.loop !8831

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169: ; preds = %.lr.ph.i.i165, %middle.block351, %bb.g
  %i.ek = phi ptr [ %i.dg, %bb.g ], [ %i.dz, %middle.block351 ], [ %i.ei, %.lr.ph.i.i165 ] ; 2 uses
  %.not3.i170 = icmp eq ptr %0, %i.ek
  br i1 %.not3.i170, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, %.lr.ph.i171
  %storemerge4.i172 = phi ptr [ %i.en, %.lr.ph.i171 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i172, align 4, !tbaa !318
  %i.el = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %storemerge4.i172, i64 4 ; 2 uses
  %.not.i173 = icmp eq ptr %i.en, %i.ek
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i171, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.eo = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i183 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i183, label %.loopexit252, label %.lr.ph.i184.preheader

.lr.ph.i184.preheader:                            ; preds = %bb.h
  %xtraiter369 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %.lr.ph.i184.prol.loopexit, label %.lr.ph.i184.prol

.lr.ph.i184.prol:                                 ; preds = %.lr.ph.i184.preheader, %.lr.ph.i184.prol
  %.020.i185.prol = phi i64 [ %i.ep, %.lr.ph.i184.prol ], [ %i.m, %.lr.ph.i184.preheader ]
  %.0819.i186.prol = phi ptr [ %i.et, %.lr.ph.i184.prol ], [ %i.eo, %.lr.ph.i184.preheader ] ; 2 uses
  %.01618.i187.prol = phi ptr [ %i.eu, %.lr.ph.i184.prol ], [ %i.c, %.lr.ph.i184.preheader ] ; 3 uses
  %prol.iter371 = phi i64 [ %prol.iter371.next, %.lr.ph.i184.prol ], [ 0, %.lr.ph.i184.preheader ]
  %i.ep = add i64 %.020.i185.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i187.prol) ]
  %i.eq = load i32, ptr %.0819.i186.prol, align 4, !tbaa !318
  store i32 %i.eq, ptr %.01618.i187.prol, align 4, !tbaa !318
  %i.er = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.0819.i186.prol, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.01618.i187.prol, i64 4 ; 2 uses
  %prol.iter371.next = add i64 %prol.iter371, 1   ; 2 uses
  %prol.iter371.cmp.not = icmp eq i64 %prol.iter371.next, %xtraiter369
  br i1 %prol.iter371.cmp.not, label %.lr.ph.i184.prol.loopexit, label %.lr.ph.i184.prol, !llvm.loop !8832

.lr.ph.i184.prol.loopexit:                        ; preds = %.lr.ph.i184.prol, %.lr.ph.i184.preheader
  %.020.i185.unr = phi i64 [ %i.m, %.lr.ph.i184.preheader ], [ %i.ep, %.lr.ph.i184.prol ]
  %.0819.i186.unr = phi ptr [ %i.eo, %.lr.ph.i184.preheader ], [ %i.et, %.lr.ph.i184.prol ]
  %.01618.i187.unr = phi ptr [ %i.c, %.lr.ph.i184.preheader ], [ %i.eu, %.lr.ph.i184.prol ]
  %i.ev = icmp ult i64 %i.m, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.prol.loopexit, %.lr.ph.i184
  %.020.i185 = phi i64 [ %i.fj, %.lr.ph.i184 ], [ %.020.i185.unr, %.lr.ph.i184.prol.loopexit ]
  %.0819.i186 = phi ptr [ %i.fm, %.lr.ph.i184 ], [ %.0819.i186.unr, %.lr.ph.i184.prol.loopexit ] ; 5 uses
  %.01618.i187 = phi ptr [ %i.fn, %.lr.ph.i184 ], [ %.01618.i187.unr, %.lr.ph.i184.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i187) ]
  %i.ew = load i32, ptr %.0819.i186, align 4, !tbaa !318
  store i32 %i.ew, ptr %.01618.i187, align 4, !tbaa !318
  %i.ex = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 4
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !318
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !318
  %i.fc = add i32 %i.ex, 2
  store i32 %i.fc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fd = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 8
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !318
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !318
  %i.fg = add i32 %i.ex, 3
  store i32 %i.fg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fh = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 12
  %i.fj = add i64 %.020.i185, -4                  ; 2 uses
  %i.fk = load i32, ptr %i.fh, align 4, !tbaa !318
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !318
  %i.fl = add i32 %i.ex, 4
  store i32 %i.fl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fm = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 16
  %.not.i188.3 = icmp eq i64 %i.fj, 0
  br i1 %.not.i188.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190: ; preds = %.lr.ph.i184, %.lr.ph.i184.prol.loopexit
  %.not8.i.i192 = icmp eq ptr %3, %i.eo
  br i1 %.not8.i.i192, label %.loopexit252, label %.lr.ph.i.i193.preheader

.lr.ph.i.i193.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.fo = shl nsw i64 %1, 2
  %i.fp = shl i64 %i.a, 1
  %i.fq = ptrtoaddr ptr %2 to i64
  %i.fr = shl i64 %4, 2
  %i.fs = add i64 %i.fo, %i.fp
  %i.ft = add i64 %i.fs, -4
  %i.fu = add i64 %i.fq, %i.g
  %i.fv = add i64 %i.fu, %i.fr
  %i.fw = sub i64 %i.ft, %i.fv                    ; 2 uses
  %i.fx = lshr i64 %i.fw, 2
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check307 = icmp ult i64 %i.fw, 28
  %diff.check305 = icmp ugt i64 %i.l, -32
  %or.cond355 = or i1 %min.iters.check307, %diff.check305
  br i1 %or.cond355, label %.lr.ph.i.i193.preheader361, label %vector.ph308

vector.ph308:                                     ; preds = %.lr.ph.i.i193.preheader
  %n.vec309 = and i64 %i.fy, 9223372036854775800  ; 3 uses
  %i.fz = mul i64 %n.vec309, -4                   ; 2 uses
  %i.ga = getelementptr i8, ptr %i.c, i64 %i.fz   ; 2 uses
  %i.gb = getelementptr i8, ptr %i.eo, i64 %i.fz
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next316, %vector.body310 ] ; 2 uses
  %i.gc = mul i64 %index311, -4                   ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.c, i64 %i.gc ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.eo, i64 %i.gc ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %next.gep313, i64 -16
  %i.ge = getelementptr inbounds i8, ptr %next.gep313, i64 -32
  %wide.load314 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !318
  %wide.load315 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !318
  %i.gf = getelementptr inbounds i8, ptr %next.gep312, i64 -16
  %i.gg = getelementptr inbounds i8, ptr %next.gep312, i64 -32
  store <4 x i32> %wide.load314, ptr %i.gf, align 4, !tbaa !318
  store <4 x i32> %wide.load315, ptr %i.gg, align 4, !tbaa !318
  %index.next316 = add nuw i64 %index311, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next316, %n.vec309
  br i1 %i.gh, label %middle.block317, label %vector.body310, !llvm.loop !8833

middle.block317:                                  ; preds = %vector.body310
  %cmp.n318 = icmp eq i64 %i.fy, %n.vec309
  br i1 %cmp.n318, label %.loopexit252, label %.lr.ph.i.i193.preheader361

.lr.ph.i.i193.preheader361:                       ; preds = %.lr.ph.i.i193.preheader, %middle.block317
  %.010.i.i194.ph = phi ptr [ %i.c, %.lr.ph.i.i193.preheader ], [ %i.ga, %middle.block317 ]
  %.079.i.i195.ph = phi ptr [ %i.eo, %.lr.ph.i.i193.preheader ], [ %i.gb, %middle.block317 ]
  br label %.lr.ph.i.i193

.lr.ph.i.i193:                                    ; preds = %.lr.ph.i.i193.preheader361, %.lr.ph.i.i193
  %.010.i.i194 = phi ptr [ %i.gj, %.lr.ph.i.i193 ], [ %.010.i.i194.ph, %.lr.ph.i.i193.preheader361 ]
  %.079.i.i195 = phi ptr [ %i.gi, %.lr.ph.i.i193 ], [ %.079.i.i195.ph, %.lr.ph.i.i193.preheader361 ]
  %i.gi = getelementptr inbounds i8, ptr %.079.i.i195, i64 -4 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %.010.i.i194, i64 -4 ; 3 uses
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !318
  store i32 %i.gk, ptr %i.gj, align 4, !tbaa !318
  %.not.i.i196 = icmp eq ptr %3, %i.gi
  br i1 %.not.i.i196, label %.loopexit252, label %.lr.ph.i.i193, !llvm.loop !8834

.loopexit252:                                     ; preds = %.lr.ph.i.i193, %middle.block317, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.gl = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190 ], [ %i.ga, %middle.block317 ], [ %i.gj, %.lr.ph.i.i193 ] ; 2 uses
  %i.gm = ptrtoaddr ptr %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.b ; 7 uses
  %i.go = load i32, ptr %5, align 4, !tbaa !247
  %i.gp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !318
  %i.gr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i198 = icmp eq ptr %3, %i.gn
  br i1 %.not.i198, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %.loopexit252
  %.not8.i.i199 = icmp eq ptr %0, %3
  br i1 %.not8.i.i199, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200.preheader

.lr.ph.i.i200.preheader:                          ; preds = %bb.i
  %i.gt = add i64 %i.g, -4
  %i.gu = sub i64 %i.gt, %i.a                     ; 2 uses
  %i.gv = lshr i64 %i.gu, 2
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.gu, 76
  br i1 %min.iters.check324, label %.lr.ph.i.i200.preheader359, label %vector.memcheck321

vector.memcheck321:                               ; preds = %.lr.ph.i.i200.preheader
  %i.gx = shl i64 %4, 2
  %i.gy = add i64 %i.gx, %i.g
  %i.gz = sub i64 %i.gm, %i.gy
  %diff.check322 = icmp ugt i64 %i.gz, -32
  br i1 %diff.check322, label %.lr.ph.i.i200.preheader359, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck321
  %n.vec326 = and i64 %i.gw, 9223372036854775800  ; 3 uses
  %i.ha = mul i64 %n.vec326, -4                   ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gn, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %3, i64 %i.ha
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %i.hd = mul i64 %index328, -4                   ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.gn, i64 %i.hd ; 2 uses
  %next.gep330 = getelementptr i8, ptr %3, i64 %i.hd ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.hf = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  %wide.load331 = load <4 x i32>, ptr %i.he, align 4, !tbaa !318
  %wide.load332 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !318
  %i.hg = getelementptr inbounds i8, ptr %next.gep329, i64 -16
  %i.hh = getelementptr inbounds i8, ptr %next.gep329, i64 -32
  store <4 x i32> %wide.load331, ptr %i.hg, align 4, !tbaa !318
  store <4 x i32> %wide.load332, ptr %i.hh, align 4, !tbaa !318
  %index.next333 = add nuw i64 %index328, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.hi, label %middle.block334, label %vector.body327, !llvm.loop !8835

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %i.gw, %n.vec326
  br i1 %cmp.n335, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200.preheader359

.lr.ph.i.i200.preheader359:                       ; preds = %vector.memcheck321, %.lr.ph.i.i200.preheader, %middle.block334
  %.010.i.i201.ph = phi ptr [ %i.gn, %vector.memcheck321 ], [ %i.gn, %.lr.ph.i.i200.preheader ], [ %i.hb, %middle.block334 ]
  %.079.i.i202.ph = phi ptr [ %3, %vector.memcheck321 ], [ %3, %.lr.ph.i.i200.preheader ], [ %i.hc, %middle.block334 ]
  br label %.lr.ph.i.i200

.lr.ph.i.i200:                                    ; preds = %.lr.ph.i.i200.preheader359, %.lr.ph.i.i200
  %.010.i.i201 = phi ptr [ %i.hk, %.lr.ph.i.i200 ], [ %.010.i.i201.ph, %.lr.ph.i.i200.preheader359 ]
  %.079.i.i202 = phi ptr [ %i.hj, %.lr.ph.i.i200 ], [ %.079.i.i202.ph, %.lr.ph.i.i200.preheader359 ]
  %i.hj = getelementptr inbounds i8, ptr %.079.i.i202, i64 -4 ; 3 uses
  %i.hk = getelementptr inbounds i8, ptr %.010.i.i201, i64 -4 ; 3 uses
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !318
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !318
  %.not.i.i203 = icmp eq ptr %0, %i.hj
  br i1 %.not.i.i203, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204, label %.lr.ph.i.i200, !llvm.loop !8836

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204: ; preds = %.lr.ph.i.i200, %middle.block334, %bb.i
  %i.hm = phi ptr [ %i.gn, %bb.i ], [ %i.hb, %middle.block334 ], [ %i.hk, %.lr.ph.i.i200 ] ; 2 uses
  %.not3.i205 = icmp eq ptr %0, %i.hm
  br i1 %.not3.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204, %.lr.ph.i206
  %storemerge4.i207 = phi ptr [ %i.hp, %.lr.ph.i206 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i207, align 4, !tbaa !318
  %i.hn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ho = add i32 %i.hn, -1
  store i32 %i.ho, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hp = getelementptr inbounds nuw i8, ptr %storemerge4.i207, i64 4 ; 2 uses
  %.not.i208 = icmp eq ptr %i.hp, %i.hm
  br i1 %.not.i208, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i206, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i140, %.lr.ph.i206, %.lr.ph.i171, %.loopexit252, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit204, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10unique_ptrINS_9container6vectorINS2_4test17moveconstruct_intENS2_9allocatorIS5_Lj2ELj0EEEvEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8839   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !497  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !503  ; 5 uses
  %.not3.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test17moveconstruct_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.e = add i64 %.05.i.i.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !388
  %i.f = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !8837

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.05.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.e, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.prol ]
  %i.i = icmp ult i64 %i.d, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test17moveconstruct_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !388
  %i.j = load i32, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !388
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test17moveconstruct_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !388
end_hunk_24
