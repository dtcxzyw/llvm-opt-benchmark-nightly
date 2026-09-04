Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/perf?download=true
inline.NumInlined: 1228
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt3_V28__rotateIN3tbb6detail2d115vector_iteratorINS3_17concurrent_vectorIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS8_EEEES8_EEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
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
  %i.ae = icmp ne ptr %i.a, %i.b
  %.fr = freeze i1 %i.ae                          ; 2 uses
  %i.af = icmp ne i64 %i.e, %i.g
  %.not3.i8.i = select i1 %.fr, i1 true, i1 %i.af
  %.pre214 = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  br i1 %.not3.i8.i, label %.lr.ph.i.preheader, label %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %.fr, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us
  %.sroa.3143.0.us = phi i64 [ %i.bi, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %i.g, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8.0.us = phi ptr [ %.sroa.8.1.us, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %.pre214, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.3153.0.us = phi i64 [ %i.bc, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8156.0.us = phi ptr [ %.sroa.8156.0.us.be, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us ], [ %i.ah, %.lr.ph.i.preheader ] ; 3 uses
  %i.ak = icmp eq ptr %.sroa.8156.0.us, null      ; 2 uses
  br i1 %i.ak, label %bb.g, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us

bb.g:                                             ; preds = %.lr.ph.i.us
  %i.al = or i64 %.sroa.3153.0.us, 1
  %i.am = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = xor i64 %i.am, 63
  %i.ao = load atomic ptr, ptr %i.ai acquire, align 8, !noalias !333
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8, !noalias !333
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.sroa.3153.0.us
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us: ; preds = %bb.g, %.lr.ph.i.us
  %.0.i.i.i.us = phi ptr [ %i.ar, %bb.g ], [ %.sroa.8156.0.us, %.lr.ph.i.us ] ; 2 uses
  %i.as = icmp eq ptr %.sroa.8.0.us, null         ; 2 uses
  br i1 %i.as, label %bb.h, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us

bb.h:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us
  %i.at = or i64 %.sroa.3143.0.us, 1
  %i.au = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = xor i64 %i.au, 63
  %i.aw = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !333
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8, !noalias !333
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.3143.0.us
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i.us: ; preds = %bb.h, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us
  %.0.i1.i.i.us = phi ptr [ %i.az, %bb.h ], [ %.sroa.8.0.us, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.us ] ; 2 uses
  %i.ba = load ptr, ptr %.0.i.i.i.us, align 8, !tbaa !76, !noalias !333
  %i.bb = load ptr, ptr %.0.i1.i.i.us, align 8, !tbaa !76, !noalias !333
  store ptr %i.bb, ptr %.0.i.i.i.us, align 8, !tbaa !76, !noalias !333
  store ptr %i.ba, ptr %.0.i1.i.i.us, align 8, !tbaa !76, !noalias !333
  %i.bc = add i64 %.sroa.3153.0.us, 1             ; 2 uses
  %i.bd = add i64 %.sroa.3153.0.us, -1
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.8156.0.us, i64 8
  %i.bh = select i1 %i.ak, i1 true, i1 %i.bf
  %i.bi = add i64 %.sroa.3143.0.us, 1             ; 2 uses
  %i.bj = add i64 %.sroa.3143.0.us, -1
  %i.bk = and i64 %i.bj, %i.bi
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.8.0.us, i64 8
  %i.bn = select i1 %i.as, i1 true, i1 %i.bl
  %.sroa.8.1.us = select i1 %i.bn, ptr null, ptr %i.bm
  %.sroa.8156.0.us.be = select i1 %i.bh, ptr null, ptr %i.bg
  br label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i
  %.sroa.3143.0 = phi i64 [ %i.cm, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %i.g, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %.pre214, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.3153.0 = phi i64 [ %i.cg, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.8156.0 = phi ptr [ %.sroa.8156.1, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i ], [ %i.ah, %.lr.ph.i.preheader ] ; 3 uses
  %i.bo = icmp eq ptr %.sroa.8156.0, null         ; 2 uses
  br i1 %i.bo, label %bb.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bp = or i64 %.sroa.3153.0, 1
  %i.bq = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63
  %i.bs = load atomic ptr, ptr %i.ai acquire, align 8, !noalias !333
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load atomic ptr, ptr %i.bt acquire, align 8, !noalias !333
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.3153.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i: ; preds = %bb.i, %.lr.ph.i
  %.0.i.i.i = phi ptr [ %i.bv, %bb.i ], [ %.sroa.8156.0, %.lr.ph.i ] ; 2 uses
  %i.bw = icmp eq ptr %.sroa.8.0, null            ; 2 uses
  br i1 %i.bw, label %bb.j, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i

bb.j:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i
  %i.bx = or i64 %.sroa.3143.0, 1
  %i.by = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = xor i64 %i.by, 63
  %i.ca = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !333
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8, !noalias !333
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.3143.0
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i: ; preds = %bb.j, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i
  %.0.i1.i.i = phi ptr [ %i.cd, %bb.j ], [ %.sroa.8.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i ] ; 2 uses
  %i.ce = load ptr, ptr %.0.i.i.i, align 8, !tbaa !76, !noalias !333
  %i.cf = load ptr, ptr %.0.i1.i.i, align 8, !tbaa !76, !noalias !333
  store ptr %i.cf, ptr %.0.i.i.i, align 8, !tbaa !76, !noalias !333
  store ptr %i.ce, ptr %.0.i1.i.i, align 8, !tbaa !76, !noalias !333
  %i.cg = add i64 %.sroa.3153.0, 1                ; 3 uses
  %i.ch = add i64 %.sroa.3153.0, -1
  %i.ci = and i64 %i.ch, %i.cg
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.8156.0, i64 8
  %i.cl = select i1 %i.bo, i1 true, i1 %i.cj
  %.sroa.8156.1 = select i1 %i.cl, ptr null, ptr %i.ck
  %i.cm = add i64 %.sroa.3143.0, 1                ; 2 uses
  %i.cn = add i64 %.sroa.3143.0, -1
  %i.co = and i64 %i.cn, %i.cm
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8
  %i.cr = select i1 %i.bw, i1 true, i1 %i.cp
  %.sroa.8.1 = select i1 %i.cr, ptr null, ptr %i.cq
  %.not202 = icmp eq i64 %i.cg, %i.g
  br i1 %.not202, label %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit, label %.lr.ph.i, !llvm.loop !307

_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit: ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !84
  %.pre212 = load i64, ptr %i.f, align 8, !tbaa !85
  %.pre213 = load ptr, ptr %i.ad, align 8, !tbaa !86
  br label %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit

_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit: ; preds = %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit, %bb.f
  %i.cs = phi ptr [ %.pre213, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit ], [ %.pre214, %bb.f ]
  %i.ct = phi i64 [ %.pre212, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit ], [ %i.e, %bb.f ]
  %i.cu = phi ptr [ %.pre, %_ZSt11swap_rangesIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit.loopexit ], [ %i.b, %bb.f ]
  store ptr %i.cu, ptr %0, align 8, !tbaa !84
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !85
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cs, ptr %i.cw, align 8, !tbaa !86
  br label %.critedge

bb.k:                                             ; preds = %bb.e
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !86
  %i.cz = sub i64 %i.e, %i.g
  %i.da = add i64 %i.cz, %i.s
  store ptr %i.a, ptr %0, align 8, !tbaa !84, !alias.scope !334
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !85, !alias.scope !334
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.dc, align 8, !tbaa !86, !alias.scope !334
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 12 uses
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %bb.k
  %.sroa.18.0 = phi i64 [ %i.e, %bb.k ], [ %.sroa.18.0.be, %.backedge ] ; 13 uses
  %.sroa.38.0 = phi ptr [ %i.cy, %bb.k ], [ %.sroa.38.0.be, %.backedge ] ; 7 uses
  %.0179 = phi i64 [ %i.aa, %bb.k ], [ %.0179.be, %.backedge ] ; 9 uses
  %.0178 = phi i64 [ %i.z, %bb.k ], [ %.0178.be, %.backedge ] ; 6 uses
  %i.de = sub nsw i64 %.0178, %.0179              ; 7 uses
  %i.df = icmp slt i64 %.0179, %i.de
  br i1 %i.df, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.dg = icmp eq i64 %.0179, 1
  br i1 %i.dg, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dh = icmp eq ptr %.sroa.38.0, null
  br i1 %i.dh, label %bb.o, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit

bb.o:                                             ; preds = %bb.n
  %i.di = or i64 %.sroa.18.0, 1
  %i.dj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = xor i64 %i.dj, 63
  %i.dl = load atomic ptr, ptr %i.dd acquire, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load atomic ptr, ptr %i.dm acquire, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.18.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit: ; preds = %bb.n, %bb.o
  %.0.i = phi ptr [ %i.do, %bb.o ], [ %.sroa.38.0, %bb.n ]
  %i.dp = load ptr, ptr %.0.i, align 8, !tbaa !76
  %4 = add i64 %.0178, %.sroa.18.0
  %5 = add i64 %.0178, -1                         ; 2 uses
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.in = phi i64 [ %.sroa.2.0.i.i.i.i.a, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %.sroa.18.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ]
  %.sroa.8.0.i.i.i.i = phi ptr [ %.sroa.8.1.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %.sroa.38.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ] ; 3 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.eg, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %.sroa.18.0, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ] ; 4 uses
  %.08.i.i.i.i.i.a = phi i64 [ %7, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i ], [ %5, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit ] ; 2 uses
  %.sroa.2.0.i.i.i.i.a = add i64 %.sroa.2.0.i.i.i.i.in, 1 ; 3 uses
  %i.dq = or i64 %.sroa.2.0.i.i.i.i.a, 1
  %i.dr = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = xor i64 %i.dr, 63
  %i.dt = load atomic ptr, ptr %i.dd acquire, align 8, !noalias !335
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load atomic ptr, ptr %i.du acquire, align 8, !noalias !335
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.sroa.2.0.i.i.i.i.a
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !76, !noalias !335
  %i.dy = icmp eq ptr %.sroa.8.0.i.i.i.i, null    ; 2 uses
  br i1 %i.dy, label %bb.p, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i

bb.p:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i
  %i.dz = or i64 %.sroa.3.0.i.i.i.i, 1
  %i.ea = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = xor i64 %i.ea, 63
  %i.ec = load atomic ptr, ptr %i.dd acquire, align 8, !noalias !335
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load atomic ptr, ptr %i.ed acquire, align 8, !noalias !335
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.sroa.3.0.i.i.i.i
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i: ; preds = %bb.p, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i
  %.0.i2.i.i.i.i.i = phi ptr [ %i.ef, %bb.p ], [ %.sroa.8.0.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i ]
  store ptr %i.dx, ptr %.0.i2.i.i.i.i.i, align 8, !tbaa !76, !noalias !335
  %i.eg = add i64 %.sroa.3.0.i.i.i.i, 1           ; 2 uses
  %i.eh = add i64 %.sroa.3.0.i.i.i.i, -1
  %i.ei = and i64 %i.eh, %i.eg
  %i.ej = icmp eq i64 %i.ei, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i.i.i, i64 8
  %i.el = select i1 %i.dy, i1 true, i1 %i.ej
  %.sroa.8.1.i.i.i.i = select i1 %i.el, ptr null, ptr %i.ek
  %7 = add nsw i64 %.08.i.i.i.i.i.a, -1
  %i.em = icmp sgt i64 %.08.i.i.i.i.i.a, 1
  br i1 %i.em, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit.i.i.i.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16, !llvm.loop !9

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit16: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit3.i.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit
  %i.en = add i64 %4, -1                          ; 2 uses
  %i.eo = or i64 %i.en, 1
  %i.ep = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eo, i1 true)
  %i.eq = xor i64 %i.ep, 63
  %i.er = load atomic ptr, ptr %i.dd acquire, align 8
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = load atomic ptr, ptr %i.es acquire, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.en
  store ptr %i.dp, ptr %i.eu, align 8, !tbaa !76
  br label %.critedge

bb.q:                                             ; preds = %bb.m
  %i.ev = icmp sgt i64 %i.de, 0
  br i1 %i.ev, label %.lr.ph.preheader, label %._crit_edge199

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ew = add i64 %.0179, %.sroa.18.0
  br label %.lr.ph

._crit_edge199:                                   ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit, %bb.q
  %.sroa.18.1.lcssa = phi i64 [ %.sroa.18.0, %bb.q ], [ %i.fp, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ]
  %.sroa.38.1.lcssa = phi ptr [ %.sroa.38.0, %bb.q ], [ %.sroa.38.4, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ]
  %i.ex = srem i64 %.0178, %.0179                 ; 2 uses
  %.not12 = icmp eq i64 %i.ex, 0
  br i1 %.not12, label %.critedge, label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit
  %.09197 = phi i64 [ %i.fw, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.38.1196 = phi ptr [ %.sroa.38.4, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ %.sroa.38.0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.18.1195 = phi i64 [ %i.fp, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ %.sroa.18.0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.5.0193 = phi i64 [ %i.fv, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit ], [ %i.ew, %.lr.ph.preheader ] ; 3 uses
  %i.ey = icmp eq ptr %.sroa.38.1196, null        ; 2 uses
  br i1 %i.ey, label %bb.r, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ez = or i64 %.sroa.18.1195, 1
  %i.fa = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true)
  %i.fb = xor i64 %i.fa, 63
  %i.fc = load atomic ptr, ptr %i.dd acquire, align 8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load atomic ptr, ptr %i.fd acquire, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.sroa.18.1195
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit: ; preds = %bb.r, %.lr.ph
  %.0.i.i = phi ptr [ %i.ff, %bb.r ], [ %.sroa.38.1196, %.lr.ph ] ; 2 uses
  %i.fg = or i64 %.sroa.5.0193, 1
  %i.fh = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fg, i1 true)
  %i.fi = xor i64 %i.fh, 63
  %i.fj = load atomic ptr, ptr %i.dd acquire, align 8
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load atomic ptr, ptr %i.fk acquire, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.sroa.5.0193 ; 2 uses
  %i.fn = load ptr, ptr %.0.i.i, align 8, !tbaa !76
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !76
  store ptr %i.fo, ptr %.0.i.i, align 8, !tbaa !76
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !76
  %i.fp = add i64 %.sroa.18.1195, 1               ; 3 uses
  %i.fq = add i64 %.sroa.18.1195, -1
  %i.fr = and i64 %i.fq, %i.fp
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.38.1196, i64 8
  %i.fu = select i1 %i.ey, i1 true, i1 %i.fs
  %.sroa.38.4 = select i1 %i.fu, ptr null, ptr %i.ft ; 2 uses
  %i.fv = add i64 %.sroa.5.0193, 1
  %i.fw = add nuw nsw i64 %.09197, 1              ; 2 uses
  %exitcond211.not = icmp eq i64 %i.fw, %i.de
  br i1 %exitcond211.not, label %._crit_edge199, label %.lr.ph, !llvm.loop !320

bb.s:                                             ; preds = %._crit_edge199
  %i.fx = sub nsw i64 %.0179, %i.ex
  br label %.backedge

bb.t:                                             ; preds = %bb.l
  %i.fy = icmp eq i64 %i.de, 1
  %i.fz = add i64 %.0178, %.sroa.18.0             ; 4 uses
  br i1 %i.fy, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22, label %bb.v

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22: ; preds = %bb.t
  %i.ga = add i64 %i.fz, -1                       ; 4 uses
  %i.gb = or i64 %i.ga, 1
  %i.gc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gb, i1 true)
  %i.gd = xor i64 %i.gc, 63
  %i.ge = load atomic ptr, ptr %i.dd acquire, align 8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load atomic ptr, ptr %i.gf acquire, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ga
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !76
  %i.gj = sub nsw i64 %i.ga, %.sroa.18.0          ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i
  %.sroa.2.0.i.i.i.i25 = phi i64 [ %i.gl, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i ], [ %i.ga, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22 ]
  %.sroa.3.0.i.i.i.i27 = phi i64 [ %i.gu, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i ], [ %i.fz, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22 ]
  %.08.i.i.i.i.i28 = phi i64 [ %i.hc, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i ], [ %i.gj, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22 ] ; 2 uses
  %i.gl = add i64 %.sroa.2.0.i.i.i.i25, -1        ; 3 uses
  %i.gm = or i64 %i.gl, 1
  %i.gn = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gm, i1 true)
  %i.go = xor i64 %i.gn, 63
  %i.gp = load atomic ptr, ptr %i.dd acquire, align 8, !noalias !336
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load atomic ptr, ptr %i.gq acquire, align 8, !noalias !336
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gl
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !76, !noalias !336
  %i.gu = add i64 %.sroa.3.0.i.i.i.i27, -1        ; 3 uses
  %i.gv = or i64 %i.gu, 1
  %i.gw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gv, i1 true)
  %i.gx = xor i64 %i.gw, 63
  %i.gy = load atomic ptr, ptr %i.dd acquire, align 8, !noalias !336
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gx
  %i.ha = load atomic ptr, ptr %i.gz acquire, align 8, !noalias !336
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gu
  store ptr %i.gt, ptr %i.hb, align 8, !tbaa !76, !noalias !336
  %i.hc = add nsw i64 %.08.i.i.i.i.i28, -1
  %i.hd = icmp samesign ugt i64 %.08.i.i.i.i.i28, 1
  br i1 %i.hd, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit, !llvm.loop !5

_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit7.i.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit22
  %i.he = icmp eq ptr %.sroa.38.0, null
  br i1 %i.he, label %bb.u, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33

bb.u:                                             ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit
  %i.hf = or i64 %.sroa.18.0, 1
  %i.hg = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hf, i1 true)
  %i.hh = xor i64 %i.hg, 63
  %i.hi = load atomic ptr, ptr %i.dd acquire, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load atomic ptr, ptr %i.hj acquire, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.sroa.18.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EdeEv.exit33: ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit, %bb.u
  %.0.i32 = phi ptr [ %i.hl, %bb.u ], [ %.sroa.38.0, %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_.exit ]
  store ptr %i.gi, ptr %.0.i32, align 8, !tbaa !76
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.hm = sub i64 %i.fz, %i.de                    ; 2 uses
  %i.hn = icmp sgt i64 %.0179, 0
  br i1 %i.hn, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44, label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44, %bb.v
  %.sroa.18.2.lcssa = phi i64 [ %i.hm, %bb.v ], [ %.sroa.18.0, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ]
  %i.ho = srem i64 %.0178, %i.de                  ; 2 uses
  %.not = icmp eq i64 %i.ho, 0
  br i1 %.not, label %.critedge, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.s
  %.sroa.18.0.be = phi i64 [ %.sroa.18.1.lcssa, %bb.s ], [ %.sroa.18.2.lcssa, %._crit_edge ]
  %.sroa.38.0.be = phi ptr [ %.sroa.38.1.lcssa, %bb.s ], [ null, %._crit_edge ]
  %.0179.be = phi i64 [ %i.fx, %bb.s ], [ %i.ho, %._crit_edge ]
  %.0178.be = phi i64 [ %.0179, %bb.s ], [ %i.de, %._crit_edge ]
  br label %bb.l, !llvm.loop !331

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44: ; preds = %bb.v, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44
  %.0191 = phi i64 [ %i.ih, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ], [ 0, %bb.v ]
  %.sroa.652.0190 = phi i64 [ %i.hq, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ], [ %i.fz, %bb.v ]
  %.sroa.18.2187 = phi i64 [ %i.hp, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_EvT_T0_.exit44 ], [ %i.hm, %bb.v ]
  %i.hp = add i64 %.sroa.18.2187, -1              ; 3 uses
  %i.hq = add i64 %.sroa.652.0190, -1             ; 3 uses
  %i.hr = or i64 %i.hp, 1
  %i.hs = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hr, i1 true)
  %i.ht = xor i64 %i.hs, 63
  %i.hu = load atomic ptr, ptr %i.dd acquire, align 8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load atomic ptr, ptr %i.hv acquire, align 8
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hp ; 2 uses
  %i.hy = or i64 %i.hq, 1
  %i.hz = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hy, i1 true)
  %i.ia = xor i64 %i.hz, 63
  %i.ib = load atomic ptr, ptr %i.dd acquire, align 8
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load atomic ptr, ptr %i.ic acquire, align 8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.hq ; 2 uses
  %i.if = load ptr, ptr %i.hx, align 8, !tbaa !76
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !76
  store ptr %i.ig, ptr %i.hx, align 8, !tbaa !76
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !76
  %i.ih = add nuw nsw i64 %.0191, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %.0179
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
