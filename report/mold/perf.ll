Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/perf?download=true
inline.NumInlined: 1228
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt3_V28__rotateIN3tbb6detail2d115vector_iteratorINS3_17concurrent_vectorIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS8_EEEES8_EEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.v, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  store ptr %i.y, ptr %i.w, align 8, !tbaa !86
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.z = sub nsw i64 %i.s, %i.e                   ; 2 uses
  %i.aa = sub nsw i64 %i.g, %i.e                  ; 3 uses
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = select i1 %.fr225, i1 %i.h, i1 false
  %.pre216 = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  br i1 %i.ae, label %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %.fr225, label %.lr.ph.i, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us
  %.sroa.3143.0.us = phi i64 [ %i.bh, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %i.g, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8.0.us = phi ptr [ %.sroa.8.1.us, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %.pre216, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.3153.0.us = phi i64 [ %i.bb, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8156.0.us = phi ptr [ %.sroa.8156.0.us.be, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %i.ag, %.lr.ph.i.preheader ] ; 3 uses
  %i.aj = icmp eq ptr %.sroa.8156.0.us, null      ; 2 uses
  br i1 %i.aj, label %bb.g, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us

bb.g:                                             ; preds = %.lr.ph.i.us
  %i.ak = or i64 %.sroa.3153.0.us, 1
  %i.al = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = load atomic ptr, ptr %i.ah acquire, align 8, !noalias !333
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !333
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.3153.0.us
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us: ; preds = %bb.g, %.lr.ph.i.us
  %.0.i.i.i.us = phi ptr [ %i.aq, %bb.g ], [ %.sroa.8156.0.us, %.lr.ph.i.us ] ; 2 uses
  %i.ar = icmp eq ptr %.sroa.8.0.us, null         ; 2 uses
  br i1 %i.ar, label %bb.h, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us

bb.h:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us
  %i.as = or i64 %.sroa.3143.0.us, 1
  %i.at = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = xor i64 %i.at, 63
  %i.av = load atomic ptr, ptr %i.ai acquire, align 8, !noalias !333
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8, !noalias !333
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.3143.0.us
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us: ; preds = %bb.h, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us
  %.0.i1.i.i.us = phi ptr [ %i.ay, %bb.h ], [ %.sroa.8.0.us, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us ] ; 2 uses
  %i.az = load ptr, ptr %.0.i.i.i.us, align 8, !tbaa !76, !noalias !333
  %i.ba = load ptr, ptr %.0.i1.i.i.us, align 8, !tbaa !76, !noalias !333
  store ptr %i.ba, ptr %.0.i.i.i.us, align 8, !tbaa !76, !noalias !333
  store ptr %i.az, ptr %.0.i1.i.i.us, align 8, !tbaa !76, !noalias !333
  %i.bb = add i64 %.sroa.3153.0.us, 1             ; 2 uses
  %i.bc = add i64 %.sroa.3153.0.us, -1
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.8156.0.us, i64 8
  %i.bg = select i1 %i.aj, i1 true, i1 %i.be
  %i.bh = add i64 %.sroa.3143.0.us, 1             ; 2 uses
  %i.bi = add i64 %.sroa.3143.0.us, -1
  %i.bj = and i64 %i.bi, %i.bh
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us, i64 8
  %i.bm = select i1 %i.ar, i1 true, i1 %i.bk
  %.sroa.8.1.us = select i1 %i.bm, ptr null, ptr %i.bl
  %.sroa.8156.0.us.be = select i1 %i.bg, ptr null, ptr %i.bf
  br label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i
  %.sroa.3143.0 = phi i64 [ %i.cl, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %i.g, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %.pre216, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.3153.0 = phi i64 [ %i.cf, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8156.0 = phi ptr [ %.sroa.8156.1, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %i.ag, %.lr.ph.i.preheader ] ; 3 uses
  %i.bn = icmp eq ptr %.sroa.8156.0, null         ; 2 uses
  br i1 %i.bn, label %bb.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bo = or i64 %.sroa.3153.0, 1
  %i.bp = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = load atomic ptr, ptr %i.ah acquire, align 8, !noalias !333
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8, !noalias !333
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.3153.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i: ; preds = %bb.i, %.lr.ph.i
  %.0.i.i.i = phi ptr [ %i.bu, %bb.i ], [ %.sroa.8156.0, %.lr.ph.i ] ; 2 uses
  %i.bv = icmp eq ptr %.sroa.8.0, null            ; 2 uses
  br i1 %i.bv, label %bb.j, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i

bb.j:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i
  %i.bw = or i64 %.sroa.3143.0, 1
  %i.bx = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = xor i64 %i.bx, 63
  %i.bz = load atomic ptr, ptr %i.ai acquire, align 8, !noalias !333
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load atomic ptr, ptr %i.ca acquire, align 8, !noalias !333
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.sroa.3143.0
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i: ; preds = %bb.j, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i
  %.0.i1.i.i = phi ptr [ %i.cc, %bb.j ], [ %.sroa.8.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i ] ; 2 uses
  %i.cd = load ptr, ptr %.0.i.i.i, align 8, !tbaa !76, !noalias !333
  %i.ce = load ptr, ptr %.0.i1.i.i, align 8, !tbaa !76, !noalias !333
  store ptr %i.ce, ptr %.0.i.i.i, align 8, !tbaa !76, !noalias !333
  store ptr %i.cd, ptr %.0.i1.i.i, align 8, !tbaa !76, !noalias !333
  %i.cf = add i64 %.sroa.3153.0, 1                ; 3 uses
  %i.cg = add i64 %.sroa.3153.0, -1
  %i.ch = and i64 %i.cg, %i.cf
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.8156.0, i64 8
  %i.ck = select i1 %i.bn, i1 true, i1 %i.ci
  %.sroa.8156.1 = select i1 %i.ck, ptr null, ptr %i.cj
  %i.cl = add i64 %.sroa.3143.0, 1                ; 2 uses
  %i.cm = add i64 %.sroa.3143.0, -1
  %i.cn = and i64 %i.cm, %i.cl
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8
  %i.cq = select i1 %i.bv, i1 true, i1 %i.co
  %.sroa.8.1 = select i1 %i.cq, ptr null, ptr %i.cp
  %.not202 = icmp eq i64 %i.cf, %i.g
  br i1 %.not202, label %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !307

_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit: ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !84
  %.pre214 = load i64, ptr %i.f, align 8, !tbaa !85
  %.pre215 = load ptr, ptr %i.ad, align 8, !tbaa !86
  br label %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit

_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit: ; preds = %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit, %bb.f
  %i.cr = phi ptr [ %.pre215, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit ], [ %.pre216, %bb.f ]
  %i.cs = phi i64 [ %.pre214, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit ], [ %i.e, %bb.f ]
  %i.ct = phi ptr [ %.pre, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit ], [ %i.b, %bb.f ]
  store ptr %i.ct, ptr %0, align 8, !tbaa !84
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !85
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cr, ptr %i.cv, align 8, !tbaa !86
  br label %.critedge

bb.k:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !86
  %i.cy = sub i64 %i.e, %i.g
  %i.cz = add i64 %i.cy, %i.s
  store ptr %i.a, ptr %0, align 8, !tbaa !84, !alias.scope !334
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !85, !alias.scope !334
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.db, align 8, !tbaa !86, !alias.scope !334
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 12 uses
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %bb.k
  %.sroa.18.0 = phi i64 [ %i.e, %bb.k ], [ %.sroa.18.0.be, %.backedge ] ; 13 uses
  %.sroa.38.0 = phi ptr [ %i.cx, %bb.k ], [ %.sroa.38.0.be, %.backedge ] ; 7 uses
  %.0179 = phi i64 [ %i.aa, %bb.k ], [ %.0179.be, %.backedge ] ; 9 uses
  %.0178 = phi i64 [ %i.z, %bb.k ], [ %.0178.be, %.backedge ] ; 6 uses
  %i.dd = sub nsw i64 %.0178, %.0179              ; 7 uses
  %i.de = icmp slt i64 %.0179, %i.dd
  br i1 %i.de, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.df = icmp eq i64 %.0179, 1
  br i1 %i.df, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dg = icmp eq ptr %.sroa.38.0, null
  br i1 %i.dg, label %bb.o, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit

bb.o:                                             ; preds = %bb.n
  %i.dh = or i64 %.sroa.18.0, 1
  %i.di = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = xor i64 %i.di, 63
  %i.dk = load atomic ptr, ptr %i.dc acquire, align 8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load atomic ptr, ptr %i.dl acquire, align 8
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.sroa.18.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit: ; preds = %bb.n, %bb.o
  %.0.i = phi ptr [ %i.dn, %bb.o ], [ %.sroa.38.0, %bb.n ]
  %i.do = load ptr, ptr %.0.i, align 8, !tbaa !76
  %4 = add i64 %.0178, %.sroa.18.0
  %5 = add i64 %.0178, -1                         ; 2 uses
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.in = phi i64 [ %.sroa.2.0.i.i.i.i.a, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %.sroa.18.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ]
  %.sroa.8.0.i.i.i.i = phi ptr [ %.sroa.8.1.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %.sroa.38.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ] ; 3 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ef, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %.sroa.18.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ] ; 4 uses
  %.08.i.i.i.i.i.a = phi i64 [ %7, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %5, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ] ; 2 uses
  %.sroa.2.0.i.i.i.i.a = add i64 %.sroa.2.0.i.i.i.i.in, 1 ; 3 uses
  %i.dp = or i64 %.sroa.2.0.i.i.i.i.a, 1
  %i.dq = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = xor i64 %i.dq, 63
  %i.ds = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !335
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load atomic ptr, ptr %i.dt acquire, align 8, !noalias !335
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.sroa.2.0.i.i.i.i.a
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !76, !noalias !335
  %i.dx = icmp eq ptr %.sroa.8.0.i.i.i.i, null    ; 2 uses
  br i1 %i.dx, label %bb.p, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i

bb.p:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i
  %i.dy = or i64 %.sroa.3.0.i.i.i.i, 1
  %i.dz = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = xor i64 %i.dz, 63
  %i.eb = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !335
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !335
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.sroa.3.0.i.i.i.i
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i: ; preds = %bb.p, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i
  %.0.i2.i.i.i.i.i = phi ptr [ %i.ee, %bb.p ], [ %.sroa.8.0.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i ]
  store ptr %i.dw, ptr %.0.i2.i.i.i.i.i, align 8, !tbaa !76, !noalias !335
  %i.ef = add i64 %.sroa.3.0.i.i.i.i, 1           ; 2 uses
  %i.eg = add i64 %.sroa.3.0.i.i.i.i, -1
  %i.eh = and i64 %i.eg, %i.ef
  %i.ei = icmp eq i64 %i.eh, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i.i.i, i64 8
  %i.ek = select i1 %i.dx, i1 true, i1 %i.ei
  %.sroa.8.1.i.i.i.i = select i1 %i.ek, ptr null, ptr %i.ej
  %7 = add nsw i64 %.08.i.i.i.i.i.a, -1
  %i.el = icmp sgt i64 %.08.i.i.i.i.i.a, 1
  br i1 %i.el, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16, !llvm.loop !9

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit
  %i.em = add i64 %4, -1                          ; 2 uses
  %i.en = or i64 %i.em, 1
  %i.eo = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = xor i64 %i.eo, 63
  %i.eq = load atomic ptr, ptr %i.dc acquire, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load atomic ptr, ptr %i.er acquire, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.em
  store ptr %i.do, ptr %i.et, align 8, !tbaa !76
  br label %.critedge

bb.q:                                             ; preds = %bb.m
  %i.eu = icmp sgt i64 %i.dd, 0
  br i1 %i.eu, label %.lr.ph.preheader, label %._crit_edge199

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ev = add i64 %.0179, %.sroa.18.0
  br label %.lr.ph

._crit_edge199:                                   ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit, %bb.q
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0, %bb.q ], [ %i.fo, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ]
  %.sroa.38.1.lcssa = phi ptr [ %.sroa.38.0, %bb.q ], [ %.sroa.38.4, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ]
  %i.ew = srem i64 %.0178, %.0179                 ; 2 uses
  %.not12 = icmp eq i64 %i.ew, 0
  br i1 %.not12, label %.critedge, label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit
  %.09197 = phi i64 [ %i.fv, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.38.1196 = phi ptr [ %.sroa.38.4, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ %.sroa.38.0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.18.1195 = phi i64 [ %i.fo, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ %.sroa.18.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.5.0193 = phi i64 [ %i.fu, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ %i.ev, %.lr.ph.preheader ] ; 3 uses
  %i.ex = icmp eq ptr %.sroa.38.1196, null        ; 2 uses
  br i1 %i.ex, label %bb.r, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ey = or i64 %.sroa.18.1195, 1
  %i.ez = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 true)
  %i.fa = xor i64 %i.ez, 63
  %i.fb = load atomic ptr, ptr %i.dc acquire, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = load atomic ptr, ptr %i.fc acquire, align 8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.sroa.18.1195
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit: ; preds = %bb.r, %.lr.ph
  %.0.i.i = phi ptr [ %i.fe, %bb.r ], [ %.sroa.38.1196, %.lr.ph ] ; 2 uses
  %i.ff = or i64 %.sroa.5.0193, 1
  %i.fg = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ff, i1 true)
  %i.fh = xor i64 %i.fg, 63
  %i.fi = load atomic ptr, ptr %i.dc acquire, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load atomic ptr, ptr %i.fj acquire, align 8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.sroa.5.0193 ; 2 uses
  %i.fm = load ptr, ptr %.0.i.i, align 8, !tbaa !76
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !76
  store ptr %i.fn, ptr %.0.i.i, align 8, !tbaa !76
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !76
  %i.fo = add i64 %.sroa.18.1195, 1               ; 3 uses
  %i.fp = add i64 %.sroa.18.1195, -1
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = icmp eq i64 %i.fq, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.38.1196, i64 8
  %i.ft = select i1 %i.ex, i1 true, i1 %i.fr
  %.sroa.38.4 = select i1 %i.ft, ptr null, ptr %i.fs ; 2 uses
  %i.fu = add i64 %.sroa.5.0193, 1
  %i.fv = add nuw nsw i64 %.09197, 1              ; 2 uses
  %exitcond211.not = icmp eq i64 %i.fv, %i.dd
  br i1 %exitcond211.not, label %._crit_edge199, label %.lr.ph, !llvm.loop !320

bb.s:                                             ; preds = %._crit_edge199
  %i.fw = sub nsw i64 %.0179, %i.ew
  br label %.backedge

bb.t:                                             ; preds = %bb.l
  %i.fx = icmp eq i64 %i.dd, 1
  %i.fy = add i64 %.0178, %.sroa.18.0             ; 4 uses
  br i1 %i.fx, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22, label %bb.v

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22: ; preds = %bb.t
  %i.fz = add i64 %i.fy, -1                       ; 4 uses
  %i.ga = or i64 %i.fz, 1
  %i.gb = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ga, i1 true)
  %i.gc = xor i64 %i.gb, 63
  %i.gd = load atomic ptr, ptr %i.dc acquire, align 8
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gc
  %i.gf = load atomic ptr, ptr %i.ge acquire, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.fz
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !76
  %i.gi = sub nsw i64 %i.fz, %.sroa.18.0          ; 2 uses
  %i.gj = icmp sgt i64 %i.gi, 0
  br i1 %i.gj, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i
  %.sroa.2.0.i.i.i.i25 = phi i64 [ %i.gk, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i ], [ %i.fz, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22 ]
  %.sroa.3.0.i.i.i.i27 = phi i64 [ %i.gt, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i ], [ %i.fy, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22 ]
  %.08.i.i.i.i.i28 = phi i64 [ %i.hb, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i ], [ %i.gi, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22 ] ; 2 uses
  %i.gk = add i64 %.sroa.2.0.i.i.i.i25, -1        ; 3 uses
  %i.gl = or i64 %i.gk, 1
  %i.gm = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gl, i1 true)
  %i.gn = xor i64 %i.gm, 63
  %i.go = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !336
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load atomic ptr, ptr %i.gp acquire, align 8, !noalias !336
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gk
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !76, !noalias !336
  %i.gt = add i64 %.sroa.3.0.i.i.i.i27, -1        ; 3 uses
  %i.gu = or i64 %i.gt, 1
  %i.gv = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gu, i1 true)
  %i.gw = xor i64 %i.gv, 63
  %i.gx = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !336
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load atomic ptr, ptr %i.gy acquire, align 8, !noalias !336
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gt
  store ptr %i.gs, ptr %i.ha, align 8, !tbaa !76, !noalias !336
  %i.hb = add nsw i64 %.08.i.i.i.i.i28, -1
  %i.hc = icmp samesign ugt i64 %.08.i.i.i.i.i28, 1
  br i1 %i.hc, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit, !llvm.loop !5

_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22
  %i.hd = icmp eq ptr %.sroa.38.0, null
  br i1 %i.hd, label %bb.u, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33

bb.u:                                             ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit
  %i.he = or i64 %.sroa.18.0, 1
  %i.hf = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.he, i1 true)
  %i.hg = xor i64 %i.hf, 63
  %i.hh = load atomic ptr, ptr %i.dc acquire, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = load atomic ptr, ptr %i.hi acquire, align 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.sroa.18.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33: ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit, %bb.u
  %.0.i32 = phi ptr [ %i.hk, %bb.u ], [ %.sroa.38.0, %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit ]
  store ptr %i.gh, ptr %.0.i32, align 8, !tbaa !76
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.hl = sub i64 %i.fy, %i.dd                    ; 2 uses
  %i.hm = icmp sgt i64 %.0179, 0
  br i1 %i.hm, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44, label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44, %bb.v
  %.sroa.18.2.lcssa = phi i64 [ %i.hl, %bb.v ], [ %.sroa.18.0, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ]
  %i.hn = srem i64 %.0178, %i.dd                  ; 2 uses
  %.not = icmp eq i64 %i.hn, 0
  br i1 %.not, label %.critedge, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.s
  %.sroa.18.0.be = phi i64 [ %.sroa.18.1.lcssa, %bb.s ], [ %.sroa.18.2.lcssa, %._crit_edge ]
  %.sroa.38.0.be = phi ptr [ %.sroa.38.1.lcssa, %bb.s ], [ null, %._crit_edge ]
  %.0179.be = phi i64 [ %i.fw, %bb.s ], [ %i.hn, %._crit_edge ]
  %.0178.be = phi i64 [ %.0179, %bb.s ], [ %i.dd, %._crit_edge ]
  br label %bb.l, !llvm.loop !331

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44: ; preds = %bb.v, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44
  %.0191 = phi i64 [ %i.ig, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ], [ 0, %bb.v ]
  %.sroa.652.0190 = phi i64 [ %i.hp, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ], [ %i.fy, %bb.v ]
  %.sroa.18.2187 = phi i64 [ %i.ho, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ], [ %i.hl, %bb.v ]
  %i.ho = add i64 %.sroa.18.2187, -1              ; 3 uses
  %i.hp = add i64 %.sroa.652.0190, -1             ; 3 uses
  %i.hq = or i64 %i.ho, 1
  %i.hr = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hq, i1 true)
  %i.hs = xor i64 %i.hr, 63
  %i.ht = load atomic ptr, ptr %i.dc acquire, align 8
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load atomic ptr, ptr %i.hu acquire, align 8
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ho ; 2 uses
  %i.hx = or i64 %i.hp, 1
  %i.hy = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hx, i1 true)
  %i.hz = xor i64 %i.hy, 63
  %i.ia = load atomic ptr, ptr %i.dc acquire, align 8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.hz
  %i.ic = load atomic ptr, ptr %i.ib acquire, align 8
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.hp ; 2 uses
  %i.ie = load ptr, ptr %i.hw, align 8, !tbaa !76
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !76
  store ptr %i.if, ptr %i.hw, align 8, !tbaa !76
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !76
  %i.ig = add nuw nsw i64 %.0191, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ig, %.0179
  br i1 %exitcond.not, label %._crit_edge, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44, !llvm.loop !332

.critedge:                                        ; preds = %._crit_edge, %._crit_edge199, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EElPS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSG_4lessEMS6_lEEDaRT_RT0_EUlOSL_OSN_E_EEEvSL_SL_SL_SN_SN_T1_SN_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 7 uses
  %12 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %16 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
  %17 = alloca %"class.tbb::detail::d1::vector_iterator", align 8 ; 4 uses
end_hunk_0
