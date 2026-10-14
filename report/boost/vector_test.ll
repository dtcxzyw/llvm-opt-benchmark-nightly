Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2069
begin_hunk_0_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS2_25expand_bwd_test_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_:bb.a

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.n, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.o, %.lr.ph.i ], [ %2, %bb.b ] ; 2 uses
  %i.k = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.k, ptr %.01517.i, align 4, !tbaa !318
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !9

_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01417.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !318
  store i32 %i.p, ptr %.01417.i.i.prol, align 4, !tbaa !318
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %i.u = add i64 %.018.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !846

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %4, 4
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !318
  store i32 %i.w, ptr %.01417.i.i, align 4, !tbaa !318
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !318
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !318
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !318
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !318
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !318
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !318
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.an = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ao = add i64 %4, %1
  %.not197 = icmp ult i64 %i.i, %i.ao
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit
  %.not200 = icmp eq i64 %i.f, %1
  %.not16.i206 = icmp eq ptr %3, %i.b
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.c
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.at, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 2 uses
  %.01517.i209 = phi ptr [ %i.au, %.lr.ph.i207 ], [ %i.ap, %.lr.ph.i207.preheader ] ; 2 uses
  %i.aq = load i32, ptr %.018.i208, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01517.i209, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !9

bb.d:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit
  %i.av = sub nuw i64 %i.i, %i.j                  ; 5 uses
  %.not17.i = icmp eq i64 %i.av, 0
  br i1 %.not17.i, label %.loopexit415, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.d
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %xtraiter699 = and i64 %i.av, 3                 ; 2 uses
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.020.i.prol = phi i64 [ %i.ax, %.lr.ph.i213.prol ], [ %i.av, %.lr.ph.i213.preheader ]
  %.0819.i.prol = phi ptr [ %i.bb, %.lr.ph.i213.prol ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bc, %.lr.ph.i213.prol ], [ %i.aw, %.lr.ph.i213.preheader ] ; 2 uses
  %prol.iter701 = phi i64 [ %prol.iter701.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.ax = add i64 %.020.i.prol, -1                ; 2 uses
  %i.ay = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ay, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter701.next = add i64 %prol.iter701, 1   ; 2 uses
  %prol.iter701.cmp.not = icmp eq i64 %prol.iter701.next, %xtraiter699
  br i1 %prol.iter701.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !847

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.av, %.lr.ph.i213.preheader ], [ %i.ax, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.bb, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.aw, %.lr.ph.i213.preheader ], [ %i.bc, %.lr.ph.i213.prol ]
  %i.bd = sub i64 %i.j, %i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit415, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.bs, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bv, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bw, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %i.bf = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bf, ptr %.01618.i, align 4, !tbaa !318
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !318
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !318
  %i.bl = add i32 %i.bg, 2
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !318
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !318
  %i.bp = add i32 %i.bg, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bs = add i64 %.020.i, -4                     ; 2 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !318
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !318
  %i.bu = add i32 %i.bg, 4
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i214.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i214.3, label %.loopexit415, label %.lr.ph.i213, !llvm.loop !8

.loopexit415:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.d
  %i.bx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.av ; 6 uses
  %.not.i215 = icmp eq ptr %i.bx, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit225, label %bb.e

bb.e:                                             ; preds = %.loopexit415
  %.not8.i.i = icmp eq ptr %i.bx, %i.b
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.e
  %i.by = add i64 %1, %i.j
  %i.bz = shl i64 %i.by, 2
  %i.ca = add i64 %i.bz, %i.d
  %i.cb = add i64 %i.ca, -4
  %i.cc = add i64 %i.h, %i.c
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 76
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader692, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %7 = add i64 %i.h, %i.c
  %8 = shl i64 %i.j, 2
  %.neg666 = sub i64 %8, %7
  %i.cg = add i64 %.neg666, %i.d
  %i.ch = add i64 %i.cg, -1
  %diff.check = icmp ult i64 %i.ch, 31
  br i1 %diff.check, label %.lr.ph.i.i216.preheader692, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cf, 9223372036854775800     ; 3 uses
  %i.ci = shl i64 %n.vec, 2                       ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ci     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bx, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cl ; 2 uses
  %next.gep503 = getelementptr i8, ptr %i.bx, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep503, align 4, !tbaa !318
  %wide.load504 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !318
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load504, ptr %i.cn, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !848

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader692

.lr.ph.i.i216.preheader692:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.cj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.i.i216.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader692, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.cr, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader692 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cq, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader692 ] ; 2 uses
  %i.cp = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.010.i.i, align 4, !tbaa !318
  %i.cq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !849

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.cs = phi ptr [ %0, %bb.e ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.cs, %i.b
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.cv, %.lr.ph.i218 ], [ %i.cs, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.ct = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, -1
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cv, %i.b
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !10

_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit
  %xtraiter696 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cw = phi i64 [ %i.cx, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.da, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cx = add i64 %i.cw, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !318
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !850

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cx, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.da, %.preheader.prol ]
  %i.db = icmp ult i64 %1, 4
  br i1 %i.db, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dc = phi i64 [ %i.dk, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.dm, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.df, align 4, !tbaa !318
  %i.dg = add i32 %i.dd, -2
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dh, align 4, !tbaa !318
  %i.di = add i32 %i.dd, -3
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.dk = add i64 %i.dc, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !318
  %i.dl = add i32 %i.dd, -4
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.dk, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !11

bb.f:                                             ; preds = %bb.a
  %i.dn = icmp ugt i64 %4, %i.i                   ; 2 uses
  %.not180 = icmp ugt i64 %i.i, %i.f
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit413, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %xtraiter702 = and i64 %i.i, 3                  ; 2 uses
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader, %.lr.ph.i235.prol
  %.020.i236.prol = phi i64 [ %i.do, %.lr.ph.i235.prol ], [ %i.i, %.lr.ph.i235.preheader ]
  %.0819.i237.prol = phi ptr [ %i.ds, %.lr.ph.i235.prol ], [ %0, %.lr.ph.i235.preheader ] ; 2 uses
  %.01618.i238.prol = phi ptr [ %i.dt, %.lr.ph.i235.prol ], [ %2, %.lr.ph.i235.preheader ] ; 2 uses
  %prol.iter704 = phi i64 [ %prol.iter704.next, %.lr.ph.i235.prol ], [ 0, %.lr.ph.i235.preheader ]
  %i.do = add i64 %.020.i236.prol, -1             ; 2 uses
  %i.dp = load i32, ptr %.0819.i237.prol, align 4, !tbaa !318
  store i32 %i.dp, ptr %.01618.i238.prol, align 4, !tbaa !318
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.0819.i237.prol, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01618.i238.prol, i64 4 ; 2 uses
  %prol.iter704.next = add i64 %prol.iter704, 1   ; 2 uses
  %prol.iter704.cmp.not = icmp eq i64 %prol.iter704.next, %xtraiter702
  br i1 %prol.iter704.cmp.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol, !llvm.loop !851

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.i, %.lr.ph.i235.preheader ], [ %i.do, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.ds, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dt, %.lr.ph.i235.prol ]
  %i.du = icmp ult i64 %i.i, 4
  br i1 %i.du, label %.loopexit413, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ei, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.el, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 5 uses
  %.01618.i238 = phi ptr [ %i.em, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 5 uses
  %i.dv = load i32, ptr %.0819.i237, align 4, !tbaa !318
  store i32 %i.dv, ptr %.01618.i238, align 4, !tbaa !318
  %i.dw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !318
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !318
  %i.eb = add i32 %i.dw, 2
  store i32 %i.eb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ec = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !318
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !318
  %i.ef = add i32 %i.dw, 3
  store i32 %i.ef, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eg = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 12
  %i.ei = add i64 %.020.i236, -4                  ; 2 uses
  %i.ej = load i32, ptr %i.eg, align 4, !tbaa !318
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !318
  %i.ek = add i32 %i.dw, 4
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.el = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 16
  %.not.i239.3 = icmp eq i64 %i.ei, 0
  br i1 %.not.i239.3, label %.loopexit413, label %.lr.ph.i235, !llvm.loop !8

.loopexit413:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.en = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.i) ; 8 uses
  %i.eo = getelementptr inbounds i8, ptr %0, i64 %i.h ; 4 uses
  %.not8.i = icmp eq ptr %i.eo, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit413
  %i.ep = shl i64 %i.d, 1
  %i.eq = add i64 %i.c, %i.g
  %i.er = add i64 %i.eq, -4
  %i.es = sub i64 %i.er, %i.ep                    ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check509 = icmp ult i64 %i.es, 44
  %i.ev = sub i64 %i.d, %i.g
end_hunk_0
begin_hunk_1_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIS6_St6vectorIS4_SaIS4_EEEEEEEEvT0_mSG_SG_mT1_RT_:bb.a
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.o ; 3 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01417.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !318
  store i32 %i.q, ptr %.01417.i.i.prol, align 4, !tbaa !318
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %i.v = add i64 %.018.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !876

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.v, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.w = icmp ult i64 %4, 4
  br i1 %i.w, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.x = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !318
  store i32 %i.x, ptr %.01417.i.i, align 4, !tbaa !318
  %i.y = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.y, 2
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !318
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !318
  %i.ah = add i32 %i.y, 3
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !318
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !318
  %i.al = add i32 %i.y, 4
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.ao = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.at, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.ap, %.lr.ph.i.preheader ] ; 2 uses
  %i.aq = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01517.i, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !9

_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit
  %.not123 = icmp ult i64 %i.m, %i.e
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.c, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.ay, %.lr.ph.i129 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i131 = phi ptr [ %i.az, %.lr.ph.i129 ], [ %2, %bb.c ] ; 2 uses
  %i.av = load i32, ptr %.018.i130, align 4, !tbaa !318
  store i32 %i.av, ptr %.01517.i131, align 4, !tbaa !318
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.ay, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !9

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ba = sub nuw i64 %i.m, %i.n                  ; 5 uses
  %i.bb = sub i64 0, %i.ba                        ; 3 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bb ; 8 uses
  %.not17.i = icmp eq i64 %i.ba, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.d
  %xtraiter429 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135.prol
  %.020.i.prol = phi i64 [ %i.bd, %.lr.ph.i135.prol ], [ %i.ba, %.lr.ph.i135.preheader ]
  %.0819.i.prol = phi ptr [ %i.bh, %.lr.ph.i135.prol ], [ %i.bc, %.lr.ph.i135.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bi, %.lr.ph.i135.prol ], [ %i.d, %.lr.ph.i135.preheader ] ; 2 uses
  %prol.iter431 = phi i64 [ %prol.iter431.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader ]
  %i.bd = add i64 %.020.i.prol, -1                ; 2 uses
  %i.be = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.be, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.bf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter431.next = add i64 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i64 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol, !llvm.loop !877

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.020.i.unr = phi i64 [ %i.ba, %.lr.ph.i135.preheader ], [ %i.bd, %.lr.ph.i135.prol ]
  %.0819.i.unr = phi ptr [ %i.bc, %.lr.ph.i135.preheader ], [ %i.bh, %.lr.ph.i135.prol ]
  %.01618.i.unr = phi ptr [ %i.d, %.lr.ph.i135.preheader ], [ %i.bi, %.lr.ph.i135.prol ]
  %i.bj = sub i64 %i.n, %i.m
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.020.i = phi i64 [ %i.by, %.lr.ph.i135 ], [ %.020.i.unr, %.lr.ph.i135.prol.loopexit ]
  %.0819.i = phi ptr [ %i.cb, %.lr.ph.i135 ], [ %.0819.i.unr, %.lr.ph.i135.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.cc, %.lr.ph.i135 ], [ %.01618.i.unr, %.lr.ph.i135.prol.loopexit ] ; 5 uses
  %i.bl = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bl, ptr %.01618.i, align 4, !tbaa !318
  %i.bm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bo = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !318
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !318
  %i.br = add i32 %i.bm, 2
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !318
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !318
  %i.bv = add i32 %i.bm, 3
  store i32 %i.bv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.by = add i64 %.020.i, -4                     ; 2 uses
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !318
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !318
  %i.ca = add i32 %i.bm, 4
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i136.3 = icmp eq i64 %i.by, 0
  br i1 %.not.i136.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135, !llvm.loop !8

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %bb.d
  %.not.i137 = icmp eq ptr %i.bc, %i.d
  %.not8.i.i = icmp eq ptr %0, %i.bc
  %or.cond = or i1 %.not.i137, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.cd = shl i64 %i.bb, 2
  %i.ce = add i64 %i.cd, %i.h
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.c                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 92
  br i1 %min.iters.check, label %.lr.ph.i.i138.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i138.preheader
  %i.cj = shl i64 %i.bb, 2
  %7 = add i64 %i.cj, %i.h
  %8 = shl nsw i64 %1, 2
  %i.ck = add i64 %8, %i.c
  %i.cl = sub i64 %i.ck, %7
  %diff.check = icmp ugt i64 %i.cl, -32
  br i1 %diff.check, label %.lr.ph.i.i138.preheader424, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bc, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.cp ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.bc, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !318
  %wide.load320 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !318
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !318
  store <4 x i32> %wide.load320, ptr %i.ct, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !878

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader424

.lr.ph.i.i138.preheader424:                       ; preds = %vector.memcheck, %.lr.ph.i.i138.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i138.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i138.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader424, %.lr.ph.i.i138
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i.i138 ], [ %.010.i.i.ph, %.lr.ph.i.i138.preheader424 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i138 ], [ %.079.i.i.ph, %.lr.ph.i.i138.preheader424 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !318
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !318
  %.not.i.i139 = icmp eq ptr %0, %i.cv
  br i1 %.not.i.i139, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138, !llvm.loop !879

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i138, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.da, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.da, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !10

_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i129, %bb.c
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit
  %xtraiter426 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.db = phi i64 [ %i.dc, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.df, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter428 = phi i64 [ %prol.iter428.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.dc = add i64 %i.db, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter428.next = add i64 %prol.iter428, 1   ; 2 uses
  %prol.iter428.cmp.not = icmp eq i64 %prol.iter428.next, %xtraiter426
  br i1 %prol.iter428.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !880

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.dc, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.df, %.preheader.prol ]
  %i.dg = icmp ult i64 %1, 4
  br i1 %i.dg, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dh = phi i64 [ %i.dp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.dr, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !318
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.dk, align 4, !tbaa !318
  %i.dl = add i32 %i.di, -2
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !318
  %i.dn = add i32 %i.di, -3
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.dp = add i64 %i.dh, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !318
  %i.dq = add i32 %i.di, -4
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.dp, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !11

bb.e:                                             ; preds = %bb.a
  %i.ds = icmp ugt i64 %i.m, %i.j
  br i1 %i.ds, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.d
  br i1 %.not16.i156, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.dt = sub nsw i64 0, %i.j
  %i.du = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dt
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.dy, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.dz, %.lr.ph.i157 ], [ %i.du, %.lr.ph.i157.preheader ] ; 2 uses
  %i.dv = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.dv, ptr %.01517.i159, align 4, !tbaa !318
  %i.dw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dy = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.dy, %i.d
  br i1 %.not.i160, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157, !llvm.loop !9

_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162: ; preds = %.lr.ph.i157, %bb.f
  %i.ea = sub nuw nsw i64 %i.m, %i.j              ; 4 uses
  %i.eb = sub i64 %4, %i.ea                       ; 10 uses
  %i.ec = sub i64 0, %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ec ; 10 uses
  %.not6.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not6.i.i, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164.preheader

.lr.ph.i.i164.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %min.iters.check377 = icmp ult i64 %i.eb, 20
  br i1 %min.iters.check377, label %.lr.ph.i.i164.preheader415, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph.i.i164.preheader
  %i.ee = sub i64 %1, %i.eb
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, %i.c
  %i.eh = sub i64 %i.a, %i.eg
  %diff.check375 = icmp ugt i64 %i.eh, -32
  br i1 %diff.check375, label %.lr.ph.i.i164.preheader415, label %vector.ph378

vector.ph378:                                     ; preds = %vector.memcheck374
  %n.vec379 = and i64 %i.eb, -8                   ; 3 uses
  %i.ei = and i64 %i.eb, 7
  %i.ej = shl i64 %n.vec379, 2                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ed, i64 %i.ej
  %i.el = getelementptr i8, ptr %5, i64 %i.ej     ; 2 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph378
  %index381 = phi i64 [ 0, %vector.ph378 ], [ %index.next386, %vector.body380 ] ; 2 uses
  %i.em = shl i64 %index381, 2                    ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.ed, i64 %i.em ; 2 uses
  %next.gep383 = getelementptr i8, ptr %5, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep383, i64 16
  %wide.load384 = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !318
  %wide.load385 = load <4 x i32>, ptr %i.en, align 4, !tbaa !318
  %i.eo = getelementptr i8, ptr %next.gep382, i64 16
  store <4 x i32> %wide.load384, ptr %next.gep382, align 4, !tbaa !318
  store <4 x i32> %wide.load385, ptr %i.eo, align 4, !tbaa !318
  %index.next386 = add nuw i64 %index381, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.ep, label %middle.block387, label %vector.body380, !llvm.loop !881

middle.block387:                                  ; preds = %vector.body380
  %cmp.n388 = icmp eq i64 %i.eb, %n.vec379
  br i1 %cmp.n388, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164.preheader415

.lr.ph.i.i164.preheader415:                       ; preds = %vector.memcheck374, %.lr.ph.i.i164.preheader, %middle.block387
  %.09.i.i.ph = phi i64 [ %i.eb, %vector.memcheck374 ], [ %i.eb, %.lr.ph.i.i164.preheader ], [ %i.ei, %middle.block387 ] ; 4 uses
  %.048.i.i.ph = phi ptr [ %i.ed, %vector.memcheck374 ], [ %i.ed, %.lr.ph.i.i164.preheader ], [ %i.ek, %middle.block387 ] ; 2 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %5, %vector.memcheck374 ], [ %5, %.lr.ph.i.i164.preheader ], [ %i.el, %middle.block387 ] ; 2 uses
  %i.eq = add i64 %.09.i.i.ph, -1
  %xtraiter438 = and i64 %.09.i.i.ph, 7           ; 2 uses
  %lcmp.mod439.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod439.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol

.lr.ph.i.i164.prol:                               ; preds = %.lr.ph.i.i164.preheader415, %.lr.ph.i.i164.prol
  %.09.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i164.prol ], [ %.09.i.i.ph, %.lr.ph.i.i164.preheader415 ]
  %.048.i.i.prol = phi ptr [ %i.eu, %.lr.ph.i.i164.prol ], [ %.048.i.i.ph, %.lr.ph.i.i164.preheader415 ] ; 2 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i164.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i164.preheader415 ] ; 2 uses
  %prol.iter440 = phi i64 [ %prol.iter440.next, %.lr.ph.i.i164.prol ], [ 0, %.lr.ph.i.i164.preheader415 ]
  %i.er = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.es = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !318
  store i32 %i.es, ptr %.048.i.i.prol, align 4, !tbaa !318
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4 ; 2 uses
  %prol.iter440.next = add i64 %prol.iter440, 1   ; 2 uses
  %prol.iter440.cmp.not = icmp eq i64 %prol.iter440.next, %xtraiter438
  br i1 %prol.iter440.cmp.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !882

.lr.ph.i.i164.prol.loopexit:                      ; preds = %.lr.ph.i.i164.prol, %.lr.ph.i.i164.preheader415
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i.i164.preheader415 ], [ %i.et, %.lr.ph.i.i164.prol ]
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i164.preheader415 ], [ %i.er, %.lr.ph.i.i164.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.lr.ph.i.i164.preheader415 ], [ %i.eu, %.lr.ph.i.i164.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i164.preheader415 ], [ %i.et, %.lr.ph.i.i164.prol ]
  %i.ev = icmp ult i64 %i.eq, 7
  br i1 %i.ev, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.09.i.i = phi i64 [ %i.fr, %.lr.ph.i.i164 ], [ %.09.i.i.unr, %.lr.ph.i.i164.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.fu, %.lr.ph.i.i164 ], [ %.048.i.i.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ft, %.lr.ph.i.i164 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %i.ew = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !318
  store i32 %i.ew, ptr %.048.i.i, align 4, !tbaa !318
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !318
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !318
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !318
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !318
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !318
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !318
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !318
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !318
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 20
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !318
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !318
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !318
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !318
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 28
  %i.fr = add i64 %.09.i.i, -8                    ; 2 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !318
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !318
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %.not.i.i165.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i165.7, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164, !llvm.loop !883

.lr.ph.i.i169.preheader:                          ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164, %middle.block387, %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %.sroa.0.016.i.i172.ph = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %i.el, %middle.block387 ], [ %.lcssa416.unr, %.lr.ph.i.i164.prol.loopexit ], [ %i.ft, %.lr.ph.i.i164 ] ; 2 uses
  %xtraiter441 = and i64 %i.ea, 3                 ; 2 uses
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol

.lr.ph.i.i169.prol:                               ; preds = %.lr.ph.i.i169.preheader, %.lr.ph.i.i169.prol
  %.018.i.i170.prol = phi i64 [ %i.ga, %.lr.ph.i.i169.prol ], [ %i.ea, %.lr.ph.i.i169.preheader ]
  %.01417.i.i171.prol = phi ptr [ %i.fz, %.lr.ph.i.i169.prol ], [ %i.d, %.lr.ph.i.i169.preheader ] ; 2 uses
  %.sroa.0.016.i.i172.prol = phi ptr [ %i.fy, %.lr.ph.i.i169.prol ], [ %.sroa.0.016.i.i172.ph, %.lr.ph.i.i169.preheader ] ; 2 uses
  %prol.iter443 = phi i64 [ %prol.iter443.next, %.lr.ph.i.i169.prol ], [ 0, %.lr.ph.i.i169.preheader ]
  %i.fv = load i32, ptr %.sroa.0.016.i.i172.prol, align 4, !tbaa !318
  store i32 %i.fv, ptr %.01417.i.i171.prol, align 4, !tbaa !318
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172.prol, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01417.i.i171.prol, i64 4 ; 2 uses
  %i.ga = add i64 %.018.i.i170.prol, -1           ; 2 uses
  %prol.iter443.next = add i64 %prol.iter443, 1   ; 2 uses
  %prol.iter443.cmp.not = icmp eq i64 %prol.iter443.next, %xtraiter441
  br i1 %prol.iter443.cmp.not, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol, !llvm.loop !884

.lr.ph.i.i169.prol.loopexit:                      ; preds = %.lr.ph.i.i169.prol, %.lr.ph.i.i169.preheader
  %.018.i.i170.unr = phi i64 [ %i.ea, %.lr.ph.i.i169.preheader ], [ %i.ga, %.lr.ph.i.i169.prol ]
  %.01417.i.i171.unr = phi ptr [ %i.d, %.lr.ph.i.i169.preheader ], [ %i.fz, %.lr.ph.i.i169.prol ]
  %.sroa.0.016.i.i172.unr = phi ptr [ %.sroa.0.016.i.i172.ph, %.lr.ph.i.i169.preheader ], [ %i.fy, %.lr.ph.i.i169.prol ]
  %i.gb = sub nsw i64 %i.j, %i.m
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %.018.i.i170 = phi i64 [ %i.gu, %.lr.ph.i.i169 ], [ %.018.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ]
  %.01417.i.i171 = phi ptr [ %i.gt, %.lr.ph.i.i169 ], [ %.01417.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ] ; 5 uses
  %.sroa.0.016.i.i172 = phi ptr [ %i.gs, %.lr.ph.i.i169 ], [ %.sroa.0.016.i.i172.unr, %.lr.ph.i.i169.prol.loopexit ] ; 5 uses
  %i.gd = load i32, ptr %.sroa.0.016.i.i172, align 4, !tbaa !318
  store i32 %i.gd, ptr %.01417.i.i171, align 4, !tbaa !318
  %i.ge = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !318
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !318
  %i.gj = add i32 %i.ge, 2
  store i32 %i.gj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 8
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !318
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !318
  %i.gn = add i32 %i.ge, 3
  store i32 %i.gn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 12
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !318
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !318
  %i.gr = add i32 %i.ge, 4
  store i32 %i.gr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 16
  %i.gu = add i64 %.018.i.i170, -4                ; 2 uses
  %.not.i.i173.3 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i173.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175, label %.lr.ph.i.i169, !llvm.loop !7

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175: ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.prol.loopexit
  %.not.i176 = icmp eq ptr %3, %i.ed
  br i1 %.not.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit175
  %.not8.i.i177 = icmp eq ptr %0, %3
  br i1 %.not8.i.i177, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.g
  %i.gv = add i64 %i.h, -4
  %i.gw = sub i64 %i.gv, %i.c                     ; 2 uses
  %i.gx = lshr i64 %i.gw, 2
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check395 = icmp ult i64 %i.gw, 92
  br i1 %min.iters.check395, label %.lr.ph.i.i178.preheader414, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.i.i178.preheader
  %i.gz = shl nsw i64 %1, 2
  %9 = add i64 %i.gz, %i.c
  %10 = sub i64 %i.h, %9
  %.neg = shl i64 %i.eb, 2
  %i.ha = add i64 %.neg, %10
  %i.hb = add i64 %i.ha, -1
  %diff.check393 = icmp ult i64 %i.hb, 31
  br i1 %diff.check393, label %.lr.ph.i.i178.preheader414, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.gy, 9223372036854775800  ; 3 uses
  %i.hc = mul i64 %n.vec397, -4                   ; 2 uses
  %i.hd = getelementptr i8, ptr %i.ed, i64 %i.hc  ; 2 uses
  %i.he = getelementptr i8, ptr %3, i64 %i.hc
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.hf = mul i64 %index399, -4                   ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.ed, i64 %i.hf ; 2 uses
  %next.gep401 = getelementptr i8, ptr %3, i64 %i.hf ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %next.gep401, i64 -16
  %i.hh = getelementptr inbounds i8, ptr %next.gep401, i64 -32
  %wide.load402 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !318
  %wide.load403 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !318
  %i.hi = getelementptr inbounds i8, ptr %next.gep400, i64 -16
  %i.hj = getelementptr inbounds i8, ptr %next.gep400, i64 -32
  store <4 x i32> %wide.load402, ptr %i.hi, align 4, !tbaa !318
  store <4 x i32> %wide.load403, ptr %i.hj, align 4, !tbaa !318
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.hk, label %middle.block405, label %vector.body398, !llvm.loop !885

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.gy, %n.vec397
  br i1 %cmp.n406, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader414

.lr.ph.i.i178.preheader414:                       ; preds = %vector.memcheck392, %.lr.ph.i.i178.preheader, %middle.block405
  %.010.i.i179.ph = phi ptr [ %i.ed, %vector.memcheck392 ], [ %i.ed, %.lr.ph.i.i178.preheader ], [ %i.hd, %middle.block405 ]
  %.079.i.i180.ph = phi ptr [ %3, %vector.memcheck392 ], [ %3, %.lr.ph.i.i178.preheader ], [ %i.he, %middle.block405 ]
  br label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.preheader414, %.lr.ph.i.i178
  %.010.i.i179 = phi ptr [ %i.hm, %.lr.ph.i.i178 ], [ %.010.i.i179.ph, %.lr.ph.i.i178.preheader414 ]
  %.079.i.i180 = phi ptr [ %i.hl, %.lr.ph.i.i178 ], [ %.079.i.i180.ph, %.lr.ph.i.i178.preheader414 ]
  %i.hl = getelementptr inbounds i8, ptr %.079.i.i180, i64 -4 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %.010.i.i179, i64 -4 ; 3 uses
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !318
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !318
  %.not.i.i181 = icmp eq ptr %0, %i.hl
  br i1 %.not.i.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178, !llvm.loop !886

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182: ; preds = %.lr.ph.i.i178, %middle.block405, %bb.g
  %i.ho = phi ptr [ %i.ed, %bb.g ], [ %i.hd, %middle.block405 ], [ %i.hm, %.lr.ph.i.i178 ] ; 2 uses
  %.not3.i183 = icmp eq ptr %0, %i.ho
  br i1 %.not3.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %.lr.ph.i184
  %storemerge4.i185 = phi ptr [ %i.hr, %.lr.ph.i184 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i185, align 4, !tbaa !318
  %i.hp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hq = add i32 %i.hp, -1
  store i32 %i.hq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hr = getelementptr inbounds nuw i8, ptr %storemerge4.i185, i64 4 ; 2 uses
  %.not.i186 = icmp eq ptr %i.hr, %i.ho
  br i1 %.not.i186, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_4test25expand_bwd_test_allocatorINS3_12copyable_intEEEPS5_ED2Ev.exit147, label %.lr.ph.i184, !llvm.loop !10

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.hs = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 6 uses
  %.not17.i196 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i196, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %bb.h
  %xtraiter432 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %.020.i198.prol = phi i64 [ %i.ht, %.lr.ph.i197.prol ], [ %i.m, %.lr.ph.i197.preheader ]
  %.0819.i199.prol = phi ptr [ %i.hx, %.lr.ph.i197.prol ], [ %i.hs, %.lr.ph.i197.preheader ] ; 2 uses
  %.01618.i200.prol = phi ptr [ %i.hy, %.lr.ph.i197.prol ], [ %i.d, %.lr.ph.i197.preheader ] ; 2 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %i.ht = add i64 %.020.i198.prol, -1             ; 2 uses
  %i.hu = load i32, ptr %.0819.i199.prol, align 4, !tbaa !318
  store i32 %i.hu, ptr %.01618.i200.prol, align 4, !tbaa !318
  %i.hv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hx = getelementptr inbounds nuw i8, ptr %.0819.i199.prol, i64 4 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.01618.i200.prol, i64 4 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !887

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %.020.i198.unr = phi i64 [ %i.m, %.lr.ph.i197.preheader ], [ %i.ht, %.lr.ph.i197.prol ]
  %.0819.i199.unr = phi ptr [ %i.hs, %.lr.ph.i197.preheader ], [ %i.hx, %.lr.ph.i197.prol ]
  %.01618.i200.unr = phi ptr [ %i.d, %.lr.ph.i197.preheader ], [ %i.hy, %.lr.ph.i197.prol ]
  %i.hz = icmp ult i64 %i.m, 4
  br i1 %i.hz, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %.020.i198 = phi i64 [ %i.in, %.lr.ph.i197 ], [ %.020.i198.unr, %.lr.ph.i197.prol.loopexit ]
  %.0819.i199 = phi ptr [ %i.iq, %.lr.ph.i197 ], [ %.0819.i199.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %.01618.i200 = phi ptr [ %i.ir, %.lr.ph.i197 ], [ %.01618.i200.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %i.ia = load i32, ptr %.0819.i199, align 4, !tbaa !318
  store i32 %i.ia, ptr %.01618.i200, align 4, !tbaa !318
  %i.ib = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.id = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 4
  %i.if = load i32, ptr %i.id, align 4, !tbaa !318
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !318
  %i.ig = add i32 %i.ib, 2
  store i32 %i.ig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ih = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 8
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !318
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !318
  %i.ik = add i32 %i.ib, 3
  store i32 %i.ik, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.il = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 12
  %i.im = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 12
  %i.in = add i64 %.020.i198, -4                  ; 2 uses
  %i.io = load i32, ptr %i.il, align 4, !tbaa !318
  store i32 %i.io, ptr %i.im, align 4, !tbaa !318
  %i.ip = add i32 %i.ib, 4
  store i32 %i.ip, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iq = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 16
  %.not.i201.3 = icmp eq i64 %i.in, 0
  br i1 %.not.i201.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197, !llvm.loop !8

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203: ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %.not8.i.i205 = icmp eq ptr %3, %i.hs
  br i1 %.not8.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader

.lr.ph.i.i206.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.is = shl nsw i64 %1, 2
  %i.it = shl i64 %i.c, 1
  %i.iu = shl i64 %4, 2
  %i.iv = add i64 %i.is, %i.it
  %i.iw = add i64 %i.iv, -4
  %i.ix = add i64 %i.h, %i.b
  %i.iy = add i64 %i.ix, %i.iu
  %i.iz = sub i64 %i.iw, %i.iy                    ; 2 uses
  %i.ja = lshr i64 %i.iz, 2
  %i.jb = add nuw nsw i64 %i.ja, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.iz, 28
  %diff.check323 = icmp ugt i64 %i.l, -32
  %or.cond410 = or i1 %min.iters.check325, %diff.check323
  br i1 %or.cond410, label %.lr.ph.i.i206.preheader421, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i206.preheader
  %n.vec327 = and i64 %i.jb, 9223372036854775800  ; 3 uses
  %i.jc = mul i64 %n.vec327, -4                   ; 2 uses
  %i.jd = getelementptr i8, ptr %i.d, i64 %i.jc   ; 2 uses
  %i.je = getelementptr i8, ptr %i.hs, i64 %i.jc
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.jf = mul i64 %index329, -4                   ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.d, i64 %i.jf ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.hs, i64 %i.jf ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.jh = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  %wide.load332 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !318
  %wide.load333 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !318
  %i.ji = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.jj = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  store <4 x i32> %wide.load332, ptr %i.ji, align 4, !tbaa !318
  store <4 x i32> %wide.load333, ptr %i.jj, align 4, !tbaa !318
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.jk, label %middle.block335, label %vector.body328, !llvm.loop !888

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.jb, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader421

.lr.ph.i.i206.preheader421:                       ; preds = %.lr.ph.i.i206.preheader, %middle.block335
  %.010.i.i207.ph = phi ptr [ %i.d, %.lr.ph.i.i206.preheader ], [ %i.jd, %middle.block335 ]
  %.079.i.i208.ph = phi ptr [ %i.hs, %.lr.ph.i.i206.preheader ], [ %i.je, %middle.block335 ]
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206.preheader421, %.lr.ph.i.i206
  %.010.i.i207 = phi ptr [ %i.jm, %.lr.ph.i.i206 ], [ %.010.i.i207.ph, %.lr.ph.i.i206.preheader421 ]
  %.079.i.i208 = phi ptr [ %i.jl, %.lr.ph.i.i206 ], [ %.079.i.i208.ph, %.lr.ph.i.i206.preheader421 ]
  %i.jl = getelementptr inbounds i8, ptr %.079.i.i208, i64 -4 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.010.i.i207, i64 -4 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !318
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !318
  %.not.i.i209 = icmp eq ptr %3, %i.jl
  br i1 %.not.i.i209, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206, !llvm.loop !889

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210: ; preds = %.lr.ph.i.i206, %middle.block335, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.jo = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25expand_bwd_test_allocatorINS2_12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203 ], [ %i.jd, %middle.block335 ], [ %i.jm, %.lr.ph.i.i206 ] ; 2 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64              ; 2 uses
  %i.jq = sub i64 0, %4
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jq ; 10 uses
  %.not6.i.i212 = icmp eq i64 %4, 0
end_hunk_1
begin_hunk_2_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt15_Deque_iteratorIiRKiPSA_EEES8_EEvT_mSF_SF_mT0_RT1_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %bb.c, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol

bb.c:                                             ; preds = %.lr.ph.i.i.prol
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !259, !noalias !8367 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol: ; preds = %bb.c, %.lr.ph.i.i.prol
  %.sroa.11.1.i.prol = phi ptr [ %i.y, %bb.c ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.ac = phi ptr [ %i.z, %bb.c ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 4
  %i.ae = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.11.0.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.preheader ], [ %.sroa.11.1.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.ab, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.unr683 = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.ac, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.015.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.ae, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.ad, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %i.af = icmp eq i64 %4, 1
  br i1 %i.af, label %.loopexit444, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.sroa.11.0.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = phi ptr [ %i.bb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.bc, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.unr683, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.be, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.bd, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !247, !noalias !8367
  store i32 %i.ai, ptr %.01214.i.i, align 4, !tbaa !318, !noalias !8367
  %i.aj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8367
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8367
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ag
  br i1 %i.am, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !259, !noalias !8367 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i:    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.11.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.11.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.aq = phi ptr [ %i.ap, %bb.d ], [ %i.ag, %.lr.ph.i.i ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %bb.d ], [ %i.al, %.lr.ph.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !247, !noalias !8367
  store i32 %i.at, ptr %i.as, align 4, !tbaa !318, !noalias !8367
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8367
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8367
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aq
  br i1 %i.ax, label %bb.e, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1

bb.e:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !259, !noalias !8367 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1:  ; preds = %bb.e, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i
  %.sroa.11.1.i.1 = phi ptr [ %i.ay, %bb.e ], [ %.sroa.11.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i ]
  %i.bb = phi ptr [ %i.ba, %bb.e ], [ %i.aq, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i ]
  %i.bc = phi ptr [ %i.az, %bb.e ], [ %i.aw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.be = add i64 %.015.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.1, label %.loopexit444, label %.lr.ph.i.i, !llvm.loop !156

.loopexit444:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.bf = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.bf
  br i1 %.not197, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit444
  %.not200 = icmp eq i64 %i.e, %1
  %.not16.i206 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.f
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.bk, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 2 uses
  %.01517.i209 = phi ptr [ %i.bl, %.lr.ph.i207 ], [ %i.bg, %.lr.ph.i207.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i209) ]
  %i.bh = load i32, ptr %.018.i208, align 4, !tbaa !318
  store i32 %i.bh, ptr %.01517.i209, align 4, !tbaa !318
  %i.bi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.bk, %i.a
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !153

bb.g:                                             ; preds = %.loopexit444
  %i.bm = sub nuw i64 %i.h, %i.i                  ; 5 uses
  %.not17.i = icmp eq i64 %i.bm, 0
  br i1 %.not17.i, label %.loopexit442, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.g
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter687 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.020.i.prol = phi i64 [ %i.bo, %.lr.ph.i213.prol ], [ %i.bm, %.lr.ph.i213.preheader ]
  %.0819.i.prol = phi ptr [ %i.bs, %.lr.ph.i213.prol ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bt, %.lr.ph.i213.prol ], [ %i.bn, %.lr.ph.i213.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.bo = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.bp = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.bp, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.bq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !8340

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.bm, %.lr.ph.i213.preheader ], [ %i.bo, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.bs, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.bn, %.lr.ph.i213.preheader ], [ %i.bt, %.lr.ph.i213.prol ]
  %i.bu = sub i64 %i.i, %i.h
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %.loopexit442, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.cj, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.cm, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.cn, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bw = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bw, ptr %.01618.i, align 4, !tbaa !318
  %i.bx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !318
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !318
  %i.cc = add i32 %i.bx, 2
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !318
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !318
  %i.cg = add i32 %i.bx, 3
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ch = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.cj = add i64 %.020.i, -4                     ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !318
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !318
  %i.cl = add i32 %i.bx, 4
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i214.3 = icmp eq i64 %i.cj, 0
  br i1 %.not.i214.3, label %.loopexit442, label %.lr.ph.i213, !llvm.loop !152

.loopexit442:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.g
  %i.co = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bm ; 6 uses
  %.not.i215 = icmp eq ptr %i.co, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.h

bb.h:                                             ; preds = %.loopexit442
  %.not8.i.i = icmp eq ptr %i.co, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.h
  %i.cp = add i64 %1, %i.i
  %i.cq = shl i64 %i.cp, 2
  %i.cr = add i64 %i.cq, %i.c
  %i.cs = add i64 %i.cr, -4
  %i.ct = add i64 %i.g, %i.b
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 76
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader679, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg656 = sub i64 %8, %7
  %i.cx = add i64 %.neg656, %i.c
  %i.cy = add i64 %i.cx, -1
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %.lr.ph.i.i216.preheader679, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 3 uses
  %i.cz = shl i64 %n.vec, 2                       ; 2 uses
  %i.da = getelementptr i8, ptr %0, i64 %i.cz     ; 2 uses
  %i.db = getelementptr i8, ptr %i.co, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.dc ; 2 uses
  %next.gep584 = getelementptr i8, ptr %i.co, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep584, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep584, align 4, !tbaa !318
  %wide.load585 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !318
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load585, ptr %i.de, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !8341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader679

.lr.ph.i.i216.preheader679:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.da, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph.i.i216.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader679, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.di, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader679 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.dh, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader679 ] ; 2 uses
  %i.dg = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.dg, ptr %.010.i.i, align 4, !tbaa !318
  %i.dh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.dh, %i.a
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !8342

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.h
  %i.dj = phi ptr [ %0, %bb.h ], [ %i.da, %middle.block ], [ %i.di, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.dj, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.dm, %.lr.ph.i218 ], [ %i.dj, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.dm, %i.a
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.f
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter684 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.dn = phi i64 [ %i.do, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.dr, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.do = add i64 %i.dn, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !318
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter684
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8343

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr686 = phi i64 [ %1, %.preheader.preheader ], [ %i.do, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.dr, %.preheader.prol ]
  %i.ds = icmp ult i64 %1, 4
  br i1 %i.ds, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dt = phi i64 [ %i.eb, %.preheader ], [ %.unr686, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.ed, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !318
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !318
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !318
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.eb = add i64 %i.dt, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !318
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.eb, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !158

bb.i:                                             ; preds = %bb.a
  %i.ee = icmp ugt i64 %4, %i.h                   ; 3 uses
  %.not180 = icmp ugt i64 %i.h, %i.e
  br i1 %.not180, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit440, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.j
  %xtraiter690 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  br i1 %lcmp.mod691.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader, %.lr.ph.i235.prol
  %.020.i236.prol = phi i64 [ %i.ef, %.lr.ph.i235.prol ], [ %i.h, %.lr.ph.i235.preheader ]
  %.0819.i237.prol = phi ptr [ %i.ej, %.lr.ph.i235.prol ], [ %0, %.lr.ph.i235.preheader ] ; 2 uses
  %.01618.i238.prol = phi ptr [ %i.ek, %.lr.ph.i235.prol ], [ %2, %.lr.ph.i235.preheader ] ; 3 uses
  %prol.iter692 = phi i64 [ %prol.iter692.next, %.lr.ph.i235.prol ], [ 0, %.lr.ph.i235.preheader ]
  %i.ef = add i64 %.020.i236.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238.prol) ]
  %i.eg = load i32, ptr %.0819.i237.prol, align 4, !tbaa !318
  store i32 %i.eg, ptr %.01618.i238.prol, align 4, !tbaa !318
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ej = getelementptr inbounds nuw i8, ptr %.0819.i237.prol, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01618.i238.prol, i64 4 ; 2 uses
  %prol.iter692.next = add i64 %prol.iter692, 1   ; 2 uses
  %prol.iter692.cmp.not = icmp eq i64 %prol.iter692.next, %xtraiter690
  br i1 %prol.iter692.cmp.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol, !llvm.loop !8344

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.h, %.lr.ph.i235.preheader ], [ %i.ef, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.ej, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.ek, %.lr.ph.i235.prol ]
  %i.el = icmp ult i64 %i.h, 4
  br i1 %i.el, label %.loopexit440, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ez, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.fc, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 5 uses
  %.01618.i238 = phi ptr [ %i.fd, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.em = load i32, ptr %.0819.i237, align 4, !tbaa !318
  store i32 %i.em, ptr %.01618.i238, align 4, !tbaa !318
  %i.en = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ep = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !318
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !318
  %i.es = add i32 %i.en, 2
  store i32 %i.es, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !318
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !318
  %i.ew = add i32 %i.en, 3
  store i32 %i.ew, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ex = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 12
  %i.ez = add i64 %.020.i236, -4                  ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !318
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !318
  %i.fb = add i32 %i.en, 4
  store i32 %i.fb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fc = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 16
  %.not.i239.3 = icmp eq i64 %i.ez, 0
  br i1 %.not.i239.3, label %.loopexit440, label %.lr.ph.i235, !llvm.loop !152

.loopexit440:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.j
  %i.fe = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 7 uses
  %i.ff = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.ff, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit440
  %i.fg = shl i64 %i.c, 1
  %i.fh = add i64 %i.b, %i.f
  %i.fi = add i64 %i.fh, -4
  %i.fj = sub i64 %i.fi, %i.fg                    ; 2 uses
  %i.fk = lshr i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEEvT0_mSF_SF_mT1_RT_:bb.a
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.ad = phi ptr [ %i.aa, %bb.c ], [ %i.x, %.lr.ph.i.i.prol ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.af = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.11.0.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %.sroa.11.1.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.ac, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.unr429 = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ad, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.015.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.af, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.ae, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %i.ag = icmp eq i64 %4, 1
  br i1 %i.ag, label %.loopexit282, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.sroa.11.0.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.bc, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ai = phi ptr [ %i.bd, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.unr429, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.bf, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.be, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !247, !noalias !8394
  store i32 %i.aj, ptr %.01214.i.i, align 4, !tbaa !318, !noalias !8394
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8394
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8394
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ah
  br i1 %i.an, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !259, !noalias !8394 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i:    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.11.1.i = phi ptr [ %i.ao, %bb.d ], [ %.sroa.11.0.i, %.lr.ph.i.i ] ; 2 uses
  %i.ar = phi ptr [ %i.aq, %bb.d ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %i.as = phi ptr [ %i.ap, %bb.d ], [ %i.am, %.lr.ph.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  %i.au = load i32, ptr %i.as, align 4, !tbaa !247, !noalias !8394
  store i32 %i.au, ptr %i.at, align 4, !tbaa !318, !noalias !8394
  %i.av = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8394
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8394
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ar
  br i1 %i.ay, label %bb.e, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1

bb.e:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !259, !noalias !8394 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1:  ; preds = %bb.e, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i
  %.sroa.11.1.i.1 = phi ptr [ %i.az, %bb.e ], [ %.sroa.11.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i ]
  %i.bc = phi ptr [ %i.bb, %bb.e ], [ %i.ar, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i ]
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.ax, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.bf = add i64 %.015.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.1, label %.loopexit282, label %.lr.ph.i.i, !llvm.loop !156

.loopexit282:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1, %bb.b
  %.not16.i = icmp eq ptr %3, %i.c
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit282
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.bg, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.bh = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.bh, ptr %.01517.i, align 4, !tbaa !318
  %i.bi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.bk, %i.c
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %.loopexit282
  %.not123 = icmp ult i64 %i.l, %i.d
  br i1 %.not123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.f, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.bp, %.lr.ph.i129 ], [ %0, %bb.f ] ; 2 uses
  %.01517.i131 = phi ptr [ %i.bq, %.lr.ph.i129 ], [ %2, %bb.f ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i131) ]
  %i.bm = load i32, ptr %.018.i130, align 4, !tbaa !318
  store i32 %i.bm, ptr %.01517.i131, align 4, !tbaa !318
  %i.bn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.bp, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !153

bb.g:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.br = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.bs = sub i64 0, %i.br                        ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bs ; 8 uses
  %.not17.i = icmp eq i64 %i.br, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.g
  %xtraiter433 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod434.not = icmp eq i64 %xtraiter433, 0
  br i1 %lcmp.mod434.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135.prol
  %.020.i.prol = phi i64 [ %i.bu, %.lr.ph.i135.prol ], [ %i.br, %.lr.ph.i135.preheader ]
  %.0819.i.prol = phi ptr [ %i.by, %.lr.ph.i135.prol ], [ %i.bt, %.lr.ph.i135.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bz, %.lr.ph.i135.prol ], [ %i.c, %.lr.ph.i135.preheader ] ; 3 uses
  %prol.iter435 = phi i64 [ %prol.iter435.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader ]
  %i.bu = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.bv = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.bv, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.bw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter435.next = add i64 %prol.iter435, 1   ; 2 uses
  %prol.iter435.cmp.not = icmp eq i64 %prol.iter435.next, %xtraiter433
  br i1 %prol.iter435.cmp.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol, !llvm.loop !8377

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.020.i.unr = phi i64 [ %i.br, %.lr.ph.i135.preheader ], [ %i.bu, %.lr.ph.i135.prol ]
  %.0819.i.unr = phi ptr [ %i.bt, %.lr.ph.i135.preheader ], [ %i.by, %.lr.ph.i135.prol ]
  %.01618.i.unr = phi ptr [ %i.c, %.lr.ph.i135.preheader ], [ %i.bz, %.lr.ph.i135.prol ]
  %i.ca = sub i64 %i.m, %i.l
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.020.i = phi i64 [ %i.cp, %.lr.ph.i135 ], [ %.020.i.unr, %.lr.ph.i135.prol.loopexit ]
  %.0819.i = phi ptr [ %i.cs, %.lr.ph.i135 ], [ %.0819.i.unr, %.lr.ph.i135.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ct, %.lr.ph.i135 ], [ %.01618.i.unr, %.lr.ph.i135.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.cc = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.cc, ptr %.01618.i, align 4, !tbaa !318
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !318
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !318
  %i.ci = add i32 %i.cd, 2
  store i32 %i.ci, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cj = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !318
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !318
  %i.cm = add i32 %i.cd, 3
  store i32 %i.cm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cn = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.cp = add i64 %.020.i, -4                     ; 2 uses
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !318
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !318
  %i.cr = add i32 %i.cd, 4
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cs = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i136.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i136.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %bb.g
  %.not.i137 = icmp eq ptr %i.bt, %i.c
  %.not8.i.i = icmp eq ptr %0, %i.bt
  %or.cond = or i1 %.not.i137, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.cu = shl i64 %i.bs, 2
  %i.cv = add i64 %i.cu, %i.g
  %i.cw = add i64 %i.cv, -4
  %i.cx = sub i64 %i.cw, %i.b                     ; 2 uses
  %i.cy = lshr i64 %i.cx, 2
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cx, 92
  br i1 %min.iters.check, label %.lr.ph.i.i138.preheader427, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i138.preheader
  %i.da = shl i64 %i.bs, 2
  %7 = add i64 %i.da, %i.g
  %8 = shl nsw i64 %1, 2
  %i.db = add i64 %8, %i.b
  %i.dc = sub i64 %i.db, %7
  %diff.check = icmp ugt i64 %i.dc, -32
  br i1 %diff.check, label %.lr.ph.i.i138.preheader427, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, 9223372036854775800     ; 3 uses
  %i.dd = mul i64 %n.vec, -4                      ; 2 uses
  %i.de = getelementptr i8, ptr %i.c, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.bt, i64 %i.dd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.dg ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.bt, i64 %i.dg ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %next.gep362, i64 -16
  %i.di = getelementptr inbounds i8, ptr %next.gep362, i64 -32
  %wide.load = load <4 x i32>, ptr %i.dh, align 4, !tbaa !318
  %wide.load363 = load <4 x i32>, ptr %i.di, align 4, !tbaa !318
  %i.dj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dk = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dj, align 4, !tbaa !318
  store <4 x i32> %wide.load363, ptr %i.dk, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !8378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader427

.lr.ph.i.i138.preheader427:                       ; preds = %vector.memcheck, %.lr.ph.i.i138.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i138.preheader ], [ %i.de, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bt, %vector.memcheck ], [ %i.bt, %.lr.ph.i.i138.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader427, %.lr.ph.i.i138
  %.010.i.i = phi ptr [ %i.dn, %.lr.ph.i.i138 ], [ %.010.i.i.ph, %.lr.ph.i.i138.preheader427 ]
  %.079.i.i = phi ptr [ %i.dm, %.lr.ph.i.i138 ], [ %.079.i.i.ph, %.lr.ph.i.i138.preheader427 ]
  %i.dm = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !318
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !318
  %.not.i.i139 = icmp eq ptr %0, %i.dm
  br i1 %.not.i.i139, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138, !llvm.loop !8379

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i138, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.dr, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.dr, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i129, %bb.f
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter430 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod431.not = icmp eq i64 %xtraiter430, 0
  br i1 %lcmp.mod431.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.ds = phi i64 [ %i.dt, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.dw, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.dt = add i64 %i.ds, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !318
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter430
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8380

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr432 = phi i64 [ %1, %.preheader.preheader ], [ %i.dt, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.dw, %.preheader.prol ]
  %i.dx = icmp ult i64 %1, 4
  br i1 %i.dx, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dy = phi i64 [ %i.eg, %.preheader ], [ %.unr432, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.ei, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !318
  %i.dz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.eb, align 4, !tbaa !318
  %i.ec = add i32 %i.dz, -2
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.ed, align 4, !tbaa !318
  %i.ee = add i32 %i.dz, -3
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.eg = add i64 %i.dy, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.ef, align 4, !tbaa !318
  %i.eh = add i32 %i.dz, -4
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.eg, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !158

bb.h:                                             ; preds = %bb.a
  %i.ej = icmp ugt i64 %i.l, %i.i
  br i1 %i.ej, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %.not16.i156 = icmp eq ptr %3, %i.c
  br i1 %.not16.i156, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.i
  %i.ek = sub nsw i64 0, %i.i
  %i.el = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ek
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.ep, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.eq, %.lr.ph.i157 ], [ %i.el, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.em = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.em, ptr %.01517.i159, align 4, !tbaa !318
  %i.en = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ep = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.ep, %i.c
  br i1 %.not.i160, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162: ; preds = %.lr.ph.i157, %bb.i
  %i.er = sub nuw nsw i64 %i.l, %i.i              ; 4 uses
  %i.es = sub i64 %4, %i.er                       ; 6 uses
  %i.et = sub i64 0, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.et ; 9 uses
  %i.ev = load ptr, ptr %5, align 8, !tbaa !434   ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !435 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !431 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !432 ; 4 uses
  %.not4.i.i = icmp eq i64 %i.es, 0
  br i1 %.not4.i.i, label %.loopexit277, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %i.fc = add i64 %i.i, %4
  %.neg455 = add nsw i64 %i.l, 1
  %xtraiter444 = and i64 %i.es, 1
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %.lr.ph.i.i163.prol.loopexit, label %.lr.ph.i.i163.prol

.lr.ph.i.i163.prol:                               ; preds = %.lr.ph.i.i163.preheader
  %i.fd = add nsw i64 %i.es, -1
  %i.fe = load i32, ptr %i.ev, align 4, !tbaa !247, !noalias !8395
  store i32 %i.fe, ptr %i.eu, align 4, !tbaa !318, !noalias !8395
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ez
  br i1 %i.fg, label %bb.j, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol

bb.j:                                             ; preds = %.lr.ph.i.i163.prol
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !259, !noalias !8395 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol: ; preds = %bb.j, %.lr.ph.i.i163.prol
  %.sroa.11.1.i167.prol = phi ptr [ %i.fh, %bb.j ], [ %i.fb, %.lr.ph.i.i163.prol ] ; 2 uses
  %.sroa.4.1.i168.prol = phi ptr [ %i.fi, %bb.j ], [ %i.ex, %.lr.ph.i.i163.prol ] ; 2 uses
  %i.fk = phi ptr [ %i.fj, %bb.j ], [ %i.ez, %.lr.ph.i.i163.prol ] ; 2 uses
  %i.fl = phi ptr [ %i.fi, %bb.j ], [ %i.ff, %.lr.ph.i.i163.prol ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  br label %.lr.ph.i.i163.prol.loopexit

.lr.ph.i.i163.prol.loopexit:                      ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol, %.lr.ph.i.i163.preheader
  %.sroa.11.1.i167.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i163.preheader ], [ %.sroa.11.1.i167.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.sroa.4.1.i168.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i163.preheader ], [ %.sroa.4.1.i168.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.lcssa420.unr = phi ptr [ poison, %.lr.ph.i.i163.preheader ], [ %i.fk, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.lcssa419.unr = phi ptr [ poison, %.lr.ph.i.i163.preheader ], [ %i.fl, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.sroa.11.0.i164.unr = phi ptr [ %i.fb, %.lr.ph.i.i163.preheader ], [ %.sroa.11.1.i167.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.sroa.4.0.i165.unr = phi ptr [ %i.ex, %.lr.ph.i.i163.preheader ], [ %.sroa.4.1.i168.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.unr447 = phi ptr [ %i.ez, %.lr.ph.i.i163.preheader ], [ %i.fk, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.unr448.a = phi ptr [ %i.ev, %.lr.ph.i.i163.preheader ], [ %i.fl, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.06.i.i.unr = phi ptr [ %i.eu, %.lr.ph.i.i163.preheader ], [ %i.fm, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %.035.i.i.unr = phi i64 [ %i.es, %.lr.ph.i.i163.preheader ], [ %i.fd, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.prol ]
  %i.fn = icmp eq i64 %i.fc, %.neg455
  br i1 %i.fn, label %.loopexit277, label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1
  %.sroa.11.0.i164 = phi ptr [ %.sroa.11.1.i167.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ], [ %.sroa.11.0.i164.unr, %.lr.ph.i.i163.prol.loopexit ] ; 2 uses
  %.sroa.4.0.i165 = phi ptr [ %.sroa.4.1.i168.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ], [ %.sroa.4.0.i165.unr, %.lr.ph.i.i163.prol.loopexit ]
  %i.fo = phi ptr [ %i.gg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ], [ %.unr447, %.lr.ph.i.i163.prol.loopexit ] ; 2 uses
  %i.fp = phi ptr [ %i.gh, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ], [ %.unr448.a, %.lr.ph.i.i163.prol.loopexit ] ; 2 uses
  %.06.i.i = phi ptr [ %i.gi, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ], [ %.06.i.i.unr, %.lr.ph.i.i163.prol.loopexit ] ; 3 uses
  %.035.i.i = phi i64 [ %i.fz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ], [ %.035.i.i.unr, %.lr.ph.i.i163.prol.loopexit ]
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !247, !noalias !8395
  store i32 %i.fq, ptr %.06.i.i, align 4, !tbaa !318, !noalias !8395
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fo
  br i1 %i.fs, label %bb.k, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166

bb.k:                                             ; preds = %.lr.ph.i.i163
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i164, i64 8 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !259, !noalias !8395 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166: ; preds = %bb.k, %.lr.ph.i.i163
  %.sroa.11.1.i167 = phi ptr [ %i.ft, %bb.k ], [ %.sroa.11.0.i164, %.lr.ph.i.i163 ] ; 2 uses
  %.sroa.4.1.i168 = phi ptr [ %i.fu, %bb.k ], [ %.sroa.4.0.i165, %.lr.ph.i.i163 ]
  %i.fw = phi ptr [ %i.fv, %bb.k ], [ %i.fo, %.lr.ph.i.i163 ] ; 2 uses
  %i.fx = phi ptr [ %i.fu, %bb.k ], [ %i.fr, %.lr.ph.i.i163 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  %i.fz = add i64 %.035.i.i, -2                   ; 2 uses
  %i.ga = load i32, ptr %i.fx, align 4, !tbaa !247, !noalias !8395
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !318, !noalias !8395
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fw
  br i1 %i.gc, label %bb.l, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i167, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !259, !noalias !8395 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1: ; preds = %bb.l, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166
  %.sroa.11.1.i167.1 = phi ptr [ %i.gd, %bb.l ], [ %.sroa.11.1.i167, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166 ] ; 2 uses
  %.sroa.4.1.i168.1 = phi ptr [ %i.ge, %bb.l ], [ %.sroa.4.1.i168, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166 ] ; 2 uses
  %i.gg = phi ptr [ %i.gf, %bb.l ], [ %i.fw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166 ] ; 2 uses
  %i.gh = phi ptr [ %i.ge, %bb.l ], [ %i.gb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %.not.i.i169.1 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i169.1, label %.loopexit277, label %.lr.ph.i.i163, !llvm.loop !87

.loopexit277:                                     ; preds = %.lr.ph.i.i163.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %.sroa.11.2.i170 = phi ptr [ %i.fb, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %.sroa.11.1.i167.lcssa.unr, %.lr.ph.i.i163.prol.loopexit ], [ %.sroa.11.1.i167.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ] ; 3 uses
  %.sroa.4.2.i171 = phi ptr [ %i.ex, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %.sroa.4.1.i168.lcssa.unr, %.lr.ph.i.i163.prol.loopexit ], [ %.sroa.4.1.i168.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ]
  %i.gj = phi ptr [ %i.ez, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %.lcssa420.unr, %.lr.ph.i.i163.prol.loopexit ], [ %i.gg, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ] ; 4 uses
  %i.gk = phi ptr [ %i.ev, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %.lcssa419.unr, %.lr.ph.i.i163.prol.loopexit ], [ %i.gh, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i166.1 ] ; 4 uses
  store ptr %i.gk, ptr %5, align 8, !tbaa !259
  store ptr %.sroa.4.2.i171, ptr %i.ew, align 8, !tbaa !259
  store ptr %i.gj, ptr %i.ey, align 8, !tbaa !259
  %.neg456 = add nsw i64 %i.i, 1
  %xtraiter449 = and i64 %i.er, 1
  %lcmp.mod450.not = icmp eq i64 %xtraiter449, 0
  br i1 %lcmp.mod450.not, label %.lr.ph.i.i173.prol.loopexit, label %.lr.ph.i.i173.prol

.lr.ph.i.i173.prol:                               ; preds = %.loopexit277
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !247, !noalias !8396
  store i32 %i.gl, ptr %i.c, align 4, !tbaa !318, !noalias !8396
  %i.gm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8396
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8396
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gj
  br i1 %i.gp, label %bb.m, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol

bb.m:                                             ; preds = %.lr.ph.i.i173.prol
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.11.2.i170, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !259, !noalias !8396 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol: ; preds = %bb.m, %.lr.ph.i.i173.prol
  %.sroa.11.1.i179.prol = phi ptr [ %i.gq, %bb.m ], [ %.sroa.11.2.i170, %.lr.ph.i.i173.prol ]
  %i.gt = phi ptr [ %i.gs, %bb.m ], [ %i.gj, %.lr.ph.i.i173.prol ]
  %i.gu = phi ptr [ %i.gr, %bb.m ], [ %i.go, %.lr.ph.i.i173.prol ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gw = add nsw i64 %i.er, -1
  br label %.lr.ph.i.i173.prol.loopexit

.lr.ph.i.i173.prol.loopexit:                      ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol, %.loopexit277
  %.sroa.11.0.i174.unr = phi ptr [ %.sroa.11.2.i170, %.loopexit277 ], [ %.sroa.11.1.i179.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol ]
  %.unr452 = phi ptr [ %i.gj, %.loopexit277 ], [ %i.gt, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol ]
  %.unr453 = phi ptr [ %i.gk, %.loopexit277 ], [ %i.gu, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol ]
  %.015.i.i176.unr = phi i64 [ %i.er, %.loopexit277 ], [ %i.gw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol ]
  %.01214.i.i177.unr = phi ptr [ %i.c, %.loopexit277 ], [ %i.gv, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.prol ]
  %i.gx = icmp eq i64 %i.l, %.neg456
  br i1 %i.gx, label %.loopexit, label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1
  %.sroa.11.0.i174 = phi ptr [ %.sroa.11.1.i179.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1 ], [ %.sroa.11.0.i174.unr, %.lr.ph.i.i173.prol.loopexit ] ; 2 uses
  %i.gy = phi ptr [ %i.ht, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1 ], [ %.unr452, %.lr.ph.i.i173.prol.loopexit ] ; 2 uses
  %i.gz = phi ptr [ %i.hu, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1 ], [ %.unr453, %.lr.ph.i.i173.prol.loopexit ] ; 2 uses
  %.015.i.i176 = phi i64 [ %i.hw, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1 ], [ %.015.i.i176.unr, %.lr.ph.i.i173.prol.loopexit ]
  %.01214.i.i177 = phi ptr [ %i.hv, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1 ], [ %.01214.i.i177.unr, %.lr.ph.i.i173.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i177) ]
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !247, !noalias !8396
  store i32 %i.ha, ptr %.01214.i.i177, align 4, !tbaa !318, !noalias !8396
  %i.hb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8396
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8396
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gy
  br i1 %i.he, label %bb.n, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178

bb.n:                                             ; preds = %.lr.ph.i.i173
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i174, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !259, !noalias !8396 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178: ; preds = %bb.n, %.lr.ph.i.i173
  %.sroa.11.1.i179 = phi ptr [ %i.hf, %bb.n ], [ %.sroa.11.0.i174, %.lr.ph.i.i173 ] ; 2 uses
  %i.hi = phi ptr [ %i.hh, %bb.n ], [ %i.gy, %.lr.ph.i.i173 ] ; 2 uses
  %i.hj = phi ptr [ %i.hg, %bb.n ], [ %i.hd, %.lr.ph.i.i173 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.01214.i.i177, i64 4
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !247, !noalias !8396
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !318, !noalias !8396
  %i.hm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8396
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247, !noalias !8396
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hi
  br i1 %i.hp, label %bb.o, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1

bb.o:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i179, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !259, !noalias !8396 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1: ; preds = %bb.o, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178
  %.sroa.11.1.i179.1 = phi ptr [ %i.hq, %bb.o ], [ %.sroa.11.1.i179, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178 ]
  %i.ht = phi ptr [ %i.hs, %bb.o ], [ %i.hi, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178 ]
  %i.hu = phi ptr [ %i.hr, %bb.o ], [ %i.ho, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.01214.i.i177, i64 8
  %i.hw = add i64 %.015.i.i176, -2                ; 2 uses
  %.not.i.i181.1 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i181.1, label %.loopexit, label %.lr.ph.i.i173, !llvm.loop !156

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i178.1, %.lr.ph.i.i173.prol.loopexit
  %.not.i185 = icmp eq ptr %3, %i.eu
  br i1 %.not.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not8.i.i186 = icmp eq ptr %0, %3
  br i1 %.not8.i.i186, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, label %.lr.ph.i.i187.preheader

.lr.ph.i.i187.preheader:                          ; preds = %bb.p
  %i.hx = add i64 %i.g, -4
  %i.hy = sub i64 %i.hx, %i.b                     ; 2 uses
  %i.hz = lshr i64 %i.hy, 2
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check402 = icmp ult i64 %i.hy, 92
  br i1 %min.iters.check402, label %.lr.ph.i.i187.preheader418, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph.i.i187.preheader
  %i.ib = shl nsw i64 %1, 2
  %9 = add i64 %i.ib, %i.b
  %10 = sub i64 %i.g, %9
  %.neg = shl i64 %i.es, 2
  %i.ic = add i64 %.neg, %10
  %i.id = add i64 %i.ic, -1
  %diff.check400 = icmp ult i64 %i.id, 31
  br i1 %diff.check400, label %.lr.ph.i.i187.preheader418, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck399
  %n.vec404 = and i64 %i.ia, 9223372036854775800  ; 3 uses
  %i.ie = mul i64 %n.vec404, -4                   ; 2 uses
  %i.if = getelementptr i8, ptr %i.eu, i64 %i.ie  ; 2 uses
  %i.ig = getelementptr i8, ptr %3, i64 %i.ie
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next411, %vector.body405 ] ; 2 uses
  %i.ih = mul i64 %index406, -4                   ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.eu, i64 %i.ih ; 2 uses
  %next.gep408 = getelementptr i8, ptr %3, i64 %i.ih ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %next.gep408, i64 -16
  %i.ij = getelementptr inbounds i8, ptr %next.gep408, i64 -32
  %wide.load409 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !318
  %wide.load410 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !318
  %i.ik = getelementptr inbounds i8, ptr %next.gep407, i64 -16
  %i.il = getelementptr inbounds i8, ptr %next.gep407, i64 -32
  store <4 x i32> %wide.load409, ptr %i.ik, align 4, !tbaa !318
  store <4 x i32> %wide.load410, ptr %i.il, align 4, !tbaa !318
  %index.next411 = add nuw i64 %index406, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next411, %n.vec404
  br i1 %i.im, label %middle.block412, label %vector.body405, !llvm.loop !8385

middle.block412:                                  ; preds = %vector.body405
  %cmp.n413 = icmp eq i64 %i.ia, %n.vec404
  br i1 %cmp.n413, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, label %.lr.ph.i.i187.preheader418

.lr.ph.i.i187.preheader418:                       ; preds = %vector.memcheck399, %.lr.ph.i.i187.preheader, %middle.block412
  %.010.i.i188.ph = phi ptr [ %i.eu, %vector.memcheck399 ], [ %i.eu, %.lr.ph.i.i187.preheader ], [ %i.if, %middle.block412 ]
  %.079.i.i189.ph = phi ptr [ %3, %vector.memcheck399 ], [ %3, %.lr.ph.i.i187.preheader ], [ %i.ig, %middle.block412 ]
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %.lr.ph.i.i187.preheader418, %.lr.ph.i.i187
  %.010.i.i188 = phi ptr [ %i.io, %.lr.ph.i.i187 ], [ %.010.i.i188.ph, %.lr.ph.i.i187.preheader418 ]
  %.079.i.i189 = phi ptr [ %i.in, %.lr.ph.i.i187 ], [ %.079.i.i189.ph, %.lr.ph.i.i187.preheader418 ]
  %i.in = getelementptr inbounds i8, ptr %.079.i.i189, i64 -4 ; 3 uses
  %i.io = getelementptr inbounds i8, ptr %.010.i.i188, i64 -4 ; 3 uses
  %i.ip = load i32, ptr %i.in, align 4, !tbaa !318
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !318
  %.not.i.i190 = icmp eq ptr %0, %i.in
  br i1 %.not.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, label %.lr.ph.i.i187, !llvm.loop !8386

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191: ; preds = %.lr.ph.i.i187, %middle.block412, %bb.p
  %i.iq = phi ptr [ %i.eu, %bb.p ], [ %i.if, %middle.block412 ], [ %i.io, %.lr.ph.i.i187 ] ; 2 uses
  %.not3.i192 = icmp eq ptr %0, %i.iq
  br i1 %.not3.i192, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i193

.lr.ph.i193:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191, %.lr.ph.i193
  %storemerge4.i194 = phi ptr [ %i.it, %.lr.ph.i193 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit191 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i194, align 4, !tbaa !318
  %i.ir = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.is = add i32 %i.ir, -1
  store i32 %i.is, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.it = getelementptr inbounds nuw i8, ptr %storemerge4.i194, i64 4 ; 2 uses
  %.not.i195 = icmp eq ptr %i.it, %i.iq
  br i1 %.not.i195, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i193, !llvm.loop !157

bb.q:                                             ; preds = %bb.h
  %.idx = sub i64 0, %i.k
  %i.iu = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i205 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i206.preheader

.lr.ph.i206.preheader:                            ; preds = %bb.q
  %xtraiter436 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod437.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %.lr.ph.i206.prol.loopexit, label %.lr.ph.i206.prol

.lr.ph.i206.prol:                                 ; preds = %.lr.ph.i206.preheader, %.lr.ph.i206.prol
  %.020.i207.prol = phi i64 [ %i.iv, %.lr.ph.i206.prol ], [ %i.l, %.lr.ph.i206.preheader ]
  %.0819.i208.prol = phi ptr [ %i.iz, %.lr.ph.i206.prol ], [ %i.iu, %.lr.ph.i206.preheader ] ; 2 uses
  %.01618.i209.prol = phi ptr [ %i.ja, %.lr.ph.i206.prol ], [ %i.c, %.lr.ph.i206.preheader ] ; 3 uses
  %prol.iter438 = phi i64 [ %prol.iter438.next, %.lr.ph.i206.prol ], [ 0, %.lr.ph.i206.preheader ]
  %i.iv = add i64 %.020.i207.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i209.prol) ]
  %i.iw = load i32, ptr %.0819.i208.prol, align 4, !tbaa !318
  store i32 %i.iw, ptr %.01618.i209.prol, align 4, !tbaa !318
  %i.ix = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iz = getelementptr inbounds nuw i8, ptr %.0819.i208.prol, i64 4 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.01618.i209.prol, i64 4 ; 2 uses
  %prol.iter438.next = add i64 %prol.iter438, 1   ; 2 uses
  %prol.iter438.cmp.not = icmp eq i64 %prol.iter438.next, %xtraiter436
  br i1 %prol.iter438.cmp.not, label %.lr.ph.i206.prol.loopexit, label %.lr.ph.i206.prol, !llvm.loop !8387

.lr.ph.i206.prol.loopexit:                        ; preds = %.lr.ph.i206.prol, %.lr.ph.i206.preheader
  %.020.i207.unr = phi i64 [ %i.l, %.lr.ph.i206.preheader ], [ %i.iv, %.lr.ph.i206.prol ]
  %.0819.i208.unr = phi ptr [ %i.iu, %.lr.ph.i206.preheader ], [ %i.iz, %.lr.ph.i206.prol ]
  %.01618.i209.unr = phi ptr [ %i.c, %.lr.ph.i206.preheader ], [ %i.ja, %.lr.ph.i206.prol ]
  %i.jb = icmp ult i64 %i.l, 4
  br i1 %i.jb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.prol.loopexit, %.lr.ph.i206
  %.020.i207 = phi i64 [ %i.jp, %.lr.ph.i206 ], [ %.020.i207.unr, %.lr.ph.i206.prol.loopexit ]
  %.0819.i208 = phi ptr [ %i.js, %.lr.ph.i206 ], [ %.0819.i208.unr, %.lr.ph.i206.prol.loopexit ] ; 5 uses
  %.01618.i209 = phi ptr [ %i.jt, %.lr.ph.i206 ], [ %.01618.i209.unr, %.lr.ph.i206.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i209) ]
  %i.jc = load i32, ptr %.0819.i208, align 4, !tbaa !318
  store i32 %i.jc, ptr %.01618.i209, align 4, !tbaa !318
  %i.jd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jf = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 4
  %i.jh = load i32, ptr %i.jf, align 4, !tbaa !318
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !318
  %i.ji = add i32 %i.jd, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jj = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 8
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !318
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !318
  %i.jm = add i32 %i.jd, 3
  store i32 %i.jm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.jn = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 12
  %i.jo = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 12
  %i.jp = add i64 %.020.i207, -4                  ; 2 uses
  %i.jq = load i32, ptr %i.jn, align 4, !tbaa !318
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !318
  %i.jr = add i32 %i.jd, 4
  store i32 %i.jr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.js = getelementptr inbounds nuw i8, ptr %.0819.i208, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %.01618.i209, i64 16
  %.not.i210.3 = icmp eq i64 %i.jp, 0
  br i1 %.not.i210.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212, label %.lr.ph.i206, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212: ; preds = %.lr.ph.i206, %.lr.ph.i206.prol.loopexit
  %.not8.i.i214 = icmp eq ptr %3, %i.iu
  br i1 %.not8.i.i214, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212
  %i.ju = shl nsw i64 %1, 2
  %i.jv = shl i64 %i.b, 1
  %i.jw = shl i64 %4, 2
  %i.jx = add i64 %i.ju, %i.jv
  %i.jy = add i64 %i.jx, -4
  %i.jz = add i64 %i.g, %i.a
  %i.ka = add i64 %i.jz, %i.jw
  %i.kb = sub i64 %i.jy, %i.ka                    ; 2 uses
  %i.kc = lshr i64 %i.kb, 2
  %i.kd = add nuw nsw i64 %i.kc, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.kb, 28
  %diff.check366 = icmp ugt i64 %i.k, -32
  %or.cond416 = or i1 %min.iters.check368, %diff.check366
  br i1 %or.cond416, label %.lr.ph.i.i215.preheader424, label %vector.ph369

vector.ph369:                                     ; preds = %.lr.ph.i.i215.preheader
  %n.vec370 = and i64 %i.kd, 9223372036854775800  ; 3 uses
  %i.ke = mul i64 %n.vec370, -4                   ; 2 uses
  %i.kf = getelementptr i8, ptr %i.c, i64 %i.ke   ; 2 uses
  %i.kg = getelementptr i8, ptr %i.iu, i64 %i.ke
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.kh = mul i64 %index372, -4                   ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.c, i64 %i.kh ; 2 uses
  %next.gep374 = getelementptr i8, ptr %i.iu, i64 %i.kh ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %next.gep374, i64 -16
  %i.kj = getelementptr inbounds i8, ptr %next.gep374, i64 -32
  %wide.load375 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !318
  %wide.load376 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !318
  %i.kk = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.kl = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  store <4 x i32> %wide.load375, ptr %i.kk, align 4, !tbaa !318
  store <4 x i32> %wide.load376, ptr %i.kl, align 4, !tbaa !318
  %index.next377 = add nuw i64 %index372, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.km, label %middle.block378, label %vector.body371, !llvm.loop !8388

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.kd, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader424

.lr.ph.i.i215.preheader424:                       ; preds = %.lr.ph.i.i215.preheader, %middle.block378
  %.010.i.i216.ph = phi ptr [ %i.c, %.lr.ph.i.i215.preheader ], [ %i.kf, %middle.block378 ]
  %.079.i.i217.ph = phi ptr [ %i.iu, %.lr.ph.i.i215.preheader ], [ %i.kg, %middle.block378 ]
  br label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.preheader424, %.lr.ph.i.i215
  %.010.i.i216 = phi ptr [ %i.ko, %.lr.ph.i.i215 ], [ %.010.i.i216.ph, %.lr.ph.i.i215.preheader424 ]
  %.079.i.i217 = phi ptr [ %i.kn, %.lr.ph.i.i215 ], [ %.079.i.i217.ph, %.lr.ph.i.i215.preheader424 ]
  %i.kn = getelementptr inbounds i8, ptr %.079.i.i217, i64 -4 ; 3 uses
  %i.ko = getelementptr inbounds i8, ptr %.010.i.i216, i64 -4 ; 3 uses
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !318
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !318
  %.not.i.i218 = icmp eq ptr %3, %i.kn
  br i1 %.not.i.i218, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215, !llvm.loop !8389

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit219: ; preds = %.lr.ph.i.i215, %middle.block378, %bb.q, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212
  %i.kq = phi ptr [ %3, %bb.q ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit212 ], [ %i.kf, %middle.block378 ], [ %i.ko, %.lr.ph.i.i215 ] ; 2 uses
  %i.kr = ptrtoaddr ptr %i.kq to i64
  %i.ks = sub i64 0, %4
end_hunk_3
begin_hunk_4_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl32insert_value_initialized_n_proxyINS0_9allocatorIS3_Lj2ELj0EEEEES8_EEvT_mSA_SA_mT0_RT1_:bb.a
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.not14.i.i = icmp eq i64 %4, 0
  br i1 %.not14.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01315.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.016.i.i.prol, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.prol, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %.01315.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8414

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %.01315.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %4, 4
  br i1 %i.s, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01315.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.01315.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  store i32 0, ptr %.01315.i.i, align 4, !tbaa !318
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !318
  %i.w = add i32 %i.t, 2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  store i32 0, ptr %i.x, align 4, !tbaa !318
  %i.y = add i32 %i.t, 3
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.aa = add i64 %.016.i.i, -4                   ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !318
  %i.ab = add i32 %i.t, 4
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ac = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !151

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ad = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.ad
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not200 = icmp eq i64 %i.e, %1
  %.not16.i206 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.c
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.ai, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 2 uses
  %.01517.i209 = phi ptr [ %i.aj, %.lr.ph.i207 ], [ %i.ae, %.lr.ph.i207.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i209) ]
  %i.af = load i32, ptr %.018.i208, align 4, !tbaa !318
  store i32 %i.af, ptr %.01517.i209, align 4, !tbaa !318
  %i.ag = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.ai, %i.a
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !153

bb.d:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.ak = sub nuw i64 %i.h, %i.i                  ; 5 uses
  %.not17.i = icmp eq i64 %i.ak, 0
  br i1 %.not17.i, label %.loopexit404, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.d
  %i.al = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter572 = and i64 %i.ak, 3                 ; 2 uses
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.020.i.prol = phi i64 [ %i.am, %.lr.ph.i213.prol ], [ %i.ak, %.lr.ph.i213.preheader ]
  %.0819.i.prol = phi ptr [ %i.aq, %.lr.ph.i213.prol ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ar, %.lr.ph.i213.prol ], [ %i.al, %.lr.ph.i213.preheader ] ; 3 uses
  %prol.iter574 = phi i64 [ %prol.iter574.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.am = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.an = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.an, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ao = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter574.next = add i64 %prol.iter574, 1   ; 2 uses
  %prol.iter574.cmp.not = icmp eq i64 %prol.iter574.next, %xtraiter572
  br i1 %prol.iter574.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !8415

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.ak, %.lr.ph.i213.preheader ], [ %i.am, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.aq, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.al, %.lr.ph.i213.preheader ], [ %i.ar, %.lr.ph.i213.prol ]
  %i.as = sub i64 %i.i, %i.h
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.loopexit404, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.bh, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bk, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bl, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.au = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.au, ptr %.01618.i, align 4, !tbaa !318
  %i.av = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !318
  %i.ba = add i32 %i.av, 2
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !318
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !318
  %i.be = add i32 %i.av, 3
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bh = add i64 %.020.i, -4                     ; 2 uses
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !318
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !318
  %i.bj = add i32 %i.av, 4
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i214.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i214.3, label %.loopexit404, label %.lr.ph.i213, !llvm.loop !152

.loopexit404:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.d
  %i.bm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak ; 6 uses
  %.not.i215 = icmp eq ptr %i.bm, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.e

bb.e:                                             ; preds = %.loopexit404
  %.not8.i.i = icmp eq ptr %i.bm, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.e
  %i.bn = add i64 %1, %i.i
  %i.bo = shl i64 %i.bn, 2
  %i.bp = add i64 %i.bo, %i.c
  %i.bq = add i64 %i.bp, -4
  %i.br = add i64 %i.g, %i.b
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 76
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader565, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %6 = add i64 %i.g, %i.b
  %7 = shl i64 %i.i, 2
  %.neg550 = sub i64 %7, %6
  %i.bv = add i64 %.neg550, %i.c
  %i.bw = add i64 %i.bv, -1
  %diff.check = icmp ult i64 %i.bw, 31
  br i1 %diff.check, label %.lr.ph.i.i216.preheader565, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bx = shl i64 %n.vec, 2                       ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bx     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bm, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.ca ; 2 uses
  %next.gep478 = getelementptr i8, ptr %i.bm, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep478, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep478, align 4, !tbaa !318
  %wide.load479 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !318
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load479, ptr %i.cc, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !8416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader565

.lr.ph.i.i216.preheader565:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i216.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader565, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader565 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader565 ] ; 2 uses
  %i.ce = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.ce, ptr %.010.i.i, align 4, !tbaa !318
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.cf, %i.a
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !8417

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.ch = phi ptr [ %0, %bb.e ], [ %i.by, %middle.block ], [ %i.cg, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.ch, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.ck, %.lr.ph.i218 ], [ %i.ch, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.ck, %i.a
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter569 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod570.not = icmp eq i64 %xtraiter569, 0
  br i1 %lcmp.mod570.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cl = phi i64 [ %i.cm, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.cp, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter571 = phi i64 [ %prol.iter571.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter571.next = add i64 %prol.iter571, 1   ; 2 uses
  %prol.iter571.cmp.not = icmp eq i64 %prol.iter571.next, %xtraiter569
  br i1 %prol.iter571.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8418

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cm, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cp, %.preheader.prol ]
  %i.cq = icmp ult i64 %1, 4
  br i1 %i.cq, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cr = phi i64 [ %i.cz, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.db, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !318
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.cu, align 4, !tbaa !318
  %i.cv = add i32 %i.cs, -2
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.cw, align 4, !tbaa !318
  %i.cx = add i32 %i.cs, -3
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.cz = add i64 %i.cr, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cy, align 4, !tbaa !318
  %i.da = add i32 %i.cs, -4
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.cz, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.dc = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not180 = icmp ugt i64 %i.h, %i.e
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit402, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %xtraiter575 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader, %.lr.ph.i235.prol
  %.020.i236.prol = phi i64 [ %i.dd, %.lr.ph.i235.prol ], [ %i.h, %.lr.ph.i235.preheader ]
  %.0819.i237.prol = phi ptr [ %i.dh, %.lr.ph.i235.prol ], [ %0, %.lr.ph.i235.preheader ] ; 2 uses
  %.01618.i238.prol = phi ptr [ %i.di, %.lr.ph.i235.prol ], [ %2, %.lr.ph.i235.preheader ] ; 3 uses
  %prol.iter577 = phi i64 [ %prol.iter577.next, %.lr.ph.i235.prol ], [ 0, %.lr.ph.i235.preheader ]
  %i.dd = add i64 %.020.i236.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238.prol) ]
  %i.de = load i32, ptr %.0819.i237.prol, align 4, !tbaa !318
  store i32 %i.de, ptr %.01618.i238.prol, align 4, !tbaa !318
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %.0819.i237.prol, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01618.i238.prol, i64 4 ; 2 uses
  %prol.iter577.next = add i64 %prol.iter577, 1   ; 2 uses
  %prol.iter577.cmp.not = icmp eq i64 %prol.iter577.next, %xtraiter575
  br i1 %prol.iter577.cmp.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol, !llvm.loop !8419

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.h, %.lr.ph.i235.preheader ], [ %i.dd, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.dh, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.di, %.lr.ph.i235.prol ]
  %i.dj = icmp ult i64 %i.h, 4
  br i1 %i.dj, label %.loopexit402, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.dx, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.ea, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 5 uses
  %.01618.i238 = phi ptr [ %i.eb, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.dk = load i32, ptr %.0819.i237, align 4, !tbaa !318
  store i32 %i.dk, ptr %.01618.i238, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !318
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !318
  %i.dq = add i32 %i.dl, 2
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !318
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !318
  %i.du = add i32 %i.dl, 3
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 12
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 12
  %i.dx = add i64 %.020.i236, -4                  ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !318
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !318
  %i.dz = add i32 %i.dl, 4
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 16
  %.not.i239.3 = icmp eq i64 %i.dx, 0
  br i1 %.not.i239.3, label %.loopexit402, label %.lr.ph.i235, !llvm.loop !152

.loopexit402:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.ec = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 7 uses
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.ed, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit402
  %i.ee = shl i64 %i.c, 1
  %i.ef = add i64 %i.b, %i.f
  %i.eg = add i64 %i.ef, -4
  %i.eh = sub i64 %i.eg, %i.ee                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 6 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.j, %i.f                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 12 uses
  %i.m = add i64 %i.i, %4                         ; 4 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %.not14.i.i = icmp eq i64 %4, 0
  br i1 %.not14.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01315.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %i.o, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = add i64 %.016.i.i.prol, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.prol, align 4, !tbaa !318
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %.01315.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8435

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %.01315.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.t = icmp ult i64 %4, 4
  br i1 %i.t, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01315.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.01315.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  store i32 0, ptr %.01315.i.i, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !318
  %i.x = add i32 %i.u, 2
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  store i32 0, ptr %i.y, align 4, !tbaa !318
  %i.z = add i32 %i.u, 3
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.ab = add i64 %.016.i.i, -4                   ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !318
  %i.ac = add i32 %i.u, 4
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !151

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.c
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ae, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.af = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.af, ptr %.01517.i, align 4, !tbaa !318
  %i.ag = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not123 = icmp ult i64 %i.l, %i.d
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.c, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.an, %.lr.ph.i129 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i131 = phi ptr [ %i.ao, %.lr.ph.i129 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i131) ]
  %i.ak = load i32, ptr %.018.i130, align 4, !tbaa !318
  store i32 %i.ak, ptr %.01517.i131, align 4, !tbaa !318
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.an, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ap = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.aq = sub i64 0, %i.ap                        ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %3, i64 %i.aq ; 8 uses
  %.not17.i = icmp eq i64 %i.ap, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.d
  %xtraiter376 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135.prol
  %.020.i.prol = phi i64 [ %i.as, %.lr.ph.i135.prol ], [ %i.ap, %.lr.ph.i135.preheader ]
  %.0819.i.prol = phi ptr [ %i.aw, %.lr.ph.i135.prol ], [ %i.ar, %.lr.ph.i135.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ax, %.lr.ph.i135.prol ], [ %i.c, %.lr.ph.i135.preheader ] ; 3 uses
  %prol.iter378 = phi i64 [ %prol.iter378.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader ]
  %i.as = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.at = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.at, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter378.next = add i64 %prol.iter378, 1   ; 2 uses
  %prol.iter378.cmp.not = icmp eq i64 %prol.iter378.next, %xtraiter376
  br i1 %prol.iter378.cmp.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol, !llvm.loop !8436

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.020.i.unr = phi i64 [ %i.ap, %.lr.ph.i135.preheader ], [ %i.as, %.lr.ph.i135.prol ]
  %.0819.i.unr = phi ptr [ %i.ar, %.lr.ph.i135.preheader ], [ %i.aw, %.lr.ph.i135.prol ]
  %.01618.i.unr = phi ptr [ %i.c, %.lr.ph.i135.preheader ], [ %i.ax, %.lr.ph.i135.prol ]
  %i.ay = sub i64 %i.m, %i.l
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.020.i = phi i64 [ %i.bn, %.lr.ph.i135 ], [ %.020.i.unr, %.lr.ph.i135.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bq, %.lr.ph.i135 ], [ %.0819.i.unr, %.lr.ph.i135.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.br, %.lr.ph.i135 ], [ %.01618.i.unr, %.lr.ph.i135.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.ba = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.ba, ptr %.01618.i, align 4, !tbaa !318
  %i.bb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !318
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !318
  %i.bg = add i32 %i.bb, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !318
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !318
  %i.bk = add i32 %i.bb, 3
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bn = add i64 %.020.i, -4                     ; 2 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !318
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !318
  %i.bp = add i32 %i.bb, 4
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i136.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i136.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %bb.d
  %.not.i137 = icmp eq ptr %i.ar, %i.c
  %.not8.i.i = icmp eq ptr %0, %i.ar
  %or.cond = or i1 %.not.i137, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bs = shl i64 %i.aq, 2
  %i.bt = add i64 %i.bs, %i.g
  %i.bu = add i64 %i.bt, -4
  %i.bv = sub i64 %i.bu, %i.b                     ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 92
  br i1 %min.iters.check, label %.lr.ph.i.i138.preheader371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i138.preheader
  %i.by = shl i64 %i.aq, 2
  %6 = add i64 %i.by, %i.g
  %7 = shl nsw i64 %1, 2
  %i.bz = add i64 %7, %i.b
  %i.ca = sub i64 %i.bz, %6
  %diff.check = icmp ugt i64 %i.ca, -32
  br i1 %diff.check, label %.lr.ph.i.i138.preheader371, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.cb = mul i64 %n.vec, -4                      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.c, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.ar, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.ce ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.ar, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %next.gep308, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep308, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !318
  %wide.load309 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !318
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !318
  store <4 x i32> %wide.load309, ptr %i.ci, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !8437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader371

.lr.ph.i.i138.preheader371:                       ; preds = %vector.memcheck, %.lr.ph.i.i138.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i138.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i138.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader371, %.lr.ph.i.i138
  %.010.i.i = phi ptr [ %i.cl, %.lr.ph.i.i138 ], [ %.010.i.i.ph, %.lr.ph.i.i138.preheader371 ]
  %.079.i.i = phi ptr [ %i.ck, %.lr.ph.i.i138 ], [ %.079.i.i.ph, %.lr.ph.i.i138.preheader371 ]
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !318
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !318
  %.not.i.i139 = icmp eq ptr %0, %i.ck
  br i1 %.not.i.i139, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138, !llvm.loop !8438

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i138, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.cp, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.cp, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i129, %bb.c
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter373 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cq = phi i64 [ %i.cr, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.cu, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter375 = phi i64 [ %prol.iter375.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cr = add i64 %i.cq, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !318
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter375.next = add i64 %prol.iter375, 1   ; 2 uses
  %prol.iter375.cmp.not = icmp eq i64 %prol.iter375.next, %xtraiter373
  br i1 %prol.iter375.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8439

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cr, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cu, %.preheader.prol ]
  %i.cv = icmp ult i64 %1, 4
  br i1 %i.cv, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cw = phi i64 [ %i.de, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.dg, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !318
  %i.cx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.cz, align 4, !tbaa !318
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !318
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.de = add i64 %i.cw, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !318
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.de, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.dh = icmp ugt i64 %i.l, %i.i
  br i1 %i.dh, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.c
  br i1 %.not16.i156, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.di = sub nsw i64 0, %i.i
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.di
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.dn, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.do, %.lr.ph.i157 ], [ %i.dj, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.dk = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.dk, ptr %.01517.i159, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.dn, %i.c
  br i1 %.not.i160, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162: ; preds = %.lr.ph.i157, %bb.f
  %i.dp = sub nuw nsw i64 %i.l, %i.i              ; 4 uses
  %i.dq = sub i64 %4, %i.dp                       ; 6 uses
  %i.dr = sub i64 0, %i.dq
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dr ; 8 uses
  %.not8.i = icmp eq i64 %i.dq, 0
  br i1 %.not8.i, label %.lr.ph.i.i166.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %.pre.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dt = add i32 %.pre.i, 1                      ; 2 uses
  %i.du = add i64 %i.i, %4
  %xtraiter386 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod387.not, label %.lr.ph.i163.prol.loopexit, label %.lr.ph.i163.prol

.lr.ph.i163.prol:                                 ; preds = %.lr.ph.preheader.i, %.lr.ph.i163.prol
  %i.dv = phi i32 [ %i.dy, %.lr.ph.i163.prol ], [ %i.dt, %.lr.ph.preheader.i ]
  %.010.i.prol = phi ptr [ %i.dx, %.lr.ph.i163.prol ], [ %i.ds, %.lr.ph.preheader.i ] ; 2 uses
  %.079.i.prol = phi i64 [ %i.dw, %.lr.ph.i163.prol ], [ %i.dq, %.lr.ph.preheader.i ]
  %prol.iter388 = phi i64 [ %prol.iter388.next, %.lr.ph.i163.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.dw = add i64 %.079.i.prol, -1                ; 2 uses
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i.prol, align 4, !tbaa !318
  %i.dx = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 4 ; 2 uses
  %i.dy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.dz = add i32 %i.dy, -1
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %prol.iter388.next = add i64 %prol.iter388, 1   ; 2 uses
  %prol.iter388.cmp.not = icmp eq i64 %prol.iter388.next, %xtraiter386
  br i1 %prol.iter388.cmp.not, label %.lr.ph.i163.prol.loopexit, label %.lr.ph.i163.prol, !llvm.loop !8440

.lr.ph.i163.prol.loopexit:                        ; preds = %.lr.ph.i163.prol, %.lr.ph.preheader.i
  %.unr389 = phi i32 [ %i.dt, %.lr.ph.preheader.i ], [ %i.dy, %.lr.ph.i163.prol ]
  %.010.i.unr = phi ptr [ %i.ds, %.lr.ph.preheader.i ], [ %i.dx, %.lr.ph.i163.prol ]
  %.079.i.unr = phi i64 [ %i.dq, %.lr.ph.preheader.i ], [ %i.dw, %.lr.ph.i163.prol ]
  %i.ea = sub i64 %i.l, %i.du
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %.lr.ph.i.i166.preheader, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %.lr.ph.i163.prol.loopexit, %.lr.ph.i163
  %i.ec = phi i32 [ %i.ei, %.lr.ph.i163 ], [ %.unr389, %.lr.ph.i163.prol.loopexit ]
  %.010.i = phi ptr [ %i.eh, %.lr.ph.i163 ], [ %.010.i.unr, %.lr.ph.i163.prol.loopexit ] ; 5 uses
  %.079.i = phi i64 [ %i.eg, %.lr.ph.i163 ], [ %.079.i.unr, %.lr.ph.i163.prol.loopexit ]
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.010.i, align 4, !tbaa !318
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  store i32 0, ptr %i.ed, align 4, !tbaa !318
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  store i32 0, ptr %i.ee, align 4, !tbaa !318
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i, i64 12
  %i.eg = add i64 %.079.i, -4                     ; 2 uses
  store i32 0, ptr %i.ef, align 4, !tbaa !318
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.ei = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i164.3 = icmp eq i64 %i.eg, 0
  br i1 %.not.i164.3, label %.lr.ph.i.i166.preheader, label %.lr.ph.i163, !llvm.loop !159

.lr.ph.i.i166.preheader:                          ; preds = %.lr.ph.i163.prol.loopexit, %.lr.ph.i163, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %xtraiter390 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader, %.lr.ph.i.i166.prol
  %.016.i.i167.prol = phi i64 [ %i.ek, %.lr.ph.i.i166.prol ], [ %i.dp, %.lr.ph.i.i166.preheader ]
  %.01315.i.i168.prol = phi ptr [ %i.en, %.lr.ph.i.i166.prol ], [ %i.c, %.lr.ph.i.i166.preheader ] ; 3 uses
  %prol.iter392 = phi i64 [ %prol.iter392.next, %.lr.ph.i.i166.prol ], [ 0, %.lr.ph.i.i166.preheader ]
  %i.ek = add i64 %.016.i.i167.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i168.prol) ]
  store i32 0, ptr %.01315.i.i168.prol, align 4, !tbaa !318
  %i.el = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %.01315.i.i168.prol, i64 4 ; 2 uses
  %prol.iter392.next = add i64 %prol.iter392, 1   ; 2 uses
  %prol.iter392.cmp.not = icmp eq i64 %prol.iter392.next, %xtraiter390
  br i1 %prol.iter392.cmp.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !8441

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader
  %.016.i.i167.unr = phi i64 [ %i.dp, %.lr.ph.i.i166.preheader ], [ %i.ek, %.lr.ph.i.i166.prol ]
  %.01315.i.i168.unr = phi ptr [ %i.c, %.lr.ph.i.i166.preheader ], [ %i.en, %.lr.ph.i.i166.prol ]
  %i.eo = sub nsw i64 %i.i, %i.l
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.016.i.i167 = phi i64 [ %i.ex, %.lr.ph.i.i166 ], [ %.016.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.01315.i.i168 = phi ptr [ %i.ez, %.lr.ph.i.i166 ], [ %.01315.i.i168.unr, %.lr.ph.i.i166.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i168) ]
  store i32 0, ptr %.01315.i.i168, align 4, !tbaa !318
  %i.eq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.es = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 4
  store i32 0, ptr %i.es, align 4, !tbaa !318
  %i.et = add i32 %i.eq, 2
  store i32 %i.et, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !318
  %i.ev = add i32 %i.eq, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 12
  %i.ex = add i64 %.016.i.i167, -4                ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !318
  %i.ey = add i32 %i.eq, 4
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.01315.i.i168, i64 16
  %.not.i.i169.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i169.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166, !llvm.loop !151

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170: ; preds = %.lr.ph.i.i166, %.lr.ph.i.i166.prol.loopexit
  %.not.i171 = icmp eq ptr %3, %i.ds
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170
  %.not8.i.i172 = icmp eq ptr %0, %3
  br i1 %.not8.i.i172, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader

.lr.ph.i.i173.preheader:                          ; preds = %bb.g
  %i.fa = add i64 %i.g, -4
  %i.fb = sub i64 %i.fa, %i.b                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check348 = icmp ult i64 %i.fb, 92
  br i1 %min.iters.check348, label %.lr.ph.i.i173.preheader364, label %vector.memcheck345

vector.memcheck345:                               ; preds = %.lr.ph.i.i173.preheader
  %i.fe = shl nsw i64 %1, 2
  %8 = add i64 %i.fe, %i.b
  %9 = sub i64 %i.g, %8
  %.neg = shl i64 %i.dq, 2
  %i.ff = add i64 %.neg, %9
  %i.fg = add i64 %i.ff, -1
  %diff.check346 = icmp ult i64 %i.fg, 31
  br i1 %diff.check346, label %.lr.ph.i.i173.preheader364, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck345
  %n.vec350 = and i64 %i.fd, 9223372036854775800  ; 3 uses
  %i.fh = mul i64 %n.vec350, -4                   ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ds, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %3, i64 %i.fh
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.fk = mul i64 %index352, -4                   ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.ds, i64 %i.fk ; 2 uses
  %next.gep354 = getelementptr i8, ptr %3, i64 %i.fk ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %next.gep354, i64 -16
  %i.fm = getelementptr inbounds i8, ptr %next.gep354, i64 -32
  %wide.load355 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !318
  %wide.load356 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !318
  %i.fn = getelementptr inbounds i8, ptr %next.gep353, i64 -16
  %i.fo = getelementptr inbounds i8, ptr %next.gep353, i64 -32
  store <4 x i32> %wide.load355, ptr %i.fn, align 4, !tbaa !318
  store <4 x i32> %wide.load356, ptr %i.fo, align 4, !tbaa !318
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.fp, label %middle.block358, label %vector.body351, !llvm.loop !8442

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %i.fd, %n.vec350
  br i1 %cmp.n359, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader364

.lr.ph.i.i173.preheader364:                       ; preds = %vector.memcheck345, %.lr.ph.i.i173.preheader, %middle.block358
  %.010.i.i174.ph = phi ptr [ %i.ds, %vector.memcheck345 ], [ %i.ds, %.lr.ph.i.i173.preheader ], [ %i.fi, %middle.block358 ]
  %.079.i.i175.ph = phi ptr [ %3, %vector.memcheck345 ], [ %3, %.lr.ph.i.i173.preheader ], [ %i.fj, %middle.block358 ]
  br label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173.preheader364, %.lr.ph.i.i173
  %.010.i.i174 = phi ptr [ %i.fr, %.lr.ph.i.i173 ], [ %.010.i.i174.ph, %.lr.ph.i.i173.preheader364 ]
  %.079.i.i175 = phi ptr [ %i.fq, %.lr.ph.i.i173 ], [ %.079.i.i175.ph, %.lr.ph.i.i173.preheader364 ]
  %i.fq = getelementptr inbounds i8, ptr %.079.i.i175, i64 -4 ; 3 uses
  %i.fr = getelementptr inbounds i8, ptr %.010.i.i174, i64 -4 ; 3 uses
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !318
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !318
  %.not.i.i176 = icmp eq ptr %0, %i.fq
  br i1 %.not.i.i176, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173, !llvm.loop !8443

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177: ; preds = %.lr.ph.i.i173, %middle.block358, %bb.g
  %i.ft = phi ptr [ %i.ds, %bb.g ], [ %i.fi, %middle.block358 ], [ %i.fr, %.lr.ph.i.i173 ] ; 2 uses
  %.not3.i178 = icmp eq ptr %0, %i.ft
  br i1 %.not3.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177, %.lr.ph.i179
  %storemerge4.i180 = phi ptr [ %i.fw, %.lr.ph.i179 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit177 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i180, align 4, !tbaa !318
  %i.fu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fw = getelementptr inbounds nuw i8, ptr %storemerge4.i180, i64 4 ; 2 uses
  %.not.i181 = icmp eq ptr %i.fw, %i.ft
  br i1 %.not.i181, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.fx = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i191 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i191, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i192.preheader

.lr.ph.i192.preheader:                            ; preds = %bb.h
  %xtraiter379 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol

.lr.ph.i192.prol:                                 ; preds = %.lr.ph.i192.preheader, %.lr.ph.i192.prol
  %.020.i193.prol = phi i64 [ %i.fy, %.lr.ph.i192.prol ], [ %i.l, %.lr.ph.i192.preheader ]
  %.0819.i194.prol = phi ptr [ %i.gc, %.lr.ph.i192.prol ], [ %i.fx, %.lr.ph.i192.preheader ] ; 2 uses
  %.01618.i195.prol = phi ptr [ %i.gd, %.lr.ph.i192.prol ], [ %i.c, %.lr.ph.i192.preheader ] ; 3 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph.i192.prol ], [ 0, %.lr.ph.i192.preheader ]
  %i.fy = add i64 %.020.i193.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i195.prol) ]
  %i.fz = load i32, ptr %.0819.i194.prol, align 4, !tbaa !318
  store i32 %i.fz, ptr %.01618.i195.prol, align 4, !tbaa !318
  %i.ga = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gc = getelementptr inbounds nuw i8, ptr %.0819.i194.prol, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.01618.i195.prol, i64 4 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol, !llvm.loop !8444

.lr.ph.i192.prol.loopexit:                        ; preds = %.lr.ph.i192.prol, %.lr.ph.i192.preheader
  %.020.i193.unr = phi i64 [ %i.l, %.lr.ph.i192.preheader ], [ %i.fy, %.lr.ph.i192.prol ]
  %.0819.i194.unr = phi ptr [ %i.fx, %.lr.ph.i192.preheader ], [ %i.gc, %.lr.ph.i192.prol ]
  %.01618.i195.unr = phi ptr [ %i.c, %.lr.ph.i192.preheader ], [ %i.gd, %.lr.ph.i192.prol ]
  %i.ge = icmp ult i64 %i.l, 4
  br i1 %i.ge, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.prol.loopexit, %.lr.ph.i192
  %.020.i193 = phi i64 [ %i.gs, %.lr.ph.i192 ], [ %.020.i193.unr, %.lr.ph.i192.prol.loopexit ]
  %.0819.i194 = phi ptr [ %i.gv, %.lr.ph.i192 ], [ %.0819.i194.unr, %.lr.ph.i192.prol.loopexit ] ; 5 uses
  %.01618.i195 = phi ptr [ %i.gw, %.lr.ph.i192 ], [ %.01618.i195.unr, %.lr.ph.i192.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i195) ]
  %i.gf = load i32, ptr %.0819.i194, align 4, !tbaa !318
  store i32 %i.gf, ptr %.01618.i195, align 4, !tbaa !318
  %i.gg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gi = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 4
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !318
  store i32 %i.gk, ptr %i.gj, align 4, !tbaa !318
  %i.gl = add i32 %i.gg, 2
  store i32 %i.gl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gm = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 8
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !318
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !318
  %i.gp = add i32 %i.gg, 3
  store i32 %i.gp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gq = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 12
  %i.gr = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 12
  %i.gs = add i64 %.020.i193, -4                  ; 2 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !318
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !318
  %i.gu = add i32 %i.gg, 4
  store i32 %i.gu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gv = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 16
  %.not.i196.3 = icmp eq i64 %i.gs, 0
  br i1 %.not.i196.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198: ; preds = %.lr.ph.i192, %.lr.ph.i192.prol.loopexit
  %.not8.i.i200 = icmp eq ptr %3, %i.fx
  br i1 %.not8.i.i200, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.gx = shl nsw i64 %1, 2
  %i.gy = shl i64 %i.b, 1
  %i.gz = shl i64 %4, 2
  %i.ha = add i64 %i.gx, %i.gy
  %i.hb = add i64 %i.ha, -4
  %i.hc = add i64 %i.g, %i.a
  %i.hd = add i64 %i.hc, %i.gz
  %i.he = sub i64 %i.hb, %i.hd                    ; 2 uses
  %i.hf = lshr i64 %i.he, 2
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %min.iters.check314 = icmp ult i64 %i.he, 28
  %diff.check312 = icmp ugt i64 %i.k, -32
  %or.cond362 = or i1 %min.iters.check314, %diff.check312
  br i1 %or.cond362, label %.lr.ph.i.i201.preheader368, label %vector.ph315

vector.ph315:                                     ; preds = %.lr.ph.i.i201.preheader
  %n.vec316 = and i64 %i.hg, 9223372036854775800  ; 3 uses
  %i.hh = mul i64 %n.vec316, -4                   ; 2 uses
  %i.hi = getelementptr i8, ptr %i.c, i64 %i.hh   ; 2 uses
  %i.hj = getelementptr i8, ptr %i.fx, i64 %i.hh
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next323, %vector.body317 ] ; 2 uses
  %i.hk = mul i64 %index318, -4                   ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.c, i64 %i.hk ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.fx, i64 %i.hk ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep320, i64 -16
  %i.hm = getelementptr inbounds i8, ptr %next.gep320, i64 -32
  %wide.load321 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !318
  %wide.load322 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !318
  %i.hn = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.ho = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  store <4 x i32> %wide.load321, ptr %i.hn, align 4, !tbaa !318
  store <4 x i32> %wide.load322, ptr %i.ho, align 4, !tbaa !318
  %index.next323 = add nuw i64 %index318, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next323, %n.vec316
  br i1 %i.hp, label %middle.block324, label %vector.body317, !llvm.loop !8445

middle.block324:                                  ; preds = %vector.body317
  %cmp.n325 = icmp eq i64 %i.hg, %n.vec316
  br i1 %cmp.n325, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader368

.lr.ph.i.i201.preheader368:                       ; preds = %.lr.ph.i.i201.preheader, %middle.block324
  %.010.i.i202.ph = phi ptr [ %i.c, %.lr.ph.i.i201.preheader ], [ %i.hi, %middle.block324 ]
  %.079.i.i203.ph = phi ptr [ %i.fx, %.lr.ph.i.i201.preheader ], [ %i.hj, %middle.block324 ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader368, %.lr.ph.i.i201
  %.010.i.i202 = phi ptr [ %i.hr, %.lr.ph.i.i201 ], [ %.010.i.i202.ph, %.lr.ph.i.i201.preheader368 ]
  %.079.i.i203 = phi ptr [ %i.hq, %.lr.ph.i.i201 ], [ %.079.i.i203.ph, %.lr.ph.i.i201.preheader368 ]
  %i.hq = getelementptr inbounds i8, ptr %.079.i.i203, i64 -4 ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %.010.i.i202, i64 -4 ; 3 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !318
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !318
  %.not.i.i204 = icmp eq ptr %3, %i.hq
  br i1 %.not.i.i204, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201, !llvm.loop !8446

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit205: ; preds = %.lr.ph.i.i201, %middle.block324, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.ht = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198 ], [ %i.hi, %middle.block324 ], [ %i.hr, %.lr.ph.i.i201 ] ; 2 uses
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = sub i64 0, %4
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !123

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.z)
          to label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  store ptr %i.v, ptr %1, align 8, !tbaa !488
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !489
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i
  %.sink25.i = phi i64 [ %i.cg, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i ], [ %i.az, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i ]
  %i.ch = add i64 %.sink25.i, %3
  store i64 %i.ch, ptr %i.f, align 8, !tbaa !489
  store i64 %i.x, ptr %i.c, align 8, !tbaa !261
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, %bb.h, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit
  %i.ci = phi ptr [ %i.z, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i ], [ %i.z, %bb.h ], [ %.pre, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit ], [ %i.v, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit ]
  %i.cj = ptrtoint ptr %2 to i64
  %i.ck = ptrtoint ptr %i.b to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  store ptr %i.cm, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit356, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit356, label %.lr.ph.i, !llvm.loop !153

.loopexit356:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.r
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit356
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.w, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.x, %.lr.ph.i202 ], [ %i.s, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.t = load i32, ptr %.018.i203, align 4, !tbaa !318
  store i32 %i.t, ptr %.01517.i204, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202, !llvm.loop !153

bb.d:                                             ; preds = %.loopexit356
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit354, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter505 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod506.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod506.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i208.prol ], [ %i.y, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i208.prol ], [ %i.z, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter507 = phi i64 [ %prol.iter507.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter507.next = add i64 %prol.iter507, 1   ; 2 uses
  %prol.iter507.cmp.not = icmp eq i64 %prol.iter507.next, %xtraiter505
  br i1 %prol.iter507.cmp.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol, !llvm.loop !8454

.lr.ph.i208.prol.loopexit:                        ; preds = %.lr.ph.i208.prol, %.lr.ph.i208.preheader
  %.020.i.unr = phi i64 [ %i.y, %.lr.ph.i208.preheader ], [ %i.aa, %.lr.ph.i208.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i208.preheader ], [ %i.ae, %.lr.ph.i208.prol ]
  %.01618.i.unr = phi ptr [ %i.z, %.lr.ph.i208.preheader ], [ %i.af, %.lr.ph.i208.prol ]
  %i.ag = sub i64 %i.i, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit354, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208
  %.020.i = phi i64 [ %i.av, %.lr.ph.i208 ], [ %.020.i.unr, %.lr.ph.i208.prol.loopexit ]
  %.0819.i = phi ptr [ %i.ay, %.lr.ph.i208 ], [ %.0819.i.unr, %.lr.ph.i208.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.az, %.lr.ph.i208 ], [ %.01618.i.unr, %.lr.ph.i208.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.ai = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.ai, ptr %.01618.i, align 4, !tbaa !318
  %i.aj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.an = load i32, ptr %i.al, align 4, !tbaa !318
  store i32 %i.an, ptr %i.am, align 4, !tbaa !318
  %i.ao = add i32 %i.aj, 2
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.aj, 3
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.av = add i64 %.020.i, -4                     ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !318
  %i.ax = add i32 %i.aj, 4
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i209.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i209.3, label %.loopexit354, label %.lr.ph.i208, !llvm.loop !152

.loopexit354:                                     ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208, %bb.d
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y ; 6 uses
  %.not.i210 = icmp eq ptr %i.ba, %0
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %bb.e

bb.e:                                             ; preds = %.loopexit354
  %.not8.i.i = icmp eq ptr %i.ba, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.bb = add i64 %1, %i.i
  %i.bc = shl i64 %i.bb, 2
  %i.bd = add i64 %i.bc, %i.c
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.g, %i.b
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader501, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg489 = sub i64 %8, %7
  %i.bj = add i64 %.neg489, %i.c
  %i.bk = add i64 %i.bj, -1
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader501, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2                       ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bo ; 2 uses
  %next.gep417 = getelementptr i8, ptr %i.ba, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep417, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep417, align 4, !tbaa !318
  %wide.load418 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !318
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load418, ptr %i.bq, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !8455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader501

.lr.ph.i.i.preheader501:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader501, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 2 uses
  %i.bs = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.bs, ptr %.010.i.i, align 4, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8456

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bv = phi ptr [ %0, %bb.e ], [ %i.bm, %middle.block ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.not3.i = icmp eq ptr %i.bv, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i211
  %storemerge4.i = phi ptr [ %i.by, %.lr.ph.i211 ], [ %i.bv, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.bw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i212 = icmp eq ptr %i.by, %i.a
  br i1 %.not.i212, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.lr.ph.i211, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i202, %bb.c
  %.not.i215 = icmp eq i64 %1, 0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.bz = phi i64 [ %i.ca, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i216.prol = phi ptr [ %i.cd, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i216.prol, align 4, !tbaa !318
  %i.cb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i216.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8457

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ca, %.preheader.prol ]
  %.0.i216.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cd, %.preheader.prol ]
  %i.ce = icmp ult i64 %1, 4
  br i1 %i.ce, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cf = phi i64 [ %i.cn, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i216 = phi ptr [ %i.cp, %.preheader ], [ %.0.i216.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i216, align 4, !tbaa !318
  %i.cg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i216, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !318
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i216, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !318
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i216, i64 12
  %i.cn = add i64 %i.cf, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !318
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i216, i64 16
  %.not3.i217.3 = icmp eq i64 %i.cn, 0
  br i1 %.not3.i217.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.cq = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not178 = icmp ugt i64 %i.h, %i.e
  br i1 %.not178, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i227 = icmp eq ptr %0, %2
  br i1 %.not17.i227, label %.loopexit352, label %.lr.ph.i228.preheader

.lr.ph.i228.preheader:                            ; preds = %bb.g
  %xtraiter508 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol

.lr.ph.i228.prol:                                 ; preds = %.lr.ph.i228.preheader, %.lr.ph.i228.prol
  %.020.i229.prol = phi i64 [ %i.cr, %.lr.ph.i228.prol ], [ %i.h, %.lr.ph.i228.preheader ]
  %.0819.i230.prol = phi ptr [ %i.cv, %.lr.ph.i228.prol ], [ %0, %.lr.ph.i228.preheader ] ; 2 uses
  %.01618.i231.prol = phi ptr [ %i.cw, %.lr.ph.i228.prol ], [ %2, %.lr.ph.i228.preheader ] ; 3 uses
  %prol.iter510 = phi i64 [ %prol.iter510.next, %.lr.ph.i228.prol ], [ 0, %.lr.ph.i228.preheader ]
  %i.cr = add i64 %.020.i229.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231.prol) ]
  %i.cs = load i32, ptr %.0819.i230.prol, align 4, !tbaa !318
  store i32 %i.cs, ptr %.01618.i231.prol, align 4, !tbaa !318
  %i.ct = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0819.i230.prol, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01618.i231.prol, i64 4 ; 2 uses
  %prol.iter510.next = add i64 %prol.iter510, 1   ; 2 uses
  %prol.iter510.cmp.not = icmp eq i64 %prol.iter510.next, %xtraiter508
  br i1 %prol.iter510.cmp.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol, !llvm.loop !8458

.lr.ph.i228.prol.loopexit:                        ; preds = %.lr.ph.i228.prol, %.lr.ph.i228.preheader
  %.020.i229.unr = phi i64 [ %i.h, %.lr.ph.i228.preheader ], [ %i.cr, %.lr.ph.i228.prol ]
  %.0819.i230.unr = phi ptr [ %0, %.lr.ph.i228.preheader ], [ %i.cv, %.lr.ph.i228.prol ]
  %.01618.i231.unr = phi ptr [ %2, %.lr.ph.i228.preheader ], [ %i.cw, %.lr.ph.i228.prol ]
  %i.cx = icmp ult i64 %i.h, 4
  br i1 %i.cx, label %.loopexit352, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228
  %.020.i229 = phi i64 [ %i.dl, %.lr.ph.i228 ], [ %.020.i229.unr, %.lr.ph.i228.prol.loopexit ]
  %.0819.i230 = phi ptr [ %i.do, %.lr.ph.i228 ], [ %.0819.i230.unr, %.lr.ph.i228.prol.loopexit ] ; 5 uses
  %.01618.i231 = phi ptr [ %i.dp, %.lr.ph.i228 ], [ %.01618.i231.unr, %.lr.ph.i228.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231) ]
  %i.cy = load i32, ptr %.0819.i230, align 4, !tbaa !318
  store i32 %i.cy, ptr %.01618.i231, align 4, !tbaa !318
  %i.cz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !318
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !318
  %i.de = add i32 %i.cz, 2
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = add i32 %i.cz, 3
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 12
  %i.dl = add i64 %.020.i229, -4                  ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !318
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !318
  %i.dn = add i32 %i.cz, 4
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 16
  %.not.i232.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i232.3, label %.loopexit352, label %.lr.ph.i228, !llvm.loop !152

.loopexit352:                                     ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228, %bb.g
  %i.dq = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.dr, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %.loopexit352
  %i.ds = shl i64 %i.c, 1
  %i.dt = add i64 %i.b, %i.f
  %i.du = add i64 %i.dt, -4
  %i.dv = sub i64 %i.du, %i.ds                    ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJS3_EEES8_EEvT_mSA_SA_mT0_RT1_:bb.a
.lr.ph.i290.preheader:                            ; preds = %bb.n
  %i.hv = sub nuw i64 %i.gr, %i.gs
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hv
  br label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %.lr.ph.i290.preheader, %.lr.ph.i290
  %.018.i291 = phi ptr [ %i.ia, %.lr.ph.i290 ], [ %3, %.lr.ph.i290.preheader ] ; 2 uses
  %.01517.i292 = phi ptr [ %i.ib, %.lr.ph.i290 ], [ %i.hw, %.lr.ph.i290.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i292) ]
  %i.hx = load i32, ptr %.018.i291, align 4, !tbaa !318
  store i32 %i.hx, ptr %.01517.i292, align 4, !tbaa !318
  %i.hy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ia = getelementptr inbounds nuw i8, ptr %.018.i291, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01517.i292, i64 4
  %.not.i293 = icmp eq ptr %i.ia, %i.a
  br i1 %.not.i293, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit, label %.lr.ph.i290, !llvm.loop !153

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit: ; preds = %.lr.ph.i290
  %.pre = load i32, ptr %5, align 4, !tbaa !318
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit, %bb.n
  %i.ic = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit ], [ %i.gq, %bb.n ]
  store i32 %i.ic, ptr %3, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.id = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.id, ptr %i.a, align 4, !tbaa !318
  %i.ie = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i211, %.lr.ph.i245, %.lr.ph.i264, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit243, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit262, %.loopexit354, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 22 uses
  %i.e = add i64 %4, %1                           ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.l, %i.g                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 10 uses
  %i.o = add i64 %i.j, %4                         ; 6 uses
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.r = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.r, ptr %i.q, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.v = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.v, ptr %.01517.i, align 4, !tbaa !318
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not121 = icmp ult i64 %i.n, %i.e
  br i1 %.not121, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i126 = icmp eq ptr %0, %3
  br i1 %.not16.i126, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.c, %.lr.ph.i127
  %.018.i128 = phi ptr [ %i.ad, %.lr.ph.i127 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i129 = phi ptr [ %i.ae, %.lr.ph.i127 ], [ %2, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %.018.i128, align 4, !tbaa !318
  store i32 %i.aa, ptr %.01517.i129, align 4, !tbaa !318
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i128, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01517.i129, i64 4
  %.not.i130 = icmp eq ptr %i.ad, %3
  br i1 %.not.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = sub nuw i64 %i.n, %i.o                  ; 5 uses
  %i.ag = sub i64 0, %i.af                        ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag ; 8 uses
  %.not17.i = icmp eq i64 %i.af, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %bb.d
  %xtraiter354 = and i64 %i.af, 3                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133.prol
  %.020.i.prol = phi i64 [ %i.ai, %.lr.ph.i133.prol ], [ %i.af, %.lr.ph.i133.preheader ]
  %.0819.i.prol = phi ptr [ %i.am, %.lr.ph.i133.prol ], [ %i.ah, %.lr.ph.i133.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.an, %.lr.ph.i133.prol ], [ %i.d, %.lr.ph.i133.preheader ] ; 3 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader ]
  %i.ai = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.aj = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.aj, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !8467

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader
  %.020.i.unr = phi i64 [ %i.af, %.lr.ph.i133.preheader ], [ %i.ai, %.lr.ph.i133.prol ]
  %.0819.i.unr = phi ptr [ %i.ah, %.lr.ph.i133.preheader ], [ %i.am, %.lr.ph.i133.prol ]
  %.01618.i.unr = phi ptr [ %i.d, %.lr.ph.i133.preheader ], [ %i.an, %.lr.ph.i133.prol ]
  %i.ao = sub i64 %i.o, %i.n
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.020.i = phi i64 [ %i.bd, %.lr.ph.i133 ], [ %.020.i.unr, %.lr.ph.i133.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bg, %.lr.ph.i133 ], [ %.0819.i.unr, %.lr.ph.i133.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bh, %.lr.ph.i133 ], [ %.01618.i.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.aq = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01618.i, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.ar, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !318
  %i.ba = add i32 %i.ar, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bd = add i64 %.020.i, -4                     ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !318
  %i.bf = add i32 %i.ar, 4
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i134.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i134.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %bb.d
  %.not.i135 = icmp eq ptr %i.ah, %i.d
  %.not8.i.i = icmp eq ptr %0, %i.ah
  %or.cond = or i1 %.not.i135, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bi = shl i64 %i.ag, 2
  %i.bj = add i64 %i.bi, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = sub i64 %i.bk, %i.b                     ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 92
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = shl i64 %i.ag, 2
  %7 = add i64 %i.bo, %i.h
  %8 = shl nsw i64 %1, 2
  %i.bp = add i64 %8, %i.b
  %i.bq = sub i64 %i.bp, %7
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ah, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bu ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ah, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep290, i64 -16
  %i.bw = getelementptr inbounds i8, ptr %next.gep290, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !318
  %wide.load291 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !318
  store <4 x i32> %wide.load291, ptr %i.by, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !8468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader352 ]
  %.079.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !318
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !318
  %.not.i.i = icmp eq ptr %0, %i.ca
  br i1 %.not.i.i, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8469

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i136
  %storemerge4.i = phi ptr [ %i.cf, %.lr.ph.i136 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i137 = icmp eq ptr %i.cf, %2
  br i1 %.not.i137, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i136, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i127, %bb.c
  %.not.i140 = icmp eq i64 %1, 0
  br i1 %.not.i140, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cg = phi i64 [ %i.ch, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i141.prol = phi ptr [ %i.ck, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ch = add i64 %i.cg, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i141.prol, align 4, !tbaa !318
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i141.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8470

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ch, %.preheader.prol ]
  %.0.i141.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.ck, %.preheader.prol ]
  %i.cl = icmp ult i64 %1, 4
  br i1 %i.cl, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cm = phi i64 [ %i.cu, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i141 = phi ptr [ %i.cw, %.preheader ], [ %.0.i141.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i141, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i141, i64 4
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !318
  %i.cq = add i32 %i.cn, -2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i141, i64 8
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !318
  %i.cs = add i32 %i.cn, -3
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i141, i64 12
  %i.cu = add i64 %i.cm, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.ct, align 4, !tbaa !318
  %i.cv = add i32 %i.cn, -4
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i141, i64 16
  %.not3.i142.3 = icmp eq i64 %i.cu, 0
  br i1 %.not3.i142.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.n, %i.j
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i152 = icmp eq ptr %3, %i.d
  br i1 %.not16.i152, label %.loopexit, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %.lr.ph.i153
  %.018.i154 = phi ptr [ %i.dc, %.lr.ph.i153 ], [ %3, %.lr.ph.i153.preheader ] ; 2 uses
  %.01517.i155 = phi ptr [ %i.dd, %.lr.ph.i153 ], [ %i.cy, %.lr.ph.i153.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i155) ]
  %i.cz = load i32, ptr %.018.i154, align 4, !tbaa !318
  store i32 %i.cz, ptr %.01517.i155, align 4, !tbaa !318
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i154, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i155, i64 4
  %.not.i156 = icmp eq ptr %i.dc, %i.d
  br i1 %.not.i156, label %.loopexit, label %.lr.ph.i153, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i153, %bb.f
  %.neg242 = sub i64 %i.n, %i.o
  %i.de = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.neg242 ; 7 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !318   ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.df, ptr %i.d, align 4, !tbaa !318
  %i.dg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i159 = icmp eq ptr %3, %i.de
  br i1 %.not.i159, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i160 = icmp eq ptr %0, %3
  br i1 %.not8.i.i160, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.g
  %i.di = add i64 %i.h, -4
  %i.dj = sub i64 %i.di, %i.b                     ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.dj, 108
  br i1 %min.iters.check330, label %.lr.ph.i.i161.preheader345, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i161.preheader
  %i.dm = shl i64 %i.o, 2
  %9 = add i64 %i.dm, %i.h
  %i.dn = add i64 %i.m, %i.b
  %10 = shl nsw i64 %1, 2
  %i.do = add i64 %i.dn, %10
  %i.dp = sub i64 %i.do, %9
  %diff.check328 = icmp ugt i64 %i.dp, -32
  br i1 %diff.check328, label %.lr.ph.i.i161.preheader345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck327
  %n.vec332 = and i64 %i.dl, 9223372036854775800  ; 3 uses
  %i.dq = mul i64 %n.vec332, -4                   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.de, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %3, i64 %i.dq
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.dt = mul i64 %index334, -4                   ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.de, i64 %i.dt ; 2 uses
  %next.gep336 = getelementptr i8, ptr %3, i64 %i.dt ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.dv = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  %wide.load337 = load <4 x i32>, ptr %i.du, align 4, !tbaa !318
  %wide.load338 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !318
  %i.dw = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep335, i64 -32
  store <4 x i32> %wide.load337, ptr %i.dw, align 4, !tbaa !318
  store <4 x i32> %wide.load338, ptr %i.dx, align 4, !tbaa !318
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.dy, label %middle.block340, label %vector.body333, !llvm.loop !8471

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.dl, %n.vec332
  br i1 %cmp.n341, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader345

.lr.ph.i.i161.preheader345:                       ; preds = %vector.memcheck327, %.lr.ph.i.i161.preheader, %middle.block340
  %.010.i.i162.ph = phi ptr [ %i.de, %vector.memcheck327 ], [ %i.de, %.lr.ph.i.i161.preheader ], [ %i.dr, %middle.block340 ]
  %.079.i.i163.ph = phi ptr [ %3, %vector.memcheck327 ], [ %3, %.lr.ph.i.i161.preheader ], [ %i.ds, %middle.block340 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader345, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ea, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader345 ]
  %.079.i.i163 = phi ptr [ %i.dz, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader345 ]
  %i.dz = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 3 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !318
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !318
  %.not.i.i164 = icmp eq ptr %0, %i.dz
  br i1 %.not.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161, !llvm.loop !8472

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165: ; preds = %.lr.ph.i.i161, %middle.block340, %bb.g
  %i.ec = phi ptr [ %i.de, %bb.g ], [ %i.dr, %middle.block340 ], [ %i.ea, %.lr.ph.i.i161 ] ; 2 uses
  %.not3.i166 = icmp eq ptr %0, %i.ec
  br i1 %.not3.i166, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %.lr.ph.i167
  %storemerge4.i168 = phi ptr [ %i.ef, %.lr.ph.i167 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i168, align 4, !tbaa !318
  %i.ed = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %storemerge4.i168, i64 4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ef, %i.ec
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.m
  %i.eg = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 6 uses
  %.not17.i179 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.h
  %xtraiter357 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180.prol
  %.020.i181.prol = phi i64 [ %i.eh, %.lr.ph.i180.prol ], [ %i.n, %.lr.ph.i180.preheader ]
  %.0819.i182.prol = phi ptr [ %i.el, %.lr.ph.i180.prol ], [ %i.eg, %.lr.ph.i180.preheader ] ; 2 uses
  %.01618.i183.prol = phi ptr [ %i.em, %.lr.ph.i180.prol ], [ %i.d, %.lr.ph.i180.preheader ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i180.prol ], [ 0, %.lr.ph.i180.preheader ]
  %i.eh = add i64 %.020.i181.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183.prol) ]
  %i.ei = load i32, ptr %.0819.i182.prol, align 4, !tbaa !318
  store i32 %i.ei, ptr %.01618.i183.prol, align 4, !tbaa !318
  %i.ej = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.el = getelementptr inbounds nuw i8, ptr %.0819.i182.prol, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01618.i183.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol, !llvm.loop !8473

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader
  %.020.i181.unr = phi i64 [ %i.n, %.lr.ph.i180.preheader ], [ %i.eh, %.lr.ph.i180.prol ]
  %.0819.i182.unr = phi ptr [ %i.eg, %.lr.ph.i180.preheader ], [ %i.el, %.lr.ph.i180.prol ]
  %.01618.i183.unr = phi ptr [ %i.d, %.lr.ph.i180.preheader ], [ %i.em, %.lr.ph.i180.prol ]
  %i.en = icmp ult i64 %i.n, 4
  br i1 %i.en, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.020.i181 = phi i64 [ %i.fb, %.lr.ph.i180 ], [ %.020.i181.unr, %.lr.ph.i180.prol.loopexit ]
  %.0819.i182 = phi ptr [ %i.fe, %.lr.ph.i180 ], [ %.0819.i182.unr, %.lr.ph.i180.prol.loopexit ] ; 5 uses
  %.01618.i183 = phi ptr [ %i.ff, %.lr.ph.i180 ], [ %.01618.i183.unr, %.lr.ph.i180.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183) ]
  %i.eo = load i32, ptr %.0819.i182, align 4, !tbaa !318
  store i32 %i.eo, ptr %.01618.i183, align 4, !tbaa !318
  %i.ep = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 4
  %i.et = load i32, ptr %i.er, align 4, !tbaa !318
  store i32 %i.et, ptr %i.es, align 4, !tbaa !318
  %i.eu = add i32 %i.ep, 2
  store i32 %i.eu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ev = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !318
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !318
  %i.ey = add i32 %i.ep, 3
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 12
  %i.fb = add i64 %.020.i181, -4                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !318
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !318
  %i.fd = add i32 %i.ep, 4
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fe = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 16
  %.not.i184.3 = icmp eq i64 %i.fb, 0
  br i1 %.not.i184.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186: ; preds = %.lr.ph.i180, %.lr.ph.i180.prol.loopexit
  %.not8.i.i188 = icmp eq ptr %3, %i.eg
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.fg = shl nsw i64 %1, 2
  %i.fh = shl i64 %i.b, 1
  %i.fi = shl i64 %4, 2
  %i.fj = add i64 %i.fg, %i.fh
  %i.fk = add i64 %i.fj, -4
  %i.fl = add i64 %i.h, %i.a
  %i.fm = add i64 %i.fl, %i.fi
  %i.fn = sub i64 %i.fk, %i.fm                    ; 2 uses
  %i.fo = lshr i64 %i.fn, 2
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.fn, 28
  %diff.check294 = icmp ugt i64 %i.m, -32
  %or.cond344 = or i1 %min.iters.check296, %diff.check294
  br i1 %or.cond344, label %.lr.ph.i.i189.preheader349, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i189.preheader
  %n.vec298 = and i64 %i.fp, 9223372036854775800  ; 3 uses
  %i.fq = mul i64 %n.vec298, -4                   ; 2 uses
  %i.fr = getelementptr i8, ptr %i.d, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.eg, i64 %i.fq
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ft = mul i64 %index300, -4                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.d, i64 %i.ft ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.eg, i64 %i.ft ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %next.gep302, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !318
  %wide.load304 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !318
  %i.fw = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.fx = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i32> %wide.load303, ptr %i.fw, align 4, !tbaa !318
  store <4 x i32> %wide.load304, ptr %i.fx, align 4, !tbaa !318
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.fy, label %middle.block306, label %vector.body299, !llvm.loop !8474

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.fp, %n.vec298
  br i1 %cmp.n307, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader349

.lr.ph.i.i189.preheader349:                       ; preds = %.lr.ph.i.i189.preheader, %middle.block306
  %.010.i.i190.ph = phi ptr [ %i.d, %.lr.ph.i.i189.preheader ], [ %i.fr, %middle.block306 ]
  %.079.i.i191.ph = phi ptr [ %i.eg, %.lr.ph.i.i189.preheader ], [ %i.fs, %middle.block306 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader349, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.ga, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader349 ]
  %.079.i.i191 = phi ptr [ %i.fz, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader349 ]
  %i.fz = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !318
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !318
  %.not.i.i192 = icmp eq ptr %3, %i.fz
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !8475

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block306, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.gc = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186 ], [ %i.fr, %middle.block306 ], [ %i.ga, %.lr.ph.i.i189 ] ; 2 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.c ; 7 uses
  %i.gf = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !318
end_hunk_7
begin_hunk_8_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  store i32 %i.k, ptr %.01517.i, align 4, !tbaa !318
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01417.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.p = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !318
  store i32 %i.p, ptr %.01417.i.i.prol, align 4, !tbaa !318
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %i.u = add i64 %.018.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8502

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %4, 4
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !318
  store i32 %i.w, ptr %.01417.i.i, align 4, !tbaa !318
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !318
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !318
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !318
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !318
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !318
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !318
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.an = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !160

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ao = add i64 %4, %1
  %.not197 = icmp ult i64 %i.i, %i.ao
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit
  %.not200 = icmp eq i64 %i.f, %1
  %.not16.i206 = icmp eq ptr %3, %i.b
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.c
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.at, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 2 uses
  %.01517.i209 = phi ptr [ %i.au, %.lr.ph.i207 ], [ %i.ap, %.lr.ph.i207.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i209) ]
  %i.aq = load i32, ptr %.018.i208, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01517.i209, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit
  %i.av = sub nuw i64 %i.i, %i.j                  ; 5 uses
  %.not17.i = icmp eq i64 %i.av, 0
  br i1 %.not17.i, label %.loopexit415, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.d
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %xtraiter699 = and i64 %i.av, 3                 ; 2 uses
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.020.i.prol = phi i64 [ %i.ax, %.lr.ph.i213.prol ], [ %i.av, %.lr.ph.i213.preheader ]
  %.0819.i.prol = phi ptr [ %i.bb, %.lr.ph.i213.prol ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bc, %.lr.ph.i213.prol ], [ %i.aw, %.lr.ph.i213.preheader ] ; 3 uses
  %prol.iter701 = phi i64 [ %prol.iter701.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.ax = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ay = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ay, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter701.next = add i64 %prol.iter701, 1   ; 2 uses
  %prol.iter701.cmp.not = icmp eq i64 %prol.iter701.next, %xtraiter699
  br i1 %prol.iter701.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !8503

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.av, %.lr.ph.i213.preheader ], [ %i.ax, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.bb, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.aw, %.lr.ph.i213.preheader ], [ %i.bc, %.lr.ph.i213.prol ]
  %i.bd = sub i64 %i.j, %i.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit415, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.bs, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bv, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bw, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bf = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bf, ptr %.01618.i, align 4, !tbaa !318
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !318
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !318
  %i.bl = add i32 %i.bg, 2
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !318
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !318
  %i.bp = add i32 %i.bg, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bs = add i64 %.020.i, -4                     ; 2 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !318
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !318
  %i.bu = add i32 %i.bg, 4
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i214.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i214.3, label %.loopexit415, label %.lr.ph.i213, !llvm.loop !152

.loopexit415:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.d
  %i.bx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.av ; 6 uses
  %.not.i215 = icmp eq ptr %i.bx, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.e

bb.e:                                             ; preds = %.loopexit415
  %.not8.i.i = icmp eq ptr %i.bx, %i.b
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.e
  %i.by = add i64 %1, %i.j
  %i.bz = shl i64 %i.by, 2
  %i.ca = add i64 %i.bz, %i.d
  %i.cb = add i64 %i.ca, -4
  %i.cc = add i64 %i.h, %i.c
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 76
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader692, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %7 = add i64 %i.h, %i.c
  %8 = shl i64 %i.j, 2
  %.neg666 = sub i64 %8, %7
  %i.cg = add i64 %.neg666, %i.d
  %i.ch = add i64 %i.cg, -1
  %diff.check = icmp ult i64 %i.ch, 31
  br i1 %diff.check, label %.lr.ph.i.i216.preheader692, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cf, 9223372036854775800     ; 3 uses
  %i.ci = shl i64 %n.vec, 2                       ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ci     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bx, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cl ; 2 uses
  %next.gep503 = getelementptr i8, ptr %i.bx, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep503, align 4, !tbaa !318
  %wide.load504 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !318
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load504, ptr %i.cn, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !8504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader692

.lr.ph.i.i216.preheader692:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.cj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.i.i216.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader692, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.cr, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader692 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cq, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader692 ] ; 2 uses
  %i.cp = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.cp, ptr %.010.i.i, align 4, !tbaa !318
  %i.cq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !8505

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.cs = phi ptr [ %0, %bb.e ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.cs, %i.b
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.cv, %.lr.ph.i218 ], [ %i.cs, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.ct = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, -1
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cv, %i.b
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter696 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cw = phi i64 [ %i.cx, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.da, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter698 = phi i64 [ %prol.iter698.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cx = add i64 %i.cw, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !318
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter698.next = add i64 %prol.iter698, 1   ; 2 uses
  %prol.iter698.cmp.not = icmp eq i64 %prol.iter698.next, %xtraiter696
  br i1 %prol.iter698.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8506

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cx, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.da, %.preheader.prol ]
  %i.db = icmp ult i64 %1, 4
  br i1 %i.db, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dc = phi i64 [ %i.dk, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.dm, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.df, align 4, !tbaa !318
  %i.dg = add i32 %i.dd, -2
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dh, align 4, !tbaa !318
  %i.di = add i32 %i.dd, -3
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.dk = add i64 %i.dc, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !318
  %i.dl = add i32 %i.dd, -4
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.dk, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.dn = icmp ugt i64 %4, %i.i                   ; 2 uses
  %.not180 = icmp ugt i64 %i.i, %i.f
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit413, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %xtraiter702 = and i64 %i.i, 3                  ; 2 uses
  %lcmp.mod703.not = icmp eq i64 %xtraiter702, 0
  br i1 %lcmp.mod703.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader, %.lr.ph.i235.prol
  %.020.i236.prol = phi i64 [ %i.do, %.lr.ph.i235.prol ], [ %i.i, %.lr.ph.i235.preheader ]
  %.0819.i237.prol = phi ptr [ %i.ds, %.lr.ph.i235.prol ], [ %0, %.lr.ph.i235.preheader ] ; 2 uses
  %.01618.i238.prol = phi ptr [ %i.dt, %.lr.ph.i235.prol ], [ %2, %.lr.ph.i235.preheader ] ; 3 uses
  %prol.iter704 = phi i64 [ %prol.iter704.next, %.lr.ph.i235.prol ], [ 0, %.lr.ph.i235.preheader ]
  %i.do = add i64 %.020.i236.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238.prol) ]
  %i.dp = load i32, ptr %.0819.i237.prol, align 4, !tbaa !318
  store i32 %i.dp, ptr %.01618.i238.prol, align 4, !tbaa !318
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.0819.i237.prol, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01618.i238.prol, i64 4 ; 2 uses
  %prol.iter704.next = add i64 %prol.iter704, 1   ; 2 uses
  %prol.iter704.cmp.not = icmp eq i64 %prol.iter704.next, %xtraiter702
  br i1 %prol.iter704.cmp.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol, !llvm.loop !8507

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.i, %.lr.ph.i235.preheader ], [ %i.do, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.ds, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dt, %.lr.ph.i235.prol ]
  %i.du = icmp ult i64 %i.i, 4
  br i1 %i.du, label %.loopexit413, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ei, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.el, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 5 uses
  %.01618.i238 = phi ptr [ %i.em, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.dv = load i32, ptr %.0819.i237, align 4, !tbaa !318
  store i32 %i.dv, ptr %.01618.i238, align 4, !tbaa !318
  %i.dw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !318
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !318
  %i.eb = add i32 %i.dw, 2
  store i32 %i.eb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ec = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !318
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !318
  %i.ef = add i32 %i.dw, 3
  store i32 %i.ef, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eg = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 12
  %i.ei = add i64 %.020.i236, -4                  ; 2 uses
  %i.ej = load i32, ptr %i.eg, align 4, !tbaa !318
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !318
  %i.ek = add i32 %i.dw, 4
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.el = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 16
  %.not.i239.3 = icmp eq i64 %i.ei, 0
  br i1 %.not.i239.3, label %.loopexit413, label %.lr.ph.i235, !llvm.loop !152

.loopexit413:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.en = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.i) ; 8 uses
  %i.eo = getelementptr inbounds i8, ptr %0, i64 %i.h ; 4 uses
  %.not8.i = icmp eq ptr %i.eo, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit413
  %i.ep = shl i64 %i.d, 1
  %i.eq = add i64 %i.c, %i.g
  %i.er = add i64 %i.eq, -4
  %i.es = sub i64 %i.er, %i.ep                    ; 2 uses
  %i.et = lshr i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01417.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.prol ], [ %i.p, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !318
  store i32 %i.q, ptr %.01417.i.i.prol, align 4, !tbaa !318
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %i.v = add i64 %.018.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8532

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.v, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.w = icmp ult i64 %4, 4
  br i1 %i.w, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.x = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !318
  store i32 %i.x, ptr %.01417.i.i, align 4, !tbaa !318
  %i.y = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.y, 2
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !318
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !318
  %i.ah = add i32 %i.y, 3
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !318
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !318
  %i.al = add i32 %i.y, 4
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.ao = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !160

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.at, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.ap, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.aq = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01517.i, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit
  %.not123 = icmp ult i64 %i.m, %i.e
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.c, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.ay, %.lr.ph.i129 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i131 = phi ptr [ %i.az, %.lr.ph.i129 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i131) ]
  %i.av = load i32, ptr %.018.i130, align 4, !tbaa !318
  store i32 %i.av, ptr %.01517.i131, align 4, !tbaa !318
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.ay, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ba = sub nuw i64 %i.m, %i.n                  ; 5 uses
  %i.bb = sub i64 0, %i.ba                        ; 3 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bb ; 8 uses
  %.not17.i = icmp eq i64 %i.ba, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.d
  %xtraiter429 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135.prol
  %.020.i.prol = phi i64 [ %i.bd, %.lr.ph.i135.prol ], [ %i.ba, %.lr.ph.i135.preheader ]
  %.0819.i.prol = phi ptr [ %i.bh, %.lr.ph.i135.prol ], [ %i.bc, %.lr.ph.i135.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bi, %.lr.ph.i135.prol ], [ %i.d, %.lr.ph.i135.preheader ] ; 3 uses
  %prol.iter431 = phi i64 [ %prol.iter431.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader ]
  %i.bd = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.be = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.be, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.bf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter431.next = add i64 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i64 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol, !llvm.loop !8533

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.020.i.unr = phi i64 [ %i.ba, %.lr.ph.i135.preheader ], [ %i.bd, %.lr.ph.i135.prol ]
  %.0819.i.unr = phi ptr [ %i.bc, %.lr.ph.i135.preheader ], [ %i.bh, %.lr.ph.i135.prol ]
  %.01618.i.unr = phi ptr [ %i.d, %.lr.ph.i135.preheader ], [ %i.bi, %.lr.ph.i135.prol ]
  %i.bj = sub i64 %i.n, %i.m
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.020.i = phi i64 [ %i.by, %.lr.ph.i135 ], [ %.020.i.unr, %.lr.ph.i135.prol.loopexit ]
  %.0819.i = phi ptr [ %i.cb, %.lr.ph.i135 ], [ %.0819.i.unr, %.lr.ph.i135.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.cc, %.lr.ph.i135 ], [ %.01618.i.unr, %.lr.ph.i135.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bl = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bl, ptr %.01618.i, align 4, !tbaa !318
  %i.bm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bo = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !318
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !318
  %i.br = add i32 %i.bm, 2
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !318
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !318
  %i.bv = add i32 %i.bm, 3
  store i32 %i.bv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bw = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.by = add i64 %.020.i, -4                     ; 2 uses
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !318
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !318
  %i.ca = add i32 %i.bm, 4
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i136.3 = icmp eq i64 %i.by, 0
  br i1 %.not.i136.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %bb.d
  %.not.i137 = icmp eq ptr %i.bc, %i.d
  %.not8.i.i = icmp eq ptr %0, %i.bc
  %or.cond = or i1 %.not.i137, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.cd = shl i64 %i.bb, 2
  %i.ce = add i64 %i.cd, %i.h
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.c                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 92
  br i1 %min.iters.check, label %.lr.ph.i.i138.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i138.preheader
  %i.cj = shl i64 %i.bb, 2
  %7 = add i64 %i.cj, %i.h
  %8 = shl nsw i64 %1, 2
  %i.ck = add i64 %8, %i.c
  %i.cl = sub i64 %i.ck, %7
  %diff.check = icmp ugt i64 %i.cl, -32
  br i1 %diff.check, label %.lr.ph.i.i138.preheader424, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bc, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.cp ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.bc, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !318
  %wide.load320 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !318
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !318
  store <4 x i32> %wide.load320, ptr %i.ct, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !8534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader424

.lr.ph.i.i138.preheader424:                       ; preds = %vector.memcheck, %.lr.ph.i.i138.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i138.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i138.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader424, %.lr.ph.i.i138
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i.i138 ], [ %.010.i.i.ph, %.lr.ph.i.i138.preheader424 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i138 ], [ %.079.i.i.ph, %.lr.ph.i.i138.preheader424 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !318
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !318
  %.not.i.i139 = icmp eq ptr %0, %i.cv
  br i1 %.not.i.i139, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138, !llvm.loop !8535

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i138, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.da, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.da, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i129, %bb.c
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter426 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.db = phi i64 [ %i.dc, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.df, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter428 = phi i64 [ %prol.iter428.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.dc = add i64 %i.db, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !318
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter428.next = add i64 %prol.iter428, 1   ; 2 uses
  %prol.iter428.cmp.not = icmp eq i64 %prol.iter428.next, %xtraiter426
  br i1 %prol.iter428.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8536

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.dc, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.df, %.preheader.prol ]
  %i.dg = icmp ult i64 %1, 4
  br i1 %i.dg, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dh = phi i64 [ %i.dp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.dr, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !318
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.dk, align 4, !tbaa !318
  %i.dl = add i32 %i.di, -2
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !318
  %i.dn = add i32 %i.di, -3
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.dp = add i64 %i.dh, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !318
  %i.dq = add i32 %i.di, -4
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.dp, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.ds = icmp ugt i64 %i.m, %i.j
  br i1 %i.ds, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.d
  br i1 %.not16.i156, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.dt = sub nsw i64 0, %i.j
  %i.du = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dt
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.dy, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.dz, %.lr.ph.i157 ], [ %i.du, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.dv = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.dv, ptr %.01517.i159, align 4, !tbaa !318
  %i.dw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dy = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.dy, %i.d
  br i1 %.not.i160, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162: ; preds = %.lr.ph.i157, %bb.f
  %i.ea = sub nuw nsw i64 %i.m, %i.j              ; 4 uses
  %i.eb = sub i64 %4, %i.ea                       ; 10 uses
  %i.ec = sub i64 0, %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ec ; 10 uses
  %.not6.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not6.i.i, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164.preheader

.lr.ph.i.i164.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %min.iters.check377 = icmp ult i64 %i.eb, 20
  br i1 %min.iters.check377, label %.lr.ph.i.i164.preheader415, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph.i.i164.preheader
  %i.ee = sub i64 %1, %i.eb
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, %i.c
  %i.eh = sub i64 %i.a, %i.eg
  %diff.check375 = icmp ugt i64 %i.eh, -32
  br i1 %diff.check375, label %.lr.ph.i.i164.preheader415, label %vector.ph378

vector.ph378:                                     ; preds = %vector.memcheck374
  %n.vec379 = and i64 %i.eb, -8                   ; 3 uses
  %i.ei = and i64 %i.eb, 7
  %i.ej = shl i64 %n.vec379, 2                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ed, i64 %i.ej
  %i.el = getelementptr i8, ptr %5, i64 %i.ej     ; 2 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph378
  %index381 = phi i64 [ 0, %vector.ph378 ], [ %index.next386, %vector.body380 ] ; 2 uses
  %i.em = shl i64 %index381, 2                    ; 2 uses
  %next.gep382 = getelementptr i8, ptr %i.ed, i64 %i.em ; 2 uses
  %next.gep383 = getelementptr i8, ptr %5, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep383, i64 16
  %wide.load384 = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !318
  %wide.load385 = load <4 x i32>, ptr %i.en, align 4, !tbaa !318
  %i.eo = getelementptr i8, ptr %next.gep382, i64 16
  store <4 x i32> %wide.load384, ptr %next.gep382, align 4, !tbaa !318
  store <4 x i32> %wide.load385, ptr %i.eo, align 4, !tbaa !318
  %index.next386 = add nuw i64 %index381, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.ep, label %middle.block387, label %vector.body380, !llvm.loop !8537

middle.block387:                                  ; preds = %vector.body380
  %cmp.n388 = icmp eq i64 %i.eb, %n.vec379
  br i1 %cmp.n388, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164.preheader415

.lr.ph.i.i164.preheader415:                       ; preds = %vector.memcheck374, %.lr.ph.i.i164.preheader, %middle.block387
  %.09.i.i.ph = phi i64 [ %i.eb, %vector.memcheck374 ], [ %i.eb, %.lr.ph.i.i164.preheader ], [ %i.ei, %middle.block387 ] ; 4 uses
  %.048.i.i.ph = phi ptr [ %i.ed, %vector.memcheck374 ], [ %i.ed, %.lr.ph.i.i164.preheader ], [ %i.ek, %middle.block387 ] ; 2 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %5, %vector.memcheck374 ], [ %5, %.lr.ph.i.i164.preheader ], [ %i.el, %middle.block387 ] ; 2 uses
  %i.eq = add i64 %.09.i.i.ph, -1
  %xtraiter438 = and i64 %.09.i.i.ph, 7           ; 2 uses
  %lcmp.mod439.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod439.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol

.lr.ph.i.i164.prol:                               ; preds = %.lr.ph.i.i164.preheader415, %.lr.ph.i.i164.prol
  %.09.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i164.prol ], [ %.09.i.i.ph, %.lr.ph.i.i164.preheader415 ]
  %.048.i.i.prol = phi ptr [ %i.eu, %.lr.ph.i.i164.prol ], [ %.048.i.i.ph, %.lr.ph.i.i164.preheader415 ] ; 2 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i164.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i164.preheader415 ] ; 2 uses
  %prol.iter440 = phi i64 [ %prol.iter440.next, %.lr.ph.i.i164.prol ], [ 0, %.lr.ph.i.i164.preheader415 ]
  %i.er = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.es = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !318
  store i32 %i.es, ptr %.048.i.i.prol, align 4, !tbaa !318
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4 ; 2 uses
  %prol.iter440.next = add i64 %prol.iter440, 1   ; 2 uses
  %prol.iter440.cmp.not = icmp eq i64 %prol.iter440.next, %xtraiter438
  br i1 %prol.iter440.cmp.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !8538

.lr.ph.i.i164.prol.loopexit:                      ; preds = %.lr.ph.i.i164.prol, %.lr.ph.i.i164.preheader415
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i.i164.preheader415 ], [ %i.et, %.lr.ph.i.i164.prol ]
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i164.preheader415 ], [ %i.er, %.lr.ph.i.i164.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.lr.ph.i.i164.preheader415 ], [ %i.eu, %.lr.ph.i.i164.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i164.preheader415 ], [ %i.et, %.lr.ph.i.i164.prol ]
  %i.ev = icmp ult i64 %i.eq, 7
  br i1 %i.ev, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.09.i.i = phi i64 [ %i.fr, %.lr.ph.i.i164 ], [ %.09.i.i.unr, %.lr.ph.i.i164.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.fu, %.lr.ph.i.i164 ], [ %.048.i.i.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ft, %.lr.ph.i.i164 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i164.prol.loopexit ] ; 9 uses
  %i.ew = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !318
  store i32 %i.ew, ptr %.048.i.i, align 4, !tbaa !318
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !318
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !318
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !318
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !318
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !318
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !318
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !318
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !318
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 20
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !318
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !318
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !318
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !318
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 28
  %i.fr = add i64 %.09.i.i, -8                    ; 2 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !318
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !318
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %.not.i.i165.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i165.7, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164, !llvm.loop !8539

.lr.ph.i.i169.preheader:                          ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164, %middle.block387, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %.sroa.0.016.i.i172.ph = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %i.el, %middle.block387 ], [ %.lcssa416.unr, %.lr.ph.i.i164.prol.loopexit ], [ %i.ft, %.lr.ph.i.i164 ] ; 2 uses
  %xtraiter441 = and i64 %i.ea, 3                 ; 2 uses
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol

.lr.ph.i.i169.prol:                               ; preds = %.lr.ph.i.i169.preheader, %.lr.ph.i.i169.prol
  %.018.i.i170.prol = phi i64 [ %i.ga, %.lr.ph.i.i169.prol ], [ %i.ea, %.lr.ph.i.i169.preheader ]
  %.01417.i.i171.prol = phi ptr [ %i.fz, %.lr.ph.i.i169.prol ], [ %i.d, %.lr.ph.i.i169.preheader ] ; 3 uses
  %.sroa.0.016.i.i172.prol = phi ptr [ %i.fy, %.lr.ph.i.i169.prol ], [ %.sroa.0.016.i.i172.ph, %.lr.ph.i.i169.preheader ] ; 2 uses
  %prol.iter443 = phi i64 [ %prol.iter443.next, %.lr.ph.i.i169.prol ], [ 0, %.lr.ph.i.i169.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i171.prol) ]
  %i.fv = load i32, ptr %.sroa.0.016.i.i172.prol, align 4, !tbaa !318
  store i32 %i.fv, ptr %.01417.i.i171.prol, align 4, !tbaa !318
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172.prol, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01417.i.i171.prol, i64 4 ; 2 uses
  %i.ga = add i64 %.018.i.i170.prol, -1           ; 2 uses
  %prol.iter443.next = add i64 %prol.iter443, 1   ; 2 uses
  %prol.iter443.cmp.not = icmp eq i64 %prol.iter443.next, %xtraiter441
  br i1 %prol.iter443.cmp.not, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol, !llvm.loop !8540

.lr.ph.i.i169.prol.loopexit:                      ; preds = %.lr.ph.i.i169.prol, %.lr.ph.i.i169.preheader
  %.018.i.i170.unr = phi i64 [ %i.ea, %.lr.ph.i.i169.preheader ], [ %i.ga, %.lr.ph.i.i169.prol ]
  %.01417.i.i171.unr = phi ptr [ %i.d, %.lr.ph.i.i169.preheader ], [ %i.fz, %.lr.ph.i.i169.prol ]
  %.sroa.0.016.i.i172.unr = phi ptr [ %.sroa.0.016.i.i172.ph, %.lr.ph.i.i169.preheader ], [ %i.fy, %.lr.ph.i.i169.prol ]
  %i.gb = sub nsw i64 %i.j, %i.m
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %.018.i.i170 = phi i64 [ %i.gu, %.lr.ph.i.i169 ], [ %.018.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ]
  %.01417.i.i171 = phi ptr [ %i.gt, %.lr.ph.i.i169 ], [ %.01417.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i172 = phi ptr [ %i.gs, %.lr.ph.i.i169 ], [ %.sroa.0.016.i.i172.unr, %.lr.ph.i.i169.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i171) ]
  %i.gd = load i32, ptr %.sroa.0.016.i.i172, align 4, !tbaa !318
  store i32 %i.gd, ptr %.01417.i.i171, align 4, !tbaa !318
  %i.ge = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !318
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !318
  %i.gj = add i32 %i.ge, 2
  store i32 %i.gj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 8
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !318
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !318
  %i.gn = add i32 %i.ge, 3
  store i32 %i.gn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 12
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !318
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !318
  %i.gr = add i32 %i.ge, 4
  store i32 %i.gr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 16
  %i.gu = add i64 %.018.i.i170, -4                ; 2 uses
  %.not.i.i173.3 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i173.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175, label %.lr.ph.i.i169, !llvm.loop !160

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175: ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.prol.loopexit
  %.not.i176 = icmp eq ptr %3, %i.ed
  br i1 %.not.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit175
  %.not8.i.i177 = icmp eq ptr %0, %3
  br i1 %.not8.i.i177, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.g
  %i.gv = add i64 %i.h, -4
  %i.gw = sub i64 %i.gv, %i.c                     ; 2 uses
  %i.gx = lshr i64 %i.gw, 2
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check395 = icmp ult i64 %i.gw, 92
  br i1 %min.iters.check395, label %.lr.ph.i.i178.preheader414, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.i.i178.preheader
  %i.gz = shl nsw i64 %1, 2
  %9 = add i64 %i.gz, %i.c
  %10 = sub i64 %i.h, %9
  %.neg = shl i64 %i.eb, 2
  %i.ha = add i64 %.neg, %10
  %i.hb = add i64 %i.ha, -1
  %diff.check393 = icmp ult i64 %i.hb, 31
  br i1 %diff.check393, label %.lr.ph.i.i178.preheader414, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.gy, 9223372036854775800  ; 3 uses
  %i.hc = mul i64 %n.vec397, -4                   ; 2 uses
  %i.hd = getelementptr i8, ptr %i.ed, i64 %i.hc  ; 2 uses
  %i.he = getelementptr i8, ptr %3, i64 %i.hc
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.hf = mul i64 %index399, -4                   ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.ed, i64 %i.hf ; 2 uses
  %next.gep401 = getelementptr i8, ptr %3, i64 %i.hf ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %next.gep401, i64 -16
  %i.hh = getelementptr inbounds i8, ptr %next.gep401, i64 -32
  %wide.load402 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !318
  %wide.load403 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !318
  %i.hi = getelementptr inbounds i8, ptr %next.gep400, i64 -16
  %i.hj = getelementptr inbounds i8, ptr %next.gep400, i64 -32
  store <4 x i32> %wide.load402, ptr %i.hi, align 4, !tbaa !318
  store <4 x i32> %wide.load403, ptr %i.hj, align 4, !tbaa !318
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.hk, label %middle.block405, label %vector.body398, !llvm.loop !8541

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.gy, %n.vec397
  br i1 %cmp.n406, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader414

.lr.ph.i.i178.preheader414:                       ; preds = %vector.memcheck392, %.lr.ph.i.i178.preheader, %middle.block405
  %.010.i.i179.ph = phi ptr [ %i.ed, %vector.memcheck392 ], [ %i.ed, %.lr.ph.i.i178.preheader ], [ %i.hd, %middle.block405 ]
  %.079.i.i180.ph = phi ptr [ %3, %vector.memcheck392 ], [ %3, %.lr.ph.i.i178.preheader ], [ %i.he, %middle.block405 ]
  br label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.preheader414, %.lr.ph.i.i178
  %.010.i.i179 = phi ptr [ %i.hm, %.lr.ph.i.i178 ], [ %.010.i.i179.ph, %.lr.ph.i.i178.preheader414 ]
  %.079.i.i180 = phi ptr [ %i.hl, %.lr.ph.i.i178 ], [ %.079.i.i180.ph, %.lr.ph.i.i178.preheader414 ]
  %i.hl = getelementptr inbounds i8, ptr %.079.i.i180, i64 -4 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %.010.i.i179, i64 -4 ; 3 uses
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !318
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !318
  %.not.i.i181 = icmp eq ptr %0, %i.hl
  br i1 %.not.i.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178, !llvm.loop !8542

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182: ; preds = %.lr.ph.i.i178, %middle.block405, %bb.g
  %i.ho = phi ptr [ %i.ed, %bb.g ], [ %i.hd, %middle.block405 ], [ %i.hm, %.lr.ph.i.i178 ] ; 2 uses
  %.not3.i183 = icmp eq ptr %0, %i.ho
  br i1 %.not3.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %.lr.ph.i184
  %storemerge4.i185 = phi ptr [ %i.hr, %.lr.ph.i184 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i185, align 4, !tbaa !318
  %i.hp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hq = add i32 %i.hp, -1
  store i32 %i.hq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hr = getelementptr inbounds nuw i8, ptr %storemerge4.i185, i64 4 ; 2 uses
  %.not.i186 = icmp eq ptr %i.hr, %i.ho
  br i1 %.not.i186, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.hs = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 6 uses
  %.not17.i196 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i196, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %bb.h
  %xtraiter432 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %.020.i198.prol = phi i64 [ %i.ht, %.lr.ph.i197.prol ], [ %i.m, %.lr.ph.i197.preheader ]
  %.0819.i199.prol = phi ptr [ %i.hx, %.lr.ph.i197.prol ], [ %i.hs, %.lr.ph.i197.preheader ] ; 2 uses
  %.01618.i200.prol = phi ptr [ %i.hy, %.lr.ph.i197.prol ], [ %i.d, %.lr.ph.i197.preheader ] ; 3 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %i.ht = add i64 %.020.i198.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200.prol) ]
  %i.hu = load i32, ptr %.0819.i199.prol, align 4, !tbaa !318
  store i32 %i.hu, ptr %.01618.i200.prol, align 4, !tbaa !318
  %i.hv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hx = getelementptr inbounds nuw i8, ptr %.0819.i199.prol, i64 4 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.01618.i200.prol, i64 4 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !8543

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %.020.i198.unr = phi i64 [ %i.m, %.lr.ph.i197.preheader ], [ %i.ht, %.lr.ph.i197.prol ]
  %.0819.i199.unr = phi ptr [ %i.hs, %.lr.ph.i197.preheader ], [ %i.hx, %.lr.ph.i197.prol ]
  %.01618.i200.unr = phi ptr [ %i.d, %.lr.ph.i197.preheader ], [ %i.hy, %.lr.ph.i197.prol ]
  %i.hz = icmp ult i64 %i.m, 4
  br i1 %i.hz, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %.020.i198 = phi i64 [ %i.in, %.lr.ph.i197 ], [ %.020.i198.unr, %.lr.ph.i197.prol.loopexit ]
  %.0819.i199 = phi ptr [ %i.iq, %.lr.ph.i197 ], [ %.0819.i199.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %.01618.i200 = phi ptr [ %i.ir, %.lr.ph.i197 ], [ %.01618.i200.unr, %.lr.ph.i197.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200) ]
  %i.ia = load i32, ptr %.0819.i199, align 4, !tbaa !318
  store i32 %i.ia, ptr %.01618.i200, align 4, !tbaa !318
  %i.ib = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.id = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 4
  %i.if = load i32, ptr %i.id, align 4, !tbaa !318
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !318
  %i.ig = add i32 %i.ib, 2
  store i32 %i.ig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ih = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 8
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !318
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !318
  %i.ik = add i32 %i.ib, 3
  store i32 %i.ik, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.il = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 12
  %i.im = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 12
  %i.in = add i64 %.020.i198, -4                  ; 2 uses
  %i.io = load i32, ptr %i.il, align 4, !tbaa !318
  store i32 %i.io, ptr %i.im, align 4, !tbaa !318
  %i.ip = add i32 %i.ib, 4
  store i32 %i.ip, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iq = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 16
  %.not.i201.3 = icmp eq i64 %i.in, 0
  br i1 %.not.i201.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203: ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %.not8.i.i205 = icmp eq ptr %3, %i.hs
  br i1 %.not8.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader

.lr.ph.i.i206.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.is = shl nsw i64 %1, 2
  %i.it = shl i64 %i.c, 1
  %i.iu = shl i64 %4, 2
  %i.iv = add i64 %i.is, %i.it
  %i.iw = add i64 %i.iv, -4
  %i.ix = add i64 %i.h, %i.b
  %i.iy = add i64 %i.ix, %i.iu
  %i.iz = sub i64 %i.iw, %i.iy                    ; 2 uses
  %i.ja = lshr i64 %i.iz, 2
  %i.jb = add nuw nsw i64 %i.ja, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.iz, 28
  %diff.check323 = icmp ugt i64 %i.l, -32
  %or.cond410 = or i1 %min.iters.check325, %diff.check323
  br i1 %or.cond410, label %.lr.ph.i.i206.preheader421, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i206.preheader
  %n.vec327 = and i64 %i.jb, 9223372036854775800  ; 3 uses
  %i.jc = mul i64 %n.vec327, -4                   ; 2 uses
  %i.jd = getelementptr i8, ptr %i.d, i64 %i.jc   ; 2 uses
  %i.je = getelementptr i8, ptr %i.hs, i64 %i.jc
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.jf = mul i64 %index329, -4                   ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.d, i64 %i.jf ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.hs, i64 %i.jf ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.jh = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  %wide.load332 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !318
  %wide.load333 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !318
  %i.ji = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.jj = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  store <4 x i32> %wide.load332, ptr %i.ji, align 4, !tbaa !318
  store <4 x i32> %wide.load333, ptr %i.jj, align 4, !tbaa !318
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.jk, label %middle.block335, label %vector.body328, !llvm.loop !8544

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.jb, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader421

.lr.ph.i.i206.preheader421:                       ; preds = %.lr.ph.i.i206.preheader, %middle.block335
  %.010.i.i207.ph = phi ptr [ %i.d, %.lr.ph.i.i206.preheader ], [ %i.jd, %middle.block335 ]
  %.079.i.i208.ph = phi ptr [ %i.hs, %.lr.ph.i.i206.preheader ], [ %i.je, %middle.block335 ]
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206.preheader421, %.lr.ph.i.i206
  %.010.i.i207 = phi ptr [ %i.jm, %.lr.ph.i.i206 ], [ %.010.i.i207.ph, %.lr.ph.i.i206.preheader421 ]
  %.079.i.i208 = phi ptr [ %i.jl, %.lr.ph.i.i206 ], [ %.079.i.i208.ph, %.lr.ph.i.i206.preheader421 ]
  %i.jl = getelementptr inbounds i8, ptr %.079.i.i208, i64 -4 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.010.i.i207, i64 -4 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !318
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !318
  %.not.i.i209 = icmp eq ptr %3, %i.jl
  br i1 %.not.i.i209, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206, !llvm.loop !8545

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210: ; preds = %.lr.ph.i.i206, %middle.block335, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.jo = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203 ], [ %i.jd, %middle.block335 ], [ %i.jm, %.lr.ph.i.i206 ] ; 2 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64              ; 2 uses
  %i.jq = sub i64 0, %4
end_hunk_9
begin_hunk_10_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl21insert_n_copies_proxyINS0_9allocatorIS3_Lj2ELj0EEEEES8_EEvT_mSA_SA_mT0_RT1_:bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.017.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01416.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.017.i.i.prol, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.prol) ]
  %i.p = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.p, ptr %.01416.i.i.prol, align 4, !tbaa !318
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %.01416.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8602

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.017.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %.01416.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.t = icmp ult i64 %4, 4
  br i1 %i.t, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01416.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.01416.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  %i.u = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.u, ptr %.01416.i.i, align 4, !tbaa !318
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 4
  %i.y = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.y, ptr %i.x, align 4, !tbaa !318
  %i.z = add i32 %i.v, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %i.ab = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !318
  %i.ac = add i32 %i.v, 3
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 12
  %i.ae = add i64 %.017.i.i, -4                   ; 2 uses
  %i.af = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !318
  %i.ag = add i32 %i.v, 4
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !154

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ai = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.ai
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.an, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.ao, %.lr.ph.i202 ], [ %i.aj, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.ak = load i32, ptr %.018.i203, align 4, !tbaa !318
  store i32 %i.ak, ptr %.01517.i204, align 4, !tbaa !318
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.an, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202, !llvm.loop !153

bb.d:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.ap = sub nuw i64 %i.h, %i.i                  ; 5 uses
  %.not17.i = icmp eq i64 %i.ap, 0
  br i1 %.not17.i, label %.loopexit400, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter633 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  br i1 %lcmp.mod634.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.ar, %.lr.ph.i208.prol ], [ %i.ap, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.av, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.aw, %.lr.ph.i208.prol ], [ %i.aq, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter635 = phi i64 [ %prol.iter635.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.ar = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.as = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.as, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter635.next = add i64 %prol.iter635, 1   ; 2 uses
  %prol.iter635.cmp.not = icmp eq i64 %prol.iter635.next, %xtraiter633
  br i1 %prol.iter635.cmp.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol, !llvm.loop !8603

.lr.ph.i208.prol.loopexit:                        ; preds = %.lr.ph.i208.prol, %.lr.ph.i208.preheader
  %.020.i.unr = phi i64 [ %i.ap, %.lr.ph.i208.preheader ], [ %i.ar, %.lr.ph.i208.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i208.preheader ], [ %i.av, %.lr.ph.i208.prol ]
  %.01618.i.unr = phi ptr [ %i.aq, %.lr.ph.i208.preheader ], [ %i.aw, %.lr.ph.i208.prol ]
  %i.ax = sub i64 %i.i, %i.h
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit400, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208
  %.020.i = phi i64 [ %i.bm, %.lr.ph.i208 ], [ %.020.i.unr, %.lr.ph.i208.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bp, %.lr.ph.i208 ], [ %.0819.i.unr, %.lr.ph.i208.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bq, %.lr.ph.i208 ], [ %.01618.i.unr, %.lr.ph.i208.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.az = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.az, ptr %.01618.i, align 4, !tbaa !318
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !318
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !318
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !318
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bm = add i64 %.020.i, -4                     ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !318
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !318
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i209.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i209.3, label %.loopexit400, label %.lr.ph.i208, !llvm.loop !152

.loopexit400:                                     ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208, %bb.d
  %i.br = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap ; 6 uses
  %.not.i210 = icmp eq ptr %i.br, %0
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit220, label %bb.e

bb.e:                                             ; preds = %.loopexit400
  %.not8.i.i = icmp eq ptr %i.br, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i211.preheader

.lr.ph.i.i211.preheader:                          ; preds = %bb.e
  %i.bs = add i64 %1, %i.i
  %i.bt = shl i64 %i.bs, 2
  %i.bu = add i64 %i.bt, %i.c
  %i.bv = add i64 %i.bu, -4
  %i.bw = add i64 %i.g, %i.b
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 76
  br i1 %min.iters.check, label %.lr.ph.i.i211.preheader626, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i211.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg612 = sub i64 %8, %7
  %i.ca = add i64 %.neg612, %i.c
  %i.cb = add i64 %i.ca, -1
  %diff.check = icmp ult i64 %i.cb, 31
  br i1 %diff.check, label %.lr.ph.i.i211.preheader626, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cc = shl i64 %n.vec, 2                       ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.br, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cf ; 2 uses
  %next.gep472 = getelementptr i8, ptr %i.br, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep472, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep472, align 4, !tbaa !318
  %wide.load473 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !318
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load473, ptr %i.ch, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !8604

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i211.preheader626

.lr.ph.i.i211.preheader626:                       ; preds = %vector.memcheck, %.lr.ph.i.i211.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i211.preheader ], [ %i.cd, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i211.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i211

.lr.ph.i.i211:                                    ; preds = %.lr.ph.i.i211.preheader626, %.lr.ph.i.i211
  %.010.i.i = phi ptr [ %i.cl, %.lr.ph.i.i211 ], [ %.010.i.i.ph, %.lr.ph.i.i211.preheader626 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ck, %.lr.ph.i.i211 ], [ %.079.i.i.ph, %.lr.ph.i.i211.preheader626 ] ; 2 uses
  %i.cj = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.cj, ptr %.010.i.i, align 4, !tbaa !318
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i212 = icmp eq ptr %i.ck, %i.a
  br i1 %.not.i.i212, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i211, !llvm.loop !8605

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i211, %middle.block, %bb.e
  %i.cm = phi ptr [ %0, %bb.e ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i211 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.cm, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit220, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i213
  %storemerge4.i = phi ptr [ %i.cp, %.lr.ph.i213 ], [ %i.cm, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i214 = icmp eq ptr %i.cp, %i.a
  br i1 %.not.i214, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit220, label %.lr.ph.i213, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i202, %bb.c
  %.not.i217 = icmp eq i64 %1, 0
  br i1 %.not.i217, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit220, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter630 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod631.not = icmp eq i64 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cq = phi i64 [ %i.cr, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i218.prol = phi ptr [ %i.cu, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter632 = phi i64 [ %prol.iter632.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cr = add i64 %i.cq, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i218.prol, align 4, !tbaa !318
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i218.prol, i64 4 ; 2 uses
  %prol.iter632.next = add i64 %prol.iter632, 1   ; 2 uses
  %prol.iter632.cmp.not = icmp eq i64 %prol.iter632.next, %xtraiter630
  br i1 %prol.iter632.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8606

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cr, %.preheader.prol ]
  %.0.i218.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cu, %.preheader.prol ]
  %i.cv = icmp ult i64 %1, 4
  br i1 %i.cv, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit220, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cw = phi i64 [ %i.de, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i218 = phi ptr [ %i.dg, %.preheader ], [ %.0.i218.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i218, align 4, !tbaa !318
  %i.cx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i218, i64 4
  store i32 -2147483648, ptr %i.cz, align 4, !tbaa !318
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i218, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !318
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i218, i64 12
  %i.de = add i64 %i.cw, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !318
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i218, i64 16
  %.not3.i219.3 = icmp eq i64 %i.de, 0
  br i1 %.not3.i219.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit220, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.dh = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not178 = icmp ugt i64 %i.h, %i.e
  br i1 %.not178, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i229 = icmp eq ptr %0, %2
  br i1 %.not17.i229, label %.loopexit398, label %.lr.ph.i230.preheader

.lr.ph.i230.preheader:                            ; preds = %bb.g
  %xtraiter636 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %.lr.ph.i230.prol.loopexit, label %.lr.ph.i230.prol

.lr.ph.i230.prol:                                 ; preds = %.lr.ph.i230.preheader, %.lr.ph.i230.prol
  %.020.i231.prol = phi i64 [ %i.di, %.lr.ph.i230.prol ], [ %i.h, %.lr.ph.i230.preheader ]
  %.0819.i232.prol = phi ptr [ %i.dm, %.lr.ph.i230.prol ], [ %0, %.lr.ph.i230.preheader ] ; 2 uses
  %.01618.i233.prol = phi ptr [ %i.dn, %.lr.ph.i230.prol ], [ %2, %.lr.ph.i230.preheader ] ; 3 uses
  %prol.iter638 = phi i64 [ %prol.iter638.next, %.lr.ph.i230.prol ], [ 0, %.lr.ph.i230.preheader ]
  %i.di = add i64 %.020.i231.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i233.prol) ]
  %i.dj = load i32, ptr %.0819.i232.prol, align 4, !tbaa !318
  store i32 %i.dj, ptr %.01618.i233.prol, align 4, !tbaa !318
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0819.i232.prol, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01618.i233.prol, i64 4 ; 2 uses
  %prol.iter638.next = add i64 %prol.iter638, 1   ; 2 uses
  %prol.iter638.cmp.not = icmp eq i64 %prol.iter638.next, %xtraiter636
  br i1 %prol.iter638.cmp.not, label %.lr.ph.i230.prol.loopexit, label %.lr.ph.i230.prol, !llvm.loop !8607

.lr.ph.i230.prol.loopexit:                        ; preds = %.lr.ph.i230.prol, %.lr.ph.i230.preheader
  %.020.i231.unr = phi i64 [ %i.h, %.lr.ph.i230.preheader ], [ %i.di, %.lr.ph.i230.prol ]
  %.0819.i232.unr = phi ptr [ %0, %.lr.ph.i230.preheader ], [ %i.dm, %.lr.ph.i230.prol ]
  %.01618.i233.unr = phi ptr [ %2, %.lr.ph.i230.preheader ], [ %i.dn, %.lr.ph.i230.prol ]
  %i.do = icmp ult i64 %i.h, 4
  br i1 %i.do, label %.loopexit398, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230
  %.020.i231 = phi i64 [ %i.ec, %.lr.ph.i230 ], [ %.020.i231.unr, %.lr.ph.i230.prol.loopexit ]
  %.0819.i232 = phi ptr [ %i.ef, %.lr.ph.i230 ], [ %.0819.i232.unr, %.lr.ph.i230.prol.loopexit ] ; 5 uses
  %.01618.i233 = phi ptr [ %i.eg, %.lr.ph.i230 ], [ %.01618.i233.unr, %.lr.ph.i230.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i233) ]
  %i.dp = load i32, ptr %.0819.i232, align 4, !tbaa !318
  store i32 %i.dp, ptr %.01618.i233, align 4, !tbaa !318
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.0819.i232, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.01618.i233, i64 4
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !318
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !318
  %i.dv = add i32 %i.dq, 2
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dw = getelementptr inbounds nuw i8, ptr %.0819.i232, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.01618.i233, i64 8
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !318
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !318
  %i.dz = add i32 %i.dq, 3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i232, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %.01618.i233, i64 12
  %i.ec = add i64 %.020.i231, -4                  ; 2 uses
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !318
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !318
  %i.ee = add i32 %i.dq, 4
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %.0819.i232, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.01618.i233, i64 16
  %.not.i234.3 = icmp eq i64 %i.ec, 0
  br i1 %.not.i234.3, label %.loopexit398, label %.lr.ph.i230, !llvm.loop !152

.loopexit398:                                     ; preds = %.lr.ph.i230.prol.loopexit, %.lr.ph.i230, %bb.g
  %i.eh = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 8 uses
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.ei, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i237.preheader

.lr.ph.i237.preheader:                            ; preds = %.loopexit398
  %i.ej = shl i64 %i.c, 1
  %i.ek = add i64 %i.b, %i.f
  %i.el = add i64 %i.ek, -4
  %i.em = sub i64 %i.el, %i.ej                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %i.m = add i64 %i.i, %4                         ; 4 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.017.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01416.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %i.o, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = add i64 %.017.i.i.prol, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.prol) ]
  %i.q = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.q, ptr %.01416.i.i.prol, align 4, !tbaa !318
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.01416.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8628

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.017.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %.01416.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.u = icmp ult i64 %4, 4
  br i1 %i.u, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.017.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01416.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.01416.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  %i.v = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.v, ptr %.01416.i.i, align 4, !tbaa !318
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 4
  %i.z = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.z, ptr %i.y, align 4, !tbaa !318
  %i.aa = add i32 %i.w, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %i.ac = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !318
  %i.ad = add i32 %i.w, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 12
  %i.af = add i64 %.017.i.i, -4                   ; 2 uses
  %i.ag = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !318
  %i.ah = add i32 %i.w, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !154

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.c
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.an, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.ak = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.ak, ptr %.01517.i, align 4, !tbaa !318
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.an, %i.c
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not121 = icmp ult i64 %i.l, %i.d
  br i1 %.not121, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i126 = icmp eq ptr %0, %3
  br i1 %.not16.i126, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.c, %.lr.ph.i127
  %.018.i128 = phi ptr [ %i.as, %.lr.ph.i127 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i129 = phi ptr [ %i.at, %.lr.ph.i127 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i129) ]
  %i.ap = load i32, ptr %.018.i128, align 4, !tbaa !318
  store i32 %i.ap, ptr %.01517.i129, align 4, !tbaa !318
  %i.aq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i128, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i129, i64 4
  %.not.i130 = icmp eq ptr %i.as, %3
  br i1 %.not.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.au = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.av = sub i64 0, %i.au                        ; 3 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.av ; 8 uses
  %.not17.i = icmp eq i64 %i.au, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %bb.d
  %xtraiter403 = and i64 %i.au, 3                 ; 2 uses
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod404.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133.prol
  %.020.i.prol = phi i64 [ %i.ax, %.lr.ph.i133.prol ], [ %i.au, %.lr.ph.i133.preheader ]
  %.0819.i.prol = phi ptr [ %i.bb, %.lr.ph.i133.prol ], [ %i.aw, %.lr.ph.i133.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bc, %.lr.ph.i133.prol ], [ %i.c, %.lr.ph.i133.preheader ] ; 3 uses
  %prol.iter405 = phi i64 [ %prol.iter405.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader ]
  %i.ax = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ay = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ay, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter405.next = add i64 %prol.iter405, 1   ; 2 uses
  %prol.iter405.cmp.not = icmp eq i64 %prol.iter405.next, %xtraiter403
  br i1 %prol.iter405.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !8629

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader
  %.020.i.unr = phi i64 [ %i.au, %.lr.ph.i133.preheader ], [ %i.ax, %.lr.ph.i133.prol ]
  %.0819.i.unr = phi ptr [ %i.aw, %.lr.ph.i133.preheader ], [ %i.bb, %.lr.ph.i133.prol ]
  %.01618.i.unr = phi ptr [ %i.c, %.lr.ph.i133.preheader ], [ %i.bc, %.lr.ph.i133.prol ]
  %i.bd = sub i64 %i.m, %i.l
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.020.i = phi i64 [ %i.bs, %.lr.ph.i133 ], [ %.020.i.unr, %.lr.ph.i133.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bv, %.lr.ph.i133 ], [ %.0819.i.unr, %.lr.ph.i133.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bw, %.lr.ph.i133 ], [ %.01618.i.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bf = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bf, ptr %.01618.i, align 4, !tbaa !318
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !318
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !318
  %i.bl = add i32 %i.bg, 2
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !318
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !318
  %i.bp = add i32 %i.bg, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bs = add i64 %.020.i, -4                     ; 2 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !318
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !318
  %i.bu = add i32 %i.bg, 4
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i134.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i134.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %bb.d
  %.not.i135 = icmp eq ptr %i.aw, %i.c
  %.not8.i.i = icmp eq ptr %0, %i.aw
  %or.cond = or i1 %.not.i135, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i136.preheader

.lr.ph.i.i136.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bx = shl i64 %i.av, 2
  %i.by = add i64 %i.bx, %i.g
  %i.bz = add i64 %i.by, -4
  %i.ca = sub i64 %i.bz, %i.b                     ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 92
  br i1 %min.iters.check, label %.lr.ph.i.i136.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i136.preheader
  %i.cd = shl i64 %i.av, 2
  %7 = add i64 %i.cd, %i.g
  %8 = shl nsw i64 %1, 2
  %i.ce = add i64 %8, %i.b
  %i.cf = sub i64 %i.ce, %7
  %diff.check = icmp ugt i64 %i.cf, -32
  br i1 %diff.check, label %.lr.ph.i.i136.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  %i.cg = mul i64 %n.vec, -4                      ; 2 uses
  %i.ch = getelementptr i8, ptr %i.c, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.aw, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.cj ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.aw, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep309, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep309, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !318
  %wide.load310 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !318
  %i.cm = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cm, align 4, !tbaa !318
  store <4 x i32> %wide.load310, ptr %i.cn, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !8630

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i136.preheader398

.lr.ph.i.i136.preheader398:                       ; preds = %vector.memcheck, %.lr.ph.i.i136.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i136.preheader ], [ %i.ch, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i136.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i136

.lr.ph.i.i136:                                    ; preds = %.lr.ph.i.i136.preheader398, %.lr.ph.i.i136
  %.010.i.i = phi ptr [ %i.cq, %.lr.ph.i.i136 ], [ %.010.i.i.ph, %.lr.ph.i.i136.preheader398 ]
  %.079.i.i = phi ptr [ %i.cp, %.lr.ph.i.i136 ], [ %.079.i.i.ph, %.lr.ph.i.i136.preheader398 ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !318
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !318
  %.not.i.i137 = icmp eq ptr %0, %i.cp
  br i1 %.not.i.i137, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i136, !llvm.loop !8631

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i136, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i138
  %storemerge4.i = phi ptr [ %i.cu, %.lr.ph.i138 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i139 = icmp eq ptr %i.cu, %2
  br i1 %.not.i139, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i138, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i127, %bb.c
  %.not.i142 = icmp eq i64 %1, 0
  br i1 %.not.i142, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter400 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cv = phi i64 [ %i.cw, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i143.prol = phi ptr [ %i.cz, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cw = add i64 %i.cv, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i143.prol, align 4, !tbaa !318
  %i.cx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i143.prol, i64 4 ; 2 uses
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8632

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cw, %.preheader.prol ]
  %.0.i143.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cz, %.preheader.prol ]
  %i.da = icmp ult i64 %1, 4
  br i1 %i.da, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.db = phi i64 [ %i.dj, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i143 = phi ptr [ %i.dl, %.preheader ], [ %.0.i143.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i143, align 4, !tbaa !318
  %i.dc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i143, i64 4
  store i32 -2147483648, ptr %i.de, align 4, !tbaa !318
  %i.df = add i32 %i.dc, -2
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i143, i64 8
  store i32 -2147483648, ptr %i.dg, align 4, !tbaa !318
  %i.dh = add i32 %i.dc, -3
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i143, i64 12
  %i.dj = add i64 %i.db, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.di, align 4, !tbaa !318
  %i.dk = add i32 %i.dc, -4
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i143, i64 16
  %.not3.i144.3 = icmp eq i64 %i.dj, 0
  br i1 %.not3.i144.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.dm = icmp ugt i64 %i.l, %i.i
  br i1 %i.dm, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.c
  br i1 %.not16.i154, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit160, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.dn = sub nsw i64 0, %i.i
  %i.do = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dn
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.ds, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 2 uses
  %.01517.i157 = phi ptr [ %i.dt, %.lr.ph.i155 ], [ %i.do, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.dp = load i32, ptr %.018.i156, align 4, !tbaa !318
  store i32 %i.dp, ptr %.01517.i157, align 4, !tbaa !318
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.ds, %i.c
  br i1 %.not.i158, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit160, label %.lr.ph.i155, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit160: ; preds = %.lr.ph.i155, %bb.f
  %i.du = sub nuw nsw i64 %i.l, %i.i              ; 4 uses
  %i.dv = sub i64 %4, %i.du                       ; 8 uses
  %i.dw = sub i64 0, %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dw ; 9 uses
  %.not5.i = icmp eq i64 %i.dv, 0
  br i1 %.not5.i, label %.lr.ph.i.i164.preheader, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit160
  %.pre.i = load i32, ptr %5, align 4, !tbaa !318 ; 2 uses
  %min.iters.check359 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.i161
  %n.vec361 = and i64 %i.dv, -8                   ; 3 uses
  %i.dy = and i64 %i.dv, 7
  %i.dz = shl i64 %n.vec361, 2
  %i.ea = getelementptr i8, ptr %i.dx, i64 %i.dz
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph360
  %index365 = phi i64 [ 0, %vector.ph360 ], [ %index.next367, %vector.body364 ] ; 2 uses
  %i.eb = shl i64 %index365, 2
  %next.gep366 = getelementptr i8, ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep366, i64 16
  store <4 x i32> %broadcast.splat363, ptr %next.gep366, align 4, !tbaa !318
  store <4 x i32> %broadcast.splat363, ptr %i.ec, align 4, !tbaa !318
  %index.next367 = add nuw i64 %index365, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next367, %n.vec361
  br i1 %i.ed, label %middle.block368, label %vector.body364, !llvm.loop !8633

middle.block368:                                  ; preds = %vector.body364
  %cmp.n369 = icmp eq i64 %i.dv, %n.vec361
  br i1 %cmp.n369, label %.lr.ph.i.i164.preheader, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %.lr.ph.i161, %middle.block368
  %.07.i.ph = phi i64 [ %i.dv, %.lr.ph.i161 ], [ %i.dy, %middle.block368 ]
  %.046.i.ph = phi ptr [ %i.dx, %.lr.ph.i161 ], [ %i.ea, %middle.block368 ]
  br label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %.07.i = phi i64 [ %i.ee, %scalar.ph358 ], [ %.07.i.ph, %scalar.ph358.preheader ]
  %.046.i = phi ptr [ %i.ef, %scalar.ph358 ], [ %.046.i.ph, %scalar.ph358.preheader ] ; 2 uses
  %i.ee = add i64 %.07.i, -1                      ; 2 uses
  store i32 %.pre.i, ptr %.046.i, align 4, !tbaa !318
  %i.ef = getelementptr inbounds nuw i8, ptr %.046.i, i64 4
  %.not.i162 = icmp eq i64 %i.ee, 0
  br i1 %.not.i162, label %.lr.ph.i.i164.preheader, label %scalar.ph358, !llvm.loop !8634

.lr.ph.i.i164.preheader:                          ; preds = %scalar.ph358, %middle.block368, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit160
  %xtraiter409 = and i64 %i.du, 3                 ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol

.lr.ph.i.i164.prol:                               ; preds = %.lr.ph.i.i164.preheader, %.lr.ph.i.i164.prol
  %.017.i.i165.prol = phi i64 [ %i.eg, %.lr.ph.i.i164.prol ], [ %i.du, %.lr.ph.i.i164.preheader ]
  %.01416.i.i166.prol = phi ptr [ %i.ek, %.lr.ph.i.i164.prol ], [ %i.c, %.lr.ph.i.i164.preheader ] ; 3 uses
  %prol.iter411 = phi i64 [ %prol.iter411.next, %.lr.ph.i.i164.prol ], [ 0, %.lr.ph.i.i164.preheader ]
  %i.eg = add i64 %.017.i.i165.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i166.prol) ]
  %i.eh = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.eh, ptr %.01416.i.i166.prol, align 4, !tbaa !318
  %i.ei = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ek = getelementptr inbounds nuw i8, ptr %.01416.i.i166.prol, i64 4 ; 2 uses
  %prol.iter411.next = add i64 %prol.iter411, 1   ; 2 uses
  %prol.iter411.cmp.not = icmp eq i64 %prol.iter411.next, %xtraiter409
  br i1 %prol.iter411.cmp.not, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !8635

.lr.ph.i.i164.prol.loopexit:                      ; preds = %.lr.ph.i.i164.prol, %.lr.ph.i.i164.preheader
  %.017.i.i165.unr = phi i64 [ %i.du, %.lr.ph.i.i164.preheader ], [ %i.eg, %.lr.ph.i.i164.prol ]
  %.01416.i.i166.unr = phi ptr [ %i.c, %.lr.ph.i.i164.preheader ], [ %i.ek, %.lr.ph.i.i164.prol ]
  %i.el = sub nsw i64 %i.i, %i.l
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.017.i.i165 = phi i64 [ %i.ex, %.lr.ph.i.i164 ], [ %.017.i.i165.unr, %.lr.ph.i.i164.prol.loopexit ]
  %.01416.i.i166 = phi ptr [ %i.fa, %.lr.ph.i.i164 ], [ %.01416.i.i166.unr, %.lr.ph.i.i164.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i166) ]
  %i.en = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.en, ptr %.01416.i.i166, align 4, !tbaa !318
  %i.eo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eq = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 4
  %i.er = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !318
  %i.es = add i32 %i.eo, 2
  store i32 %i.es, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 8
  %i.eu = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !318
  %i.ev = add i32 %i.eo, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 12
  %i.ex = add i64 %.017.i.i165, -4                ; 2 uses
  %i.ey = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !318
  %i.ez = add i32 %i.eo, 4
  store i32 %i.ez, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %.01416.i.i166, i64 16
  %.not.i.i167.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i167.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168, label %.lr.ph.i.i164, !llvm.loop !154

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168: ; preds = %.lr.ph.i.i164, %.lr.ph.i.i164.prol.loopexit
  %.not.i169 = icmp eq ptr %3, %i.dx
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit168
  %.not8.i.i170 = icmp eq ptr %0, %3
  br i1 %.not8.i.i170, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %bb.g
  %i.fb = add i64 %i.g, -4
  %i.fc = sub i64 %i.fb, %i.b                     ; 2 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.fc, 92
  br i1 %min.iters.check375, label %.lr.ph.i.i171.preheader391, label %vector.memcheck372

vector.memcheck372:                               ; preds = %.lr.ph.i.i171.preheader
  %i.ff = shl nsw i64 %1, 2
  %9 = add i64 %i.ff, %i.b
  %10 = sub i64 %i.g, %9
  %.neg = shl i64 %i.dv, 2
  %i.fg = add i64 %.neg, %10
  %i.fh = add i64 %i.fg, -1
  %diff.check373 = icmp ult i64 %i.fh, 31
  br i1 %diff.check373, label %.lr.ph.i.i171.preheader391, label %vector.ph376

vector.ph376:                                     ; preds = %vector.memcheck372
  %n.vec377 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.fi = mul i64 %n.vec377, -4                   ; 2 uses
  %i.fj = getelementptr i8, ptr %i.dx, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %3, i64 %i.fi
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next384, %vector.body378 ] ; 2 uses
  %i.fl = mul i64 %index379, -4                   ; 2 uses
  %next.gep380 = getelementptr i8, ptr %i.dx, i64 %i.fl ; 2 uses
  %next.gep381 = getelementptr i8, ptr %3, i64 %i.fl ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %next.gep381, i64 -16
  %i.fn = getelementptr inbounds i8, ptr %next.gep381, i64 -32
  %wide.load382 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !318
  %wide.load383 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !318
  %i.fo = getelementptr inbounds i8, ptr %next.gep380, i64 -16
  %i.fp = getelementptr inbounds i8, ptr %next.gep380, i64 -32
  store <4 x i32> %wide.load382, ptr %i.fo, align 4, !tbaa !318
  store <4 x i32> %wide.load383, ptr %i.fp, align 4, !tbaa !318
  %index.next384 = add nuw i64 %index379, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next384, %n.vec377
  br i1 %i.fq, label %middle.block385, label %vector.body378, !llvm.loop !8636

middle.block385:                                  ; preds = %vector.body378
  %cmp.n386 = icmp eq i64 %i.fe, %n.vec377
  br i1 %cmp.n386, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, label %.lr.ph.i.i171.preheader391

.lr.ph.i.i171.preheader391:                       ; preds = %vector.memcheck372, %.lr.ph.i.i171.preheader, %middle.block385
  %.010.i.i172.ph = phi ptr [ %i.dx, %vector.memcheck372 ], [ %i.dx, %.lr.ph.i.i171.preheader ], [ %i.fj, %middle.block385 ]
  %.079.i.i173.ph = phi ptr [ %3, %vector.memcheck372 ], [ %3, %.lr.ph.i.i171.preheader ], [ %i.fk, %middle.block385 ]
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.preheader391, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.fs, %.lr.ph.i.i171 ], [ %.010.i.i172.ph, %.lr.ph.i.i171.preheader391 ]
  %.079.i.i173 = phi ptr [ %i.fr, %.lr.ph.i.i171 ], [ %.079.i.i173.ph, %.lr.ph.i.i171.preheader391 ]
  %i.fr = getelementptr inbounds i8, ptr %.079.i.i173, i64 -4 ; 3 uses
  %i.fs = getelementptr inbounds i8, ptr %.010.i.i172, i64 -4 ; 3 uses
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !318
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !318
  %.not.i.i174 = icmp eq ptr %0, %i.fr
  br i1 %.not.i.i174, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, label %.lr.ph.i.i171, !llvm.loop !8637

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175: ; preds = %.lr.ph.i.i171, %middle.block385, %bb.g
  %i.fu = phi ptr [ %i.dx, %bb.g ], [ %i.fj, %middle.block385 ], [ %i.fs, %.lr.ph.i.i171 ] ; 2 uses
  %.not3.i176 = icmp eq ptr %0, %i.fu
  br i1 %.not3.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175, %.lr.ph.i177
  %storemerge4.i178 = phi ptr [ %i.fx, %.lr.ph.i177 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit175 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i178, align 4, !tbaa !318
  %i.fv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i178, i64 4 ; 2 uses
  %.not.i179 = icmp eq ptr %i.fx, %i.fu
  br i1 %.not.i179, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i177, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.fy = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i189 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i189, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %bb.h
  %xtraiter406 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader, %.lr.ph.i190.prol
  %.020.i191.prol = phi i64 [ %i.fz, %.lr.ph.i190.prol ], [ %i.l, %.lr.ph.i190.preheader ]
  %.0819.i192.prol = phi ptr [ %i.gd, %.lr.ph.i190.prol ], [ %i.fy, %.lr.ph.i190.preheader ] ; 2 uses
  %.01618.i193.prol = phi ptr [ %i.ge, %.lr.ph.i190.prol ], [ %i.c, %.lr.ph.i190.preheader ] ; 3 uses
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.lr.ph.i190.prol ], [ 0, %.lr.ph.i190.preheader ]
  %i.fz = add i64 %.020.i191.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i193.prol) ]
  %i.ga = load i32, ptr %.0819.i192.prol, align 4, !tbaa !318
  store i32 %i.ga, ptr %.01618.i193.prol, align 4, !tbaa !318
  %i.gb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gd = getelementptr inbounds nuw i8, ptr %.0819.i192.prol, i64 4 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01618.i193.prol, i64 4 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol, !llvm.loop !8638

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader
  %.020.i191.unr = phi i64 [ %i.l, %.lr.ph.i190.preheader ], [ %i.fz, %.lr.ph.i190.prol ]
  %.0819.i192.unr = phi ptr [ %i.fy, %.lr.ph.i190.preheader ], [ %i.gd, %.lr.ph.i190.prol ]
  %.01618.i193.unr = phi ptr [ %i.c, %.lr.ph.i190.preheader ], [ %i.ge, %.lr.ph.i190.prol ]
  %i.gf = icmp ult i64 %i.l, 4
  br i1 %i.gf, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %.020.i191 = phi i64 [ %i.gt, %.lr.ph.i190 ], [ %.020.i191.unr, %.lr.ph.i190.prol.loopexit ]
  %.0819.i192 = phi ptr [ %i.gw, %.lr.ph.i190 ], [ %.0819.i192.unr, %.lr.ph.i190.prol.loopexit ] ; 5 uses
  %.01618.i193 = phi ptr [ %i.gx, %.lr.ph.i190 ], [ %.01618.i193.unr, %.lr.ph.i190.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i193) ]
  %i.gg = load i32, ptr %.0819.i192, align 4, !tbaa !318
  store i32 %i.gg, ptr %.01618.i193, align 4, !tbaa !318
  %i.gh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gj = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 4
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !318
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !318
  %i.gm = add i32 %i.gh, 2
  store i32 %i.gm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gn = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 8
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !318
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !318
  %i.gq = add i32 %i.gh, 3
  store i32 %i.gq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gr = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 12
  %i.gs = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 12
  %i.gt = add i64 %.020.i191, -4                  ; 2 uses
  %i.gu = load i32, ptr %i.gr, align 4, !tbaa !318
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !318
  %i.gv = add i32 %i.gh, 4
  store i32 %i.gv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gw = getelementptr inbounds nuw i8, ptr %.0819.i192, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i193, i64 16
  %.not.i194.3 = icmp eq i64 %i.gt, 0
  br i1 %.not.i194.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196, label %.lr.ph.i190, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196: ; preds = %.lr.ph.i190, %.lr.ph.i190.prol.loopexit
  %.not8.i.i198 = icmp eq ptr %3, %i.fy
  br i1 %.not8.i.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196
  %i.gy = shl nsw i64 %1, 2
  %i.gz = shl i64 %i.b, 1
  %i.ha = shl i64 %4, 2
  %i.hb = add i64 %i.gy, %i.gz
  %i.hc = add i64 %i.hb, -4
  %i.hd = add i64 %i.g, %i.a
  %i.he = add i64 %i.hd, %i.ha
  %i.hf = sub i64 %i.hc, %i.he                    ; 2 uses
  %i.hg = lshr i64 %i.hf, 2
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.hf, 28
  %diff.check313 = icmp ugt i64 %i.k, -32
  %or.cond389 = or i1 %min.iters.check315, %diff.check313
  br i1 %or.cond389, label %.lr.ph.i.i199.preheader395, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.i.i199.preheader
  %n.vec317 = and i64 %i.hh, 9223372036854775800  ; 3 uses
  %i.hi = mul i64 %n.vec317, -4                   ; 2 uses
  %i.hj = getelementptr i8, ptr %i.c, i64 %i.hi   ; 2 uses
  %i.hk = getelementptr i8, ptr %i.fy, i64 %i.hi
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 2 uses
  %i.hl = mul i64 %index319, -4                   ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.c, i64 %i.hl ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.fy, i64 %i.hl ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep321, i64 -16
  %i.hn = getelementptr inbounds i8, ptr %next.gep321, i64 -32
  %wide.load322 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !318
  %wide.load323 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !318
  %i.ho = getelementptr inbounds i8, ptr %next.gep320, i64 -16
  %i.hp = getelementptr inbounds i8, ptr %next.gep320, i64 -32
  store <4 x i32> %wide.load322, ptr %i.ho, align 4, !tbaa !318
  store <4 x i32> %wide.load323, ptr %i.hp, align 4, !tbaa !318
  %index.next324 = add nuw i64 %index319, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.hq, label %middle.block325, label %vector.body318, !llvm.loop !8639

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %i.hh, %n.vec317
  br i1 %cmp.n326, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i.i199.preheader395

.lr.ph.i.i199.preheader395:                       ; preds = %.lr.ph.i.i199.preheader, %middle.block325
  %.010.i.i200.ph = phi ptr [ %i.c, %.lr.ph.i.i199.preheader ], [ %i.hj, %middle.block325 ]
  %.079.i.i201.ph = phi ptr [ %i.fy, %.lr.ph.i.i199.preheader ], [ %i.hk, %middle.block325 ]
  br label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.preheader395, %.lr.ph.i.i199
  %.010.i.i200 = phi ptr [ %i.hs, %.lr.ph.i.i199 ], [ %.010.i.i200.ph, %.lr.ph.i.i199.preheader395 ]
  %.079.i.i201 = phi ptr [ %i.hr, %.lr.ph.i.i199 ], [ %.079.i.i201.ph, %.lr.ph.i.i199.preheader395 ]
  %i.hr = getelementptr inbounds i8, ptr %.079.i.i201, i64 -4 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.010.i.i200, i64 -4 ; 3 uses
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !318
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !318
  %.not.i.i202 = icmp eq ptr %3, %i.hr
  br i1 %.not.i.i202, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203, label %.lr.ph.i.i199, !llvm.loop !8640

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit203: ; preds = %.lr.ph.i.i199, %middle.block325, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196
  %i.hu = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit196 ], [ %i.hj, %middle.block325 ], [ %i.hs, %.lr.ph.i.i199 ] ; 2 uses
  %i.hv = ptrtoaddr ptr %i.hu to i64
  %i.hw = sub i64 0, %4
end_hunk_11
begin_hunk_12_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !123

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.z)
          to label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  store ptr %i.v, ptr %1, align 8, !tbaa !488
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !489
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i
  %.sink25.i = phi i64 [ %i.cg, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i ], [ %i.az, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i ]
  %i.ch = add i64 %.sink25.i, %3
  store i64 %i.ch, ptr %i.f, align 8, !tbaa !489
  store i64 %i.x, ptr %i.c, align 8, !tbaa !261
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, %bb.h, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mSD_mT_.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mSD_mT_.exit
  %i.ci = phi ptr [ %i.z, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i ], [ %i.z, %bb.h ], [ %.pre, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mSD_mT_.exit ], [ %i.v, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEvPS3_mSD_mT_.exit ]
  %i.cj = ptrtoint ptr %2 to i64
  %i.ck = ptrtoint ptr %i.b to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  store ptr %i.cm, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJRKS3_EEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit356, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit356, label %.lr.ph.i, !llvm.loop !153

.loopexit356:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.r
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit356
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.w, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.x, %.lr.ph.i202 ], [ %i.s, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.t = load i32, ptr %.018.i203, align 4, !tbaa !318
  store i32 %i.t, ptr %.01517.i204, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202, !llvm.loop !153

bb.d:                                             ; preds = %.loopexit356
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit354, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter505 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod506.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod506.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i208.prol ], [ %i.y, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i208.prol ], [ %i.z, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter507 = phi i64 [ %prol.iter507.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter507.next = add i64 %prol.iter507, 1   ; 2 uses
  %prol.iter507.cmp.not = icmp eq i64 %prol.iter507.next, %xtraiter505
  br i1 %prol.iter507.cmp.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol, !llvm.loop !8656

.lr.ph.i208.prol.loopexit:                        ; preds = %.lr.ph.i208.prol, %.lr.ph.i208.preheader
  %.020.i.unr = phi i64 [ %i.y, %.lr.ph.i208.preheader ], [ %i.aa, %.lr.ph.i208.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i208.preheader ], [ %i.ae, %.lr.ph.i208.prol ]
  %.01618.i.unr = phi ptr [ %i.z, %.lr.ph.i208.preheader ], [ %i.af, %.lr.ph.i208.prol ]
  %i.ag = sub i64 %i.i, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit354, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208
  %.020.i = phi i64 [ %i.av, %.lr.ph.i208 ], [ %.020.i.unr, %.lr.ph.i208.prol.loopexit ]
  %.0819.i = phi ptr [ %i.ay, %.lr.ph.i208 ], [ %.0819.i.unr, %.lr.ph.i208.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.az, %.lr.ph.i208 ], [ %.01618.i.unr, %.lr.ph.i208.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.ai = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.ai, ptr %.01618.i, align 4, !tbaa !318
  %i.aj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.an = load i32, ptr %i.al, align 4, !tbaa !318
  store i32 %i.an, ptr %i.am, align 4, !tbaa !318
  %i.ao = add i32 %i.aj, 2
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.aj, 3
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.av = add i64 %.020.i, -4                     ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !318
  %i.ax = add i32 %i.aj, 4
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i209.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i209.3, label %.loopexit354, label %.lr.ph.i208, !llvm.loop !152

.loopexit354:                                     ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208, %bb.d
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y ; 6 uses
  %.not.i210 = icmp eq ptr %i.ba, %0
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %bb.e

bb.e:                                             ; preds = %.loopexit354
  %.not8.i.i = icmp eq ptr %i.ba, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.bb = add i64 %1, %i.i
  %i.bc = shl i64 %i.bb, 2
  %i.bd = add i64 %i.bc, %i.c
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.g, %i.b
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader501, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg489 = sub i64 %8, %7
  %i.bj = add i64 %.neg489, %i.c
  %i.bk = add i64 %i.bj, -1
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader501, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2                       ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bo ; 2 uses
  %next.gep417 = getelementptr i8, ptr %i.ba, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep417, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep417, align 4, !tbaa !318
  %wide.load418 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !318
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load418, ptr %i.bq, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !8657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader501

.lr.ph.i.i.preheader501:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader501, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 2 uses
  %i.bs = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.bs, ptr %.010.i.i, align 4, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8658

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bv = phi ptr [ %0, %bb.e ], [ %i.bm, %middle.block ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.not3.i = icmp eq ptr %i.bv, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i211
  %storemerge4.i = phi ptr [ %i.by, %.lr.ph.i211 ], [ %i.bv, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.bw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i212 = icmp eq ptr %i.by, %i.a
  br i1 %.not.i212, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.lr.ph.i211, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i202, %bb.c
  %.not.i215 = icmp eq i64 %1, 0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.bz = phi i64 [ %i.ca, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i216.prol = phi ptr [ %i.cd, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i216.prol, align 4, !tbaa !318
  %i.cb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i216.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8659

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ca, %.preheader.prol ]
  %.0.i216.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cd, %.preheader.prol ]
  %i.ce = icmp ult i64 %1, 4
  br i1 %i.ce, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cf = phi i64 [ %i.cn, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i216 = phi ptr [ %i.cp, %.preheader ], [ %.0.i216.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i216, align 4, !tbaa !318
  %i.cg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i216, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !318
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i216, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !318
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i216, i64 12
  %i.cn = add i64 %i.cf, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !318
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i216, i64 16
  %.not3.i217.3 = icmp eq i64 %i.cn, 0
  br i1 %.not3.i217.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.cq = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not178 = icmp ugt i64 %i.h, %i.e
  br i1 %.not178, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i227 = icmp eq ptr %0, %2
  br i1 %.not17.i227, label %.loopexit352, label %.lr.ph.i228.preheader

.lr.ph.i228.preheader:                            ; preds = %bb.g
  %xtraiter508 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol

.lr.ph.i228.prol:                                 ; preds = %.lr.ph.i228.preheader, %.lr.ph.i228.prol
  %.020.i229.prol = phi i64 [ %i.cr, %.lr.ph.i228.prol ], [ %i.h, %.lr.ph.i228.preheader ]
  %.0819.i230.prol = phi ptr [ %i.cv, %.lr.ph.i228.prol ], [ %0, %.lr.ph.i228.preheader ] ; 2 uses
  %.01618.i231.prol = phi ptr [ %i.cw, %.lr.ph.i228.prol ], [ %2, %.lr.ph.i228.preheader ] ; 3 uses
  %prol.iter510 = phi i64 [ %prol.iter510.next, %.lr.ph.i228.prol ], [ 0, %.lr.ph.i228.preheader ]
  %i.cr = add i64 %.020.i229.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231.prol) ]
  %i.cs = load i32, ptr %.0819.i230.prol, align 4, !tbaa !318
  store i32 %i.cs, ptr %.01618.i231.prol, align 4, !tbaa !318
  %i.ct = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0819.i230.prol, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01618.i231.prol, i64 4 ; 2 uses
  %prol.iter510.next = add i64 %prol.iter510, 1   ; 2 uses
  %prol.iter510.cmp.not = icmp eq i64 %prol.iter510.next, %xtraiter508
  br i1 %prol.iter510.cmp.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol, !llvm.loop !8660

.lr.ph.i228.prol.loopexit:                        ; preds = %.lr.ph.i228.prol, %.lr.ph.i228.preheader
  %.020.i229.unr = phi i64 [ %i.h, %.lr.ph.i228.preheader ], [ %i.cr, %.lr.ph.i228.prol ]
  %.0819.i230.unr = phi ptr [ %0, %.lr.ph.i228.preheader ], [ %i.cv, %.lr.ph.i228.prol ]
  %.01618.i231.unr = phi ptr [ %2, %.lr.ph.i228.preheader ], [ %i.cw, %.lr.ph.i228.prol ]
  %i.cx = icmp ult i64 %i.h, 4
  br i1 %i.cx, label %.loopexit352, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228
  %.020.i229 = phi i64 [ %i.dl, %.lr.ph.i228 ], [ %.020.i229.unr, %.lr.ph.i228.prol.loopexit ]
  %.0819.i230 = phi ptr [ %i.do, %.lr.ph.i228 ], [ %.0819.i230.unr, %.lr.ph.i228.prol.loopexit ] ; 5 uses
  %.01618.i231 = phi ptr [ %i.dp, %.lr.ph.i228 ], [ %.01618.i231.unr, %.lr.ph.i228.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231) ]
  %i.cy = load i32, ptr %.0819.i230, align 4, !tbaa !318
  store i32 %i.cy, ptr %.01618.i231, align 4, !tbaa !318
  %i.cz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !318
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !318
  %i.de = add i32 %i.cz, 2
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = add i32 %i.cz, 3
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 12
  %i.dl = add i64 %.020.i229, -4                  ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !318
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !318
  %i.dn = add i32 %i.cz, 4
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 16
  %.not.i232.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i232.3, label %.loopexit352, label %.lr.ph.i228, !llvm.loop !152

.loopexit352:                                     ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228, %bb.g
  %i.dq = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.dr, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %.loopexit352
  %i.ds = shl i64 %i.c, 1
  %i.dt = add i64 %i.b, %i.f
  %i.du = add i64 %i.dt, -4
  %i.dv = sub i64 %i.du, %i.ds                    ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJRKS3_EEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
.lr.ph.i290.preheader:                            ; preds = %bb.n
  %i.hv = sub nuw i64 %i.gr, %i.gs
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hv
  br label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %.lr.ph.i290.preheader, %.lr.ph.i290
  %.018.i291 = phi ptr [ %i.ia, %.lr.ph.i290 ], [ %3, %.lr.ph.i290.preheader ] ; 2 uses
  %.01517.i292 = phi ptr [ %i.ib, %.lr.ph.i290 ], [ %i.hw, %.lr.ph.i290.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i292) ]
  %i.hx = load i32, ptr %.018.i291, align 4, !tbaa !318
  store i32 %i.hx, ptr %.01517.i292, align 4, !tbaa !318
  %i.hy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ia = getelementptr inbounds nuw i8, ptr %.018.i291, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01517.i292, i64 4
  %.not.i293 = icmp eq ptr %i.ia, %i.a
  br i1 %.not.i293, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit, label %.lr.ph.i290, !llvm.loop !153

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit: ; preds = %.lr.ph.i290
  %.pre = load i32, ptr %5, align 4, !tbaa !318
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit, %bb.n
  %i.ic = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit ], [ %i.gq, %bb.n ]
  store i32 %i.ic, ptr %3, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.id = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.id, ptr %i.a, align 4, !tbaa !318
  %i.ie = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i211, %.lr.ph.i245, %.lr.ph.i264, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit243, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit262, %.loopexit354, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 22 uses
  %i.e = add i64 %4, %1                           ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.l, %i.g                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 10 uses
  %i.o = add i64 %i.j, %4                         ; 6 uses
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.r = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.r, ptr %i.q, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.v = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.v, ptr %.01517.i, align 4, !tbaa !318
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not121 = icmp ult i64 %i.n, %i.e
  br i1 %.not121, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i126 = icmp eq ptr %0, %3
  br i1 %.not16.i126, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.c, %.lr.ph.i127
  %.018.i128 = phi ptr [ %i.ad, %.lr.ph.i127 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i129 = phi ptr [ %i.ae, %.lr.ph.i127 ], [ %2, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %.018.i128, align 4, !tbaa !318
  store i32 %i.aa, ptr %.01517.i129, align 4, !tbaa !318
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i128, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01517.i129, i64 4
  %.not.i130 = icmp eq ptr %i.ad, %3
  br i1 %.not.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = sub nuw i64 %i.n, %i.o                  ; 5 uses
  %i.ag = sub i64 0, %i.af                        ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag ; 8 uses
  %.not17.i = icmp eq i64 %i.af, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %bb.d
  %xtraiter354 = and i64 %i.af, 3                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133.prol
  %.020.i.prol = phi i64 [ %i.ai, %.lr.ph.i133.prol ], [ %i.af, %.lr.ph.i133.preheader ]
  %.0819.i.prol = phi ptr [ %i.am, %.lr.ph.i133.prol ], [ %i.ah, %.lr.ph.i133.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.an, %.lr.ph.i133.prol ], [ %i.d, %.lr.ph.i133.preheader ] ; 3 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader ]
  %i.ai = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.aj = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.aj, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !8669

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader
  %.020.i.unr = phi i64 [ %i.af, %.lr.ph.i133.preheader ], [ %i.ai, %.lr.ph.i133.prol ]
  %.0819.i.unr = phi ptr [ %i.ah, %.lr.ph.i133.preheader ], [ %i.am, %.lr.ph.i133.prol ]
  %.01618.i.unr = phi ptr [ %i.d, %.lr.ph.i133.preheader ], [ %i.an, %.lr.ph.i133.prol ]
  %i.ao = sub i64 %i.o, %i.n
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.020.i = phi i64 [ %i.bd, %.lr.ph.i133 ], [ %.020.i.unr, %.lr.ph.i133.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bg, %.lr.ph.i133 ], [ %.0819.i.unr, %.lr.ph.i133.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bh, %.lr.ph.i133 ], [ %.01618.i.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.aq = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01618.i, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.ar, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !318
  %i.ba = add i32 %i.ar, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bd = add i64 %.020.i, -4                     ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !318
  %i.bf = add i32 %i.ar, 4
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i134.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i134.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %bb.d
  %.not.i135 = icmp eq ptr %i.ah, %i.d
  %.not8.i.i = icmp eq ptr %0, %i.ah
  %or.cond = or i1 %.not.i135, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bi = shl i64 %i.ag, 2
  %i.bj = add i64 %i.bi, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = sub i64 %i.bk, %i.b                     ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 92
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = shl i64 %i.ag, 2
  %7 = add i64 %i.bo, %i.h
  %8 = shl nsw i64 %1, 2
  %i.bp = add i64 %8, %i.b
  %i.bq = sub i64 %i.bp, %7
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ah, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bu ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ah, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep290, i64 -16
  %i.bw = getelementptr inbounds i8, ptr %next.gep290, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !318
  %wide.load291 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !318
  store <4 x i32> %wide.load291, ptr %i.by, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !8670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader352 ]
  %.079.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !318
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !318
  %.not.i.i = icmp eq ptr %0, %i.ca
  br i1 %.not.i.i, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8671

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i136
  %storemerge4.i = phi ptr [ %i.cf, %.lr.ph.i136 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i137 = icmp eq ptr %i.cf, %2
  br i1 %.not.i137, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i136, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i127, %bb.c
  %.not.i140 = icmp eq i64 %1, 0
  br i1 %.not.i140, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cg = phi i64 [ %i.ch, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i141.prol = phi ptr [ %i.ck, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ch = add i64 %i.cg, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i141.prol, align 4, !tbaa !318
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i141.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8672

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ch, %.preheader.prol ]
  %.0.i141.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.ck, %.preheader.prol ]
  %i.cl = icmp ult i64 %1, 4
  br i1 %i.cl, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cm = phi i64 [ %i.cu, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i141 = phi ptr [ %i.cw, %.preheader ], [ %.0.i141.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i141, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i141, i64 4
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !318
  %i.cq = add i32 %i.cn, -2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i141, i64 8
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !318
  %i.cs = add i32 %i.cn, -3
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i141, i64 12
  %i.cu = add i64 %i.cm, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.ct, align 4, !tbaa !318
  %i.cv = add i32 %i.cn, -4
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i141, i64 16
  %.not3.i142.3 = icmp eq i64 %i.cu, 0
  br i1 %.not3.i142.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.n, %i.j
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i152 = icmp eq ptr %3, %i.d
  br i1 %.not16.i152, label %.loopexit, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %.lr.ph.i153
  %.018.i154 = phi ptr [ %i.dc, %.lr.ph.i153 ], [ %3, %.lr.ph.i153.preheader ] ; 2 uses
  %.01517.i155 = phi ptr [ %i.dd, %.lr.ph.i153 ], [ %i.cy, %.lr.ph.i153.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i155) ]
  %i.cz = load i32, ptr %.018.i154, align 4, !tbaa !318
  store i32 %i.cz, ptr %.01517.i155, align 4, !tbaa !318
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i154, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i155, i64 4
  %.not.i156 = icmp eq ptr %i.dc, %i.d
  br i1 %.not.i156, label %.loopexit, label %.lr.ph.i153, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i153, %bb.f
  %.neg242 = sub i64 %i.n, %i.o
  %i.de = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.neg242 ; 7 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !318   ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.df, ptr %i.d, align 4, !tbaa !318
  %i.dg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i159 = icmp eq ptr %3, %i.de
  br i1 %.not.i159, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i160 = icmp eq ptr %0, %3
  br i1 %.not8.i.i160, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.g
  %i.di = add i64 %i.h, -4
  %i.dj = sub i64 %i.di, %i.b                     ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.dj, 108
  br i1 %min.iters.check330, label %.lr.ph.i.i161.preheader345, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i161.preheader
  %i.dm = shl i64 %i.o, 2
  %9 = add i64 %i.dm, %i.h
  %i.dn = add i64 %i.m, %i.b
  %10 = shl nsw i64 %1, 2
  %i.do = add i64 %i.dn, %10
  %i.dp = sub i64 %i.do, %9
  %diff.check328 = icmp ugt i64 %i.dp, -32
  br i1 %diff.check328, label %.lr.ph.i.i161.preheader345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck327
  %n.vec332 = and i64 %i.dl, 9223372036854775800  ; 3 uses
  %i.dq = mul i64 %n.vec332, -4                   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.de, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %3, i64 %i.dq
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.dt = mul i64 %index334, -4                   ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.de, i64 %i.dt ; 2 uses
  %next.gep336 = getelementptr i8, ptr %3, i64 %i.dt ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.dv = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  %wide.load337 = load <4 x i32>, ptr %i.du, align 4, !tbaa !318
  %wide.load338 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !318
  %i.dw = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep335, i64 -32
  store <4 x i32> %wide.load337, ptr %i.dw, align 4, !tbaa !318
  store <4 x i32> %wide.load338, ptr %i.dx, align 4, !tbaa !318
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.dy, label %middle.block340, label %vector.body333, !llvm.loop !8673

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.dl, %n.vec332
  br i1 %cmp.n341, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader345

.lr.ph.i.i161.preheader345:                       ; preds = %vector.memcheck327, %.lr.ph.i.i161.preheader, %middle.block340
  %.010.i.i162.ph = phi ptr [ %i.de, %vector.memcheck327 ], [ %i.de, %.lr.ph.i.i161.preheader ], [ %i.dr, %middle.block340 ]
  %.079.i.i163.ph = phi ptr [ %3, %vector.memcheck327 ], [ %3, %.lr.ph.i.i161.preheader ], [ %i.ds, %middle.block340 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader345, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ea, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader345 ]
  %.079.i.i163 = phi ptr [ %i.dz, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader345 ]
  %i.dz = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 3 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !318
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !318
  %.not.i.i164 = icmp eq ptr %0, %i.dz
  br i1 %.not.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161, !llvm.loop !8674

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165: ; preds = %.lr.ph.i.i161, %middle.block340, %bb.g
  %i.ec = phi ptr [ %i.de, %bb.g ], [ %i.dr, %middle.block340 ], [ %i.ea, %.lr.ph.i.i161 ] ; 2 uses
  %.not3.i166 = icmp eq ptr %0, %i.ec
  br i1 %.not3.i166, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %.lr.ph.i167
  %storemerge4.i168 = phi ptr [ %i.ef, %.lr.ph.i167 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i168, align 4, !tbaa !318
  %i.ed = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %storemerge4.i168, i64 4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ef, %i.ec
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.m
  %i.eg = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 6 uses
  %.not17.i179 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.h
  %xtraiter357 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180.prol
  %.020.i181.prol = phi i64 [ %i.eh, %.lr.ph.i180.prol ], [ %i.n, %.lr.ph.i180.preheader ]
  %.0819.i182.prol = phi ptr [ %i.el, %.lr.ph.i180.prol ], [ %i.eg, %.lr.ph.i180.preheader ] ; 2 uses
  %.01618.i183.prol = phi ptr [ %i.em, %.lr.ph.i180.prol ], [ %i.d, %.lr.ph.i180.preheader ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i180.prol ], [ 0, %.lr.ph.i180.preheader ]
  %i.eh = add i64 %.020.i181.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183.prol) ]
  %i.ei = load i32, ptr %.0819.i182.prol, align 4, !tbaa !318
  store i32 %i.ei, ptr %.01618.i183.prol, align 4, !tbaa !318
  %i.ej = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.el = getelementptr inbounds nuw i8, ptr %.0819.i182.prol, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01618.i183.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol, !llvm.loop !8675

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader
  %.020.i181.unr = phi i64 [ %i.n, %.lr.ph.i180.preheader ], [ %i.eh, %.lr.ph.i180.prol ]
  %.0819.i182.unr = phi ptr [ %i.eg, %.lr.ph.i180.preheader ], [ %i.el, %.lr.ph.i180.prol ]
  %.01618.i183.unr = phi ptr [ %i.d, %.lr.ph.i180.preheader ], [ %i.em, %.lr.ph.i180.prol ]
  %i.en = icmp ult i64 %i.n, 4
  br i1 %i.en, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.020.i181 = phi i64 [ %i.fb, %.lr.ph.i180 ], [ %.020.i181.unr, %.lr.ph.i180.prol.loopexit ]
  %.0819.i182 = phi ptr [ %i.fe, %.lr.ph.i180 ], [ %.0819.i182.unr, %.lr.ph.i180.prol.loopexit ] ; 5 uses
  %.01618.i183 = phi ptr [ %i.ff, %.lr.ph.i180 ], [ %.01618.i183.unr, %.lr.ph.i180.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183) ]
  %i.eo = load i32, ptr %.0819.i182, align 4, !tbaa !318
  store i32 %i.eo, ptr %.01618.i183, align 4, !tbaa !318
  %i.ep = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 4
  %i.et = load i32, ptr %i.er, align 4, !tbaa !318
  store i32 %i.et, ptr %i.es, align 4, !tbaa !318
  %i.eu = add i32 %i.ep, 2
  store i32 %i.eu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ev = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !318
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !318
  %i.ey = add i32 %i.ep, 3
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 12
  %i.fb = add i64 %.020.i181, -4                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !318
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !318
  %i.fd = add i32 %i.ep, 4
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fe = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 16
  %.not.i184.3 = icmp eq i64 %i.fb, 0
  br i1 %.not.i184.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186: ; preds = %.lr.ph.i180, %.lr.ph.i180.prol.loopexit
  %.not8.i.i188 = icmp eq ptr %3, %i.eg
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.fg = shl nsw i64 %1, 2
  %i.fh = shl i64 %i.b, 1
  %i.fi = shl i64 %4, 2
  %i.fj = add i64 %i.fg, %i.fh
  %i.fk = add i64 %i.fj, -4
  %i.fl = add i64 %i.h, %i.a
  %i.fm = add i64 %i.fl, %i.fi
  %i.fn = sub i64 %i.fk, %i.fm                    ; 2 uses
  %i.fo = lshr i64 %i.fn, 2
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.fn, 28
  %diff.check294 = icmp ugt i64 %i.m, -32
  %or.cond344 = or i1 %min.iters.check296, %diff.check294
  br i1 %or.cond344, label %.lr.ph.i.i189.preheader349, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i189.preheader
  %n.vec298 = and i64 %i.fp, 9223372036854775800  ; 3 uses
  %i.fq = mul i64 %n.vec298, -4                   ; 2 uses
  %i.fr = getelementptr i8, ptr %i.d, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.eg, i64 %i.fq
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ft = mul i64 %index300, -4                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.d, i64 %i.ft ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.eg, i64 %i.ft ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %next.gep302, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !318
  %wide.load304 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !318
  %i.fw = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.fx = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i32> %wide.load303, ptr %i.fw, align 4, !tbaa !318
  store <4 x i32> %wide.load304, ptr %i.fx, align 4, !tbaa !318
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.fy, label %middle.block306, label %vector.body299, !llvm.loop !8676

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.fp, %n.vec298
  br i1 %cmp.n307, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader349

.lr.ph.i.i189.preheader349:                       ; preds = %.lr.ph.i.i189.preheader, %middle.block306
  %.010.i.i190.ph = phi ptr [ %i.d, %.lr.ph.i.i189.preheader ], [ %i.fr, %middle.block306 ]
  %.079.i.i191.ph = phi ptr [ %i.eg, %.lr.ph.i.i189.preheader ], [ %i.fs, %middle.block306 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader349, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.ga, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader349 ]
  %.079.i.i191 = phi ptr [ %i.fz, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader349 ]
  %i.fz = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !318
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !318
  %.not.i.i192 = icmp eq ptr %3, %i.fz
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !8677

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block306, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.gc = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186 ], [ %i.fr, %middle.block306 ], [ %i.ga, %.lr.ph.i.i189 ] ; 2 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.c ; 7 uses
  %i.gf = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !318
end_hunk_13
begin_hunk_14_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !123

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.z)
          to label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  store ptr %i.v, ptr %1, align 8, !tbaa !488
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !489
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mSC_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mSC_mT_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i
  %.sink25.i = phi i64 [ %i.cg, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i ], [ %i.az, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i ]
  %i.ch = add i64 %.sink25.i, %3
  store i64 %i.ch, ptr %i.f, align 8, !tbaa !489
  store i64 %i.x, ptr %i.c, align 8, !tbaa !261
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, %bb.h, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mSC_mT_.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mSC_mT_.exit
  %i.ci = phi ptr [ %i.z, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i ], [ %i.z, %bb.h ], [ %.pre, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mSC_mT_.exit ], [ %i.v, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRS3_EEEEEvPS3_mSC_mT_.exit ]
  %i.cj = ptrtoint ptr %2 to i64
  %i.ck = ptrtoint ptr %i.b to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  store ptr %i.cm, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJRS3_EEES8_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit356, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit356, label %.lr.ph.i, !llvm.loop !153

.loopexit356:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.r
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit356
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.w, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.x, %.lr.ph.i202 ], [ %i.s, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.t = load i32, ptr %.018.i203, align 4, !tbaa !318
  store i32 %i.t, ptr %.01517.i204, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i202, !llvm.loop !153

bb.d:                                             ; preds = %.loopexit356
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit354, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter505 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod506.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod506.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i208.prol ], [ %i.y, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i208.prol ], [ %i.z, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter507 = phi i64 [ %prol.iter507.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter507.next = add i64 %prol.iter507, 1   ; 2 uses
  %prol.iter507.cmp.not = icmp eq i64 %prol.iter507.next, %xtraiter505
  br i1 %prol.iter507.cmp.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol, !llvm.loop !8698

.lr.ph.i208.prol.loopexit:                        ; preds = %.lr.ph.i208.prol, %.lr.ph.i208.preheader
  %.020.i.unr = phi i64 [ %i.y, %.lr.ph.i208.preheader ], [ %i.aa, %.lr.ph.i208.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i208.preheader ], [ %i.ae, %.lr.ph.i208.prol ]
  %.01618.i.unr = phi ptr [ %i.z, %.lr.ph.i208.preheader ], [ %i.af, %.lr.ph.i208.prol ]
  %i.ag = sub i64 %i.i, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit354, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208
  %.020.i = phi i64 [ %i.av, %.lr.ph.i208 ], [ %.020.i.unr, %.lr.ph.i208.prol.loopexit ]
  %.0819.i = phi ptr [ %i.ay, %.lr.ph.i208 ], [ %.0819.i.unr, %.lr.ph.i208.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.az, %.lr.ph.i208 ], [ %.01618.i.unr, %.lr.ph.i208.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.ai = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.ai, ptr %.01618.i, align 4, !tbaa !318
  %i.aj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.an = load i32, ptr %i.al, align 4, !tbaa !318
  store i32 %i.an, ptr %i.am, align 4, !tbaa !318
  %i.ao = add i32 %i.aj, 2
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.aj, 3
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.av = add i64 %.020.i, -4                     ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !318
  %i.ax = add i32 %i.aj, 4
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i209.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i209.3, label %.loopexit354, label %.lr.ph.i208, !llvm.loop !152

.loopexit354:                                     ; preds = %.lr.ph.i208.prol.loopexit, %.lr.ph.i208, %bb.d
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y ; 6 uses
  %.not.i210 = icmp eq ptr %i.ba, %0
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %bb.e

bb.e:                                             ; preds = %.loopexit354
  %.not8.i.i = icmp eq ptr %i.ba, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.bb = add i64 %1, %i.i
  %i.bc = shl i64 %i.bb, 2
  %i.bd = add i64 %i.bc, %i.c
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.g, %i.b
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader501, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg489 = sub i64 %8, %7
  %i.bj = add i64 %.neg489, %i.c
  %i.bk = add i64 %i.bj, -1
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader501, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2                       ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bo ; 2 uses
  %next.gep417 = getelementptr i8, ptr %i.ba, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep417, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep417, align 4, !tbaa !318
  %wide.load418 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !318
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load418, ptr %i.bq, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !8699

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader501

.lr.ph.i.i.preheader501:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader501, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader501 ] ; 2 uses
  %i.bs = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.bs, ptr %.010.i.i, align 4, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8700

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bv = phi ptr [ %0, %bb.e ], [ %i.bm, %middle.block ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.not3.i = icmp eq ptr %i.bv, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i211
  %storemerge4.i = phi ptr [ %i.by, %.lr.ph.i211 ], [ %i.bv, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.bw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i212 = icmp eq ptr %i.by, %i.a
  br i1 %.not.i212, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.lr.ph.i211, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i202, %bb.c
  %.not.i215 = icmp eq i64 %1, 0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.bz = phi i64 [ %i.ca, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i216.prol = phi ptr [ %i.cd, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i216.prol, align 4, !tbaa !318
  %i.cb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i216.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8701

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ca, %.preheader.prol ]
  %.0.i216.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cd, %.preheader.prol ]
  %i.ce = icmp ult i64 %1, 4
  br i1 %i.ce, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cf = phi i64 [ %i.cn, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i216 = phi ptr [ %i.cp, %.preheader ], [ %.0.i216.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i216, align 4, !tbaa !318
  %i.cg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i216, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !318
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i216, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !318
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i216, i64 12
  %i.cn = add i64 %i.cf, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !318
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i216, i64 16
  %.not3.i217.3 = icmp eq i64 %i.cn, 0
  br i1 %.not3.i217.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.cq = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not178 = icmp ugt i64 %i.h, %i.e
  br i1 %.not178, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i227 = icmp eq ptr %0, %2
  br i1 %.not17.i227, label %.loopexit352, label %.lr.ph.i228.preheader

.lr.ph.i228.preheader:                            ; preds = %bb.g
  %xtraiter508 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol

.lr.ph.i228.prol:                                 ; preds = %.lr.ph.i228.preheader, %.lr.ph.i228.prol
  %.020.i229.prol = phi i64 [ %i.cr, %.lr.ph.i228.prol ], [ %i.h, %.lr.ph.i228.preheader ]
  %.0819.i230.prol = phi ptr [ %i.cv, %.lr.ph.i228.prol ], [ %0, %.lr.ph.i228.preheader ] ; 2 uses
  %.01618.i231.prol = phi ptr [ %i.cw, %.lr.ph.i228.prol ], [ %2, %.lr.ph.i228.preheader ] ; 3 uses
  %prol.iter510 = phi i64 [ %prol.iter510.next, %.lr.ph.i228.prol ], [ 0, %.lr.ph.i228.preheader ]
  %i.cr = add i64 %.020.i229.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231.prol) ]
  %i.cs = load i32, ptr %.0819.i230.prol, align 4, !tbaa !318
  store i32 %i.cs, ptr %.01618.i231.prol, align 4, !tbaa !318
  %i.ct = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0819.i230.prol, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01618.i231.prol, i64 4 ; 2 uses
  %prol.iter510.next = add i64 %prol.iter510, 1   ; 2 uses
  %prol.iter510.cmp.not = icmp eq i64 %prol.iter510.next, %xtraiter508
  br i1 %prol.iter510.cmp.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol, !llvm.loop !8702

.lr.ph.i228.prol.loopexit:                        ; preds = %.lr.ph.i228.prol, %.lr.ph.i228.preheader
  %.020.i229.unr = phi i64 [ %i.h, %.lr.ph.i228.preheader ], [ %i.cr, %.lr.ph.i228.prol ]
  %.0819.i230.unr = phi ptr [ %0, %.lr.ph.i228.preheader ], [ %i.cv, %.lr.ph.i228.prol ]
  %.01618.i231.unr = phi ptr [ %2, %.lr.ph.i228.preheader ], [ %i.cw, %.lr.ph.i228.prol ]
  %i.cx = icmp ult i64 %i.h, 4
  br i1 %i.cx, label %.loopexit352, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228
  %.020.i229 = phi i64 [ %i.dl, %.lr.ph.i228 ], [ %.020.i229.unr, %.lr.ph.i228.prol.loopexit ]
  %.0819.i230 = phi ptr [ %i.do, %.lr.ph.i228 ], [ %.0819.i230.unr, %.lr.ph.i228.prol.loopexit ] ; 5 uses
  %.01618.i231 = phi ptr [ %i.dp, %.lr.ph.i228 ], [ %.01618.i231.unr, %.lr.ph.i228.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i231) ]
  %i.cy = load i32, ptr %.0819.i230, align 4, !tbaa !318
  store i32 %i.cy, ptr %.01618.i231, align 4, !tbaa !318
  %i.cz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !318
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !318
  %i.de = add i32 %i.cz, 2
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = add i32 %i.cz, 3
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 12
  %i.dl = add i64 %.020.i229, -4                  ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !318
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !318
  %i.dn = add i32 %i.cz, 4
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.0819.i230, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.01618.i231, i64 16
  %.not.i232.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i232.3, label %.loopexit352, label %.lr.ph.i228, !llvm.loop !152

.loopexit352:                                     ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228, %bb.g
  %i.dq = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.dr, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %.loopexit352
  %i.ds = shl i64 %i.c, 1
  %i.dt = add i64 %i.b, %i.f
  %i.du = add i64 %i.dt, -4
  %i.dv = sub i64 %i.du, %i.ds                    ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJRS3_EEES8_EEvT_mSB_SB_mT0_RT1_:bb.a
.lr.ph.i290.preheader:                            ; preds = %bb.n
  %i.hv = sub nuw i64 %i.gr, %i.gs
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hv
  br label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %.lr.ph.i290.preheader, %.lr.ph.i290
  %.018.i291 = phi ptr [ %i.ia, %.lr.ph.i290 ], [ %3, %.lr.ph.i290.preheader ] ; 2 uses
  %.01517.i292 = phi ptr [ %i.ib, %.lr.ph.i290 ], [ %i.hw, %.lr.ph.i290.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i292) ]
  %i.hx = load i32, ptr %.018.i291, align 4, !tbaa !318
  store i32 %i.hx, ptr %.01517.i292, align 4, !tbaa !318
  %i.hy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ia = getelementptr inbounds nuw i8, ptr %.018.i291, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.01517.i292, i64 4
  %.not.i293 = icmp eq ptr %i.ia, %i.a
  br i1 %.not.i293, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit, label %.lr.ph.i290, !llvm.loop !153

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit: ; preds = %.lr.ph.i290
  %.pre = load i32, ptr %5, align 4, !tbaa !318
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit, %bb.n
  %i.ic = phi i32 [ %.pre, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299.loopexit ], [ %i.gq, %bb.n ]
  store i32 %i.ic, ptr %3, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.id = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.id, ptr %i.a, align 4, !tbaa !318
  %i.ie = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit218: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i211, %.lr.ph.i245, %.lr.ph.i264, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit243, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit262, %.loopexit354, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit299, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRS4_EEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 22 uses
  %i.e = add i64 %4, %1                           ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.l, %i.g                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 10 uses
  %i.o = add i64 %i.j, %4                         ; 6 uses
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.r = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.r, ptr %i.q, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.v = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.v, ptr %.01517.i, align 4, !tbaa !318
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not121 = icmp ult i64 %i.n, %i.e
  br i1 %.not121, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i126 = icmp eq ptr %0, %3
  br i1 %.not16.i126, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.c, %.lr.ph.i127
  %.018.i128 = phi ptr [ %i.ad, %.lr.ph.i127 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i129 = phi ptr [ %i.ae, %.lr.ph.i127 ], [ %2, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %.018.i128, align 4, !tbaa !318
  store i32 %i.aa, ptr %.01517.i129, align 4, !tbaa !318
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i128, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01517.i129, i64 4
  %.not.i130 = icmp eq ptr %i.ad, %3
  br i1 %.not.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i127, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = sub nuw i64 %i.n, %i.o                  ; 5 uses
  %i.ag = sub i64 0, %i.af                        ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag ; 8 uses
  %.not17.i = icmp eq i64 %i.af, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %bb.d
  %xtraiter354 = and i64 %i.af, 3                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133.prol
  %.020.i.prol = phi i64 [ %i.ai, %.lr.ph.i133.prol ], [ %i.af, %.lr.ph.i133.preheader ]
  %.0819.i.prol = phi ptr [ %i.am, %.lr.ph.i133.prol ], [ %i.ah, %.lr.ph.i133.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.an, %.lr.ph.i133.prol ], [ %i.d, %.lr.ph.i133.preheader ] ; 3 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader ]
  %i.ai = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.aj = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.aj, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !8711

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader
  %.020.i.unr = phi i64 [ %i.af, %.lr.ph.i133.preheader ], [ %i.ai, %.lr.ph.i133.prol ]
  %.0819.i.unr = phi ptr [ %i.ah, %.lr.ph.i133.preheader ], [ %i.am, %.lr.ph.i133.prol ]
  %.01618.i.unr = phi ptr [ %i.d, %.lr.ph.i133.preheader ], [ %i.an, %.lr.ph.i133.prol ]
  %i.ao = sub i64 %i.o, %i.n
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.020.i = phi i64 [ %i.bd, %.lr.ph.i133 ], [ %.020.i.unr, %.lr.ph.i133.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bg, %.lr.ph.i133 ], [ %.0819.i.unr, %.lr.ph.i133.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bh, %.lr.ph.i133 ], [ %.01618.i.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.aq = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01618.i, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.ar, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !318
  %i.ba = add i32 %i.ar, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bd = add i64 %.020.i, -4                     ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !318
  %i.bf = add i32 %i.ar, 4
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i134.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i134.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i133, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %bb.d
  %.not.i135 = icmp eq ptr %i.ah, %i.d
  %.not8.i.i = icmp eq ptr %0, %i.ah
  %or.cond = or i1 %.not.i135, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bi = shl i64 %i.ag, 2
  %i.bj = add i64 %i.bi, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = sub i64 %i.bk, %i.b                     ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 92
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = shl i64 %i.ag, 2
  %7 = add i64 %i.bo, %i.h
  %8 = shl nsw i64 %1, 2
  %i.bp = add i64 %8, %i.b
  %i.bq = sub i64 %i.bp, %7
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ah, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bu ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ah, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep290, i64 -16
  %i.bw = getelementptr inbounds i8, ptr %next.gep290, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !318
  %wide.load291 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !318
  store <4 x i32> %wide.load291, ptr %i.by, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !8712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader352 ]
  %.079.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !318
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !318
  %.not.i.i = icmp eq ptr %0, %i.ca
  br i1 %.not.i.i, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8713

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i136
  %storemerge4.i = phi ptr [ %i.cf, %.lr.ph.i136 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i137 = icmp eq ptr %i.cf, %2
  br i1 %.not.i137, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i136, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i127, %bb.c
  %.not.i140 = icmp eq i64 %1, 0
  br i1 %.not.i140, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cg = phi i64 [ %i.ch, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i141.prol = phi ptr [ %i.ck, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ch = add i64 %i.cg, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i141.prol, align 4, !tbaa !318
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i141.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8714

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ch, %.preheader.prol ]
  %.0.i141.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.ck, %.preheader.prol ]
  %i.cl = icmp ult i64 %1, 4
  br i1 %i.cl, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cm = phi i64 [ %i.cu, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i141 = phi ptr [ %i.cw, %.preheader ], [ %.0.i141.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i141, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i141, i64 4
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !318
  %i.cq = add i32 %i.cn, -2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i141, i64 8
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !318
  %i.cs = add i32 %i.cn, -3
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i141, i64 12
  %i.cu = add i64 %i.cm, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.ct, align 4, !tbaa !318
  %i.cv = add i32 %i.cn, -4
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i141, i64 16
  %.not3.i142.3 = icmp eq i64 %i.cu, 0
  br i1 %.not3.i142.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.n, %i.j
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i152 = icmp eq ptr %3, %i.d
  br i1 %.not16.i152, label %.loopexit, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %.lr.ph.i153.preheader, %.lr.ph.i153
  %.018.i154 = phi ptr [ %i.dc, %.lr.ph.i153 ], [ %3, %.lr.ph.i153.preheader ] ; 2 uses
  %.01517.i155 = phi ptr [ %i.dd, %.lr.ph.i153 ], [ %i.cy, %.lr.ph.i153.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i155) ]
  %i.cz = load i32, ptr %.018.i154, align 4, !tbaa !318
  store i32 %i.cz, ptr %.01517.i155, align 4, !tbaa !318
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i154, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i155, i64 4
  %.not.i156 = icmp eq ptr %i.dc, %i.d
  br i1 %.not.i156, label %.loopexit, label %.lr.ph.i153, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i153, %bb.f
  %.neg242 = sub i64 %i.n, %i.o
  %i.de = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.neg242 ; 7 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !318   ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.df, ptr %i.d, align 4, !tbaa !318
  %i.dg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i159 = icmp eq ptr %3, %i.de
  br i1 %.not.i159, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i160 = icmp eq ptr %0, %3
  br i1 %.not8.i.i160, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.g
  %i.di = add i64 %i.h, -4
  %i.dj = sub i64 %i.di, %i.b                     ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.dj, 108
  br i1 %min.iters.check330, label %.lr.ph.i.i161.preheader345, label %vector.memcheck327

vector.memcheck327:                               ; preds = %.lr.ph.i.i161.preheader
  %i.dm = shl i64 %i.o, 2
  %9 = add i64 %i.dm, %i.h
  %i.dn = add i64 %i.m, %i.b
  %10 = shl nsw i64 %1, 2
  %i.do = add i64 %i.dn, %10
  %i.dp = sub i64 %i.do, %9
  %diff.check328 = icmp ugt i64 %i.dp, -32
  br i1 %diff.check328, label %.lr.ph.i.i161.preheader345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck327
  %n.vec332 = and i64 %i.dl, 9223372036854775800  ; 3 uses
  %i.dq = mul i64 %n.vec332, -4                   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.de, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %3, i64 %i.dq
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.dt = mul i64 %index334, -4                   ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.de, i64 %i.dt ; 2 uses
  %next.gep336 = getelementptr i8, ptr %3, i64 %i.dt ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.dv = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  %wide.load337 = load <4 x i32>, ptr %i.du, align 4, !tbaa !318
  %wide.load338 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !318
  %i.dw = getelementptr inbounds i8, ptr %next.gep335, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep335, i64 -32
  store <4 x i32> %wide.load337, ptr %i.dw, align 4, !tbaa !318
  store <4 x i32> %wide.load338, ptr %i.dx, align 4, !tbaa !318
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.dy, label %middle.block340, label %vector.body333, !llvm.loop !8715

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.dl, %n.vec332
  br i1 %cmp.n341, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161.preheader345

.lr.ph.i.i161.preheader345:                       ; preds = %vector.memcheck327, %.lr.ph.i.i161.preheader, %middle.block340
  %.010.i.i162.ph = phi ptr [ %i.de, %vector.memcheck327 ], [ %i.de, %.lr.ph.i.i161.preheader ], [ %i.dr, %middle.block340 ]
  %.079.i.i163.ph = phi ptr [ %3, %vector.memcheck327 ], [ %3, %.lr.ph.i.i161.preheader ], [ %i.ds, %middle.block340 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader345, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.ea, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader345 ]
  %.079.i.i163 = phi ptr [ %i.dz, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader345 ]
  %i.dz = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 3 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !318
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !318
  %.not.i.i164 = icmp eq ptr %0, %i.dz
  br i1 %.not.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, label %.lr.ph.i.i161, !llvm.loop !8716

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165: ; preds = %.lr.ph.i.i161, %middle.block340, %bb.g
  %i.ec = phi ptr [ %i.de, %bb.g ], [ %i.dr, %middle.block340 ], [ %i.ea, %.lr.ph.i.i161 ] ; 2 uses
  %.not3.i166 = icmp eq ptr %0, %i.ec
  br i1 %.not3.i166, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165, %.lr.ph.i167
  %storemerge4.i168 = phi ptr [ %i.ef, %.lr.ph.i167 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit165 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i168, align 4, !tbaa !318
  %i.ed = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %storemerge4.i168, i64 4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ef, %i.ec
  br i1 %.not.i169, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit143, label %.lr.ph.i167, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.m
  %i.eg = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 6 uses
  %.not17.i179 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.h
  %xtraiter357 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader, %.lr.ph.i180.prol
  %.020.i181.prol = phi i64 [ %i.eh, %.lr.ph.i180.prol ], [ %i.n, %.lr.ph.i180.preheader ]
  %.0819.i182.prol = phi ptr [ %i.el, %.lr.ph.i180.prol ], [ %i.eg, %.lr.ph.i180.preheader ] ; 2 uses
  %.01618.i183.prol = phi ptr [ %i.em, %.lr.ph.i180.prol ], [ %i.d, %.lr.ph.i180.preheader ] ; 3 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i180.prol ], [ 0, %.lr.ph.i180.preheader ]
  %i.eh = add i64 %.020.i181.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183.prol) ]
  %i.ei = load i32, ptr %.0819.i182.prol, align 4, !tbaa !318
  store i32 %i.ei, ptr %.01618.i183.prol, align 4, !tbaa !318
  %i.ej = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.el = getelementptr inbounds nuw i8, ptr %.0819.i182.prol, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01618.i183.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol, !llvm.loop !8717

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader
  %.020.i181.unr = phi i64 [ %i.n, %.lr.ph.i180.preheader ], [ %i.eh, %.lr.ph.i180.prol ]
  %.0819.i182.unr = phi ptr [ %i.eg, %.lr.ph.i180.preheader ], [ %i.el, %.lr.ph.i180.prol ]
  %.01618.i183.unr = phi ptr [ %i.d, %.lr.ph.i180.preheader ], [ %i.em, %.lr.ph.i180.prol ]
  %i.en = icmp ult i64 %i.n, 4
  br i1 %i.en, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.020.i181 = phi i64 [ %i.fb, %.lr.ph.i180 ], [ %.020.i181.unr, %.lr.ph.i180.prol.loopexit ]
  %.0819.i182 = phi ptr [ %i.fe, %.lr.ph.i180 ], [ %.0819.i182.unr, %.lr.ph.i180.prol.loopexit ] ; 5 uses
  %.01618.i183 = phi ptr [ %i.ff, %.lr.ph.i180 ], [ %.01618.i183.unr, %.lr.ph.i180.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i183) ]
  %i.eo = load i32, ptr %.0819.i182, align 4, !tbaa !318
  store i32 %i.eo, ptr %.01618.i183, align 4, !tbaa !318
  %i.ep = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.er = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 4
  %i.et = load i32, ptr %i.er, align 4, !tbaa !318
  store i32 %i.et, ptr %i.es, align 4, !tbaa !318
  %i.eu = add i32 %i.ep, 2
  store i32 %i.eu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ev = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !318
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !318
  %i.ey = add i32 %i.ep, 3
  store i32 %i.ey, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 12
  %i.fb = add i64 %.020.i181, -4                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !318
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !318
  %i.fd = add i32 %i.ep, 4
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fe = getelementptr inbounds nuw i8, ptr %.0819.i182, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.01618.i183, i64 16
  %.not.i184.3 = icmp eq i64 %i.fb, 0
  br i1 %.not.i184.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186, label %.lr.ph.i180, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186: ; preds = %.lr.ph.i180, %.lr.ph.i180.prol.loopexit
  %.not8.i.i188 = icmp eq ptr %3, %i.eg
  br i1 %.not8.i.i188, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.fg = shl nsw i64 %1, 2
  %i.fh = shl i64 %i.b, 1
  %i.fi = shl i64 %4, 2
  %i.fj = add i64 %i.fg, %i.fh
  %i.fk = add i64 %i.fj, -4
  %i.fl = add i64 %i.h, %i.a
  %i.fm = add i64 %i.fl, %i.fi
  %i.fn = sub i64 %i.fk, %i.fm                    ; 2 uses
  %i.fo = lshr i64 %i.fn, 2
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.fn, 28
  %diff.check294 = icmp ugt i64 %i.m, -32
  %or.cond344 = or i1 %min.iters.check296, %diff.check294
  br i1 %or.cond344, label %.lr.ph.i.i189.preheader349, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i.i189.preheader
  %n.vec298 = and i64 %i.fp, 9223372036854775800  ; 3 uses
  %i.fq = mul i64 %n.vec298, -4                   ; 2 uses
  %i.fr = getelementptr i8, ptr %i.d, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr i8, ptr %i.eg, i64 %i.fq
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.ft = mul i64 %index300, -4                   ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.d, i64 %i.ft ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.eg, i64 %i.ft ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %next.gep302, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %next.gep302, i64 -32
  %wide.load303 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !318
  %wide.load304 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !318
  %i.fw = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.fx = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  store <4 x i32> %wide.load303, ptr %i.fw, align 4, !tbaa !318
  store <4 x i32> %wide.load304, ptr %i.fx, align 4, !tbaa !318
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.fy, label %middle.block306, label %vector.body299, !llvm.loop !8718

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.fp, %n.vec298
  br i1 %cmp.n307, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189.preheader349

.lr.ph.i.i189.preheader349:                       ; preds = %.lr.ph.i.i189.preheader, %middle.block306
  %.010.i.i190.ph = phi ptr [ %i.d, %.lr.ph.i.i189.preheader ], [ %i.fr, %middle.block306 ]
  %.079.i.i191.ph = phi ptr [ %i.eg, %.lr.ph.i.i189.preheader ], [ %i.fs, %middle.block306 ]
  br label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.preheader349, %.lr.ph.i.i189
  %.010.i.i190 = phi ptr [ %i.ga, %.lr.ph.i.i189 ], [ %.010.i.i190.ph, %.lr.ph.i.i189.preheader349 ]
  %.079.i.i191 = phi ptr [ %i.fz, %.lr.ph.i.i189 ], [ %.079.i.i191.ph, %.lr.ph.i.i189.preheader349 ]
  %i.fz = getelementptr inbounds i8, ptr %.079.i.i191, i64 -4 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %.010.i.i190, i64 -4 ; 3 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !318
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !318
  %.not.i.i192 = icmp eq ptr %3, %i.fz
  br i1 %.not.i.i192, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193, label %.lr.ph.i.i189, !llvm.loop !8719

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit193: ; preds = %.lr.ph.i.i189, %middle.block306, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186
  %i.gc = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit186 ], [ %i.fr, %middle.block306 ], [ %i.ga, %.lr.ph.i.i189 ] ; 2 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.c ; 7 uses
  %i.gf = load i32, ptr %5, align 4, !tbaa !318
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !318
end_hunk_15
begin_hunk_16_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  %i.g = sub i64 %i.c, %i.f                       ; 5 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 17 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !247
  store i32 %i.p, ptr %.015.lcssa.i, align 4, !tbaa !318
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = load ptr, ptr %5, align 8, !tbaa !412
  %i.t = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 4
  %i.u = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.v = icmp eq i64 %4, 1
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.x = load i32, ptr %i.w, align 4, !tbaa !247
  store i32 %i.x, ptr %.01417.i.i, align 4, !tbaa !318
  %i.y = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.aa = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !412 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !247
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !318
  %i.ae = add i32 %i.y, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ah = add i64 %.018.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !161

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ai = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.ai
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not200 = icmp eq i64 %i.e, %1
  %.not16.i206 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.c
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.an, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 2 uses
  %.01517.i209 = phi ptr [ %i.ao, %.lr.ph.i207 ], [ %i.aj, %.lr.ph.i207.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i209) ]
  %i.ak = load i32, ptr %.018.i208, align 4, !tbaa !318
  store i32 %i.ak, ptr %.01517.i209, align 4, !tbaa !318
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.an, %i.a
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.ap = sub nuw i64 %i.h, %i.i                  ; 5 uses
  %.not17.i = icmp eq i64 %i.ap, 0
  br i1 %.not17.i, label %.loopexit415, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.d
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter599 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  br i1 %lcmp.mod600.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.020.i.prol = phi i64 [ %i.ar, %.lr.ph.i213.prol ], [ %i.ap, %.lr.ph.i213.preheader ]
  %.0819.i.prol = phi ptr [ %i.av, %.lr.ph.i213.prol ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.aw, %.lr.ph.i213.prol ], [ %i.aq, %.lr.ph.i213.preheader ] ; 3 uses
  %prol.iter601 = phi i64 [ %prol.iter601.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.ar = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.as = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.as, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter601.next = add i64 %prol.iter601, 1   ; 2 uses
  %prol.iter601.cmp.not = icmp eq i64 %prol.iter601.next, %xtraiter599
  br i1 %prol.iter601.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !8745

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.ap, %.lr.ph.i213.preheader ], [ %i.ar, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.av, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.aq, %.lr.ph.i213.preheader ], [ %i.aw, %.lr.ph.i213.prol ]
  %i.ax = sub i64 %i.i, %i.h
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit415, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.bm, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bp, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bq, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.az = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.az, ptr %.01618.i, align 4, !tbaa !318
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !318
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !318
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !318
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bm = add i64 %.020.i, -4                     ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !318
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !318
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i214.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i214.3, label %.loopexit415, label %.lr.ph.i213, !llvm.loop !152

.loopexit415:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.d
  %i.br = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap ; 6 uses
  %.not.i215 = icmp eq ptr %i.br, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %bb.e

bb.e:                                             ; preds = %.loopexit415
  %.not8.i.i = icmp eq ptr %i.br, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.e
  %i.bs = add i64 %1, %i.i
  %i.bt = shl i64 %i.bs, 2
  %i.bu = add i64 %i.bt, %i.c
  %i.bv = add i64 %i.bu, -4
  %i.bw = add i64 %i.g, %i.b
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 76
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader593, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg575 = sub i64 %8, %7
  %i.ca = add i64 %.neg575, %i.c
  %i.cb = add i64 %i.ca, -1
  %diff.check = icmp ult i64 %i.cb, 31
  br i1 %diff.check, label %.lr.ph.i.i216.preheader593, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cc = shl i64 %n.vec, 2                       ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.br, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cf ; 2 uses
  %next.gep503 = getelementptr i8, ptr %i.br, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep503, align 4, !tbaa !318
  %wide.load504 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !318
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load504, ptr %i.ch, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !8746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader593

.lr.ph.i.i216.preheader593:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.cd, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i216.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader593, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.cl, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader593 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ck, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader593 ] ; 2 uses
  %i.cj = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.cj, ptr %.010.i.i, align 4, !tbaa !318
  %i.ck = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.ck, %i.a
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !8747

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.cm = phi ptr [ %0, %bb.e ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.cm, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.cp, %.lr.ph.i218 ], [ %i.cm, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cp, %i.a
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter597 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  br i1 %lcmp.mod598.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cq = phi i64 [ %i.cr, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.cu, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cr = add i64 %i.cq, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !318
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter597
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8748

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cr, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cu, %.preheader.prol ]
  %i.cv = icmp ult i64 %1, 4
  br i1 %i.cv, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cw = phi i64 [ %i.de, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.dg, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !318
  %i.cx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.cz, align 4, !tbaa !318
  %i.da = add i32 %i.cx, -2
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.db, align 4, !tbaa !318
  %i.dc = add i32 %i.cx, -3
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.de = add i64 %i.cw, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dd, align 4, !tbaa !318
  %i.df = add i32 %i.cx, -4
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.de, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.dh = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not180 = icmp ugt i64 %i.h, %i.e
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit413, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %xtraiter602 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  br i1 %lcmp.mod603.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader, %.lr.ph.i235.prol
  %.020.i236.prol = phi i64 [ %i.di, %.lr.ph.i235.prol ], [ %i.h, %.lr.ph.i235.preheader ]
  %.0819.i237.prol = phi ptr [ %i.dm, %.lr.ph.i235.prol ], [ %0, %.lr.ph.i235.preheader ] ; 2 uses
  %.01618.i238.prol = phi ptr [ %i.dn, %.lr.ph.i235.prol ], [ %2, %.lr.ph.i235.preheader ] ; 3 uses
  %prol.iter604 = phi i64 [ %prol.iter604.next, %.lr.ph.i235.prol ], [ 0, %.lr.ph.i235.preheader ]
  %i.di = add i64 %.020.i236.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238.prol) ]
  %i.dj = load i32, ptr %.0819.i237.prol, align 4, !tbaa !318
  store i32 %i.dj, ptr %.01618.i238.prol, align 4, !tbaa !318
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0819.i237.prol, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01618.i238.prol, i64 4 ; 2 uses
  %prol.iter604.next = add i64 %prol.iter604, 1   ; 2 uses
  %prol.iter604.cmp.not = icmp eq i64 %prol.iter604.next, %xtraiter602
  br i1 %prol.iter604.cmp.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol, !llvm.loop !8749

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.h, %.lr.ph.i235.preheader ], [ %i.di, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.dm, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dn, %.lr.ph.i235.prol ]
  %i.do = icmp ult i64 %i.h, 4
  br i1 %i.do, label %.loopexit413, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ec, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.ef, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 5 uses
  %.01618.i238 = phi ptr [ %i.eg, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.dp = load i32, ptr %.0819.i237, align 4, !tbaa !318
  store i32 %i.dp, ptr %.01618.i238, align 4, !tbaa !318
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !318
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !318
  %i.dv = add i32 %i.dq, 2
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dw = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !318
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !318
  %i.dz = add i32 %i.dq, 3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ea = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 12
  %i.ec = add i64 %.020.i236, -4                  ; 2 uses
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !318
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !318
  %i.ee = add i32 %i.dq, 4
  store i32 %i.ee, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ef = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 16
  %.not.i239.3 = icmp eq i64 %i.ec, 0
  br i1 %.not.i239.3, label %.loopexit413, label %.lr.ph.i235, !llvm.loop !152

.loopexit413:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.eh = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 7 uses
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.ei, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit413
  %i.ej = shl i64 %i.c, 1
  %i.ek = add i64 %i.b, %i.f
  %i.el = add i64 %i.ek, -4
  %i.em = sub i64 %i.el, %i.ej                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 6 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.j, %i.f                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 12 uses
  %i.m = add i64 %i.i, %4                         ; 4 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.n ; 4 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.q = load i32, ptr %i.p, align 4, !tbaa !247
  store i32 %i.q, ptr %i.o, align 4, !tbaa !318
  %i.r = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = load ptr, ptr %5, align 8, !tbaa !412
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.v, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.w = icmp eq i64 %4, 1
  br i1 %i.w, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.y = load i32, ptr %i.x, align 4, !tbaa !247
  store i32 %i.y, ptr %.01417.i.i, align 4, !tbaa !318
  %i.z = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ab = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !412 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !247
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !318
  %i.af = add i32 %i.z, 2
  store i32 %i.af, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !412
  %i.ah = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ai = add i64 %.018.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !161

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.c
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.an, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.ak = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.ak, ptr %.01517.i, align 4, !tbaa !318
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.an, %i.c
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not123 = icmp ult i64 %i.l, %i.d
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i128 = icmp eq ptr %0, %3
  br i1 %.not16.i128, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.c, %.lr.ph.i129
  %.018.i130 = phi ptr [ %i.as, %.lr.ph.i129 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i131 = phi ptr [ %i.at, %.lr.ph.i129 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i131) ]
  %i.ap = load i32, ptr %.018.i130, align 4, !tbaa !318
  store i32 %i.ap, ptr %.01517.i131, align 4, !tbaa !318
  %i.aq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i130, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i131, i64 4
  %.not.i132 = icmp eq ptr %i.as, %3
  br i1 %.not.i132, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i129, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.au = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.av = sub i64 0, %i.au                        ; 3 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.av ; 8 uses
  %.not17.i = icmp eq i64 %i.au, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.d
  %xtraiter387 = and i64 %i.au, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol

.lr.ph.i135.prol:                                 ; preds = %.lr.ph.i135.preheader, %.lr.ph.i135.prol
  %.020.i.prol = phi i64 [ %i.ax, %.lr.ph.i135.prol ], [ %i.au, %.lr.ph.i135.preheader ]
  %.0819.i.prol = phi ptr [ %i.bb, %.lr.ph.i135.prol ], [ %i.aw, %.lr.ph.i135.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.bc, %.lr.ph.i135.prol ], [ %i.c, %.lr.ph.i135.preheader ] ; 3 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i135.prol ], [ 0, %.lr.ph.i135.preheader ]
  %i.ax = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ay = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ay, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i135.prol.loopexit, label %.lr.ph.i135.prol, !llvm.loop !8763

.lr.ph.i135.prol.loopexit:                        ; preds = %.lr.ph.i135.prol, %.lr.ph.i135.preheader
  %.020.i.unr = phi i64 [ %i.au, %.lr.ph.i135.preheader ], [ %i.ax, %.lr.ph.i135.prol ]
  %.0819.i.unr = phi ptr [ %i.aw, %.lr.ph.i135.preheader ], [ %i.bb, %.lr.ph.i135.prol ]
  %.01618.i.unr = phi ptr [ %i.c, %.lr.ph.i135.preheader ], [ %i.bc, %.lr.ph.i135.prol ]
  %i.bd = sub i64 %i.m, %i.l
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135
  %.020.i = phi i64 [ %i.bs, %.lr.ph.i135 ], [ %.020.i.unr, %.lr.ph.i135.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bv, %.lr.ph.i135 ], [ %.0819.i.unr, %.lr.ph.i135.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bw, %.lr.ph.i135 ], [ %.01618.i.unr, %.lr.ph.i135.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bf = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.bf, ptr %.01618.i, align 4, !tbaa !318
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !318
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !318
  %i.bl = add i32 %i.bg, 2
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !318
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !318
  %i.bp = add i32 %i.bg, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bs = add i64 %.020.i, -4                     ; 2 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !318
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !318
  %i.bu = add i32 %i.bg, 4
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i136.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i136.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i135, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i135.prol.loopexit, %.lr.ph.i135, %bb.d
  %.not.i137 = icmp eq ptr %i.aw, %i.c
  %.not8.i.i = icmp eq ptr %0, %i.aw
  %or.cond = or i1 %.not.i137, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader

.lr.ph.i.i138.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bx = shl i64 %i.av, 2
  %i.by = add i64 %i.bx, %i.g
  %i.bz = add i64 %i.by, -4
  %i.ca = sub i64 %i.bz, %i.b                     ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 92
  br i1 %min.iters.check, label %.lr.ph.i.i138.preheader383, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i138.preheader
  %i.cd = shl i64 %i.av, 2
  %7 = add i64 %i.cd, %i.g
  %8 = shl nsw i64 %1, 2
  %i.ce = add i64 %8, %i.b
  %i.cf = sub i64 %i.ce, %7
  %diff.check = icmp ugt i64 %i.cf, -32
  br i1 %diff.check, label %.lr.ph.i.i138.preheader383, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 9223372036854775800     ; 3 uses
  %i.cg = mul i64 %n.vec, -4                      ; 2 uses
  %i.ch = getelementptr i8, ptr %i.c, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.aw, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.cj ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.aw, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !318
  %wide.load320 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !318
  %i.cm = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cm, align 4, !tbaa !318
  store <4 x i32> %wide.load320, ptr %i.cn, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !8764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138.preheader383

.lr.ph.i.i138.preheader383:                       ; preds = %vector.memcheck, %.lr.ph.i.i138.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i138.preheader ], [ %i.ch, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i138.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.lr.ph.i.i138.preheader383, %.lr.ph.i.i138
  %.010.i.i = phi ptr [ %i.cq, %.lr.ph.i.i138 ], [ %.010.i.i.ph, %.lr.ph.i.i138.preheader383 ]
  %.079.i.i = phi ptr [ %i.cp, %.lr.ph.i.i138 ], [ %.079.i.i.ph, %.lr.ph.i.i138.preheader383 ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !318
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !318
  %.not.i.i139 = icmp eq ptr %0, %i.cp
  br i1 %.not.i.i139, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i138, !llvm.loop !8765

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i138, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.cu, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.cu, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i129, %bb.c
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter385 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cv = phi i64 [ %i.cw, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.cz, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cw = add i64 %i.cv, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !318
  %i.cx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter385
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8766

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cw, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cz, %.preheader.prol ]
  %i.da = icmp ult i64 %1, 4
  br i1 %i.da, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.db = phi i64 [ %i.dj, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.dl, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !318
  %i.dc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.de, align 4, !tbaa !318
  %i.df = add i32 %i.dc, -2
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.dg, align 4, !tbaa !318
  %i.dh = add i32 %i.dc, -3
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.dj = add i64 %i.db, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.di, align 4, !tbaa !318
  %i.dk = add i32 %i.dc, -4
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.dj, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.dm = icmp ugt i64 %i.l, %i.i
  br i1 %i.dm, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.c
  br i1 %.not16.i156, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.dn = sub nsw i64 0, %i.i
  %i.do = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dn
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.ds, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.dt, %.lr.ph.i157 ], [ %i.do, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.dp = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.dp, ptr %.01517.i159, align 4, !tbaa !318
  %i.dq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.ds, %i.c
  br i1 %.not.i160, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162, label %.lr.ph.i157, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162: ; preds = %.lr.ph.i157, %bb.f
  %i.du = sub nuw nsw i64 %i.l, %i.i              ; 4 uses
  %i.dv = sub i64 %4, %i.du                       ; 6 uses
  %i.dw = sub i64 0, %i.dv
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dw ; 8 uses
  %.not6.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not6.i.i, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164.preheader

.lr.ph.i.i164.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %i.dy = add i64 %i.i, %4
  %xtraiter396.a = and i64 %i.dv, 3               ; 2 uses
  %lcmp.mod397.not.a = icmp eq i64 %xtraiter396.a, 0
  br i1 %lcmp.mod397.not.a, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol

.lr.ph.i.i164.prol:                               ; preds = %.lr.ph.i.i164.preheader, %.lr.ph.i.i164.prol
  %.09.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i164.prol ], [ %i.dv, %.lr.ph.i.i164.preheader ]
  %.048.i.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i164.prol ], [ %i.dx, %.lr.ph.i.i164.preheader ] ; 2 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i164.prol ], [ %5, %.lr.ph.i.i164.preheader ] ; 2 uses
  %prol.iter398.a = phi i64 [ %prol.iter398.next.a, %.lr.ph.i.i164.prol ], [ 0, %.lr.ph.i.i164.preheader ]
  %i.dz = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !247
  store i32 %i.eb, ptr %.048.i.i.prol, align 4, !tbaa !318
  %i.ec = load ptr, ptr %.sroa.0.07.i.i.prol, align 8, !tbaa !412 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4 ; 2 uses
  %prol.iter398.next.a = add i64 %prol.iter398.a, 1 ; 2 uses
  %prol.iter398.cmp.not.a = icmp eq i64 %prol.iter398.next.a, %xtraiter396.a
  br i1 %prol.iter398.cmp.not.a, label %.lr.ph.i.i164.prol.loopexit, label %.lr.ph.i.i164.prol, !llvm.loop !8767

.lr.ph.i.i164.prol.loopexit:                      ; preds = %.lr.ph.i.i164.prol, %.lr.ph.i.i164.preheader
  %.lcssa376.unr = phi ptr [ poison, %.lr.ph.i.i164.preheader ], [ %i.ec, %.lr.ph.i.i164.prol ]
  %.09.i.i.unr = phi i64 [ %i.dv, %.lr.ph.i.i164.preheader ], [ %i.dz, %.lr.ph.i.i164.prol ]
  %.048.i.i.unr = phi ptr [ %i.dx, %.lr.ph.i.i164.preheader ], [ %i.ed, %.lr.ph.i.i164.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %5, %.lr.ph.i.i164.preheader ], [ %i.ec, %.lr.ph.i.i164.prol ]
  %i.ee = sub i64 %i.l, %i.dy
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164
  %.09.i.i = phi i64 [ %i.es, %.lr.ph.i.i164 ], [ %.09.i.i.unr, %.lr.ph.i.i164.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.ew, %.lr.ph.i.i164 ], [ %.048.i.i.unr, %.lr.ph.i.i164.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ev, %.lr.ph.i.i164 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i164.prol.loopexit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !247
  store i32 %i.eh, ptr %.048.i.i, align 4, !tbaa !318
  %i.ei = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !412 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !247
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !318
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !412 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !247
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !318
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !412 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.es = add i64 %.09.i.i, -4                    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !247
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !318
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !412 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %.not.i.i165.3 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i165.3, label %.lr.ph.i.i169.preheader, label %.lr.ph.i.i164, !llvm.loop !89

.lr.ph.i.i169.preheader:                          ; preds = %.lr.ph.i.i164.prol.loopexit, %.lr.ph.i.i164, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162
  %.sroa.0.016.i.i172.ph = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit162 ], [ %.lcssa376.unr, %.lr.ph.i.i164.prol.loopexit ], [ %i.ev, %.lr.ph.i.i164 ] ; 3 uses
  %.neg403 = add nsw i64 %i.i, 1
  %xtraiter399.a = and i64 %i.du, 1
  %lcmp.mod400.not.a = icmp eq i64 %xtraiter399.a, 0
  br i1 %lcmp.mod400.not.a, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol

.lr.ph.i.i169.prol:                               ; preds = %.lr.ph.i.i169.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172.ph, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !247
  store i32 %i.ey, ptr %i.c, align 4, !tbaa !318
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fb = load ptr, ptr %.sroa.0.016.i.i172.ph, align 8, !tbaa !412
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.fd = add nsw i64 %i.du, -1
  br label %.lr.ph.i.i169.prol.loopexit

.lr.ph.i.i169.prol.loopexit:                      ; preds = %.lr.ph.i.i169.prol, %.lr.ph.i.i169.preheader
  %.018.i.i170.unr = phi i64 [ %i.du, %.lr.ph.i.i169.preheader ], [ %i.fd, %.lr.ph.i.i169.prol ]
  %.01417.i.i171.unr = phi ptr [ %i.c, %.lr.ph.i.i169.preheader ], [ %i.fc, %.lr.ph.i.i169.prol ]
  %.sroa.0.016.i.i172.unr = phi ptr [ %.sroa.0.016.i.i172.ph, %.lr.ph.i.i169.preheader ], [ %i.fb, %.lr.ph.i.i169.prol ]
  %i.fe = icmp eq i64 %i.l, %.neg403
  br i1 %i.fe, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %.018.i.i170 = phi i64 [ %i.fq, %.lr.ph.i.i169 ], [ %.018.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ]
  %.01417.i.i171 = phi ptr [ %i.fp, %.lr.ph.i.i169 ], [ %.01417.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i172 = phi ptr [ %i.fo, %.lr.ph.i.i169 ], [ %.sroa.0.016.i.i172.unr, %.lr.ph.i.i169.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i172, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i171) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !247
  store i32 %i.fg, ptr %.01417.i.i171, align 4, !tbaa !318
  %i.fh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fj = load ptr, ptr %.sroa.0.016.i.i172, align 8, !tbaa !412 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !247
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !318
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !412
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i171, i64 8
  %i.fq = add i64 %.018.i.i170, -2                ; 2 uses
  %.not.i.i173.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i173.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175, label %.lr.ph.i.i169, !llvm.loop !161

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175: ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.prol.loopexit
  %.not.i176 = icmp eq ptr %3, %i.dx
  br i1 %.not.i176, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit175
  %.not8.i.i177 = icmp eq ptr %0, %3
  br i1 %.not8.i.i177, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.g
  %i.fr = add i64 %i.g, -4
  %i.fs = sub i64 %i.fr, %i.b                     ; 2 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check359 = icmp ult i64 %i.fs, 92
  br i1 %min.iters.check359, label %.lr.ph.i.i178.preheader375, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph.i.i178.preheader
  %i.fv = shl nsw i64 %1, 2
  %9 = add i64 %i.fv, %i.b
  %10 = sub i64 %i.g, %9
  %.neg = shl i64 %i.dv, 2
  %i.fw = add i64 %.neg, %10
  %i.fx = add i64 %i.fw, -1
  %diff.check357 = icmp ult i64 %i.fx, 31
  br i1 %diff.check357, label %.lr.ph.i.i178.preheader375, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck356
  %n.vec361 = and i64 %i.fu, 9223372036854775800  ; 3 uses
  %i.fy = mul i64 %n.vec361, -4                   ; 2 uses
  %i.fz = getelementptr i8, ptr %i.dx, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %3, i64 %i.fy
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 2 uses
  %i.gb = mul i64 %index363, -4                   ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.dx, i64 %i.gb ; 2 uses
  %next.gep365 = getelementptr i8, ptr %3, i64 %i.gb ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %next.gep365, i64 -16
  %i.gd = getelementptr inbounds i8, ptr %next.gep365, i64 -32
  %wide.load366 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !318
  %wide.load367 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !318
  %i.ge = getelementptr inbounds i8, ptr %next.gep364, i64 -16
  %i.gf = getelementptr inbounds i8, ptr %next.gep364, i64 -32
  store <4 x i32> %wide.load366, ptr %i.ge, align 4, !tbaa !318
  store <4 x i32> %wide.load367, ptr %i.gf, align 4, !tbaa !318
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.gg, label %middle.block369, label %vector.body362, !llvm.loop !8768

middle.block369:                                  ; preds = %vector.body362
  %cmp.n370 = icmp eq i64 %i.fu, %n.vec361
  br i1 %cmp.n370, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178.preheader375

.lr.ph.i.i178.preheader375:                       ; preds = %vector.memcheck356, %.lr.ph.i.i178.preheader, %middle.block369
  %.010.i.i179.ph = phi ptr [ %i.dx, %vector.memcheck356 ], [ %i.dx, %.lr.ph.i.i178.preheader ], [ %i.fz, %middle.block369 ]
  %.079.i.i180.ph = phi ptr [ %3, %vector.memcheck356 ], [ %3, %.lr.ph.i.i178.preheader ], [ %i.ga, %middle.block369 ]
  br label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.preheader375, %.lr.ph.i.i178
  %.010.i.i179 = phi ptr [ %i.gi, %.lr.ph.i.i178 ], [ %.010.i.i179.ph, %.lr.ph.i.i178.preheader375 ]
  %.079.i.i180 = phi ptr [ %i.gh, %.lr.ph.i.i178 ], [ %.079.i.i180.ph, %.lr.ph.i.i178.preheader375 ]
  %i.gh = getelementptr inbounds i8, ptr %.079.i.i180, i64 -4 ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.010.i.i179, i64 -4 ; 3 uses
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !318
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !318
  %.not.i.i181 = icmp eq ptr %0, %i.gh
  br i1 %.not.i.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, label %.lr.ph.i.i178, !llvm.loop !8769

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182: ; preds = %.lr.ph.i.i178, %middle.block369, %bb.g
  %i.gk = phi ptr [ %i.dx, %bb.g ], [ %i.fz, %middle.block369 ], [ %i.gi, %.lr.ph.i.i178 ] ; 2 uses
  %.not3.i183 = icmp eq ptr %0, %i.gk
  br i1 %.not3.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182, %.lr.ph.i184
  %storemerge4.i185 = phi ptr [ %i.gn, %.lr.ph.i184 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit182 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i185, align 4, !tbaa !318
  %i.gl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gm = add i32 %i.gl, -1
  store i32 %i.gm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gn = getelementptr inbounds nuw i8, ptr %storemerge4.i185, i64 4 ; 2 uses
  %.not.i186 = icmp eq ptr %i.gn, %i.gk
  br i1 %.not.i186, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i184, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.go = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not17.i196 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i196, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i197.preheader

.lr.ph.i197.preheader:                            ; preds = %bb.h
  %xtraiter390 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol

.lr.ph.i197.prol:                                 ; preds = %.lr.ph.i197.preheader, %.lr.ph.i197.prol
  %.020.i198.prol = phi i64 [ %i.gp, %.lr.ph.i197.prol ], [ %i.l, %.lr.ph.i197.preheader ]
  %.0819.i199.prol = phi ptr [ %i.gt, %.lr.ph.i197.prol ], [ %i.go, %.lr.ph.i197.preheader ] ; 2 uses
  %.01618.i200.prol = phi ptr [ %i.gu, %.lr.ph.i197.prol ], [ %i.c, %.lr.ph.i197.preheader ] ; 3 uses
  %prol.iter392 = phi i64 [ %prol.iter392.next, %.lr.ph.i197.prol ], [ 0, %.lr.ph.i197.preheader ]
  %i.gp = add i64 %.020.i198.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200.prol) ]
  %i.gq = load i32, ptr %.0819.i199.prol, align 4, !tbaa !318
  store i32 %i.gq, ptr %.01618.i200.prol, align 4, !tbaa !318
  %i.gr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gt = getelementptr inbounds nuw i8, ptr %.0819.i199.prol, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01618.i200.prol, i64 4 ; 2 uses
  %prol.iter392.next = add i64 %prol.iter392, 1   ; 2 uses
  %prol.iter392.cmp.not = icmp eq i64 %prol.iter392.next, %xtraiter390
  br i1 %prol.iter392.cmp.not, label %.lr.ph.i197.prol.loopexit, label %.lr.ph.i197.prol, !llvm.loop !8770

.lr.ph.i197.prol.loopexit:                        ; preds = %.lr.ph.i197.prol, %.lr.ph.i197.preheader
  %.020.i198.unr = phi i64 [ %i.l, %.lr.ph.i197.preheader ], [ %i.gp, %.lr.ph.i197.prol ]
  %.0819.i199.unr = phi ptr [ %i.go, %.lr.ph.i197.preheader ], [ %i.gt, %.lr.ph.i197.prol ]
  %.01618.i200.unr = phi ptr [ %i.c, %.lr.ph.i197.preheader ], [ %i.gu, %.lr.ph.i197.prol ]
  %i.gv = icmp ult i64 %i.l, 4
  br i1 %i.gv, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.lr.ph.i197.prol.loopexit, %.lr.ph.i197
  %.020.i198 = phi i64 [ %i.hj, %.lr.ph.i197 ], [ %.020.i198.unr, %.lr.ph.i197.prol.loopexit ]
  %.0819.i199 = phi ptr [ %i.hm, %.lr.ph.i197 ], [ %.0819.i199.unr, %.lr.ph.i197.prol.loopexit ] ; 5 uses
  %.01618.i200 = phi ptr [ %i.hn, %.lr.ph.i197 ], [ %.01618.i200.unr, %.lr.ph.i197.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i200) ]
  %i.gw = load i32, ptr %.0819.i199, align 4, !tbaa !318
  store i32 %i.gw, ptr %.01618.i200, align 4, !tbaa !318
  %i.gx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.gz = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 4
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !318
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !318
  %i.hc = add i32 %i.gx, 2
  store i32 %i.hc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hd = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 8
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !318
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !318
  %i.hg = add i32 %i.gx, 3
  store i32 %i.hg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hh = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 12
  %i.hi = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 12
  %i.hj = add i64 %.020.i198, -4                  ; 2 uses
  %i.hk = load i32, ptr %i.hh, align 4, !tbaa !318
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !318
  %i.hl = add i32 %i.gx, 4
  store i32 %i.hl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.hm = getelementptr inbounds nuw i8, ptr %.0819.i199, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %.01618.i200, i64 16
  %.not.i201.3 = icmp eq i64 %i.hj, 0
  br i1 %.not.i201.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203, label %.lr.ph.i197, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203: ; preds = %.lr.ph.i197, %.lr.ph.i197.prol.loopexit
  %.not8.i.i205 = icmp eq ptr %3, %i.go
  br i1 %.not8.i.i205, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader

.lr.ph.i.i206.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.ho = shl nsw i64 %1, 2
  %i.hp = shl i64 %i.b, 1
  %i.hq = shl i64 %4, 2
  %i.hr = add i64 %i.ho, %i.hp
  %i.hs = add i64 %i.hr, -4
  %i.ht = add i64 %i.g, %i.a
  %i.hu = add i64 %i.ht, %i.hq
  %i.hv = sub i64 %i.hs, %i.hu                    ; 2 uses
  %i.hw = lshr i64 %i.hv, 2
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.hv, 28
  %diff.check323 = icmp ugt i64 %i.k, -32
  %or.cond373 = or i1 %min.iters.check325, %diff.check323
  br i1 %or.cond373, label %.lr.ph.i.i206.preheader380, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i206.preheader
  %n.vec327 = and i64 %i.hx, 9223372036854775800  ; 3 uses
  %i.hy = mul i64 %n.vec327, -4                   ; 2 uses
  %i.hz = getelementptr i8, ptr %i.c, i64 %i.hy   ; 2 uses
  %i.ia = getelementptr i8, ptr %i.go, i64 %i.hy
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.ib = mul i64 %index329, -4                   ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.c, i64 %i.ib ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.go, i64 %i.ib ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.id = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  %wide.load332 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !318
  %wide.load333 = load <4 x i32>, ptr %i.id, align 4, !tbaa !318
  %i.ie = getelementptr inbounds i8, ptr %next.gep330, i64 -16
  %i.if = getelementptr inbounds i8, ptr %next.gep330, i64 -32
  store <4 x i32> %wide.load332, ptr %i.ie, align 4, !tbaa !318
  store <4 x i32> %wide.load333, ptr %i.if, align 4, !tbaa !318
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.ig, label %middle.block335, label %vector.body328, !llvm.loop !8771

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.hx, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206.preheader380

.lr.ph.i.i206.preheader380:                       ; preds = %.lr.ph.i.i206.preheader, %middle.block335
  %.010.i.i207.ph = phi ptr [ %i.c, %.lr.ph.i.i206.preheader ], [ %i.hz, %middle.block335 ]
  %.079.i.i208.ph = phi ptr [ %i.go, %.lr.ph.i.i206.preheader ], [ %i.ia, %middle.block335 ]
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206.preheader380, %.lr.ph.i.i206
  %.010.i.i207 = phi ptr [ %i.ii, %.lr.ph.i.i206 ], [ %.010.i.i207.ph, %.lr.ph.i.i206.preheader380 ]
  %.079.i.i208 = phi ptr [ %i.ih, %.lr.ph.i.i206 ], [ %.079.i.i208.ph, %.lr.ph.i.i206.preheader380 ]
  %i.ih = getelementptr inbounds i8, ptr %.079.i.i208, i64 -4 ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %.010.i.i207, i64 -4 ; 3 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !318
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !318
  %.not.i.i209 = icmp eq ptr %3, %i.ih
  br i1 %.not.i.i209, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210, label %.lr.ph.i.i206, !llvm.loop !8772

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit210: ; preds = %.lr.ph.i.i206, %middle.block335, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203
  %i.ik = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit203 ], [ %i.hz, %middle.block335 ], [ %i.ii, %.lr.ph.i.i206 ] ; 2 uses
  %i.il = ptrtoaddr ptr %i.ik to i64
  %i.im = sub i64 0, %4
end_hunk_17
begin_hunk_18_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEENS0_12vec_iteratorIPS3_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i, !llvm.loop !123

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.n
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.z)
          to label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  store ptr %i.v, ptr %1, align 8, !tbaa !488
  %i.ck = load i64, ptr %i.f, align 8, !tbaa !489
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i
  %.sink25.i = phi i64 [ %i.ck, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.i ], [ %i.bd, %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE10deallocateERKPS4_m.exit.thread.i ]
  %i.cl = add i64 %.sink25.i, %3
  store i64 %i.cl, ptr %i.f, align 8, !tbaa !489
  store i64 %i.x, ptr %i.c, align 8, !tbaa !261
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, %bb.h, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit
  %i.cm = phi ptr [ %i.z, %_ZN5boost9container15move_backward_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i ], [ %i.z, %bb.h ], [ %.pre, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit ], [ %i.v, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvPS3_mSC_mT_.exit ]
  %i.cn = ptrtoint ptr %2 to i64
  %i.co = ptrtoint ptr %i.b to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  store ptr %i.cq, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJRiEEES8_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit376, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !318
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit376, label %.lr.ph.i, !llvm.loop !153

.loopexit376:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !318
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.r = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.r
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit376
  %.not200 = icmp eq i64 %i.e, %1
  %.not16.i212 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i212
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213
  %.018.i214 = phi ptr [ %i.w, %.lr.ph.i213 ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01517.i215 = phi ptr [ %i.x, %.lr.ph.i213 ], [ %i.s, %.lr.ph.i213.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i215) ]
  %i.t = load i32, ptr %.018.i214, align 4, !tbaa !318
  store i32 %i.t, ptr %.01517.i215, align 4, !tbaa !318
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i214, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i215, i64 4
  %.not.i216 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i216, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i213, !llvm.loop !153

bb.d:                                             ; preds = %.loopexit376
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit374, label %.lr.ph.i219.preheader

.lr.ph.i219.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter533 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod534.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol

.lr.ph.i219.prol:                                 ; preds = %.lr.ph.i219.preheader, %.lr.ph.i219.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i219.prol ], [ %i.y, %.lr.ph.i219.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i219.prol ], [ %3, %.lr.ph.i219.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i219.prol ], [ %i.z, %.lr.ph.i219.preheader ] ; 3 uses
  %prol.iter535 = phi i64 [ %prol.iter535.next, %.lr.ph.i219.prol ], [ 0, %.lr.ph.i219.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter535.next = add i64 %prol.iter535, 1   ; 2 uses
  %prol.iter535.cmp.not = icmp eq i64 %prol.iter535.next, %xtraiter533
  br i1 %prol.iter535.cmp.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol, !llvm.loop !8777

.lr.ph.i219.prol.loopexit:                        ; preds = %.lr.ph.i219.prol, %.lr.ph.i219.preheader
  %.020.i.unr = phi i64 [ %i.y, %.lr.ph.i219.preheader ], [ %i.aa, %.lr.ph.i219.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i219.preheader ], [ %i.ae, %.lr.ph.i219.prol ]
  %.01618.i.unr = phi ptr [ %i.z, %.lr.ph.i219.preheader ], [ %i.af, %.lr.ph.i219.prol ]
  %i.ag = sub i64 %i.i, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit374, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219.prol.loopexit, %.lr.ph.i219
  %.020.i = phi i64 [ %i.av, %.lr.ph.i219 ], [ %.020.i.unr, %.lr.ph.i219.prol.loopexit ]
  %.0819.i = phi ptr [ %i.ay, %.lr.ph.i219 ], [ %.0819.i.unr, %.lr.ph.i219.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.az, %.lr.ph.i219 ], [ %.01618.i.unr, %.lr.ph.i219.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.ai = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.ai, ptr %.01618.i, align 4, !tbaa !318
  %i.aj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.an = load i32, ptr %i.al, align 4, !tbaa !318
  store i32 %i.an, ptr %i.am, align 4, !tbaa !318
  %i.ao = add i32 %i.aj, 2
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !318
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !318
  %i.as = add i32 %i.aj, 3
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.av = add i64 %.020.i, -4                     ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !318
  %i.ax = add i32 %i.aj, 4
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i220.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i220.3, label %.loopexit374, label %.lr.ph.i219, !llvm.loop !152

.loopexit374:                                     ; preds = %.lr.ph.i219.prol.loopexit, %.lr.ph.i219, %bb.d
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y ; 6 uses
  %.not.i221 = icmp eq ptr %i.ba, %0
  br i1 %.not.i221, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %bb.e

bb.e:                                             ; preds = %.loopexit374
  %.not8.i.i = icmp eq ptr %i.ba, %i.a
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.bb = add i64 %1, %i.i
  %i.bc = shl i64 %i.bb, 2
  %i.bd = add i64 %i.bc, %i.c
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.g, %i.b
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader529, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %7 = add i64 %i.g, %i.b
  %8 = shl i64 %i.i, 2
  %.neg515 = sub i64 %8, %7
  %i.bj = add i64 %.neg515, %i.c
  %i.bk = add i64 %i.bj, -1
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader529, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2                       ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ba, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bo ; 2 uses
  %next.gep443 = getelementptr i8, ptr %i.ba, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep443, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep443, align 4, !tbaa !318
  %wide.load444 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !318
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !318
  store <4 x i32> %wide.load444, ptr %i.bq, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !8778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader529

.lr.ph.i.i.preheader529:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader529, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader529 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader529 ] ; 2 uses
  %i.bs = load i32, ptr %.079.i.i, align 4, !tbaa !318
  store i32 %i.bs, ptr %.010.i.i, align 4, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.a
  br i1 %.not.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8779

_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  %i.bv = phi ptr [ %0, %bb.e ], [ %i.bm, %middle.block ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.not3.i = icmp eq ptr %i.bv, %i.a
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i222
  %storemerge4.i = phi ptr [ %i.by, %.lr.ph.i222 ], [ %i.bv, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.bw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bx = add i32 %i.bw, -1
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i223 = icmp eq ptr %i.by, %i.a
  br i1 %.not.i223, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.lr.ph.i222, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i213, %bb.c
  %.not.i226 = icmp eq i64 %1, 0
  br i1 %.not.i226, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.bz = phi i64 [ %i.ca, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i227.prol = phi ptr [ %i.cd, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i227.prol, align 4, !tbaa !318
  %i.cb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i227.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8780

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ca, %.preheader.prol ]
  %.0.i227.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.cd, %.preheader.prol ]
  %i.ce = icmp ult i64 %1, 4
  br i1 %i.ce, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cf = phi i64 [ %i.cn, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i227 = phi ptr [ %i.cp, %.preheader ], [ %.0.i227.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i227, align 4, !tbaa !318
  %i.cg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i227, i64 4
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !318
  %i.cj = add i32 %i.cg, -2
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i227, i64 8
  store i32 -2147483648, ptr %i.ck, align 4, !tbaa !318
  %i.cl = add i32 %i.cg, -3
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i227, i64 12
  %i.cn = add i64 %i.cf, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.cm, align 4, !tbaa !318
  %i.co = add i32 %i.cg, -4
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i227, i64 16
  %.not3.i228.3 = icmp eq i64 %i.cn, 0
  br i1 %.not3.i228.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229, label %.preheader, !llvm.loop !158

bb.f:                                             ; preds = %bb.a
  %i.cq = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not180 = icmp ugt i64 %i.h, %i.e
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i238 = icmp eq ptr %0, %2
  br i1 %.not17.i238, label %.loopexit372, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %bb.g
  %xtraiter536 = and i64 %i.h, 3                  ; 2 uses
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %.lr.ph.i239.prol.loopexit, label %.lr.ph.i239.prol

.lr.ph.i239.prol:                                 ; preds = %.lr.ph.i239.preheader, %.lr.ph.i239.prol
  %.020.i240.prol = phi i64 [ %i.cr, %.lr.ph.i239.prol ], [ %i.h, %.lr.ph.i239.preheader ]
  %.0819.i241.prol = phi ptr [ %i.cv, %.lr.ph.i239.prol ], [ %0, %.lr.ph.i239.preheader ] ; 2 uses
  %.01618.i242.prol = phi ptr [ %i.cw, %.lr.ph.i239.prol ], [ %2, %.lr.ph.i239.preheader ] ; 3 uses
  %prol.iter538 = phi i64 [ %prol.iter538.next, %.lr.ph.i239.prol ], [ 0, %.lr.ph.i239.preheader ]
  %i.cr = add i64 %.020.i240.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i242.prol) ]
  %i.cs = load i32, ptr %.0819.i241.prol, align 4, !tbaa !318
  store i32 %i.cs, ptr %.01618.i242.prol, align 4, !tbaa !318
  %i.ct = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cv = getelementptr inbounds nuw i8, ptr %.0819.i241.prol, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01618.i242.prol, i64 4 ; 2 uses
  %prol.iter538.next = add i64 %prol.iter538, 1   ; 2 uses
  %prol.iter538.cmp.not = icmp eq i64 %prol.iter538.next, %xtraiter536
  br i1 %prol.iter538.cmp.not, label %.lr.ph.i239.prol.loopexit, label %.lr.ph.i239.prol, !llvm.loop !8781

.lr.ph.i239.prol.loopexit:                        ; preds = %.lr.ph.i239.prol, %.lr.ph.i239.preheader
  %.020.i240.unr = phi i64 [ %i.h, %.lr.ph.i239.preheader ], [ %i.cr, %.lr.ph.i239.prol ]
  %.0819.i241.unr = phi ptr [ %0, %.lr.ph.i239.preheader ], [ %i.cv, %.lr.ph.i239.prol ]
  %.01618.i242.unr = phi ptr [ %2, %.lr.ph.i239.preheader ], [ %i.cw, %.lr.ph.i239.prol ]
  %i.cx = icmp ult i64 %i.h, 4
  br i1 %i.cx, label %.loopexit372, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.prol.loopexit, %.lr.ph.i239
  %.020.i240 = phi i64 [ %i.dl, %.lr.ph.i239 ], [ %.020.i240.unr, %.lr.ph.i239.prol.loopexit ]
  %.0819.i241 = phi ptr [ %i.do, %.lr.ph.i239 ], [ %.0819.i241.unr, %.lr.ph.i239.prol.loopexit ] ; 5 uses
  %.01618.i242 = phi ptr [ %i.dp, %.lr.ph.i239 ], [ %.01618.i242.unr, %.lr.ph.i239.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i242) ]
  %i.cy = load i32, ptr %.0819.i241, align 4, !tbaa !318
  store i32 %i.cy, ptr %.01618.i242, align 4, !tbaa !318
  %i.cz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i241, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i242, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !318
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !318
  %i.de = add i32 %i.cz, 2
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.df = getelementptr inbounds nuw i8, ptr %.0819.i241, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.01618.i242, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !318
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !318
  %i.di = add i32 %i.cz, 3
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.0819.i241, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.01618.i242, i64 12
  %i.dl = add i64 %.020.i240, -4                  ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !318
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !318
  %i.dn = add i32 %i.cz, 4
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.do = getelementptr inbounds nuw i8, ptr %.0819.i241, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.01618.i242, i64 16
  %.not.i243.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i243.3, label %.loopexit372, label %.lr.ph.i239, !llvm.loop !152

.loopexit372:                                     ; preds = %.lr.ph.i239.prol.loopexit, %.lr.ph.i239, %bb.g
  %i.dq = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %0, i64 %i.g ; 4 uses
  %.not8.i = icmp eq ptr %i.dr, %3
  br i1 %.not8.i, label %.loopexit371, label %.lr.ph.i246.preheader

.lr.ph.i246.preheader:                            ; preds = %.loopexit372
  %i.ds = shl i64 %i.c, 1
  %i.dt = add i64 %i.b, %i.f
  %i.du = add i64 %i.dt, -4
  %i.dv = sub i64 %i.du, %i.ds                    ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyINS0_9allocatorIS3_Lj2ELj0EEEJRiEEES8_EEvT_mSB_SB_mT0_RT1_:bb.a
  %.018.i302 = phi ptr [ %i.im, %.lr.ph.i301 ], [ %3, %.lr.ph.i301.preheader ] ; 2 uses
  %.01517.i303 = phi ptr [ %i.in, %.lr.ph.i301 ], [ %i.ii, %.lr.ph.i301.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i303) ]
  %i.ij = load i32, ptr %.018.i302, align 4, !tbaa !318
  store i32 %i.ij, ptr %.01517.i303, align 4, !tbaa !318
  %i.ik = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.il = add i32 %i.ik, 1                        ; 2 uses
  store i32 %i.il, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.im = getelementptr inbounds nuw i8, ptr %.018.i302, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.01517.i303, i64 4
  %.not.i304 = icmp eq ptr %i.im, %i.a
  br i1 %.not.i304, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit310, label %.lr.ph.i301, !llvm.loop !153

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit310: ; preds = %.lr.ph.i301, %bb.n
  %i.io = phi i32 [ %i.ha, %bb.n ], [ %i.il, %.lr.ph.i301 ]
  %i.ip = load i32, ptr %5, align 4, !tbaa !247
  %i.iq = add i32 %i.io, 1
  store i32 %i.iq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 %i.ip, ptr %3, align 4, !tbaa !318
  %i.ir = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.is = add i32 %i.ir, -1
  store i32 %i.is, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.it = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.it, ptr %i.a, align 4, !tbaa !318
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229.sink.split

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229.sink.split: ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit310, %_ZN5boost9container3dtl20insert_emplace_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEJRiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit208
  %.sink432 = phi i32 [ -1, %_ZN5boost9container3dtl20insert_emplace_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEJRiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit208 ], [ 1, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit310 ]
  %i.iu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.iv = add i32 %i.iu, %.sink432
  store i32 %i.iv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i222, %.lr.ph.i256, %.lr.ph.i275, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit229.sink.split, %bb.k, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit254, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit273, %.loopexit374, %_ZN5boost9container24move_forward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRiEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 22 uses
  %i.e = add i64 %4, %1                           ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = sub nsw i64 0, %i.j
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.l, %i.g                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 10 uses
  %i.o = add i64 %i.j, %4                         ; 6 uses
  %.not = icmp ult i64 %i.n, %i.o
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.r = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.r, ptr %i.q, align 4, !tbaa !318
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not16.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.y, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.v = load i32, ptr %.018.i, align 4, !tbaa !318
  store i32 %i.v, ptr %.01517.i, align 4, !tbaa !318
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !153

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.not123 = icmp ult i64 %i.n, %i.e
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.ad, %.lr.ph.i131 ], [ %0, %bb.c ] ; 2 uses
  %.01517.i133 = phi ptr [ %i.ae, %.lr.ph.i131 ], [ %2, %bb.c ] ; 2 uses
  %i.aa = load i32, ptr %.018.i132, align 4, !tbaa !318
  store i32 %i.aa, ptr %.01517.i133, align 4, !tbaa !318
  %i.ab = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.ad, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !153

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.af = sub nuw i64 %i.n, %i.o                  ; 5 uses
  %i.ag = sub i64 0, %i.af                        ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag ; 8 uses
  %.not17.i = icmp eq i64 %i.af, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %bb.d
  %xtraiter366 = and i64 %i.af, 3                 ; 2 uses
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137.prol
  %.020.i.prol = phi i64 [ %i.ai, %.lr.ph.i137.prol ], [ %i.af, %.lr.ph.i137.preheader ]
  %.0819.i.prol = phi ptr [ %i.am, %.lr.ph.i137.prol ], [ %i.ah, %.lr.ph.i137.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.an, %.lr.ph.i137.prol ], [ %i.d, %.lr.ph.i137.preheader ] ; 3 uses
  %prol.iter368 = phi i64 [ %prol.iter368.next, %.lr.ph.i137.prol ], [ 0, %.lr.ph.i137.preheader ]
  %i.ai = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.aj = load i32, ptr %.0819.i.prol, align 4, !tbaa !318
  store i32 %i.aj, ptr %.01618.i.prol, align 4, !tbaa !318
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter368.next = add i64 %prol.iter368, 1   ; 2 uses
  %prol.iter368.cmp.not = icmp eq i64 %prol.iter368.next, %xtraiter366
  br i1 %prol.iter368.cmp.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol, !llvm.loop !8790

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.020.i.unr = phi i64 [ %i.af, %.lr.ph.i137.preheader ], [ %i.ai, %.lr.ph.i137.prol ]
  %.0819.i.unr = phi ptr [ %i.ah, %.lr.ph.i137.preheader ], [ %i.am, %.lr.ph.i137.prol ]
  %.01618.i.unr = phi ptr [ %i.d, %.lr.ph.i137.preheader ], [ %i.an, %.lr.ph.i137.prol ]
  %i.ao = sub i64 %i.o, %i.n
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.020.i = phi i64 [ %i.bd, %.lr.ph.i137 ], [ %.020.i.unr, %.lr.ph.i137.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bg, %.lr.ph.i137 ], [ %.0819.i.unr, %.lr.ph.i137.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.bh, %.lr.ph.i137 ], [ %.01618.i.unr, %.lr.ph.i137.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.aq = load i32, ptr %.0819.i, align 4, !tbaa !318
  store i32 %i.aq, ptr %.01618.i, align 4, !tbaa !318
  %i.ar = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !318
  store i32 %i.av, ptr %i.au, align 4, !tbaa !318
  %i.aw = add i32 %i.ar, 2
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !318
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !318
  %i.ba = add i32 %i.ar, 3
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.bd = add i64 %.020.i, -4                     ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !318
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !318
  %i.bf = add i32 %i.ar, 4
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i138.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i138.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %bb.d
  %.not.i139 = icmp eq ptr %i.ah, %i.d
  %.not8.i.i = icmp eq ptr %0, %i.ah
  %or.cond = or i1 %.not.i139, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bi = shl i64 %i.ag, 2
  %i.bj = add i64 %i.bi, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = sub i64 %i.bk, %i.b                     ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 92
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader364, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = shl i64 %i.ag, 2
  %7 = add i64 %i.bo, %i.h
  %8 = shl nsw i64 %1, 2
  %i.bp = add i64 %8, %i.b
  %i.bq = sub i64 %i.bp, %7
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader364, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ah, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bu ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.ah, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep301, i64 -16
  %i.bw = getelementptr inbounds i8, ptr %next.gep301, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !318
  %wide.load302 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !318
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !318
  store <4 x i32> %wide.load302, ptr %i.by, align 4, !tbaa !318
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !8791

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.preheader364

.lr.ph.i.i.preheader364:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader364, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader364 ]
  %.079.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader364 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !318
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !318
  %.not.i.i = icmp eq ptr %0, %i.ca
  br i1 %.not.i.i, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i, !llvm.loop !8792

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i140
  %storemerge4.i = phi ptr [ %i.cf, %.lr.ph.i140 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !318
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i141 = icmp eq ptr %i.cf, %2
  br i1 %.not.i141, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i140, !llvm.loop !157

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i131, %bb.c
  %.not.i144 = icmp eq i64 %1, 0
  br i1 %.not.i144, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cg = phi i64 [ %i.ch, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i145.prol = phi ptr [ %i.ck, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ch = add i64 %i.cg, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i145.prol, align 4, !tbaa !318
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i145.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !8793

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.ch, %.preheader.prol ]
  %.0.i145.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.ck, %.preheader.prol ]
  %i.cl = icmp ult i64 %1, 4
  br i1 %i.cl, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.cm = phi i64 [ %i.cu, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i145 = phi ptr [ %i.cw, %.preheader ], [ %.0.i145.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i145, align 4, !tbaa !318
  %i.cn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.co = add i32 %i.cn, -1
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i145, i64 4
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !318
  %i.cq = add i32 %i.cn, -2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i145, i64 8
  store i32 -2147483648, ptr %i.cr, align 4, !tbaa !318
  %i.cs = add i32 %i.cn, -3
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i145, i64 12
  %i.cu = add i64 %i.cm, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.ct, align 4, !tbaa !318
  %i.cv = add i32 %i.cn, -4
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i145, i64 16
  %.not3.i146.3 = icmp eq i64 %i.cu, 0
  br i1 %.not3.i146.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.preheader, !llvm.loop !158

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.n, %i.j
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i156 = icmp eq ptr %3, %i.d
  br i1 %.not16.i156, label %..loopexit_crit_edge, label %.lr.ph.i157.preheader

..loopexit_crit_edge:                             ; preds = %bb.f
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  br label %.loopexit

.lr.ph.i157.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader, %.lr.ph.i157
  %.018.i158 = phi ptr [ %i.dc, %.lr.ph.i157 ], [ %3, %.lr.ph.i157.preheader ] ; 2 uses
  %.01517.i159 = phi ptr [ %i.dd, %.lr.ph.i157 ], [ %i.cy, %.lr.ph.i157.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i159) ]
  %i.cz = load i32, ptr %.018.i158, align 4, !tbaa !318
  store i32 %i.cz, ptr %.01517.i159, align 4, !tbaa !318
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.db = add i32 %i.da, 1                        ; 2 uses
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i158, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i159, i64 4
  %.not.i160 = icmp eq ptr %i.dc, %i.d
  br i1 %.not.i160, label %.loopexit, label %.lr.ph.i157, !llvm.loop !153

.loopexit:                                        ; preds = %.lr.ph.i157, %..loopexit_crit_edge
  %i.de = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.db, %.lr.ph.i157 ]
  %.neg250 = sub i64 %i.n, %i.o
  %i.df = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.neg250 ; 7 uses
  %i.dg = load i32, ptr %5, align 4, !tbaa !247
  %i.dh = add i32 %i.de, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !318
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.dk = load i32, ptr %5, align 4, !tbaa !247
  store i32 %i.dk, ptr %i.d, align 4, !tbaa !318
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %.not.i163 = icmp eq ptr %3, %i.df
  br i1 %.not.i163, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i164 = icmp eq ptr %0, %3
  br i1 %.not8.i.i164, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader

.lr.ph.i.i165.preheader:                          ; preds = %bb.g
  %i.dn = add i64 %i.h, -4
  %i.do = sub i64 %i.dn, %i.b                     ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check341 = icmp ult i64 %i.do, 108
  br i1 %min.iters.check341, label %.lr.ph.i.i165.preheader356, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i.i165.preheader
  %i.dr = shl i64 %i.o, 2
  %9 = add i64 %i.dr, %i.h
  %i.ds = add i64 %i.m, %i.b
  %10 = shl nsw i64 %1, 2
  %i.dt = add i64 %i.ds, %10
  %i.du = sub i64 %i.dt, %9
  %diff.check339 = icmp ugt i64 %i.du, -32
  br i1 %diff.check339, label %.lr.ph.i.i165.preheader356, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.dq, 9223372036854775800  ; 3 uses
  %i.dv = mul i64 %n.vec343, -4                   ; 2 uses
  %i.dw = getelementptr i8, ptr %i.df, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %3, i64 %i.dv
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next350, %vector.body344 ] ; 2 uses
  %i.dy = mul i64 %index345, -4                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.df, i64 %i.dy ; 2 uses
  %next.gep347 = getelementptr i8, ptr %3, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.ea = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  %wide.load348 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !318
  %wide.load349 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !318
  %i.eb = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  store <4 x i32> %wide.load348, ptr %i.eb, align 4, !tbaa !318
  store <4 x i32> %wide.load349, ptr %i.ec, align 4, !tbaa !318
  %index.next350 = add nuw i64 %index345, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next350, %n.vec343
  br i1 %i.ed, label %middle.block351, label %vector.body344, !llvm.loop !8794

middle.block351:                                  ; preds = %vector.body344
  %cmp.n352 = icmp eq i64 %i.dq, %n.vec343
  br i1 %cmp.n352, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165.preheader356

.lr.ph.i.i165.preheader356:                       ; preds = %vector.memcheck338, %.lr.ph.i.i165.preheader, %middle.block351
  %.010.i.i166.ph = phi ptr [ %i.df, %vector.memcheck338 ], [ %i.df, %.lr.ph.i.i165.preheader ], [ %i.dw, %middle.block351 ]
  %.079.i.i167.ph = phi ptr [ %3, %vector.memcheck338 ], [ %3, %.lr.ph.i.i165.preheader ], [ %i.dx, %middle.block351 ]
  br label %.lr.ph.i.i165

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader356, %.lr.ph.i.i165
  %.010.i.i166 = phi ptr [ %i.ef, %.lr.ph.i.i165 ], [ %.010.i.i166.ph, %.lr.ph.i.i165.preheader356 ]
  %.079.i.i167 = phi ptr [ %i.ee, %.lr.ph.i.i165 ], [ %.079.i.i167.ph, %.lr.ph.i.i165.preheader356 ]
  %i.ee = getelementptr inbounds i8, ptr %.079.i.i167, i64 -4 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.010.i.i166, i64 -4 ; 3 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !318
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !318
  %.not.i.i168 = icmp eq ptr %0, %i.ee
  br i1 %.not.i.i168, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, label %.lr.ph.i.i165, !llvm.loop !8795

_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169: ; preds = %.lr.ph.i.i165, %middle.block351, %bb.g
  %i.eh = phi ptr [ %i.df, %bb.g ], [ %i.dw, %middle.block351 ], [ %i.ef, %.lr.ph.i.i165 ] ; 2 uses
  %.not3.i170 = icmp eq ptr %0, %i.eh
  br i1 %.not3.i170, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169, %.lr.ph.i171
  %storemerge4.i172 = phi ptr [ %i.ek, %.lr.ph.i171 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test12copyable_intEEET_S5_S5_S5_.exit169 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i172, align 4, !tbaa !318
  %i.ei = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge4.i172, i64 4 ; 2 uses
  %.not.i173 = icmp eq ptr %i.ek, %i.eh
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i171, !llvm.loop !157

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.m
  %i.el = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 6 uses
  %.not17.i183 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i183, label %.loopexit252, label %.lr.ph.i184.preheader

.lr.ph.i184.preheader:                            ; preds = %bb.h
  %xtraiter369 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %.lr.ph.i184.prol.loopexit, label %.lr.ph.i184.prol

.lr.ph.i184.prol:                                 ; preds = %.lr.ph.i184.preheader, %.lr.ph.i184.prol
  %.020.i185.prol = phi i64 [ %i.em, %.lr.ph.i184.prol ], [ %i.n, %.lr.ph.i184.preheader ]
  %.0819.i186.prol = phi ptr [ %i.eq, %.lr.ph.i184.prol ], [ %i.el, %.lr.ph.i184.preheader ] ; 2 uses
  %.01618.i187.prol = phi ptr [ %i.er, %.lr.ph.i184.prol ], [ %i.d, %.lr.ph.i184.preheader ] ; 3 uses
  %prol.iter371 = phi i64 [ %prol.iter371.next, %.lr.ph.i184.prol ], [ 0, %.lr.ph.i184.preheader ]
  %i.em = add i64 %.020.i185.prol, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i187.prol) ]
  %i.en = load i32, ptr %.0819.i186.prol, align 4, !tbaa !318
  store i32 %i.en, ptr %.01618.i187.prol, align 4, !tbaa !318
  %i.eo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.eq = getelementptr inbounds nuw i8, ptr %.0819.i186.prol, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01618.i187.prol, i64 4 ; 2 uses
  %prol.iter371.next = add i64 %prol.iter371, 1   ; 2 uses
  %prol.iter371.cmp.not = icmp eq i64 %prol.iter371.next, %xtraiter369
  br i1 %prol.iter371.cmp.not, label %.lr.ph.i184.prol.loopexit, label %.lr.ph.i184.prol, !llvm.loop !8796

.lr.ph.i184.prol.loopexit:                        ; preds = %.lr.ph.i184.prol, %.lr.ph.i184.preheader
  %.020.i185.unr = phi i64 [ %i.n, %.lr.ph.i184.preheader ], [ %i.em, %.lr.ph.i184.prol ]
  %.0819.i186.unr = phi ptr [ %i.el, %.lr.ph.i184.preheader ], [ %i.eq, %.lr.ph.i184.prol ]
  %.01618.i187.unr = phi ptr [ %i.d, %.lr.ph.i184.preheader ], [ %i.er, %.lr.ph.i184.prol ]
  %i.es = icmp ult i64 %i.n, 4
  br i1 %i.es, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.prol.loopexit, %.lr.ph.i184
  %.020.i185 = phi i64 [ %i.fg, %.lr.ph.i184 ], [ %.020.i185.unr, %.lr.ph.i184.prol.loopexit ]
  %.0819.i186 = phi ptr [ %i.fj, %.lr.ph.i184 ], [ %.0819.i186.unr, %.lr.ph.i184.prol.loopexit ] ; 5 uses
  %.01618.i187 = phi ptr [ %i.fk, %.lr.ph.i184 ], [ %.01618.i187.unr, %.lr.ph.i184.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i187) ]
  %i.et = load i32, ptr %.0819.i186, align 4, !tbaa !318
  store i32 %i.et, ptr %.01618.i187, align 4, !tbaa !318
  %i.eu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247 ; 4 uses
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.ew = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 4
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !318
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !318
  %i.ez = add i32 %i.eu, 2
  store i32 %i.ez, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 8
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !318
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !318
  %i.fd = add i32 %i.eu, 3
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fe = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 12
  %i.ff = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 12
  %i.fg = add i64 %.020.i185, -4                  ; 2 uses
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !318
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !318
  %i.fi = add i32 %i.eu, 4
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
  %i.fj = getelementptr inbounds nuw i8, ptr %.0819.i186, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %.01618.i187, i64 16
  %.not.i188.3 = icmp eq i64 %i.fg, 0
  br i1 %.not.i188.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190, label %.lr.ph.i184, !llvm.loop !152

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190: ; preds = %.lr.ph.i184, %.lr.ph.i184.prol.loopexit
  %.not8.i.i192 = icmp eq ptr %3, %i.el
  br i1 %.not8.i.i192, label %.loopexit252, label %.lr.ph.i.i193.preheader

.lr.ph.i.i193.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.fl = shl nsw i64 %1, 2
  %i.fm = shl i64 %i.b, 1
  %i.fn = shl i64 %4, 2
  %i.fo = add i64 %i.fl, %i.fm
  %i.fp = add i64 %i.fo, -4
  %i.fq = add i64 %i.h, %i.a
  %i.fr = add i64 %i.fq, %i.fn
  %i.fs = sub i64 %i.fp, %i.fr                    ; 2 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check307 = icmp ult i64 %i.fs, 28
  %diff.check305 = icmp ugt i64 %i.m, -32
  %or.cond355 = or i1 %min.iters.check307, %diff.check305
  br i1 %or.cond355, label %.lr.ph.i.i193.preheader361, label %vector.ph308

vector.ph308:                                     ; preds = %.lr.ph.i.i193.preheader
  %n.vec309 = and i64 %i.fu, 9223372036854775800  ; 3 uses
  %i.fv = mul i64 %n.vec309, -4                   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.d, i64 %i.fv   ; 2 uses
  %i.fx = getelementptr i8, ptr %i.el, i64 %i.fv
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next316, %vector.body310 ] ; 2 uses
  %i.fy = mul i64 %index311, -4                   ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.d, i64 %i.fy ; 2 uses
  %next.gep313 = getelementptr i8, ptr %i.el, i64 %i.fy ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %next.gep313, i64 -16
  %i.ga = getelementptr inbounds i8, ptr %next.gep313, i64 -32
  %wide.load314 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !318
  %wide.load315 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !318
  %i.gb = getelementptr inbounds i8, ptr %next.gep312, i64 -16
  %i.gc = getelementptr inbounds i8, ptr %next.gep312, i64 -32
  store <4 x i32> %wide.load314, ptr %i.gb, align 4, !tbaa !318
  store <4 x i32> %wide.load315, ptr %i.gc, align 4, !tbaa !318
  %index.next316 = add nuw i64 %index311, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next316, %n.vec309
  br i1 %i.gd, label %middle.block317, label %vector.body310, !llvm.loop !8797

middle.block317:                                  ; preds = %vector.body310
  %cmp.n318 = icmp eq i64 %i.fu, %n.vec309
  br i1 %cmp.n318, label %.loopexit252, label %.lr.ph.i.i193.preheader361

.lr.ph.i.i193.preheader361:                       ; preds = %.lr.ph.i.i193.preheader, %middle.block317
  %.010.i.i194.ph = phi ptr [ %i.d, %.lr.ph.i.i193.preheader ], [ %i.fw, %middle.block317 ]
  %.079.i.i195.ph = phi ptr [ %i.el, %.lr.ph.i.i193.preheader ], [ %i.fx, %middle.block317 ]
  br label %.lr.ph.i.i193

.lr.ph.i.i193:                                    ; preds = %.lr.ph.i.i193.preheader361, %.lr.ph.i.i193
  %.010.i.i194 = phi ptr [ %i.gf, %.lr.ph.i.i193 ], [ %.010.i.i194.ph, %.lr.ph.i.i193.preheader361 ]
  %.079.i.i195 = phi ptr [ %i.ge, %.lr.ph.i.i193 ], [ %.079.i.i195.ph, %.lr.ph.i.i193.preheader361 ]
  %i.ge = getelementptr inbounds i8, ptr %.079.i.i195, i64 -4 ; 3 uses
  %i.gf = getelementptr inbounds i8, ptr %.010.i.i194, i64 -4 ; 3 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !318
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !318
  %.not.i.i196 = icmp eq ptr %3, %i.ge
  br i1 %.not.i.i196, label %.loopexit252, label %.lr.ph.i.i193, !llvm.loop !8798

.loopexit252:                                     ; preds = %.lr.ph.i.i193, %middle.block317, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190
  %i.gh = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit190 ], [ %i.fw, %middle.block317 ], [ %i.gf, %.lr.ph.i.i193 ] ; 2 uses
  %i.gi = ptrtoaddr ptr %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.c ; 7 uses
  %i.gk = load i32, ptr %5, align 4, !tbaa !247
  %i.gl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !247
end_hunk_19
