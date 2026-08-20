inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 52
begin_hunk_0_@tinfl_decompress:bb.a
  %notmask = shl nsw i32 -1, %i.gt
  %i.gu = xor i32 %notmask, -1
  %i.gv = trunc i64 %.381487 to i32
  %i.gw = and i32 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.pre-phi
  %i.gz = zext nneg i32 %.pre-phi2103 to i64
  %i.ha = lshr i64 %.381487, %i.gz
  %i.hb = sub i32 %.38, %.pre-phi2103
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_min_table_sizes, i64 %.pre-phi
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = add i32 %i.gw, %i.hd
  store i32 %i.he, ptr %i.gy, align 4, !tbaa !3
  %i.hf = add i32 %.371091, 1
  br label %bb.bj, !llvm.loop !101

bb.bq:                                            ; preds = %bb.bj
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.hg, i8 0, i64 288, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bx, %bb.bq
  %.391589 = phi i32 [ %.341584, %bb.bq ], [ %.431593, %bb.bx ] ; 3 uses
  %.391488 = phi i64 [ %.341483, %bb.bq ], [ %i.hw, %bb.bx ] ; 3 uses
  %.381388 = phi ptr [ %.331383, %bb.bq ], [ %.421392, %bb.bx ] ; 3 uses
  %.331283 = phi ptr [ %.281278, %bb.bq ], [ %.371287, %bb.bx ] ; 3 uses
  %.331192 = phi i64 [ %.281187, %bb.bq ], [ %.371196, %bb.bx ] ; 3 uses
  %.381092 = phi i32 [ 0, %bb.bq ], [ %i.ie, %bb.bx ] ; 4 uses
  %.38987 = phi i32 [ %.33982, %bb.bq ], [ %.42991, %bb.bx ] ; 3 uses
  %.39 = phi i32 [ %.34, %bb.bq ], [ %i.hx, %bb.bx ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = icmp ult i32 %.381092, %i.hi
  br i1 %i.hj, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.hk = icmp ult i32 %.39, 3
  br i1 %i.hk, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs, %bb.bw
  %.401590 = phi i32 [ %.391589, %bb.bs ], [ %.421592, %bb.bw ] ; 2 uses
  %.401489 = phi i64 [ %.391488, %bb.bs ], [ %i.hr, %bb.bw ] ; 2 uses
  %.391389 = phi ptr [ %.381388, %bb.bs ], [ %.411391, %bb.bw ] ; 3 uses
  %.341284 = phi ptr [ %.331283, %bb.bs ], [ %.361286, %bb.bw ] ; 2 uses
  %.341193 = phi i64 [ %.331192, %bb.bs ], [ %.361195, %bb.bw ] ; 2 uses
  %.391093 = phi i32 [ %.381092, %bb.bs ], [ %.411095, %bb.bw ] ; 2 uses
  %.39988 = phi i32 [ %.38987, %bb.bs ], [ %.41990, %bb.bw ] ; 2 uses
  %.40 = phi i32 [ %.39, %bb.bs ], [ %i.hs, %bb.bw ] ; 2 uses
  %.not1796 = icmp ult ptr %.391389, %i.d
  br i1 %.not1796, label %.sink.split2190, label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %.411591 = phi i32 [ %.401590, %bb.bt ], [ %i.z, %bb.bv ] ; 2 uses
  %.411490 = phi i64 [ %.401489, %bb.bt ], [ %i.t, %bb.bv ] ; 2 uses
  %.401390 = phi ptr [ %.391389, %bb.bt ], [ %1, %bb.bv ] ; 2 uses
  %.351285 = phi ptr [ %.341284, %bb.bt ], [ %4, %bb.bv ] ; 2 uses
  %.351194 = phi i64 [ %.341193, %bb.bt ], [ %i.ab, %bb.bv ] ; 2 uses
  %.401094 = phi i32 [ %.391093, %bb.bt ], [ %i.x, %bb.bv ] ; 2 uses
  %.40989 = phi i32 [ %.39988, %bb.bt ], [ %i.v, %bb.bv ] ; 2 uses
  %.41 = phi i32 [ %.40, %bb.bt ], [ %i.r, %bb.bv ] ; 2 uses
  %i.hl = and i32 %6, 2
  %.not1797 = icmp eq i32 %i.hl, 0
  br i1 %.not1797, label %bb.bw, label %.sink.split2211

bb.bv:                                            ; preds = %bb.c
  %.not1776 = icmp eq i64 %i.c, 0
  br i1 %.not1776, label %bb.bu, label %.sink.split2190

.sink.split2190:                                  ; preds = %bb.bt, %bb.bv
  %.sink2192 = phi ptr [ %1, %bb.bv ], [ %.391389, %bb.bt ] ; 2 uses
  %.421592.ph = phi i32 [ %i.z, %bb.bv ], [ %.401590, %bb.bt ]
  %.421491.ph = phi i64 [ %i.t, %bb.bv ], [ %.401489, %bb.bt ]
  %.361286.ph = phi ptr [ %4, %bb.bv ], [ %.341284, %bb.bt ]
  %.361195.ph = phi i64 [ %i.ab, %bb.bv ], [ %.341193, %bb.bt ]
  %.411095.ph = phi i32 [ %i.x, %bb.bv ], [ %.391093, %bb.bt ]
  %.41990.ph = phi i32 [ %i.v, %bb.bv ], [ %.39988, %bb.bt ]
  %.42.ph = phi i32 [ %i.r, %bb.bv ], [ %.40, %bb.bt ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink2192, i64 1
  %i.hn = load i8, ptr %.sink2192, align 1, !tbaa !7
  %i.ho = zext i8 %i.hn to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split2190, %bb.bu
  %.421592 = phi i32 [ %.411591, %bb.bu ], [ %.421592.ph, %.sink.split2190 ] ; 2 uses
  %.421491 = phi i64 [ %.411490, %bb.bu ], [ %.421491.ph, %.sink.split2190 ]
  %.411391 = phi ptr [ %.401390, %bb.bu ], [ %i.hm, %.sink.split2190 ] ; 2 uses
  %.361286 = phi ptr [ %.351285, %bb.bu ], [ %.361286.ph, %.sink.split2190 ] ; 2 uses
  %.361195 = phi i64 [ %.351194, %bb.bu ], [ %.361195.ph, %.sink.split2190 ] ; 2 uses
  %.411095 = phi i32 [ %.401094, %bb.bu ], [ %.411095.ph, %.sink.split2190 ] ; 2 uses
  %.41990 = phi i32 [ %.40989, %bb.bu ], [ %.41990.ph, %.sink.split2190 ] ; 2 uses
  %.0948.shrunk = phi i64 [ 0, %bb.bu ], [ %i.ho, %.sink.split2190 ]
  %.42 = phi i32 [ %.41, %bb.bu ], [ %.42.ph, %.sink.split2190 ] ; 2 uses
  %i.hp = zext nneg i32 %.42 to i64
  %i.hq = shl i64 %.0948.shrunk, %i.hp
  %i.hr = or i64 %i.hq, %.421491                  ; 2 uses
  %i.hs = add i32 %.42, 8                         ; 3 uses
  %i.ht = icmp ult i32 %i.hs, 3
  br i1 %i.ht, label %bb.bt, label %bb.bx, !llvm.loop !102

bb.bx:                                            ; preds = %bb.bw, %bb.bs
  %.431593 = phi i32 [ %.421592, %bb.bw ], [ %.391589, %bb.bs ]
  %.431492 = phi i64 [ %i.hr, %bb.bw ], [ %.391488, %bb.bs ] ; 2 uses
  %.421392 = phi ptr [ %.411391, %bb.bw ], [ %.381388, %bb.bs ]
  %.371287 = phi ptr [ %.361286, %bb.bw ], [ %.331283, %bb.bs ]
  %.371196 = phi i64 [ %.361195, %bb.bw ], [ %.331192, %bb.bs ]
  %.421096 = phi i32 [ %.411095, %bb.bw ], [ %.381092, %bb.bs ] ; 2 uses
  %.42991 = phi i32 [ %.41990, %bb.bw ], [ %.38987, %bb.bs ]
  %.43 = phi i32 [ %i.hs, %bb.bw ], [ %.39, %bb.bs ]
  %i.hu = trunc i64 %.431492 to i8
  %i.hv = and i8 %i.hu, 7
  %i.hw = lshr i64 %.431492, 3
  %i.hx = add i32 %.43, -3
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 7048
  %i.hz = zext i32 %.421096 to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !7
  %i.ic = zext i8 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ic
  store i8 %i.hv, ptr %i.id, align 1, !tbaa !7
  %i.ie = add i32 %.421096, 1
  br label %bb.br, !llvm.loop !103

bb.by:                                            ; preds = %bb.br
  store i32 19, ptr %i.hh, align 4, !tbaa !3
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !92
  br label %.loopexit1927

.loopexit1927:                                    ; preds = %bb.by, %.lr.ph1960.preheader, %bb.dn
  %i.if = phi i32 [ %i.us, %bb.dn ], [ %.pre.pre, %bb.by ], [ 1, %.lr.ph1960.preheader ] ; 3 uses
  %.451595 = phi i32 [ %.581608, %bb.dn ], [ %.391589, %bb.by ], [ %.101560, %.lr.ph1960.preheader ] ; 4 uses
  %.451494 = phi i64 [ %.581507, %bb.dn ], [ %.391488, %bb.by ], [ %i.by, %.lr.ph1960.preheader ] ; 4 uses
  %.441394 = phi ptr [ %.571407, %bb.dn ], [ %.381388, %bb.by ], [ %.91359, %.lr.ph1960.preheader ] ; 4 uses
  %.391289 = phi ptr [ %.521302, %bb.dn ], [ %.331283, %bb.by ], [ %.41254, %.lr.ph1960.preheader ] ; 4 uses
  %.391198 = phi i64 [ %.521211, %bb.dn ], [ %.331192, %bb.by ], [ %.41163, %.lr.ph1960.preheader ] ; 4 uses
  %.441098 = phi i32 [ %.571111, %bb.dn ], [ %.381092, %bb.by ], [ %.101064, %.lr.ph1960.preheader ] ; 3 uses
  %.44993 = phi i32 [ %.561005, %bb.dn ], [ %.38987, %bb.by ], [ %.10959, %.lr.ph1960.preheader ] ; 4 uses
  %.45 = phi i32 [ %.58, %bb.dn ], [ %.39, %bb.by ], [ %i.bz, %.lr.ph1960.preheader ] ; 4 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %bb.bz, label %.preheader2305

bb.bz:                                            ; preds = %.loopexit1927
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ii = zext nneg i32 %i.if to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw [3488 x i8], ptr %i.ih, i64 %i.ii ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 288 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 2336 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ii
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(3200) %i.ik, i8 0, i64 3200, i1 false)
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3  ; 4 uses
  %.not2014 = icmp eq i32 %i.io, 0                ; 2 uses
  br i1 %.not2014, label %._crit_edge, label %.lr.ph1962.preheader

.lr.ph1962.preheader:                             ; preds = %bb.bz
  %wide.trip.count = zext i32 %i.io to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ip = icmp ult i32 %i.io, 4
  br i1 %i.ip, label %.lr.ph1962.epil.preheader, label %.lr.ph1962.preheader.new

.lr.ph1962.preheader.new:                         ; preds = %.lr.ph1962.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph1962

.lr.ph1962:                                       ; preds = %.lr.ph1962, %.lr.ph1962.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph1962.preheader.new ], [ %indvars.iv.next.3, %.lr.ph1962 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1962.preheader.new ], [ %niter.next.3, %.lr.ph1962 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !7
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !7
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !7
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !3
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !7
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !3
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph1962, !llvm.loop !104

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph1962
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph1962.epil.preheader

.lr.ph1962.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph1962.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph1962.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod2331 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2331)
  br label %.lr.ph1962.epil

.lr.ph1962.epil:                                  ; preds = %.lr.ph1962.epil, %.lr.ph1962.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph1962.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph1962.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1962.epil.preheader ], [ %epil.iter.next, %.lr.ph1962.epil ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.epil
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !7
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph1962.epil, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %.lr.ph1962.epil, %._crit_edge.loopexit.unr-lcssa
  %.phi.trans.insert2074 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre2075 = load i32, ptr %.phi.trans.insert2074, align 4, !tbaa !3
  %.phi.trans.insert2076 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2077 = load i32, ptr %.phi.trans.insert2076, align 8, !tbaa !3
  %.phi.trans.insert2078 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.pre2079 = load i32, ptr %.phi.trans.insert2078, align 4, !tbaa !3
  %.phi.trans.insert2080 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre2081 = load i32, ptr %.phi.trans.insert2080, align 16, !tbaa !3
  %.phi.trans.insert2082 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre2083 = load i32, ptr %.phi.trans.insert2082, align 4, !tbaa !3
  %.phi.trans.insert2084 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre2085 = load i32, ptr %.phi.trans.insert2084, align 8, !tbaa !3
  %.phi.trans.insert2086 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.pre2087 = load i32, ptr %.phi.trans.insert2086, align 4, !tbaa !3
  %.phi.trans.insert2088 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre2089 = load i32, ptr %.phi.trans.insert2088, align 16, !tbaa !3
  %.phi.trans.insert2090 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.pre2091 = load i32, ptr %.phi.trans.insert2090, align 4, !tbaa !3
  %.phi.trans.insert2092 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre2093 = load i32, ptr %.phi.trans.insert2092, align 8, !tbaa !3
  %.phi.trans.insert2094 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.pre2095 = load i32, ptr %.phi.trans.insert2094, align 4, !tbaa !3
  %.phi.trans.insert2096 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre2097 = load i32, ptr %.phi.trans.insert2096, align 16, !tbaa !3
  %.phi.trans.insert2098 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.pre2099 = load i32, ptr %.phi.trans.insert2098, align 4, !tbaa !3
  %.phi.trans.insert2100 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre2101 = load i32, ptr %.phi.trans.insert2100, align 8, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bz
  %i.jx = phi i32 [ %.pre2101, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.jy = phi i32 [ %.pre2099, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.jz = phi i32 [ %.pre2097, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.ka = phi i32 [ %.pre2095, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kb = phi i32 [ %.pre2093, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kc = phi i32 [ %.pre2091, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kd = phi i32 [ %.pre2089, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.ke = phi i32 [ %.pre2087, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kf = phi i32 [ %.pre2085, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kg = phi i32 [ %.pre2083, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kh = phi i32 [ %.pre2081, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.ki = phi i32 [ %.pre2079, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kj = phi i32 [ %.pre2077, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kk = phi i32 [ %.pre2075, %._crit_edge.loopexit ], [ 0, %bb.bz ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.kl, align 4, !tbaa !3
  store i32 0, ptr %i.a, align 16, !tbaa !3
  %i.km = shl i32 %i.kk, 1                        ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.km, ptr %i.kn, align 8, !tbaa !3
  %i.ko = add i32 %i.kj, %i.kk
  %i.kp = add i32 %i.kj, %i.km
  %i.kq = shl i32 %i.kp, 1                        ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !3
  %i.ks = add i32 %i.ki, %i.ko
  %i.kt = add i32 %i.ki, %i.kq
  %i.ku = shl i32 %i.kt, 1                        ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ku, ptr %i.kv, align 16, !tbaa !3
  %i.kw = add i32 %i.kh, %i.ks
  %i.kx = add i32 %i.kh, %i.ku
  %i.ky = shl i32 %i.kx, 1                        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !3
  %i.la = add i32 %i.kg, %i.kw
  %i.lb = add i32 %i.kg, %i.ky
  %i.lc = shl i32 %i.lb, 1                        ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !3
  %i.le = add i32 %i.kf, %i.la
  %i.lf = add i32 %i.kf, %i.lc
  %i.lg = shl i32 %i.lf, 1                        ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !3
  %i.li = add i32 %i.ke, %i.le
  %i.lj = add i32 %i.ke, %i.lg
  %i.lk = shl i32 %i.lj, 1                        ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.lk, ptr %i.ll, align 16, !tbaa !3
  %i.lm = add i32 %i.kd, %i.li
  %i.ln = add i32 %i.kd, %i.lk
  %i.lo = shl i32 %i.ln, 1                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !3
  %i.lq = add i32 %i.kc, %i.lm
  %i.lr = add i32 %i.kc, %i.lo
  %i.ls = shl i32 %i.lr, 1                        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.ls, ptr %i.lt, align 8, !tbaa !3
  %i.lu = add i32 %i.kb, %i.lq
  %i.lv = add i32 %i.kb, %i.ls
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !3
  %i.ly = add i32 %i.ka, %i.lu
  %i.lz = add i32 %i.ka, %i.lw
  %i.ma = shl i32 %i.lz, 1                        ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.ma, ptr %i.mb, align 16, !tbaa !3
  %i.mc = add i32 %i.jz, %i.ly
  %i.md = add i32 %i.jz, %i.ma
  %i.me = shl i32 %i.md, 1                        ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !3
  %i.mg = add i32 %i.jy, %i.mc
  %i.mh = add i32 %i.jy, %i.me
  %i.mi = shl i32 %i.mh, 1                        ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.mi, ptr %i.mj, align 8, !tbaa !3
  %i.mk = add i32 %i.jx, %i.mg
  %i.ml = add i32 %i.jx, %i.mi
  %i.mm = shl i32 %i.ml, 1                        ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3  ; 2 uses
  %i.mq = add i32 %i.mp, %i.mk
  %i.mr = add i32 %i.mp, %i.mm
  %i.ms = shl i32 %i.mr, 1                        ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %i.ms, ptr %i.mt, align 16, !tbaa !3
  %i.mu = icmp ne i32 %i.ms, 65536
  %i.mv = icmp ugt i32 %i.mq, 1
  %or.cond = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond, label %.sink.split2211, label %.preheader1915

.preheader1915:                                   ; preds = %._crit_edge
  br i1 %.not2014, label %._crit_edge1986, label %.lr.ph1985.preheader

.lr.ph1985.preheader:                             ; preds = %.preheader1915
  %wide.trip.count2067 = zext i32 %i.io to i64
  br label %.lr.ph1985

.lr.ph1985:                                       ; preds = %.lr.ph1985.preheader, %.loopexit1914
  %indvars.iv2064 = phi i64 [ 0, %.lr.ph1985.preheader ], [ %indvars.iv.next2065, %.loopexit1914 ] ; 4 uses
  %.09431983 = phi i32 [ -1, %.lr.ph1985.preheader ], [ %.4947, %.loopexit1914 ] ; 7 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv2064
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !7   ; 6 uses
  %i.my = zext i8 %i.mx to i32                    ; 5 uses
  %.not1831 = icmp eq i8 %i.mx, 0
  br i1 %.not1831, label %.loopexit1914, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1985
  %i.mz = zext i8 %i.mx to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mz ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !3  ; 3 uses
  %i.nc = add i32 %i.nb, 1
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !3
  %xtraiter2333 = and i32 %i.my, 3                ; 3 uses
  %i.nd = icmp ult i8 %i.mx, 4
  br i1 %i.nd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ca
  %unroll_iter2340 = and i32 %i.my, 252
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.new
  %.09251969 = phi i32 [ %i.nb, %.new ], [ %i.nr, %bb.cb ] ; 5 uses
  %.09271967 = phi i32 [ 0, %.new ], [ %i.nq, %bb.cb ]
  %niter2341 = phi i32 [ 0, %.new ], [ %niter2341.next.3, %bb.cb ]
  %i.ne = shl i32 %.09271967, 3
  %i.nf = shl i32 %.09251969, 2
  %i.ng = and i32 %i.nf, 4
  %i.nh = or disjoint i32 %i.ne, %i.ng
  %i.ni = and i32 %.09251969, 2
  %i.nj = or disjoint i32 %i.ni, %i.nh
  %i.nk = lshr i32 %.09251969, 2
  %i.nl = and i32 %i.nk, 1
  %i.nm = or disjoint i32 %i.nl, %i.nj
  %i.nn = lshr i32 %.09251969, 3                  ; 2 uses
  %i.no = shl i32 %i.nm, 1                        ; 2 uses
  %i.np = and i32 %i.nn, 1
  %i.nq = or disjoint i32 %i.np, %i.no            ; 3 uses
  %i.nr = lshr i32 %.09251969, 4                  ; 2 uses
  %niter2341.next.3 = add nuw i32 %niter2341, 4   ; 2 uses
  %niter2341.ncmp.3 = icmp eq i32 %niter2341.next.3, %unroll_iter2340
  br i1 %niter2341.ncmp.3, label %.unr-lcssa, label %bb.cb, !llvm.loop !106

.unr-lcssa:                                       ; preds = %bb.cb
  %lcmp.mod2335.not = icmp eq i32 %xtraiter2333, 0
  br i1 %lcmp.mod2335.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ca
  %.09251969.epil.init = phi i32 [ %i.nb, %bb.ca ], [ %i.nr, %.unr-lcssa ]
  %.09271967.epil.init = phi i32 [ 0, %bb.ca ], [ %i.nq, %.unr-lcssa ]
  %lcmp.mod2339 = icmp ne i32 %xtraiter2333, 0
  tail call void @llvm.assume(i1 %lcmp.mod2339)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader
  %.09251969.epil = phi i32 [ %.09251969.epil.init, %.epil.preheader ], [ %i.nv, %bb.cc ] ; 3 uses
  %.09271967.epil = phi i32 [ %.09271967.epil.init, %.epil.preheader ], [ %i.nu, %bb.cc ]
  %epil.iter2334 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter2334.next, %bb.cc ]
  %i.ns = shl i32 %.09271967.epil, 1              ; 2 uses
  %i.nt = and i32 %.09251969.epil, 1
  %i.nu = or disjoint i32 %i.nt, %i.ns            ; 2 uses
  %i.nv = lshr i32 %.09251969.epil, 1
  %epil.iter2334.next = add i32 %epil.iter2334, 1 ; 2 uses
  %epil.iter2334.cmp.not = icmp eq i32 %epil.iter2334.next, %xtraiter2333
  br i1 %epil.iter2334.cmp.not, label %.epilog-lcssa, label %bb.cc, !llvm.loop !107

.epilog-lcssa:                                    ; preds = %bb.cc, %.unr-lcssa
  %.09251969.lcssa = phi i32 [ %i.nn, %.unr-lcssa ], [ %.09251969.epil, %bb.cc ]
  %.lcssa2290 = phi i32 [ %i.no, %.unr-lcssa ], [ %i.ns, %bb.cc ] ; 3 uses
  %.lcssa2289 = phi i32 [ %i.nq, %.unr-lcssa ], [ %i.nu, %bb.cc ]
  %i.nw = icmp ult i8 %i.mx, 11
  br i1 %i.nw, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.epilog-lcssa
  %i.nx = shl nuw nsw i32 %i.my, 9
  %i.ny = trunc nuw i64 %indvars.iv2064 to i32
  %i.nz = or i32 %i.nx, %i.ny
  %i.oa = trunc i32 %i.nz to i16
  %i.ob = icmp ult i32 %.lcssa2290, 1024
  br i1 %i.ob, label %iter.check, label %.loopexit1914

iter.check:                                       ; preds = %bb.cd
  %i.oc = shl nuw nsw i32 1, %i.my
  %i.od = and i32 %.09251969.lcssa, 1
  %i.oe = or disjoint i32 %.lcssa2290, %i.od
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = zext nneg i32 %i.oc to i64
  br label %bb.ce

bb.ce:                                            ; preds = %iter.check, %bb.ce
  %indvars.iv2061 = phi i64 [ %i.of, %iter.check ], [ %indvars.iv.next2062, %bb.ce ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %indvars.iv2061
  store i16 %i.oa, ptr %i.oh, align 2, !tbaa !108
  %indvars.iv.next2062 = add nuw nsw i64 %indvars.iv2061, %i.og ; 2 uses
  %i.oi = icmp samesign ult i64 %indvars.iv.next2062, 1024
  br i1 %i.oi, label %bb.ce, label %.loopexit1914, !llvm.loop !110

bb.cf:                                            ; preds = %.epilog-lcssa
  %i.oj = and i32 %.lcssa2289, 1023
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ok ; 2 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !108 ; 2 uses
  %i.on = sext i16 %i.om to i32
  %i.oo = icmp eq i16 %i.om, 0
  br i1 %i.oo, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.op = trunc i32 %.09431983 to i16
  store i16 %i.op, ptr %i.ol, align 2, !tbaa !108
  %i.oq = add nsw i32 %.09431983, -2
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1944 = phi i32 [ %i.oq, %bb.cg ], [ %.09431983, %bb.cf ] ; 2 uses
  %.0940 = phi i32 [ %.09431983, %bb.cg ], [ %i.on, %bb.cf ] ; 2 uses
  %i.or = lshr i32 %.lcssa2290, 9                 ; 2 uses
  %.not2016 = icmp eq i8 %i.mx, 11
  br i1 %.not2016, label %._crit_edge1976, label %.lr.ph1975

.lr.ph1975:                                       ; preds = %bb.ch, %bb.ck
  %.29291973 = phi i32 [ %i.os, %bb.ck ], [ %i.or, %bb.ch ]
  %.09331972 = phi i32 [ %i.pc, %bb.ck ], [ %i.my, %bb.ch ]
  %.19411971 = phi i32 [ %.2942, %bb.ck ], [ %.0940, %bb.ch ]
  %.29451970 = phi i32 [ %.3946, %bb.ck ], [ %.1944, %bb.ch ] ; 4 uses
  %i.os = lshr i32 %.29291973, 1                  ; 3 uses
  %i.ot = and i32 %i.os, 1
  %i.ou = xor i32 %.19411971, -1
  %i.ov = add i32 %i.ot, %i.ou
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.ow ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !108 ; 2 uses
  %.not1835 = icmp eq i16 %i.oy, 0
  br i1 %.not1835, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph1975
  %i.oz = trunc i32 %.29451970 to i16
  store i16 %i.oz, ptr %i.ox, align 2, !tbaa !108
  %i.pa = add nsw i32 %.29451970, -2
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph1975
  %i.pb = sext i16 %i.oy to i32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %.3946 = phi i32 [ %.29451970, %bb.cj ], [ %i.pa, %bb.ci ] ; 2 uses
  %.2942 = phi i32 [ %i.pb, %bb.cj ], [ %.29451970, %bb.ci ] ; 2 uses
  %i.pc = add nsw i32 %.09331972, -1              ; 2 uses
  %i.pd = icmp ugt i32 %i.pc, 11
  br i1 %i.pd, label %.lr.ph1975, label %._crit_edge1976, !llvm.loop !112

._crit_edge1976:                                  ; preds = %bb.ck, %bb.ch
  %.2945.lcssa = phi i32 [ %.1944, %bb.ch ], [ %.3946, %bb.ck ]
  %.1941.lcssa = phi i32 [ %.0940, %bb.ch ], [ %.2942, %bb.ck ]
  %.2929.lcssa = phi i32 [ %i.or, %bb.ch ], [ %i.os, %bb.ck ]
  %i.pe = lshr i32 %.2929.lcssa, 1
  %.neg = and i32 %i.pe, 1
  %i.pf = trunc i64 %indvars.iv2064 to i16
  %i.pg = xor i32 %.1941.lcssa, -1
  %i.ph = add i32 %.neg, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.pi
  store i16 %i.pf, ptr %i.pj, align 2, !tbaa !108
  br label %.loopexit1914

.loopexit1914:                                    ; preds = %bb.ce, %bb.cd, %.lr.ph1985, %._crit_edge1976
  %.4947 = phi i32 [ %.09431983, %.lr.ph1985 ], [ %.2945.lcssa, %._crit_edge1976 ], [ %.09431983, %bb.cd ], [ %.09431983, %bb.ce ]
  %indvars.iv.next2065 = add nuw nsw i64 %indvars.iv2064, 1 ; 2 uses
  %exitcond2068.not = icmp eq i64 %indvars.iv.next2065, %wide.trip.count2067
  br i1 %exitcond2068.not, label %._crit_edge1986, label %.lr.ph1985, !llvm.loop !113

._crit_edge1986:                                  ; preds = %.loopexit1914, %.preheader1915
  %i.pk = icmp eq i32 %i.if, 2
  br i1 %i.pk, label %bb.cl, label %bb.dn

bb.cl:                                            ; preds = %._crit_edge1986, %bb.dk, %bb.db
  %.471597 = phi i32 [ %.561606, %bb.dk ], [ %.511601, %bb.db ], [ %.451595, %._crit_edge1986 ] ; 5 uses
  %.471496 = phi i64 [ %i.tr, %bb.dk ], [ %i.so, %bb.db ], [ %.451494, %._crit_edge1986 ] ; 5 uses
  %.461396 = phi ptr [ %.551405, %bb.dk ], [ %.501400, %bb.db ], [ %.441394, %._crit_edge1986 ] ; 8 uses
  %.411291 = phi ptr [ %.501300, %bb.dk ], [ %.451295, %bb.db ], [ %.391289, %._crit_edge1986 ] ; 5 uses
  %.411200 = phi i64 [ %.501209, %bb.dk ], [ %.451204, %bb.db ], [ %.391198, %._crit_edge1986 ] ; 5 uses
  %.461100 = phi i32 [ %i.uj, %bb.dk ], [ %i.st, %bb.db ], [ 0, %._crit_edge1986 ] ; 7 uses
  %.46995 = phi i32 [ %.541003, %bb.dk ], [ %.2924, %bb.db ], [ %.44993, %._crit_edge1986 ] ; 3 uses
  %.47 = phi i32 [ %i.ts, %bb.dk ], [ %i.sp, %bb.db ], [ %.45, %._crit_edge1986 ] ; 8 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3  ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !3  ; 2 uses
  %i.pp = add i32 %i.po, %i.pm                    ; 2 uses
  %i.pq = icmp ult i32 %.461100, %i.pp
  br i1 %i.pq, label %bb.cm, label %bb.dl

bb.cm:                                            ; preds = %bb.cl
  %i.pr = icmp ult i32 %.47, 15
  br i1 %i.pr, label %bb.cn, label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  %i.ps = ptrtoint ptr %i.d to i64
  %i.pt = ptrtoint ptr %.461396 to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = icmp slt i64 %i.pu, 2
  br i1 %i.pv, label %bb.co, label %bb.cx

bb.co:                                            ; preds = %bb.cn, %bb.cw
  %.481598 = phi i32 [ %.471597, %bb.cn ], [ %.501600, %bb.cw ] ; 4 uses
  %.481497 = phi i64 [ %.471496, %bb.cn ], [ %i.rc, %bb.cw ] ; 6 uses
  %.471397 = phi ptr [ %.461396, %bb.cn ], [ %.491399, %bb.cw ] ; 5 uses
  %.421292 = phi ptr [ %.411291, %bb.cn ], [ %.441294, %bb.cw ] ; 4 uses
  %.421201 = phi i64 [ %.411200, %bb.cn ], [ %.441203, %bb.cw ] ; 4 uses
  %.471101 = phi i32 [ %.461100, %bb.cn ], [ %.491103, %bb.cw ] ; 4 uses
  %.47996 = phi i32 [ %.46995, %bb.cn ], [ %.49998, %bb.cw ] ; 2 uses
  %.48 = phi i32 [ %.47, %bb.cn ], [ %i.rd, %bb.cw ]
  %i.pw = freeze i32 %.48                         ; 7 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 7336
  %i.py = and i64 %.481497, 1023
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %i.py
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !108 ; 2 uses
  %i.qb = sext i16 %i.qa to i32                   ; 2 uses
  %i.qc = icmp sgt i16 %i.qa, -1
  br i1 %i.qc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qd = lshr i32 %i.qb, 9
  %i.qe = add nsw i32 %i.qd, -1
  %or.cond1862.not = icmp ult i32 %i.qe, %i.pw
  br i1 %or.cond1862.not, label %bb.cy, label %bb.ct

bb.cq:                                            ; preds = %bb.co
  %i.qf = icmp samesign ugt i32 %i.pw, 10
  br i1 %i.qf, label %.preheader1913, label %bb.ct

.preheader1913:                                   ; preds = %bb.cq
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 9384
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader1913, %bb.cr
  %.0922 = phi i32 [ %i.qq, %bb.cr ], [ %i.qb, %.preheader1913 ]
  %.0919 = phi i32 [ %i.qj, %bb.cr ], [ 10, %.preheader1913 ] ; 3 uses
  %i.qh = xor i32 %.0922, -1
  %i.qi = zext nneg i32 %i.qh to i64
end_hunk_0
begin_hunk_1_@tdefl_compress_normal:bb.a

.critedge.thread:                                 ; preds = %select.unfold
  %.pre = load i32, ptr %i.g, align 8, !tbaa !62  ; 4 uses
  %i.af = load i32, ptr %i.h, align 4, !tbaa !63  ; 5 uses
  %i.ag = add i32 %i.af, %.pre
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.thread
  %umax = tail call i32 @llvm.umax.i32(i32 %.pre, i32 258) ; 2 uses
  br label %bb.g

bb.d:                                             ; preds = %.critedge.thread, %.critedge
  %i.ai = phi i32 [ %i.af, %.critedge.thread ], [ %i.ac, %.critedge ] ; 2 uses
  %.promoted391 = phi i32 [ %.pre, %.critedge.thread ], [ %i.ab, %.critedge ] ; 3 uses
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !152
  %i.ak = add i32 %i.aj, %.promoted391            ; 3 uses
  %i.al = add i32 %i.ak, -2                       ; 2 uses
  %i.am = and i32 %i.al, 32767
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = add i32 %i.ak, 32767
  %i.ar = and i32 %i.aq, 32767
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7
  %i.av = sub i32 258, %.promoted391
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.0178, i64 %i.aw) ; 4 uses
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.0169, i64 %i.ax ; 2 uses
  %i.ba = sub i64 %.0178, %i.ax                   ; 2 uses
  %i.bb = add i32 %.promoted391, %i.ay            ; 3 uses
  store i32 %i.bb, ptr %i.g, align 8, !tbaa !62
  %.not199294 = icmp samesign eq i64 %i.ax, 0
  br i1 %.not199294, label %.critedge4, label %.lr.ph299.preheader

.lr.ph299.preheader:                              ; preds = %bb.d
  %i.bc = zext i8 %i.ap to i32
  %i.bd = shl nuw nsw i32 %i.bc, 5
  %i.be = zext i8 %i.au to i32
  %i.bf = xor i32 %i.bd, %i.be
  br label %.lr.ph299

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %bb.f
  %.0176298.in = phi i32 [ %i.bw, %bb.f ], [ %i.ak, %.lr.ph299.preheader ]
  %.1170297 = phi ptr [ %i.bg, %bb.f ], [ %.0169, %.lr.ph299.preheader ] ; 2 uses
  %.0174296 = phi i32 [ %i.bo, %bb.f ], [ %i.bf, %.lr.ph299.preheader ]
  %.0175295 = phi i32 [ %i.bx, %bb.f ], [ %i.al, %.lr.ph299.preheader ] ; 3 uses
  %.0176298 = and i32 %.0176298.in, 32767         ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1170297, i64 1 ; 2 uses
  %i.bh = load i8, ptr %.1170297, align 1, !tbaa !7 ; 3 uses
  %i.bi = zext nneg i32 %.0176298 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi ; 2 uses
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !7
  %i.bk = icmp samesign ult i32 %.0176298, 257
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph299
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32768
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph299
  %i.bm = shl nuw nsw i32 %.0174296, 5
  %i.bn = zext i8 %i.bh to i32
  %.masked212 = and i32 %i.bm, 32736
  %i.bo = xor i32 %.masked212, %i.bn              ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !108
  %i.bs = and i32 %.0175295, 32767
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bt
  store i16 %i.br, ptr %i.bu, align 2, !tbaa !108
  %i.bv = trunc i32 %.0175295 to i16
  store i16 %i.bv, ptr %i.bq, align 2, !tbaa !108
  %i.bw = add nuw nsw i32 %.0176298, 1
  %i.bx = add i32 %.0175295, 1
  %.not199 = icmp eq ptr %i.bg, %i.az
  br i1 %.not199, label %.critedge4, label %.lr.ph299, !llvm.loop !156

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi i32 [ %.pre, %.lr.ph ], [ %i.cj, %bb.l ] ; 3 uses
  %.2171292 = phi ptr [ %.0169, %.lr.ph ], [ %i.bz, %bb.l ] ; 3 uses
  %.1179291 = phi i64 [ %.0178, %.lr.ph ], [ %i.ce, %bb.l ] ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %umax
  br i1 %exitcond.not, label %.critedge4.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.2171292, i64 1 ; 2 uses
  %i.ca = load i8, ptr %.2171292, align 1, !tbaa !7 ; 3 uses
  %i.cb = load i32, ptr %i.i, align 4, !tbaa !152
  %i.cc = add i32 %i.cb, %i.by                    ; 3 uses
  %i.cd = and i32 %i.cc, 32767                    ; 2 uses
  %i.ce = add i64 %.1179291, -1                   ; 2 uses
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cf ; 2 uses
  store i8 %i.ca, ptr %i.cg, align 1, !tbaa !7
  %i.ch = icmp samesign ult i32 %i.cd, 257
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32768
  store i8 %i.ca, ptr %i.ci, align 1, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = add nuw nsw i32 %i.by, 1                ; 4 uses
  store i32 %i.cj, ptr %i.g, align 8, !tbaa !62
  %i.ck = add i32 %i.cj, %i.af
  %i.cl = icmp ugt i32 %i.ck, 2
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = add i32 %i.cc, -2                       ; 2 uses
  %i.cn = and i32 %i.cm, 32767
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 10
  %i.ct = add i32 %i.cc, 32767
  %i.cu = and i32 %i.ct, 32767
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 5
  %i.da = zext i8 %i.ca to i64
  %.masked198 = and i64 %i.cs, 31744
  %.masked = xor i64 %i.cz, %i.da
  %i.db = xor i64 %.masked, %.masked198
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !108
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.co
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !108
  %i.df = trunc i32 %i.cm to i16
  store i16 %i.df, ptr %i.dc, align 2, !tbaa !108
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not197 = icmp eq i64 %i.ce, 0
  br i1 %.not197, label %.critedge4, label %bb.g, !llvm.loop !157

.critedge4.thread:                                ; preds = %bb.g, %.critedge
  %.ph = phi i32 [ %i.ac, %.critedge ], [ %i.af, %bb.g ]
  %.ph395 = phi i32 [ %i.ab, %.critedge ], [ %umax, %bb.g ] ; 2 uses
  %.2180.ph = phi i64 [ 0, %.critedge ], [ %.1179291, %bb.g ]
  %.3172.ph = phi ptr [ %.0169, %.critedge ], [ %.2171292, %bb.g ]
  %i.dg = sub i32 32768, %.ph395
  %.398 = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 %.ph) ; 2 uses
  store i32 %.398, ptr %i.h, align 4, !tbaa !63
  br label %bb.m

.critedge4:                                       ; preds = %bb.l, %bb.f, %bb.d
  %i.dh = phi i32 [ %i.ai, %bb.f ], [ %i.ai, %bb.d ], [ %i.af, %bb.l ]
  %i.di = phi i32 [ %i.bb, %bb.f ], [ %i.bb, %bb.d ], [ %i.cj, %bb.l ] ; 3 uses
  %.2180 = phi i64 [ %i.ba, %bb.f ], [ %i.ba, %bb.d ], [ 0, %bb.l ] ; 2 uses
  %.3172 = phi ptr [ %i.az, %bb.f ], [ %.0169, %bb.d ], [ %i.bz, %bb.l ] ; 2 uses
  %i.dj = sub i32 32768, %i.di
  %. = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.dh) ; 2 uses
  store i32 %., ptr %i.h, align 4, !tbaa !63
  %i.dk = icmp ult i32 %i.di, 258
  %or.cond265 = select i1 %.not195, i1 %i.dk, i1 false
  br i1 %or.cond265, label %.critedge2, label %bb.m

bb.m:                                             ; preds = %.critedge4.thread, %.critedge4
  %.402 = phi i32 [ %.398, %.critedge4.thread ], [ %., %.critedge4 ] ; 4 uses
  %.3172401 = phi ptr [ %.3172.ph, %.critedge4.thread ], [ %.3172, %.critedge4 ] ; 2 uses
  %.2180400 = phi i64 [ %.2180.ph, %.critedge4.thread ], [ %.2180, %.critedge4 ] ; 2 uses
  %i.dl = phi i32 [ %.ph395, %.critedge4.thread ], [ %i.di, %.critedge4 ] ; 7 uses
  %i.dm = load i32, ptr %i.m, align 8, !tbaa !39  ; 6 uses
  %.not201 = icmp eq i32 %i.dm, 0                 ; 3 uses
  %spec.select = select i1 %.not201, i32 2, i32 %i.dm ; 5 uses
  %i.dn = load i32, ptr %i.i, align 4, !tbaa !152 ; 3 uses
  %i.do = and i32 %i.dn, 32767                    ; 8 uses
  %i.dp = load i32, ptr %i.n, align 8, !tbaa !28  ; 4 uses
  %i.dq = and i32 %i.dp, 589824
  %.not202 = icmp eq i32 %i.dq, 0
  br i1 %.not202, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not203 = icmp ne i32 %.402, 0
  %i.dr = and i32 %i.dp, 524288
  %.not204 = icmp eq i32 %i.dr, 0
  %or.cond213 = and i1 %.not203, %.not204
  br i1 %or.cond213, label %bb.o, label %tdefl_find_match.exit

bb.o:                                             ; preds = %bb.n
  %i.ds = add i32 %i.dn, 32767
  %i.dt = and i32 %i.ds, 32767
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !7
  %.not322 = icmp eq i32 %i.dl, 0
  br i1 %.not322, label %._crit_edge, label %.lr.ph302.preheader

.lr.ph302.preheader:                              ; preds = %bb.o
  %1 = zext nneg i32 %i.do to i64
  %wide.trip.count = zext i32 %i.dl to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.j, i64 %1
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph302.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !7
  %.not205 = icmp eq i8 %i.dy, %i.dw
  br i1 %.not205, label %bb.p, label %._crit_edge.loopexit.split.loop.exit

bb.p:                                             ; preds = %.lr.ph302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond359.not, label %._crit_edge, label %.lr.ph302, !llvm.loop !158

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph302
  %2 = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %._crit_edge.loopexit.split.loop.exit, %bb.o
  %storemerge.lcssa = phi i32 [ 0, %bb.o ], [ %2, %._crit_edge.loopexit.split.loop.exit ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dz = icmp ugt i32 %storemerge.lcssa, 2       ; 2 uses
  %spec.select266 = zext i1 %i.dz to i32
  %spec.select267 = select i1 %i.dz, i32 %storemerge.lcssa, i32 0
  br label %tdefl_find_match.exit

bb.q:                                             ; preds = %bb.m
  %i.ea = zext nneg i32 %i.do to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ea ; 3 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !108
  %.not.i = icmp ugt i32 %i.dl, %spec.select
  br i1 %.not.i, label %.preheader268, label %tdefl_find_match.exit

.preheader268:                                    ; preds = %bb.q
  %i.ed = add nsw i32 %i.do, -1
  %i.ee = icmp ugt i32 %spec.select, 31
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = trunc i32 %i.dn to i16                  ; 3 uses
  %i.ej = ptrtoint ptr %i.eb to i64
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.ai, %.preheader268
  %.2243.ph.ph = phi i32 [ 0, %.preheader268 ], [ %.0110.i, %bb.ai ] ; 9 uses
  %.0108.i.ph.ph = phi i32 [ %spec.select, %.preheader268 ], [ %i.hq, %bb.ai ] ; 12 uses
  %.0106.i.ph.ph = phi i32 [ %i.do, %.preheader268 ], [ %.2.i, %bb.ai ]
  %.0102.i.ph.ph = phi i32 [ %i.eh, %.preheader268 ], [ %i.ep, %bb.ai ]
  %.pn.in = add i32 %i.ed, %.0108.i.ph.ph
  %.pn = zext i32 %.pn.in to i64
  %.0.i.ph.ph.in = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pn
  %.0.i.ph.ph = load i16, ptr %.0.i.ph.ph.in, align 1 ; 3 uses
  %i.ek = add i32 %.0108.i.ph.ph, -1              ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.critedge.i
  %.0106.i.ph = phi i32 [ %.2.i, %.critedge.i ], [ %.0106.i.ph.ph, %.outer.outer ]
  %.0102.i.ph = phi i32 [ %i.ep, %.critedge.i ], [ %.0102.i.ph.ph, %.outer.outer ]
  br label %bb.r

bb.r:                                             ; preds = %.outer, %bb.ac
  %.0106.i = phi i32 [ %.2.i, %bb.ac ], [ %.0106.i.ph, %.outer ]
  %.0102.i = phi i32 [ %i.ep, %bb.ac ], [ %.0102.i.ph, %.outer ]
  %i.el = add i32 %.0102.i, -1                    ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %tdefl_find_match.exit, label %.lr.ph496

bb.s:                                             ; preds = %bb.aa
  %i.en = add i32 %i.ep, -1                       ; 2 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %tdefl_find_match.exit, label %.lr.ph496

.lr.ph496:                                        ; preds = %bb.r, %bb.s
  %i.ep = phi i32 [ %i.en, %bb.s ], [ %i.el, %bb.r ] ; 4 uses
  %.1107.i494 = phi i32 [ %i.fx, %bb.s ], [ %.0106.i, %bb.r ]
  %i.eq = zext nneg i32 %.1107.i494 to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !108 ; 3 uses
  %.not125.i = icmp eq i16 %i.es, 0
  br i1 %.not125.i, label %tdefl_find_match.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph496
  %i.et = sub i16 %i.ei, %i.es
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = icmp ult i32 %.402, %i.eu
  br i1 %i.ev, label %tdefl_find_match.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = and i16 %i.es, 32767                    ; 2 uses
  %i.ex = zext nneg i16 %i.ew to i32              ; 2 uses
  %i.ey = add i32 %i.ek, %i.ex
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 1
  %i.fc = icmp eq i16 %i.fb, %.0.i.ph.ph
  br i1 %i.fc, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = zext nneg i16 %i.ew to i64
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !108 ; 3 uses
  %.not126.i = icmp eq i16 %i.ff, 0
  br i1 %.not126.i, label %tdefl_find_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fg = sub i16 %i.ei, %i.ff
  %i.fh = zext i16 %i.fg to i32                   ; 2 uses
  %i.fi = icmp ult i32 %.402, %i.fh
  br i1 %i.fi, label %tdefl_find_match.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = and i16 %i.ff, 32767                    ; 2 uses
  %i.fk = zext nneg i16 %i.fj to i32              ; 2 uses
  %i.fl = add i32 %i.ek, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 1
  %i.fp = icmp eq i16 %i.fo, %.0.i.ph.ph
  br i1 %i.fp, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fq = zext nneg i16 %i.fj to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !108 ; 3 uses
  %.not127.i = icmp eq i16 %i.fs, 0
  br i1 %.not127.i, label %tdefl_find_match.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = sub i16 %i.ei, %i.fs
  %i.fu = zext i16 %i.ft to i32                   ; 2 uses
  %i.fv = icmp ult i32 %.402, %i.fu
  br i1 %i.fv, label %tdefl_find_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = and i16 %i.fs, 32767
  %i.fx = zext nneg i16 %i.fw to i32              ; 3 uses
  %i.fy = add i32 %i.ek, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 1
  %i.gc = icmp eq i16 %i.gb, %.0.i.ph.ph
  br i1 %i.gc, label %bb.ab, label %bb.s

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.u
  %.0110.i = phi i32 [ %i.eu, %bb.u ], [ %i.fh, %bb.x ], [ %i.fu, %bb.aa ] ; 4 uses
  %.2.i = phi i32 [ %i.ex, %bb.u ], [ %i.fk, %bb.x ], [ %i.fx, %bb.aa ] ; 4 uses
  %.not128.i = icmp eq i32 %.0110.i, 0
  br i1 %.not128.i, label %tdefl_find_match.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gd = zext nneg i32 %.2.i to i64              ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !108
  %.not129.i = icmp eq i16 %i.gf, %i.ec
  br i1 %.not129.i, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gd
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader, %bb.ah
  %.0104.i = phi i32 [ %i.hb, %bb.ah ], [ 32, %.preheader ]
  %.0100.i = phi ptr [ %i.gw, %bb.ah ], [ %i.eb, %.preheader ] ; 7 uses
  %.098.i = phi ptr [ %i.gy, %bb.ah ], [ %i.gg, %.preheader ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0100.i, i64 2
  %i.gi = load i16, ptr %i.gh, align 2            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.098.i, i64 2
  %i.gk = load i16, ptr %i.gj, align 2            ; 2 uses
  %i.gl = icmp eq i16 %i.gi, %i.gk
  br i1 %i.gl, label %bb.ae, label %.critedge.i.split.loop.exit425

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %.0100.i, i64 4
  %i.gn = load i16, ptr %i.gm, align 2            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.098.i, i64 4
  %i.gp = load i16, ptr %i.go, align 2            ; 2 uses
  %i.gq = icmp eq i16 %i.gn, %i.gp
  br i1 %i.gq, label %bb.af, label %.critedge.i.split.loop.exit429

bb.af:                                            ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %.0100.i, i64 6
  %i.gs = load i16, ptr %i.gr, align 2            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.098.i, i64 6
  %i.gu = load i16, ptr %i.gt, align 2            ; 2 uses
  %i.gv = icmp eq i16 %i.gs, %i.gu
  br i1 %i.gv, label %bb.ag, label %.critedge.i.split.loop.exit433

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %.0100.i, i64 8 ; 3 uses
  %i.gx = load i16, ptr %i.gw, align 2            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.098.i, i64 8 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2            ; 2 uses
  %i.ha = icmp eq i16 %i.gx, %i.gz
  br i1 %i.ha, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag
  %i.hb = add nsw i32 %.0104.i, -1                ; 2 uses
  %.not130.i = icmp eq i32 %i.hb, 0
  br i1 %.not130.i, label %.critedge133.i, label %bb.ad, !llvm.loop !159

.critedge133.i:                                   ; preds = %bb.ah
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 258)
  br label %tdefl_find_match.exit

.critedge.i.split.loop.exit425:                   ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %.0100.i, i64 2
  br label %.critedge.i

.critedge.i.split.loop.exit429:                   ; preds = %bb.ae
  %i.he = getelementptr inbounds nuw i8, ptr %.0100.i, i64 4
  br label %.critedge.i

.critedge.i.split.loop.exit433:                   ; preds = %bb.af
  %i.hf = getelementptr inbounds nuw i8, ptr %.0100.i, i64 6
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ag, %.critedge.i.split.loop.exit433, %.critedge.i.split.loop.exit429, %.critedge.i.split.loop.exit425
  %.in = phi i16 [ %i.gp, %.critedge.i.split.loop.exit429 ], [ %i.gu, %.critedge.i.split.loop.exit433 ], [ %i.gk, %.critedge.i.split.loop.exit425 ], [ %i.gz, %bb.ag ]
  %.in389 = phi i16 [ %i.gn, %.critedge.i.split.loop.exit429 ], [ %i.gs, %.critedge.i.split.loop.exit433 ], [ %i.gi, %.critedge.i.split.loop.exit425 ], [ %i.gx, %bb.ag ]
  %.1101.i = phi ptr [ %i.he, %.critedge.i.split.loop.exit429 ], [ %i.hf, %.critedge.i.split.loop.exit433 ], [ %i.hd, %.critedge.i.split.loop.exit425 ], [ %i.gw, %bb.ag ]
  %i.hg = trunc i16 %.in389 to i8
end_hunk_1
begin_hunk_2_@tdefl_write_image_to_png_file_in_memory_ex:bb.a
  %i.gx = and i32 %i.gw, 15
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %i.hb = xor i32 %i.ha, %i.gu                    ; 2 uses
  %i.hc = lshr i32 %i.hb, 4
  %i.hd = and i32 %i.hb, 15
  %i.he = lshr i32 %i.gv, 4
  %i.hf = xor i32 %i.hd, %i.he
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = xor i32 %i.hc, %i.hi                    ; 2 uses
  %i.hk = lshr i32 %i.hj, 4
  %i.hl = and i32 %i.hj, 15
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = xor i32 %i.ho, %i.hk                    ; 2 uses
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = and i32 %i.hp, 15
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = xor i32 %i.hq, %i.hu                    ; 2 uses
  %i.hw = lshr i32 %i.hv, 4
  %i.hx = and i32 %i.hv, 15
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = xor i32 %i.ia, %i.hw                    ; 2 uses
  %i.ic = lshr i32 %i.ib, 4
  %i.id = and i32 %i.ib, 15
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = xor i32 %i.ic, %i.ig                    ; 2 uses
  %i.ii = lshr i32 %i.ih, 4
  %i.ij = and i32 %i.ih, 15
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = xor i32 %i.im, %i.ii                    ; 2 uses
  %i.io = lshr i32 %i.in, 4
  %i.ip = and i32 %i.in, 15
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = xor i32 %i.io, %i.is
  %i.iu = xor i32 %i.it, -1                       ; 4 uses
  %i.iv = lshr i32 %i.iu, 24
  %i.iw = trunc nuw i32 %i.iv to i8
  %i.ix = lshr i32 %i.iu, 16
  %i.iy = trunc i32 %i.ix to i8
  %i.iz = lshr i32 %i.iu, 8
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = trunc i32 %i.iu to i8
  %i.jc = load ptr, ptr %i.o, align 8, !tbaa !185 ; 25 uses
  store <16 x i8> <i8 -119, i8 80, i8 78, i8 71, i8 13, i8 10, i8 26, i8 10, i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.jc, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 17
  store i8 0, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 18
  store i8 %i.cn, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 19
  store i8 %i.co, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  store i8 0, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 21
  store i8 0, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 22
  store i8 %i.cq, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 23
  store i8 %i.cr, ptr %.sroa.37.0..sroa_idx, align 1
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store i8 8, ptr %.sroa.39.0..sroa_idx, align 1
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 25
  store i8 %i.cu, ptr %.sroa.41.0..sroa_idx, align 1
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 26
  store i8 0, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 27
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 1
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 28
  store i8 0, ptr %.sroa.47.0..sroa_idx, align 1
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 29
  store i8 %i.iw, ptr %.sroa.49.0..sroa_idx, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 30
  store i8 %i.iy, ptr %.sroa.51.0..sroa_idx, align 1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 31
  store i8 %i.ja, ptr %.sroa.53.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store i8 %i.jb, ptr %.sroa.55.0..sroa_idx, align 1
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 33
  store i8 %i.cw, ptr %.sroa.57.0..sroa_idx, align 1
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 34
  store i8 %i.cy, ptr %.sroa.58.0..sroa_idx, align 1
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 35
  store i8 %i.da, ptr %.sroa.59.0..sroa_idx, align 1
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 36
  store i8 %i.db, ptr %.sroa.60.0..sroa_idx, align 1
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 37
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %.sroa.61.0..sroa_idx, align 1
  %i.jd = add i64 %i.ck, 16                       ; 3 uses
  %i.je = load i64, ptr %i.m, align 8, !tbaa !186 ; 2 uses
  %i.jf = icmp ugt i64 %i.jd, %i.je
  br i1 %i.jf, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %i.jg = load i32, ptr %i.g, align 8, !tbaa !182
  %.not.i69 = icmp eq i32 %i.jg, 0
  br i1 %.not.i69, label %bb.k, label %.preheader.i70

.preheader.i70:                                   ; preds = %bb.i, %.preheader.i70
  %.025.i71 = phi i64 [ %i.ji, %.preheader.i70 ], [ %i.je, %bb.i ]
  %i.jh = shl i64 %.025.i71, 1
  %i.ji = call i64 @llvm.umax.i64(i64 %i.jh, i64 128) ; 4 uses
  %i.jj = icmp ugt i64 %i.jd, %i.ji
  br i1 %i.jj, label %.preheader.i70, label %bb.j, !llvm.loop !187

bb.j:                                             ; preds = %.preheader.i70
  %i.jk = call ptr @realloc(ptr noundef nonnull %i.jc, i64 noundef %i.ji) #35 ; 3 uses
  %.not31.i72 = icmp eq ptr %i.jk, null
  br i1 %.not31.i72, label %bb.k, label %.critedge.i73

.critedge.i73:                                    ; preds = %bb.j
  store ptr %i.jk, ptr %i.o, align 8, !tbaa !185
  store i64 %i.ji, ptr %i.m, align 8, !tbaa !186
  %.pre32.i74 = load i64, ptr %7, align 8, !tbaa !184
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 0, ptr %4, align 8, !tbaa !48
  call void @free(ptr noundef nonnull %i.e) #33
  %i.jl = load ptr, ptr %i.o, align 8, !tbaa !185
  call void @free(ptr noundef %i.jl) #33
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i, %.critedge.i73
  %i.jm = phi i64 [ %.pre32.i74, %.critedge.i73 ], [ %i.ck, %.lr.ph.i ]
  %i.jn = phi ptr [ %i.jk, %.critedge.i73 ], [ %i.jc, %.lr.ph.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jo, ptr noundef nonnull align 1 dereferenceable(16) @.str.14, i64 16, i1 false)
  store i64 %i.jd, ptr %7, align 8, !tbaa !184
  %i.jp = load ptr, ptr %i.o, align 8, !tbaa !185 ; 2 uses
  %i.jq = load i64, ptr %4, align 8, !tbaa !48    ; 4 uses
  %i.jr = add i64 %i.jq, 4                        ; 2 uses
  %.not1617.i = icmp eq i64 %i.jr, 0
  br i1 %.not1617.i, label %mz_crc32.exit83, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %bb.l
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 37 ; 2 uses
  %xtraiter = and i64 %i.jq, 1
  %i.jt = icmp eq i64 %i.jq, -3
  br i1 %i.jt, label %.lr.ph.i77.epil.preheader, label %.lr.ph.i77.preheader.new

.lr.ph.i77.preheader.new:                         ; preds = %.lr.ph.i77.preheader
  %unroll_iter = and i64 %i.jr, -2
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77, %.lr.ph.i77.preheader.new
  %.01220.i78 = phi i32 [ -1, %.lr.ph.i77.preheader.new ], [ %i.ld, %.lr.ph.i77 ] ; 2 uses
  %.01418.i80 = phi ptr [ %i.js, %.lr.ph.i77.preheader.new ], [ %i.km, %.lr.ph.i77 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i77.preheader.new ], [ %niter.next.1, %.lr.ph.i77 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.01418.i80, i64 1
  %i.jv = load i8, ptr %.01418.i80, align 1, !tbaa !7
  %i.jw = lshr i32 %.01220.i78, 4
  %i.jx = zext i8 %i.jv to i32                    ; 2 uses
  %i.jy = xor i32 %.01220.i78, %i.jx
  %i.jz = and i32 %i.jy, 15
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = xor i32 %i.kc, %i.jw                    ; 2 uses
  %i.ke = lshr i32 %i.kd, 4
  %i.kf = and i32 %i.kd, 15
  %i.kg = lshr i32 %i.jx, 4
  %i.kh = xor i32 %i.kf, %i.kg
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3
  %i.kl = xor i32 %i.ke, %i.kk                    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.01418.i80, i64 2 ; 2 uses
  %i.kn = load i8, ptr %i.ju, align 1, !tbaa !7
  %i.ko = lshr i32 %i.kl, 4
  %i.kp = zext i8 %i.kn to i32                    ; 2 uses
  %i.kq = xor i32 %i.kl, %i.kp
  %i.kr = and i32 %i.kq, 15
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = xor i32 %i.ku, %i.ko                    ; 2 uses
  %i.kw = lshr i32 %i.kv, 4
  %i.kx = and i32 %i.kv, 15
  %i.ky = lshr i32 %i.kp, 4
  %i.kz = xor i32 %i.kx, %i.ky
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3
  %i.ld = xor i32 %i.kw, %i.lc                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i77, !llvm.loop !14

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i77.epil.preheader

.lr.ph.i77.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i77.preheader
  %.01220.i78.epil.init = phi i32 [ -1, %.lr.ph.i77.preheader ], [ %i.ld, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.01418.i80.epil.init = phi ptr [ %i.js, %.lr.ph.i77.preheader ], [ %i.km, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod123 = trunc i64 %i.jq to i1
  call void @llvm.assume(i1 %lcmp.mod123)
  %i.le = load i8, ptr %.01418.i80.epil.init, align 1, !tbaa !7
  %i.lf = lshr i32 %.01220.i78.epil.init, 4
  %i.lg = zext i8 %i.le to i32                    ; 2 uses
  %i.lh = xor i32 %.01220.i78.epil.init, %i.lg
  %i.li = and i32 %i.lh, 15
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.lm = xor i32 %i.ll, %i.lf                    ; 2 uses
  %i.ln = lshr i32 %i.lm, 4
  %i.lo = and i32 %i.lm, 15
  %i.lp = lshr i32 %i.lg, 4
  %i.lq = xor i32 %i.lo, %i.lp
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc32, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3
  %i.lu = xor i32 %i.ln, %i.lt
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i77.epil.preheader
  %.lcssa = phi i32 [ %i.ld, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.lu, %.lr.ph.i77.epil.preheader ]
  %i.lv = xor i32 %.lcssa, -1
  br label %mz_crc32.exit83

mz_crc32.exit83:                                  ; preds = %bb.l, %._crit_edge.loopexit.i
  %.012.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.lv, %._crit_edge.loopexit.i ] ; 4 uses
  %i.lw = lshr i32 %.012.lcssa.i, 24
  %i.lx = trunc nuw i32 %i.lw to i8
  %i.ly = getelementptr inbounds i8, ptr %i.jp, i64 %i.ck
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !7
  %i.lz = lshr i32 %.012.lcssa.i, 16
  %i.ma = trunc i32 %i.lz to i8
  %i.mb = load ptr, ptr %i.o, align 8, !tbaa !185
  %i.mc = load i64, ptr %7, align 8, !tbaa !184
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -15
  store i8 %i.ma, ptr %i.me, align 1, !tbaa !7
  %i.mf = lshr i32 %.012.lcssa.i, 8
  %i.mg = trunc i32 %i.mf to i8
  %i.mh = load ptr, ptr %i.o, align 8, !tbaa !185
  %i.mi = load i64, ptr %7, align 8, !tbaa !184
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mi
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -14
  store i8 %i.mg, ptr %i.mk, align 1, !tbaa !7
  %i.ml = trunc i32 %.012.lcssa.i to i8
  %i.mm = load ptr, ptr %i.o, align 8, !tbaa !185
  %i.mn = load i64, ptr %7, align 8, !tbaa !184
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -13
  store i8 %i.ml, ptr %i.mp, align 1, !tbaa !7
  %i.mq = load i64, ptr %4, align 8, !tbaa !48
  %i.mr = add i64 %i.mq, 57
  store i64 %i.mr, ptr %4, align 8, !tbaa !48
  call void @free(ptr noundef nonnull %i.e) #33
  %i.ms = load ptr, ptr %i.o, align 8, !tbaa !185
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %mz_crc32.exit83, %bb.k, %bb.h, %bb.c
  %.054 = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ %i.ms, %mz_crc32.exit83 ], [ null, %bb.k ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret ptr %.054
}

; Function Attrs: nounwind uwtable
define hidden ptr @tdefl_write_image_to_png_file_in_memory(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 8)) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @tdefl_write_image_to_png_file_in_memory_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 6, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mz_zip_reader_init(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_zip_reader_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %mz_zip_reader_end.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !193
  %.not22.i = icmp eq ptr %i.d, null
  br i1 %.not22.i, label %bb.d, label %mz_zip_reader_end.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !194
  %.not23.i = icmp eq i32 %i.f, 0
  br i1 %.not23.i, label %bb.e, label %mz_zip_reader_end.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195  ; 2 uses
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @def_alloc_func, ptr %i.g, align 8, !tbaa !195
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = phi ptr [ @def_alloc_func, %bb.f ], [ %i.h, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !196
  %.not25.i = icmp eq ptr %i.k, null
  br i1 %.not25.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @def_free_func, ptr %i.j, align 8, !tbaa !196
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !197
  %.not26.i = icmp eq ptr %i.m, null
  br i1 %.not26.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr @def_realloc_func, ptr %i.l, align 8, !tbaa !197
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.e, align 4, !tbaa !194
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !198
  %i.p = tail call ptr %i.i(ptr noundef %i.o, i64 noundef 1, i64 noundef 152) #33, !inline_history !199 ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !193
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mz_zip_reader_end.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.p, i8 0, i64 152, i1 false)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !193  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !200
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 4, ptr %i.t, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store i32 4, ptr %i.u, align 8, !tbaa !205
  store i64 %1, ptr %0, align 8, !tbaa !206
  %i.v = tail call fastcc i32 @mz_zip_reader_read_central_dir(ptr noundef nonnull %0, i32 noundef %2)
  %.not12 = icmp eq i32 %i.v, 0
  br i1 %.not12, label %bb.m, label %mz_zip_reader_end.exit

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !193  ; 7 uses
  %.not23.i14 = icmp eq ptr %i.w, null
  br i1 %.not23.i14, label %mz_zip_reader_end.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !195
  %.not24.i15 = icmp eq ptr %i.x, null
  br i1 %.not24.i15, label %mz_zip_reader_end.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !196  ; 2 uses
  %.not25.i16 = icmp eq ptr %i.y, null
  br i1 %.not25.i16, label %mz_zip_reader_end.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = load i32, ptr %i.e, align 4, !tbaa !194
  %.not26.i17 = icmp eq i32 %i.z, 1
  br i1 %.not26.i17, label %bb.q, label %mz_zip_reader_end.exit

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.c, align 8, !tbaa !193
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !198
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !207
  tail call void %i.y(ptr noundef %i.aa, ptr noundef %i.ab) #33, !inline_history !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !196
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !198
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !207
  tail call void %i.ad(ptr noundef %i.ae, ptr noundef %i.af) #33, !inline_history !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !196
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !198
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !207
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.aj) #33, !inline_history !208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
end_hunk_2
begin_hunk_3_@zip_entries_delete:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 3 uses
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0
  %or.cond3 = and i1 %i.b, %i.d
  br i1 %or.cond3, label %bb.ac, label %zip_entries_total.exit

zip_entries_total.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !303  ; 15 uses
  %i.g = sext i32 %i.f to i64                     ; 7 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 24) #37 ; 24 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %zip_entries_total.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 1, ptr %i.i, align 4, !tbaa !312
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.not7693.i.i = icmp sgt i32 %i.f, 0            ; 3 uses
  br i1 %.not7693.i.i, label %.lr.ph96.i.i, label %.loopexit.thread.i

.lr.ph96.i.i:                                     ; preds = %bb.e
  %i.j = trunc i64 %2 to i32
  %.not7491.i.i = icmp sgt i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %wide.trip.count112.i.i = zext nneg i32 %i.f to i64 ; 7 uses
  br i1 %.not7491.i.i, label %.lr.ph96.split.us.preheader.i.i, label %.lr.ph96.split.i.i

.lr.ph96.split.us.preheader.i.i:                  ; preds = %.lr.ph96.i.i
  %wide.trip.count107.i.i = and i64 %2, 2147483647
  br label %.lr.ph96.split.us.i.i

.lr.ph96.split.us.i.i:                            ; preds = %bb.i, %.lr.ph96.split.us.preheader.i.i
  %indvars.iv109.i.i = phi i64 [ 0, %.lr.ph96.split.us.preheader.i.i ], [ %indvars.iv.next110.i.i, %bb.i ] ; 3 uses
  %.05694.us.i.i = phi i64 [ -1, %.lr.ph96.split.us.preheader.i.i ], [ %.2.ph.us.i.i, %bb.i ] ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv109.i.i to i32 ; 2 uses
  %i.n = call i32 @zip_entry_openbyindex(ptr noundef nonnull %0, i32 noundef %i.m) ; 2 uses
  %.not71.us.i.i = icmp eq i32 %i.n, 0
  br i1 %.not71.us.i.i, label %.preheader.us.i.i, label %zip_entry_mark.exit.thread19.i

bb.f:                                             ; preds = %.preheader.us.i.i, %zip_name_match.exit.thread.us.i.i
  %indvars.iv104.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next105.i.i, %zip_name_match.exit.thread.us.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !289  ; 2 uses
  %i.q = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.p) #36
  %sext.i.us.i.i = shl i64 %i.q, 32               ; 2 uses
  %i.r = ashr exact i64 %sext.i.us.i.i, 32        ; 2 uses
  %i.s = add nsw i64 %i.r, 1
  %i.t = call noalias ptr @calloc(i64 noundef %i.s, i64 noundef 1) #37 ; 5 uses
  %.not.i.i.us.i.i = icmp ne ptr %i.t, null
  %i.u = icmp ne i64 %sext.i.us.i.i, 0
  %or.cond.i.i.us.i.i = and i1 %.not.i.i.us.i.i, %i.u
  br i1 %or.cond.i.i.us.i.i, label %.lr.ph.i.i.us.i.i, label %zip_strrpl.exit.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %bb.f, %bb.h
  %.022.i.i.us.i.i = phi ptr [ %i.x, %bb.h ], [ %i.t, %bb.f ] ; 2 uses
  %.01321.i.i.us.i.i = phi i64 [ %i.y, %bb.h ], [ 0, %bb.f ]
  %.01620.i.i.us.i.i = phi ptr [ %i.v, %bb.h ], [ %i.p, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01620.i.i.us.i.i, i64 1
  %i.w = load i8, ptr %.01620.i.i.us.i.i, align 1, !tbaa !7 ; 2 uses
  switch i8 %i.w, label %bb.h [
    i8 0, label %zip_strrpl.exit.i.us.i.i
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.us.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.us.i.i
  %.014.i.i.us.i.i = phi i8 [ 47, %bb.g ], [ %i.w, %.lr.ph.i.i.us.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.022.i.i.us.i.i, i64 1
  store i8 %.014.i.i.us.i.i, ptr %.022.i.i.us.i.i, align 1, !tbaa !7
  %i.y = add nuw i64 %.01321.i.i.us.i.i, 1        ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not.i.i.us.i.i, label %zip_strrpl.exit.i.us.i.i, label %.lr.ph.i.i.us.i.i, !llvm.loop !295

zip_strrpl.exit.i.us.i.i:                         ; preds = %bb.h, %.lr.ph.i.i.us.i.i, %bb.f
  %.not.i.us.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.us.i.i, label %zip_name_match.exit.thread.us.i.i, label %zip_name_match.exit.us.i.i

zip_name_match.exit.us.i.i:                       ; preds = %zip_strrpl.exit.i.us.i.i
  %i.z = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.t) #36
  %.not88.us.i.i = icmp eq i32 %i.z, 0
  call void @free(ptr noundef nonnull %i.t) #33
  br i1 %.not88.us.i.i, label %..critedge_crit_edge.us.i.i, label %zip_name_match.exit.thread.us.i.i

zip_name_match.exit.thread.us.i.i:                ; preds = %zip_name_match.exit.us.i.i, %zip_strrpl.exit.i.us.i.i
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %exitcond108.not.i.i = icmp eq i64 %indvars.iv.next105.i.i, %wide.trip.count107.i.i
  br i1 %exitcond108.not.i.i, label %..critedge_crit_edge.us.i.i, label %bb.f, !llvm.loop !313

..critedge_crit_edge.us.i.i:                      ; preds = %zip_name_match.exit.thread.us.i.i, %zip_name_match.exit.us.i.i
  %i.aa = phi i1 [ false, %zip_name_match.exit.thread.us.i.i ], [ true, %zip_name_match.exit.us.i.i ]
  %.sink.i.i = phi i32 [ 0, %zip_name_match.exit.thread.us.i.i ], [ 1, %zip_name_match.exit.us.i.i ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv109.i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.sink.i.i, ptr %i.ac, align 4, !tbaa !314
  %i.ad = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef nonnull %3)
  %.not75.not.us.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not75.not.us.i.i, label %zip_entry_mark.exit.thread19.i, label %bb.i

bb.i:                                             ; preds = %..critedge_crit_edge.us.i.i
  %i.ae = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.af = load i64, ptr %i.l, align 8, !tbaa !250 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !316
  store i32 -1, ptr %i.ab, align 8, !tbaa !317
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ah, align 8, !tbaa !318
  %spec.select.us.i.i = call i64 @llvm.umin.i64(i64 %.05694.us.i.i, i64 %i.af)
  %.2.ph.us.i.i = select i1 %i.aa, i64 %spec.select.us.i.i, i64 %.05694.us.i.i ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %.critedge87.preheader.i.i, label %.lr.ph96.split.us.i.i, !llvm.loop !319

.preheader.us.i.i:                                ; preds = %.lr.ph96.split.us.i.i
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !294
  br label %bb.f

.critedge87.preheader.i.i:                        ; preds = %bb.j, %bb.i
  %.056.lcssa.i.i = phi i64 [ %.2.ph.us.i.i, %bb.i ], [ -1, %bb.j ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count112.i.i, 1
  %i.aj = icmp eq i32 %i.f, 1
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.critedge87.preheader.i.i.new

.critedge87.preheader.i.i.new:                    ; preds = %.critedge87.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count112.i.i, 2147483646
  br label %.lr.ph.i.i

.lr.ph96.split.i.i:                               ; preds = %.lr.ph96.i.i, %bb.j
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %.lr.ph96.i.i ] ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.al = call i32 @zip_entry_openbyindex(ptr noundef nonnull %0, i32 noundef %i.ak) ; 2 uses
  %.not71.i.i = icmp eq i32 %i.al, 0
  br i1 %.not71.i.i, label %.preheader.i.i, label %zip_entry_mark.exit.thread19.i

.preheader.i.i:                                   ; preds = %.lr.ph96.split.i.i
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %i.an, align 4, !tbaa !314
  %i.ao = call i32 @mz_zip_reader_file_stat(ptr noundef nonnull %0, i32 noundef %i.ak, ptr noundef nonnull %3)
  %.not75.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not75.not.i.i, label %zip_entry_mark.exit.thread19.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %i.ap = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !316
  store i32 -1, ptr %i.am, align 8, !tbaa !317
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 0, ptr %i.as, align 8, !tbaa !318
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count112.i.i
  br i1 %exitcond.not.i.i, label %.critedge87.preheader.i.i, label %.lr.ph96.split.i.i, !llvm.loop !319

.lr.ph.i.i:                                       ; preds = %.critedge87.i.i.1, %.critedge87.preheader.i.i.new
  %indvars.iv114.i.i = phi i64 [ 0, %.critedge87.preheader.i.i.new ], [ %indvars.iv.next115.i.i.1, %.critedge87.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.critedge87.preheader.i.i.new ], [ %niter.next.1, %.critedge87.i.i.1 ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv114.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !316
  %i.aw = icmp ugt i64 %i.av, %.056.lcssa.i.i
  br i1 %i.aw, label %bb.k, label %.critedge87.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !314
  %.not77.i.i = icmp eq i32 %i.ay, 1
  %spec.store.select = select i1 %.not77.i.i, i32 1, i32 2
  store i32 %spec.store.select, ptr %i.ax, align 4
  br label %.critedge87.i.i

.critedge87.i.i:                                  ; preds = %bb.k, %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv114.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !316
  %i.bc = icmp ugt i64 %i.bb, %.056.lcssa.i.i
  br i1 %i.bc, label %bb.l, label %.critedge87.i.i.1

bb.l:                                             ; preds = %.critedge87.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !314
  %.not77.i.i.1 = icmp eq i32 %i.be, 1
  %spec.store.select.1 = select i1 %.not77.i.i.1, i32 1, i32 2
  store i32 %spec.store.select.1, ptr %i.bd, align 4
  br label %.critedge87.i.i.1

.critedge87.i.i.1:                                ; preds = %bb.l, %.critedge87.i.i
  %indvars.iv.next115.i.i.1 = add nuw nsw i64 %indvars.iv114.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !320

zip_entry_mark.exit.thread19.i:                   ; preds = %.preheader.i.i, %.lr.ph96.split.i.i, %..critedge_crit_edge.us.i.i, %.lr.ph96.split.us.i.i
  %.364.i.ph.i = phi i32 [ -3, %..critedge_crit_edge.us.i.i ], [ %i.n, %.lr.ph96.split.us.i.i ], [ -3, %.preheader.i.i ], [ %i.al, %.lr.ph96.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.sink.split

.loopexit.i.unr-lcssa:                            ; preds = %.critedge87.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.unr-lcssa, %.critedge87.preheader.i.i
  %indvars.iv114.i.i.epil.init = phi i64 [ 0, %.critedge87.preheader.i.i ], [ %indvars.iv.next115.i.i.1, %.loopexit.i.unr-lcssa ]
  %lcmp.mod139 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv114.i.i.epil.init ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !316
  %i.bi = icmp ugt i64 %i.bh, %.056.lcssa.i.i
  br i1 %i.bi, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !314
  %.not77.i.i.epil = icmp eq i32 %i.bk, 1
  %spec.store.select.epil = select i1 %.not77.i.i.epil, i32 1, i32 2
  store i32 %spec.store.select.epil, ptr %i.bj, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.epil.preheader, %bb.m, %.loopexit.i.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bl = call noalias ptr @calloc(i64 noundef %wide.trip.count112.i.i, i64 noundef 8) #37 ; 8 uses
  %.not.i12.i = icmp eq ptr %i.bl, null
  br i1 %.not.i12.i, label %.sink.split, label %.lr.ph.i14.i

.loopexit.thread.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.bm = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 8) #37 ; 2 uses
  %.not.i1243.i = icmp eq ptr %i.bm, null
  br i1 %.not.i1243.i, label %.sink.split, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %zip_sort.exit.thread.i.i, %.loopexit.thread.i
  %i.bn = phi i64 [ %i.g, %.loopexit.thread.i ], [ %wide.trip.count112.i.i, %zip_sort.exit.thread.i.i ]
  %i.bo = phi ptr [ %i.bm, %.loopexit.thread.i ], [ %i.bl, %zip_sort.exit.thread.i.i ] ; 7 uses
  %i.bp = call noalias ptr @calloc(i64 noundef %i.bn, i64 noundef 8) #37 ; 11 uses
  %.not57.i.i = icmp eq ptr %i.bp, null
  br i1 %.not57.i.i, label %zip_entry_finalize.exit.thread23.i, label %.preheader.i13.i

zip_entry_finalize.exit.thread23.i:               ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.bo) #33
  br label %.sink.split

.preheader.i13.i:                                 ; preds = %._crit_edge.i.i
  %i.bq = add i32 %i.f, -1                        ; 2 uses
  %i.br = icmp sgt i32 %i.f, 1
  br i1 %i.br, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %.preheader.i13.i
  %wide.trip.count76.i.i = zext nneg i32 %i.bq to i64 ; 5 uses
  %.pre.i.i = load i64, ptr %i.bo, align 8, !tbaa !247 ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 5
  br i1 %min.iters.check, label %.lr.ph66.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader.i.i
  %n.vec = and i64 %wide.trip.count76.i.i, 2147483644 ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load121, %vector.body ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %wide.load = load <2 x i64>, ptr %i.bt, align 8, !tbaa !247 ; 3 uses
  %wide.load121 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !247 ; 4 uses
  %i.bv = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load121, <2 x i32> <i32 1, i32 2>
  %i.bx = sub <2 x i64> %wide.load, %i.bv
  %i.by = sub <2 x i64> %wide.load121, %i.bw
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !tbaa !247
  store <2 x i64> %i.by, ptr %i.ca, align 8, !tbaa !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load121, i64 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count76.i.i
  br i1 %cmp.n, label %._crit_edge67.thread.i.i, label %.lr.ph66.i.i.preheader

.lr.ph66.i.i.preheader:                           ; preds = %.lr.ph66.preheader.i.i, %middle.block
  %.ph = phi i64 [ %.pre.i.i, %.lr.ph66.preheader.i.i ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv73.i.i.ph = phi i64 [ 0, %.lr.ph66.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph66.i.i

.lr.ph.i14.i:                                     ; preds = %.loopexit.i, %zip_sort.exit.thread.i.i
  %indvars.iv.i15.i = phi i64 [ %indvars.iv.next.i16.i, %zip_sort.exit.thread.i.i ], [ 0, %.loopexit.i ] ; 15 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i15.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !316 ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i15.i
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !247
  %i.cg = trunc nuw i64 %indvars.iv.i15.i to i32  ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %zip_index_next.exit.i.i.i, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ci = trunc nuw i64 %i.cl to i32              ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %zip_index_next.exit.i.i.i, label %.lr.ph, !llvm.loop !322

.lr.ph:                                           ; preds = %.lr.ph.i14.i, %bb.n
  %i.ck = phi i32 [ %i.ci, %bb.n ], [ %i.cg, %.lr.ph.i14.i ]
  %indvars.iv.i.i.i.i118 = phi i64 [ %i.cl, %bb.n ], [ %indvars.iv.i15.i, %.lr.ph.i14.i ]
  %i.cl = add nsw i64 %indvars.iv.i.i.i.i118, -1  ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !247
  %i.co = icmp ugt i64 %i.ce, %i.cn
  br i1 %i.co, label %.zip_index_next.exit.i.i.i_crit_edge, label %bb.n, !llvm.loop !322

.zip_index_next.exit.i.i.i_crit_edge:             ; preds = %.lr.ph
  br label %zip_index_next.exit.i.i.i, !llvm.loop !322

zip_index_next.exit.i.i.i:                        ; preds = %bb.n, %.zip_index_next.exit.i.i.i_crit_edge, %.lr.ph.i14.i
  %spec.select.i.i.i.i = phi i32 [ 0, %.lr.ph.i14.i ], [ %i.ck, %.zip_index_next.exit.i.i.i_crit_edge ], [ 0, %bb.n ] ; 6 uses
  %i.cp = zext nneg i32 %spec.select.i.i.i.i to i64 ; 5 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.i15.i, %i.cp
  br i1 %.not.i.i.i, label %zip_sort.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %zip_index_next.exit.i.i.i
  %i.cq = icmp samesign ugt i64 %indvars.iv.i15.i, %i.cp
  br i1 %i.cq, label %.thread.i.i, label %bb.p

.thread.i.i:                                      ; preds = %bb.o
  %i.cr = shl nuw nsw i64 %indvars.iv.i15.i, 3    ; 2 uses
  %i.cs = xor i32 %spec.select.i.i.i.i, -1
  %i.ct = trunc nuw nsw i64 %indvars.iv.i15.i to i32
  %i.cu = add nsw i32 %i.cs, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 3                ; 3 uses
  %i.cx = sub nsw i64 %i.cr, %i.cw
  %scevgep.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.cx
  %i.cy = add nsw i64 %i.cr, -8
  %i.cz = sub i64 %i.cy, %i.cw
  %scevgep20.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.cz
  %i.da = add nuw nsw i64 %i.cw, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep20.i.i.i, i64 %i.da, i1 false), !tbaa !247
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cp
  store i64 %i.ce, ptr %i.db, align 8, !tbaa !247
  br label %.lr.ph.i.i.i.preheader

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cp
  store i64 %i.ce, ptr %i.dc, align 8, !tbaa !247
  %.not62.i.i = icmp eq i64 %indvars.iv.i15.i, 0
  br i1 %.not62.i.i, label %zip_index_update.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.p, %.thread.i.i
  %xtraiter140 = and i64 %indvars.iv.i15.i, 1
  %i.dd = icmp eq i64 %indvars.iv.i15.i, 1
  br i1 %i.dd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter143 = and i64 %indvars.iv.i15.i, 9223372036854775806
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %bb.s ] ; 3 uses
  %niter144 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter144.next.1, %bb.s ]
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i.i.i ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !317 ; 2 uses
  %.not.i61.i.i = icmp slt i32 %i.df, %spec.select.i.i.i.i
  br i1 %.not.i61.i.i, label %.lr.ph.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.dg = add nuw nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !317
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.q, %.lr.ph.i.i.i
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !317 ; 2 uses
  %.not.i61.i.i.1 = icmp slt i32 %i.dj, %spec.select.i.i.i.i
  br i1 %.not.i61.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.1
  %i.dk = add nuw nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !317
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter144.next.1 = add nuw i64 %niter144, 2     ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %zip_index_update.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !323

zip_index_update.exit.i.i.loopexit.unr-lcssa:     ; preds = %bb.s
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %zip_index_update.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %zip_index_update.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %zip_index_update.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %indvars.iv.i15.i to i1
  call void @llvm.assume(i1 %lcmp.mod142)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !317 ; 2 uses
  %.not.i61.i.i.epil = icmp slt i32 %i.dm, %spec.select.i.i.i.i
  br i1 %.not.i61.i.i.epil, label %zip_index_update.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.dn = add nuw nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !317
  br label %zip_index_update.exit.i.i

zip_index_update.exit.i.i:                        ; preds = %zip_index_update.exit.i.i.loopexit.unr-lcssa, %bb.t, %.lr.ph.i.i.i.epil.preheader, %bb.p
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.cp
  %i.dp = trunc nuw nsw i64 %indvars.iv.i15.i to i32
  store i32 %i.dp, ptr %i.do, align 8, !tbaa !317
  br label %zip_sort.exit.thread.i.i

zip_sort.exit.thread.i.i:                         ; preds = %zip_index_update.exit.i.i, %zip_index_next.exit.i.i.i
  store i32 %spec.select.i.i.i.i, ptr %i.cc, align 8, !tbaa !317
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %indvars.iv.next.i16.i, %wide.trip.count112.i.i
  br i1 %exitcond.not.i17.i, label %._crit_edge.i.i, label %.lr.ph.i14.i, !llvm.loop !324

._crit_edge67.i.i:                                ; preds = %.preheader.i13.i
  %i.dq = load i64, ptr %0, align 8, !tbaa !304
  %i.dr = sext i32 %i.bq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !247
  %i.du = sub i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.dr
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !247
  br i1 %.not7693.i.i, label %.lr.ph70.preheader.i.i, label %.loopexit

.lr.ph70.preheader.i.i:                           ; preds = %._crit_edge67.thread.i.i, %._crit_edge67.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter145 = and i64 %wide.trip.count81.i.i, 3 ; 3 uses
  %i.dw = add i32 %i.f, -1
  %i.dx = icmp ult i32 %i.dw, 3
  br i1 %i.dx, label %.lr.ph70.i.i.epil.preheader, label %.lr.ph70.preheader.i.i.new

.lr.ph70.preheader.i.i.new:                       ; preds = %.lr.ph70.preheader.i.i
  %unroll_iter148 = and i64 %wide.trip.count81.i.i, 2147483644
  br label %.lr.ph70.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader, %.lr.ph66.i.i
  %i.dy = phi i64 [ %i.ea, %.lr.ph66.i.i ], [ %.ph, %.lr.ph66.i.i.preheader ]
  %indvars.iv73.i.i = phi i64 [ %indvars.iv.next74.i.i, %.lr.ph66.i.i ], [ %indvars.iv73.i.i.ph, %.lr.ph66.i.i.preheader ] ; 2 uses
  %indvars.iv.next74.i.i = add nuw nsw i64 %indvars.iv73.i.i, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next74.i.i
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !247 ; 2 uses
  %i.eb = sub i64 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv73.i.i
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !247
  %exitcond77.not.i.i = icmp eq i64 %indvars.iv.next74.i.i, %wide.trip.count76.i.i
  br i1 %exitcond77.not.i.i, label %._crit_edge67.thread.i.i, label %.lr.ph66.i.i, !llvm.loop !325

._crit_edge67.thread.i.i:                         ; preds = %.lr.ph66.i.i, %middle.block
  %i.ed = load i64, ptr %0, align 8, !tbaa !304
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %wide.trip.count76.i.i
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !247
  %i.eg = sub i64 %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %wide.trip.count76.i.i
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !247
  br label %.lr.ph70.preheader.i.i

.lr.ph70.i.i:                                     ; preds = %.lr.ph70.i.i, %.lr.ph70.preheader.i.i.new
  %indvars.iv78.i.i = phi i64 [ 0, %.lr.ph70.preheader.i.i.new ], [ %indvars.iv.next79.i.i.3, %.lr.ph70.i.i ] ; 5 uses
  %niter149 = phi i64 [ 0, %.lr.ph70.preheader.i.i.new ], [ %niter149.next.3, %.lr.ph70.i.i ]
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv78.i.i ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !317
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !247
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %i.em, ptr %i.en, align 8, !tbaa !318
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv78.i.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !317
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !247
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !318
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv78.i.i ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !317
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !247
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !318
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv78.i.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !317
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !247
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !318
  %indvars.iv.next79.i.i.3 = add nuw nsw i64 %indvars.iv78.i.i, 4 ; 2 uses
  %niter149.next.3 = add nuw i64 %niter149, 4     ; 2 uses
  %niter149.ncmp.3 = icmp eq i64 %niter149.next.3, %unroll_iter148
  br i1 %niter149.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph70.i.i, !llvm.loop !326

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph70.i.i
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.loopexit, label %.lr.ph70.i.i.epil.preheader

.lr.ph70.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph70.preheader.i.i
  %indvars.iv78.i.i.epil.init = phi i64 [ 0, %.lr.ph70.preheader.i.i ], [ %indvars.iv.next79.i.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod147 = icmp ne i64 %xtraiter145, 0
  call void @llvm.assume(i1 %lcmp.mod147)
  br label %.lr.ph70.i.i.epil

.lr.ph70.i.i.epil:                                ; preds = %.lr.ph70.i.i.epil, %.lr.ph70.i.i.epil.preheader
  %indvars.iv78.i.i.epil = phi i64 [ %indvars.iv78.i.i.epil.init, %.lr.ph70.i.i.epil.preheader ], [ %indvars.iv.next79.i.i.epil, %.lr.ph70.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph70.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph70.i.i.epil ]
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv78.i.i.epil ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !317
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !247
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !318
  %indvars.iv.next79.i.i.epil = add nuw nsw i64 %indvars.iv78.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter145
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph70.i.i.epil, !llvm.loop !327

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph70.i.i.epil, %._crit_edge67.i.i
  call void @free(ptr noundef nonnull %i.bp) #33
  call void @free(ptr noundef nonnull %i.bo) #33
  %i.fp = call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #37 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !293 ; 4 uses
  store i32 2, ptr %i.i, align 4, !tbaa !312
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 112 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !209
  %i.fv = call i32 @fseeko(ptr noundef %i.fu, i64 noundef 0, i32 noundef 0)
  %.not.i31 = icmp eq i32 %i.fv, 0
  br i1 %.not.i31, label %.preheader109.i, label %.thread.sink.split.i

.preheader109.i:                                  ; preds = %bb.u
  br i1 %.not7693.i.i, label %.preheader108.lr.ph.i, label %._crit_edge141.i

.preheader108.lr.ph.i:                            ; preds = %.preheader109.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %bb.ab, %.preheader108.lr.ph.i
  %.081140.i = phi i32 [ 0, %.preheader108.lr.ph.i ], [ %.182.lcssa.i, %bb.ab ] ; 2 uses
  %.083139.i = phi i32 [ 0, %.preheader108.lr.ph.i ], [ %.386.lcssa.i, %bb.ab ] ; 2 uses
  %.088138.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %.189.lcssa.i, %bb.ab ] ; 2 uses
  %.090137.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %.191.lcssa.i, %bb.ab ] ; 2 uses
  %.092136.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %i.iw, %bb.ab ]
  %.095135.i = phi i64 [ 0, %.preheader108.lr.ph.i ], [ %i.iv, %bb.ab ] ; 2 uses
  %i.fx = sext i32 %.083139.i to i64              ; 3 uses
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !314 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i, label %.preheader107.i

.preheader107.loopexit.i:                         ; preds = %.lr.ph.i
  %i.gc = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.preheader107.i

.preheader107.i:                                  ; preds = %.preheader107.loopexit.i, %.preheader108.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i, %.preheader107.loopexit.i ], [ %i.fx, %.preheader108.i ] ; 2 uses
  %i.gd = phi i32 [ %i.gn, %.preheader107.loopexit.i ], [ %i.ga, %.preheader108.i ] ; 2 uses
  %.196.lcssa.i = phi i64 [ %i.gk, %.preheader107.loopexit.i ], [ %.095135.i, %.preheader108.i ] ; 2 uses
  %.193.lcssa.i = phi i64 [ %i.gk, %.preheader107.loopexit.i ], [ %.092136.i, %.preheader108.i ] ; 2 uses
  %.184.lcssa.i = phi i32 [ %i.gc, %.preheader107.loopexit.i ], [ %.083139.i, %.preheader108.i ] ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 1
  %i.gf = icmp slt i32 %.184.lcssa.i, %i.f
  %i.gg = and i1 %i.ge, %i.gf
  br i1 %i.gg, label %.lr.ph125.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader108.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.fx, %.preheader108.i ] ; 2 uses
  %.196117.i = phi i64 [ %i.gk, %.lr.ph.i ], [ %.095135.i, %.preheader108.i ]
  %i.gh = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !318
  %i.gk = add i64 %i.gj, %.196117.i               ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.gl = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.next.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !314 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  %i.gp = icmp slt i64 %indvars.iv.next.i, %i.g
  %i.gq = and i1 %i.gp, %i.go
  br i1 %i.gq, label %.lr.ph.i, label %.preheader107.loopexit.i, !llvm.loop !328

.preheader.loopexit.i:                            ; preds = %.lr.ph125.i
  %i.gr = trunc nsw i64 %indvars.iv.next159.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader107.i
  %.pre-phi165.i = phi i64 [ %indvars.iv.next159.i, %.preheader.loopexit.i ], [ %.pre-phi.i, %.preheader107.i ]
  %i.gs = phi i32 [ %i.hg, %.preheader.loopexit.i ], [ %i.gd, %.preheader107.i ]
  %.294.lcssa.i = phi i64 [ %i.hb, %.preheader.loopexit.i ], [ %.193.lcssa.i, %.preheader107.i ] ; 2 uses
  %.191.lcssa.i = phi i64 [ %i.hc, %.preheader.loopexit.i ], [ %.090137.i, %.preheader107.i ] ; 3 uses
  %.285.lcssa.i = phi i32 [ %i.gr, %.preheader.loopexit.i ], [ %.184.lcssa.i, %.preheader107.i ] ; 2 uses
  %.182.lcssa.i = phi i32 [ %i.hd, %.preheader.loopexit.i ], [ %.081140.i, %.preheader107.i ] ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 2
  %i.gu = icmp slt i32 %.285.lcssa.i, %i.f
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph132.i, label %._crit_edge.i

.lr.ph132.i:                                      ; preds = %.preheader.i
  %i.gw = trunc i64 %.191.lcssa.i to i32
  br label %bb.v

.lr.ph125.i:                                      ; preds = %.preheader107.i, %.lr.ph125.i
  %indvars.iv158.i = phi i64 [ %indvars.iv.next159.i, %.lr.ph125.i ], [ %.pre-phi.i, %.preheader107.i ] ; 3 uses
  %.182124.i = phi i32 [ %i.hd, %.lr.ph125.i ], [ %.081140.i, %.preheader107.i ]
  %.191122.i = phi i64 [ %i.hc, %.lr.ph125.i ], [ %.090137.i, %.preheader107.i ]
  %.294121.i = phi i64 [ %i.hb, %.lr.ph125.i ], [ %.193.lcssa.i, %.preheader107.i ]
  %i.gx = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv158.i
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv158.i
  store i32 1, ptr %i.gy, align 4, !tbaa !3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !318 ; 2 uses
  %i.hb = add i64 %i.ha, %.294121.i               ; 2 uses
  %i.hc = add i64 %i.ha, %.191122.i               ; 2 uses
  %indvars.iv.next159.i = add nsw i64 %indvars.iv158.i, 1 ; 5 uses
  %i.hd = add nsw i32 %.182124.i, 1               ; 2 uses
  %i.he = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.next159.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !314 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 1
  %i.hi = icmp slt i64 %indvars.iv.next159.i, %i.g
  %i.hj = and i1 %i.hi, %i.hh
  br i1 %i.hj, label %.lr.ph125.i, label %.preheader.loopexit.i, !llvm.loop !329

bb.v:                                             ; preds = %bb.w, %.lr.ph132.i
  %indvars.iv161.i = phi i64 [ %.pre-phi165.i, %.lr.ph132.i ], [ %indvars.iv.next162.i, %bb.w ] ; 3 uses
  %.189130.i = phi i64 [ %.088138.i, %.lr.ph132.i ], [ %i.ho, %bb.w ]
  %i.hk = load ptr, ptr %i.fs, align 8, !tbaa !221 ; 2 uses
  %.not103.not.i = icmp eq ptr %i.hk, null
  br i1 %.not103.not.i, label %.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hl = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv161.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !318
  %i.ho = add i64 %i.hn, %.189130.i               ; 2 uses
  %i.hp = load ptr, ptr %i.fw, align 8, !tbaa !222
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %indvars.iv161.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 42 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = sub i32 %i.hv, %i.gw
  store i32 %i.hw, ptr %i.hu, align 2
  %indvars.iv.next162.i = add nsw i64 %indvars.iv161.i, 1 ; 4 uses
  %i.hx = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv.next162.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !314
  %i.ia = icmp eq i32 %i.hz, 2
  %i.ib = icmp slt i64 %indvars.iv.next162.i, %i.g
  %i.ic = and i1 %i.ib, %i.ia
  br i1 %i.ic, label %bb.v, label %._crit_edge.loopexit.i, !llvm.loop !330

._crit_edge.loopexit.i:                           ; preds = %bb.w
  %i.id = trunc nsw i64 %indvars.iv.next162.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.189.lcssa.i = phi i64 [ %.088138.i, %.preheader.i ], [ %i.ho, %._crit_edge.loopexit.i ] ; 6 uses
  %.386.lcssa.i = phi i32 [ %.285.lcssa.i, %.preheader.i ], [ %i.id, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ie = load ptr, ptr %i.ft, align 8, !tbaa !209 ; 5 uses
  %i.if = call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 1, i64 noundef 4096) #37 ; 4 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %zip_files_move.exit.i, label %.preheader.i.i32

.preheader.i.i32:                                 ; preds = %._crit_edge.i
  %i.ih = icmp sgt i64 %.189.lcssa.i, 0
  br i1 %i.ih, label %.lr.ph.i.i33, label %zip_file_move.exit.thread.i.i

.lr.ph.i.i33:                                     ; preds = %.preheader.i.i32, %zip_file_move.exit.i.i
  %.037.i.i = phi i64 [ %i.ir, %zip_file_move.exit.i.i ], [ 0, %.preheader.i.i32 ]
  %.02436.i.i = phi i64 [ %i.iq, %zip_file_move.exit.i.i ], [ %.189.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %.02535.i.i = phi i64 [ %i.ip, %zip_file_move.exit.i.i ], [ %.294.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %.02634.i.i = phi i64 [ %i.io, %zip_file_move.exit.i.i ], [ %.196.lcssa.i, %.preheader.i.i32 ] ; 2 uses
  %i.ii = call i64 @llvm.umin.i64(i64 %.02436.i.i, i64 4096) ; 8 uses
  %i.ij = call i32 @fseeko(ptr noundef %i.ie, i64 noundef %.02535.i.i, i32 noundef 0)
  %.not.i.i.i34 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i.i34, label %bb.x, label %.sink.split.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i33
  %i.ik = call i64 @fread(ptr noundef nonnull %i.if, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.ii, ptr noundef %i.ie)
  %.not20.i.i.i = icmp eq i64 %i.ik, %i.ii
  br i1 %.not20.i.i.i, label %bb.y, label %.sink.split.i.i.i

end_hunk_3
begin_hunk_4_@zip_extract:bb.a
bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -22, %bb.a ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tdefl_compress_block(ptr nofree noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 29 uses
  %i.c = alloca [33 x i32], align 16              ; 49 uses
  %i.d = alloca [33 x i32], align 16              ; 18 uses
  %i.e = alloca [33 x i32], align 16              ; 21 uses
  %i.f = alloca [33 x i32], align 16              ; 18 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 36682      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.g, i8 8, i64 144, i1 false), !tbaa !7
  %scevgep.i = getelementptr i8, ptr %0, i64 36826
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %scevgep.i, i8 9, i64 112, i1 false), !tbaa !7
  %scevgep73.i = getelementptr i8, ptr %0, i64 36938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %scevgep73.i, i8 7, i64 24, i1 false), !tbaa !7
  %scevgep74.i = getelementptr i8, ptr %0, i64 36962
  store i64 578721382704613384, ptr %scevgep74.i, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36970 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.h, i8 5, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.e, i8 0, i64 132, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 288
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i.i, label %bb.c, !llvm.loop !340

.loopexit.loopexit.i.i:                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !3
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aw, ptr %i.ax, align 16, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !3
  %i.ba = add nsw i32 %i.az, %i.aw
  %i.bb = shl i32 %i.ba, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !3
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add nsw i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.bq, ptr %i.br, align 16, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load i32, ptr %i.bs, align 16, !tbaa !3
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = shl i32 %i.bu, 1                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add nsw i32 %i.by, %i.bv
  %i.ca = shl i32 %i.bz, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !3
  %i.ce = add nsw i32 %i.cd, %i.ca
  %i.cf = shl i32 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = shl i32 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ck, ptr %i.cl, align 16, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !3
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = shl i32 %i.co, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !3
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = shl i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34954
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.loopexit.loopexit.i.i
  %indvars.iv147.i.i = phi i64 [ 0, %.loopexit.loopexit.i.i ], [ %indvars.iv.next148.i.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv147.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7   ; 4 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = zext i8 %i.dd to i32                    ; 2 uses
  %i.dg = zext i8 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !3
  %xtraiter = and i32 %i.df, 3                    ; 3 uses
  %i.dk = icmp ult i8 %i.dd, 4
  br i1 %i.dk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i32 %i.df, 252
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.0115.i.i = phi i32 [ %i.di, %.new ], [ %i.dy, %bb.f ] ; 5 uses
  %.067114.i.i = phi i32 [ 0, %.new ], [ %i.dx, %bb.f ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.dl = shl i32 %.067114.i.i, 3
  %i.dm = shl i32 %.0115.i.i, 2
  %i.dn = and i32 %i.dm, 4
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = and i32 %.0115.i.i, 2
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = lshr i32 %.0115.i.i, 2
  %i.ds = and i32 %i.dr, 1
  %i.dt = or disjoint i32 %i.dq, %i.ds
  %i.du = lshr i32 %.0115.i.i, 3
  %i.dv = shl i32 %i.dt, 1
  %i.dw = and i32 %i.du, 1
  %i.dx = or disjoint i32 %i.dv, %i.dw            ; 3 uses
  %i.dy = lshr i32 %.0115.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.f, !llvm.loop !341

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.0115.i.i.epil.init = phi i32 [ %i.di, %bb.e ], [ %i.dy, %.unr-lcssa ]
  %.067114.i.i.epil.init = phi i32 [ 0, %bb.e ], [ %i.dx, %.unr-lcssa ]
  %lcmp.mod281 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod281)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.0115.i.i.epil = phi i32 [ %.0115.i.i.epil.init, %.epil.preheader ], [ %i.ec, %bb.g ] ; 2 uses
  %.067114.i.i.epil = phi i32 [ %.067114.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dz = shl i32 %.067114.i.i.epil, 1
  %i.ea = and i32 %.0115.i.i.epil, 1
  %i.eb = or disjoint i32 %i.dz, %i.ea            ; 2 uses
  %i.ec = lshr i32 %.0115.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !342

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa279 = phi i32 [ %i.dx, %.unr-lcssa ], [ %i.eb, %bb.g ]
  %i.ed = trunc i32 %.lcssa279 to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv147.i.i
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !108
  br label %bb.h

bb.h:                                             ; preds = %.epilog-lcssa, %bb.d
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %exitcond151.not.i.i = icmp eq i64 %indvars.iv.next148.i.i, 288
  br i1 %exitcond151.not.i.i, label %tdefl_optimize_huffman_table.exit.i, label %bb.d, !llvm.loop !343

tdefl_optimize_huffman_table.exit.i:              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %i.ef = load i8, ptr %i.h, align 1, !tbaa !7
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 36971
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !7
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !3
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36972
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !3
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 36973
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !7
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !3
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36974
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !7
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 36975
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !7
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36976
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !7
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !3
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 36977
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !7
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !3
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36978
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !7
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 36979
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !7
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 36980
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !7
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 36981
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !7
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 36982
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !7
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 36983
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !7
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 36984
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !7
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36985
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !7
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 36986
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !7
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !3
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 36987
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !7
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 36988
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !7
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !3
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 36989
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !7
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !3
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 36990
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !7
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !3
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36991
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !7
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !3
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 36992
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !3
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36993
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !7
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jo ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !3
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36994
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !7
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !3
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 36995
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !7
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !3
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 36996
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !7
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !3
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 36997
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !7
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !3
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kn, align 4, !tbaa !3
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 36998
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !7
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !3
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 36999
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !7
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !3
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 37000
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !7
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !3
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 37001
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !7
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !3
  %i.ln = add nsw i32 %i.lm, 1
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !3
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.lo, align 4, !tbaa !3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3
  %i.lr = shl i32 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.lr, ptr %i.ls, align 8, !tbaa !3
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !3
  %i.lv = add nsw i32 %i.lu, %i.lr
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !3
  %i.ly = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3
  %i.ma = add nsw i32 %i.lz, %i.lw
  %i.mb = shl i32 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.mb, ptr %i.mc, align 16, !tbaa !3
  %i.md = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.me = load i32, ptr %i.md, align 16, !tbaa !3
  %i.mf = add nsw i32 %i.me, %i.mb
  %i.mg = shl i32 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !3
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, %i.mg
  %i.ml = shl i32 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ml, ptr %i.mm, align 8, !tbaa !3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !3
  %i.mp = add nsw i32 %i.mo, %i.ml
  %i.mq = shl i32 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !3
  %i.ms = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = add nsw i32 %i.mt, %i.mq
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.mv, ptr %i.mw, align 16, !tbaa !3
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.my = load i32, ptr %i.mx, align 16, !tbaa !3
  %i.mz = add nsw i32 %i.my, %i.mv
  %i.na = shl i32 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !3
  %i.ne = add nsw i32 %i.nd, %i.na
  %i.nf = shl i32 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !3
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !3
  %i.nj = add nsw i32 %i.ni, %i.nf
  %i.nk = shl i32 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = add nsw i32 %i.nn, %i.nk
  %i.np = shl i32 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.np, ptr %i.nq, align 16, !tbaa !3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ns = load i32, ptr %i.nr, align 16, !tbaa !3
  %i.nt = add nsw i32 %i.ns, %i.np
  %i.nu = shl i32 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !3
  %i.ny = add nsw i32 %i.nx, %i.nu
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.nz, ptr %i.oa, align 8, !tbaa !3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !3
  %i.od = add nsw i32 %i.oc, %i.nz
  %i.oe = shl i32 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !3
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 35530
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %tdefl_optimize_huffman_table.exit.i
  %indvars.iv147.i41.i = phi i64 [ 0, %tdefl_optimize_huffman_table.exit.i ], [ %indvars.iv.next148.i45.i, %bb.m ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv147.i41.i
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !7   ; 4 uses
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ok = zext i8 %i.oi to i32                    ; 2 uses
  %i.ol = zext i8 %i.oi to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !3  ; 3 uses
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !3
  %xtraiter285 = and i32 %i.ok, 3                 ; 3 uses
  %i.op = icmp ult i8 %i.oi, 4
  br i1 %i.op, label %.epil.preheader284, label %.new282

.new282:                                          ; preds = %bb.j
  %unroll_iter291 = and i32 %i.ok, 252
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new282
  %.0115.i42.i = phi i32 [ %i.on, %.new282 ], [ %i.pd, %bb.k ] ; 5 uses
  %.067114.i43.i = phi i32 [ 0, %.new282 ], [ %i.pc, %bb.k ]
  %niter292 = phi i32 [ 0, %.new282 ], [ %niter292.next.3, %bb.k ]
  %i.oq = shl i32 %.067114.i43.i, 3
  %i.or = shl i32 %.0115.i42.i, 2
  %i.os = and i32 %i.or, 4
  %i.ot = or disjoint i32 %i.oq, %i.os
  %i.ou = and i32 %.0115.i42.i, 2
  %i.ov = or disjoint i32 %i.ot, %i.ou
  %i.ow = lshr i32 %.0115.i42.i, 2
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ov, %i.ox
  %i.oz = lshr i32 %.0115.i42.i, 3
  %i.pa = shl i32 %i.oy, 1
  %i.pb = and i32 %i.oz, 1
  %i.pc = or disjoint i32 %i.pa, %i.pb            ; 3 uses
  %i.pd = lshr i32 %.0115.i42.i, 4                ; 2 uses
  %niter292.next.3 = add nuw i32 %niter292, 4     ; 2 uses
  %niter292.ncmp.3.not = icmp eq i32 %niter292.next.3, %unroll_iter291
  br i1 %niter292.ncmp.3.not, label %.unr-lcssa283, label %bb.k, !llvm.loop !341

.unr-lcssa283:                                    ; preds = %bb.k
  %lcmp.mod287.not = icmp eq i32 %xtraiter285, 0
  br i1 %lcmp.mod287.not, label %.epilog-lcssa288, label %.epil.preheader284

.epil.preheader284:                               ; preds = %.unr-lcssa283, %bb.j
  %.0115.i42.i.epil.init = phi i32 [ %i.on, %bb.j ], [ %i.pd, %.unr-lcssa283 ]
  %.067114.i43.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.pc, %.unr-lcssa283 ]
  %lcmp.mod290 = icmp ne i32 %xtraiter285, 0
  tail call void @llvm.assume(i1 %lcmp.mod290)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader284
  %.0115.i42.i.epil = phi i32 [ %.0115.i42.i.epil.init, %.epil.preheader284 ], [ %i.ph, %bb.l ] ; 2 uses
  %.067114.i43.i.epil = phi i32 [ %.067114.i43.i.epil.init, %.epil.preheader284 ], [ %i.pg, %bb.l ]
  %epil.iter286 = phi i32 [ 0, %.epil.preheader284 ], [ %epil.iter286.next, %bb.l ]
  %i.pe = shl i32 %.067114.i43.i.epil, 1
  %i.pf = and i32 %.0115.i42.i.epil, 1
  %i.pg = or disjoint i32 %i.pe, %i.pf            ; 2 uses
  %i.ph = lshr i32 %.0115.i42.i.epil, 1
  %epil.iter286.next = add i32 %epil.iter286, 1   ; 2 uses
  %epil.iter286.cmp.not = icmp eq i32 %epil.iter286.next, %xtraiter285
  br i1 %epil.iter286.cmp.not, label %.epilog-lcssa288, label %bb.l, !llvm.loop !344

.epilog-lcssa288:                                 ; preds = %bb.l, %.unr-lcssa283
  %.lcssa278 = phi i32 [ %i.pc, %.unr-lcssa283 ], [ %i.pg, %bb.l ]
  %i.pi = trunc i32 %.lcssa278 to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv147.i41.i
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !108
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa288, %bb.i
  %indvars.iv.next148.i45.i = add nuw nsw i64 %indvars.iv147.i41.i, 1 ; 2 uses
  %exitcond151.not.i46.i = icmp eq i64 %indvars.iv.next148.i45.i, 32
  br i1 %exitcond151.not.i46.i, label %tdefl_optimize_huffman_table.exit47.i, label %bb.i, !llvm.loop !343

tdefl_optimize_huffman_table.exit47.i:            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !162 ; 2 uses
  %i.pm = shl nuw i32 1, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !163
  %i.pp = or i32 %i.po, %i.pm                     ; 3 uses
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !163
  %i.pq = add i32 %i.pl, 2                        ; 4 uses
  store i32 %i.pq, ptr %i.pk, align 4, !tbaa !162
  %i.pr = icmp ugt i32 %i.pq, 7
  br i1 %i.pr, label %.lr.ph64.i, label %tdefl_start_static_block.exit

.lr.ph64.i:                                       ; preds = %tdefl_optimize_huffman_table.exit47.i
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph64.i
  %i.pu = phi i32 [ %i.pq, %.lr.ph64.i ], [ %i.qe, %bb.p ]
  %i.pv = phi i32 [ %i.pp, %.lr.ph64.i ], [ %i.qd, %bb.p ] ; 2 uses
  %i.pw = load ptr, ptr %i.ps, align 8, !tbaa !35 ; 3 uses
  %i.px = load ptr, ptr %i.pt, align 8, !tbaa !36
  %i.py = icmp ult ptr %i.pw, %i.px
  br i1 %i.py, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pz = trunc i32 %i.pv to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store ptr %i.qa, ptr %i.ps, align 8, !tbaa !35
  store i8 %i.pz, ptr %i.pw, align 1, !tbaa !7
  %.pre.i = load i32, ptr %i.pn, align 8, !tbaa !163
  %.pre75.i = load i32, ptr %i.pk, align 4, !tbaa !162
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.qb = phi i32 [ %.pre75.i, %bb.o ], [ %i.pu, %bb.n ]
  %i.qc = phi i32 [ %.pre.i, %bb.o ], [ %i.pv, %bb.n ]
  %i.qd = lshr i32 %i.qc, 8                       ; 3 uses
  store i32 %i.qd, ptr %i.pn, align 8, !tbaa !163
  %i.qe = add i32 %i.qb, -8                       ; 4 uses
  store i32 %i.qe, ptr %i.pk, align 4, !tbaa !162
  %i.qf = icmp ugt i32 %i.qe, 7
  br i1 %i.qf, label %bb.n, label %tdefl_start_static_block.exit, !llvm.loop !345

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 33738
  store i16 1, ptr %i.qg, align 2, !tbaa !108
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 288, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @tdefl_optimize_huffman_table(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 32, i32 noundef 15, i32 noundef 0)
  %i.qh = getelementptr i8, ptr %0, i64 36967
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.qi, 0
  br i1 %.not.i, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.qj = getelementptr i8, ptr %0, i64 36966
  %i.qk = load i8, ptr %i.qj, align 2, !tbaa !7
  %.not.1.i = icmp eq i8 %i.qk, 0
  br i1 %.not.1.i, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.ql = getelementptr i8, ptr %0, i64 36965
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !7
  %.not.2.i = icmp eq i8 %i.qm, 0
  br i1 %.not.2.i, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.qn = getelementptr i8, ptr %0, i64 36964
  %i.qo = load i8, ptr %i.qn, align 2, !tbaa !7
  %.not.3.i = icmp eq i8 %i.qo, 0
  br i1 %.not.3.i, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.qp = getelementptr i8, ptr %0, i64 36963
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !7
  %.not.4.i = icmp eq i8 %i.qq, 0
  br i1 %.not.4.i, label %bb.v, label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.qr = getelementptr i8, ptr %0, i64 36962
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !7
  %.not.5.i = icmp eq i8 %i.qs, 0
  br i1 %.not.5.i, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.qt = getelementptr i8, ptr %0, i64 36961
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !7
  %.not.6.i = icmp eq i8 %i.qu, 0
  br i1 %.not.6.i, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.qv = getelementptr i8, ptr %0, i64 36960
  %i.qw = load i8, ptr %i.qv, align 2, !tbaa !7
  %.not.7.i = icmp eq i8 %i.qw, 0
  br i1 %.not.7.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  %i.qx = getelementptr i8, ptr %0, i64 36959
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !7
  %.not.8.i = icmp eq i8 %i.qy, 0
  br i1 %.not.8.i, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y
  %i.qz = getelementptr i8, ptr %0, i64 36958
  %i.ra = load i8, ptr %i.qz, align 2, !tbaa !7
  %.not.9.i = icmp eq i8 %i.ra, 0
  br i1 %.not.9.i, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z
  %i.rb = getelementptr i8, ptr %0, i64 36957
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !7
  %.not.10.i = icmp eq i8 %i.rc, 0
  br i1 %.not.10.i, label %bb.ab, label %bb.at

bb.ab:                                            ; preds = %bb.aa
  %i.rd = getelementptr i8, ptr %0, i64 36956
  %i.re = load i8, ptr %i.rd, align 2, !tbaa !7
  %.not.11.i = icmp eq i8 %i.re, 0
  br i1 %.not.11.i, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.rf = getelementptr i8, ptr %0, i64 36955
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !7
  %.not.12.i = icmp eq i8 %i.rg, 0
  br i1 %.not.12.i, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.rh = getelementptr i8, ptr %0, i64 36954
  %i.ri = load i8, ptr %i.rh, align 2, !tbaa !7
  %.not.13.i = icmp eq i8 %i.ri, 0
  br i1 %.not.13.i, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.rj = getelementptr i8, ptr %0, i64 36953
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !7
  %.not.14.i = icmp eq i8 %i.rk, 0
  br i1 %.not.14.i, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  %i.rl = getelementptr i8, ptr %0, i64 36952
  %i.rm = load i8, ptr %i.rl, align 2, !tbaa !7
  %.not.15.i = icmp eq i8 %i.rm, 0
  br i1 %.not.15.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.rn = getelementptr i8, ptr %0, i64 36951
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !7
  %.not.16.i = icmp eq i8 %i.ro, 0
  br i1 %.not.16.i, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.rp = getelementptr i8, ptr %0, i64 36950
  %i.rq = load i8, ptr %i.rp, align 2, !tbaa !7
  %.not.17.i = icmp eq i8 %i.rq, 0
  br i1 %.not.17.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
end_hunk_4
begin_hunk_5_@tdefl_optimize_huffman_table:bb.a
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !340

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count126 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count126, 1
  %unroll_iter195 = and i64 %wide.trip.count126, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.g ] ; 4 uses
  %.068102 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter196 = phi i64 [ 0, %.new ], [ %niter196.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv123
  %i.am = load i16, ptr %i.al, align 2, !tbaa !108 ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068102 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4, !tbaa !369
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.068102, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !371
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068102, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2, !tbaa !108 ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4, !tbaa !369
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !371
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !372

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !108 ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !369
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !371
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split55.i.preheader:          ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter201 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !369
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split55.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter202.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !369
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !369
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add nuw i64 %niter202, 2     ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !373

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split55.us.i
  %indvars.iv61.i = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %indvars.iv.next62.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i
  store i32 %.03748.us.i, ptr %i.dd, align 16, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv61.i
  %i.df = load i32, ptr %i.de, align 16, !tbaa !3
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !3
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, 256
  br i1 %exitcond64.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !374

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !369
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !3
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !369
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !3
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter208.next.1 = add nuw i64 %niter208, 2     ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !375

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4, !tbaa !369
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3  ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !3
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !376

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ff, align 16, !tbaa !3
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.fh = load i32, ptr %i.fg, align 16, !tbaa !3
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !3
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !374

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2, !tbaa !369
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !369
  %i.fx = load i16, ptr %.03953.us.i, align 2, !tbaa !369
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2, !tbaa !369
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2, !tbaa !369
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !369 ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !369 ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2, !tbaa !369
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2, !tbaa !369
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2, !tbaa !369
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2, !tbaa !369
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2, !tbaa !369
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !369 ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !369 ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !369
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !369
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2, !tbaa !369
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !369
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !369
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !377

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2, !tbaa !369
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
end_hunk_5
begin_hunk_6_@tdefl_optimize_huffman_table:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !369
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !369
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2, !tbaa !369
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !378

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !369
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !369
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2, !tbaa !369
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !369
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !369
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2, !tbaa !369
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8     ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !369
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !369
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2, !tbaa !369
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !369
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !369
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2, !tbaa !369
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !379

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jy, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jx, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jd, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.je, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.iy = zext nneg i32 %.497.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !369
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %.0113.i, %i.jb
  br i1 %i.jc, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jd = add nuw i32 %.198.i, 1
  %i.je = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i, !llvm.loop !380

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jf = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jf, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.jg = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jh = sext i32 %.2111.i to i64                ; 2 uses
  %i.ji = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter211 = and i32 %i.ji, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jh, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.jk, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter213 = phi i32 [ %prol.iter213.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.jg, ptr %i.jj, align 2, !tbaa !369
  %i.jk = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter213.next = add i32 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i32 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !381

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jh, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.jk, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jl = sub i32 %.1.lcssa.i, %.075112.i
  %i.jm = icmp ugt i32 %i.jl, -4
  br i1 %i.jm, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.ju, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  store i16 %i.jg, ptr %i.jn, align 2, !tbaa !369
  %i.jo = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i16 %i.jg, ptr %i.jp, align 2, !tbaa !369
  %i.jq = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  store i16 %i.jg, ptr %i.jr, align 2, !tbaa !369
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv119.i
  %i.jt = getelementptr i8, ptr %i.js, i64 -12
  store i16 %i.jg, ptr %i.jt, align 2, !tbaa !369
  %i.ju = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %.1.lcssa.i
  br i1 %i.jv, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i, !llvm.loop !382

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.jw = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.jw, %._crit_edge108.loopexit.i ]
  %i.jx = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jy = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81, !llvm.loop !383

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jz = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.jz, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread166, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter214 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ka = icmp ult i32 %.1.lcssa, 4
  br i1 %i.ka, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter218 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next129.3, %.lr.ph ] ; 5 uses
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter219.next.3, %.lr.ph ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !369
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !3
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !369
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !3
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !369
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !3
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !369
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !3
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add nuw i64 %niter219, 4     ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !384

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv128.epil
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !369
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !3
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !385

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.1.lcssa, 1
  br i1 %i.li, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4, !tbaa !3
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !3 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !3
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !3
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !3
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4, !tbaa !3
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4, !tbaa !3
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lj, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4, !tbaa !3
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !386

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !387

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i, !llvm.loop !388

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i, !llvm.loop !389

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3  ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w, !llvm.loop !389

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4, !tbaa !3
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i178 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93, !llvm.loop !390

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
end_hunk_6
begin_hunk_7_@tdefl_optimize_huffman_table:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1, !tbaa !7
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !371
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1, !tbaa !7
  %i.pe = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pf = getelementptr i8, ptr %i.pe, i64 -10
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !371
  %i.ph = zext i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ph
  store i8 %i.ol, ptr %i.pi, align 1, !tbaa !7
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, -4 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !371
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pm
  store i8 %i.ol, ptr %i.pn, align 1, !tbaa !7
  %i.po = add nsw i32 %.069105, -4
  %i.pp = icmp sgt i32 %.069105, 4
  br i1 %i.pp, label %.lr.ph107.new, label %._crit_edge108.loopexit, !llvm.loop !392

._crit_edge108.loopexit:                          ; preds = %.lr.ph107.new, %.prol.loopexit228
  %indvars.iv.next135.lcssa = phi i64 [ %indvars.iv.next135.lcssa.unr, %.prol.loopexit228 ], [ %indvars.iv.next135.3, %.lr.ph107.new ]
  %i.pq = trunc nsw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.x
  %.172.lcssa = phi i32 [ %.071110, %bb.x ], [ %i.pq, %._crit_edge108.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %bb.y, label %bb.x, !llvm.loop !393

bb.y:                                             ; preds = %._crit_edge108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !7
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !394

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre152 = add nuw nsw i32 %3, 1
  %.pre154 = zext nneg i32 %.pre152 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count145.pre-phi = phi i64 [ %.pre154, %.loopexit.loopexit ], [ %wide.trip.count140, %bb.y ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.px, align 4, !tbaa !3
  %i.py = add nsw i64 %wide.trip.count145.pre-phi, -2 ; 2 uses
  %i.pz = add nsw i64 %wide.trip.count145.pre-phi, -3
  %xtraiter233 = and i64 %i.py, 3                 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader232, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter237 = and i64 %i.py, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv142.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next143.3, %.preheader.unr-lcssa ]
  %.2112.epil.init = phi i32 [ 0, %.loopexit ], [ %i.ri, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader232
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.epil.preheader232 ], [ %indvars.iv.next143.epil, %bb.aa ] ; 3 uses
  %.2112.epil = phi i32 [ %.2112.epil.init, %.epil.preheader232 ], [ %i.qf, %bb.aa ]
  %epil.iter234 = phi i64 [ 0, %.epil.preheader232 ], [ %epil.iter234.next, %bb.aa ]
  %i.qb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142.epil
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = add nsw i32 %i.qd, %.2112.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !3
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !395

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qi = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qj = getelementptr inbounds nuw [288 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.ql = getelementptr inbounds nuw [576 x i8], ptr %i.qk, i64 %i.qi
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv142 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next143.3, %bb.ab ] ; 6 uses
  %.2112 = phi i32 [ 0, %.loopexit.new ], [ %i.ri, %bb.ab ]
  %niter238 = phi i64 [ 0, %.loopexit.new ], [ %niter238.next.3, %bb.ab ]
  %i.qm = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3
  %i.qp = add nsw i32 %i.qo, %.2112
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !3
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
  %i.qs = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143
  %i.qt = getelementptr i8, ptr %i.qs, i64 -4
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !3
  %i.qv = add nsw i32 %i.qu, %i.qq
  %i.qw = shl i32 %i.qv, 1                        ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !3
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.qy = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.1
  %i.qz = getelementptr i8, ptr %i.qy, i64 -4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !3
  %i.rb = add nsw i32 %i.ra, %i.qw
  %i.rc = shl i32 %i.rb, 1                        ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.1
  store i32 %i.rc, ptr %i.rd, align 8, !tbaa !3
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.re = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.2
  %i.rf = getelementptr i8, ptr %i.re, i64 -4
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !3
  %i.rh = add nsw i32 %i.rg, %i.rc
  %i.ri = shl i32 %i.rh, 1                        ; 3 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.2
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !3
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter238.next.3 = add nuw i64 %niter238, 4     ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab, !llvm.loop !396

bb.ac:                                            ; preds = %.preheader, %bb.ag
  %indvars.iv147 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next148, %bb.ag ] ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %indvars.iv147
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !7   ; 4 uses
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rn = zext i8 %i.rl to i32                    ; 2 uses
  %i.ro = zext i8 %i.rl to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3  ; 3 uses
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !3
  %xtraiter242 = and i32 %i.rn, 3                 ; 3 uses
  %i.rs = icmp ult i8 %i.rl, 4
  br i1 %i.rs, label %.epil.preheader241, label %.new239

.new239:                                          ; preds = %bb.ad
  %unroll_iter248 = and i32 %i.rn, 252
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new239
  %.0115 = phi i32 [ %i.rq, %.new239 ], [ %i.sg, %bb.ae ] ; 5 uses
  %.067114 = phi i32 [ 0, %.new239 ], [ %i.sf, %bb.ae ]
  %niter249 = phi i32 [ 0, %.new239 ], [ %niter249.next.3, %bb.ae ]
  %i.rt = shl i32 %.067114, 3
  %i.ru = shl i32 %.0115, 2
  %i.rv = and i32 %i.ru, 4
  %i.rw = or disjoint i32 %i.rt, %i.rv
  %i.rx = and i32 %.0115, 2
  %i.ry = or disjoint i32 %i.rx, %i.rw
  %i.rz = lshr i32 %.0115, 2
  %i.sa = and i32 %i.rz, 1
  %i.sb = or disjoint i32 %i.sa, %i.ry
  %i.sc = lshr i32 %.0115, 3
  %i.sd = shl i32 %i.sb, 1
  %i.se = and i32 %i.sc, 1
  %i.sf = or disjoint i32 %i.se, %i.sd            ; 3 uses
  %i.sg = lshr i32 %.0115, 4                      ; 2 uses
  %niter249.next.3 = add nuw i32 %niter249, 4     ; 2 uses
  %niter249.ncmp.3.not = icmp eq i32 %niter249.next.3, %unroll_iter248
  br i1 %niter249.ncmp.3.not, label %.unr-lcssa240, label %bb.ae, !llvm.loop !341

.unr-lcssa240:                                    ; preds = %bb.ae
  %lcmp.mod244.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %.epilog-lcssa245, label %.epil.preheader241

.epil.preheader241:                               ; preds = %.unr-lcssa240, %bb.ad
  %.0115.epil.init = phi i32 [ %i.rq, %bb.ad ], [ %i.sg, %.unr-lcssa240 ]
  %.067114.epil.init = phi i32 [ 0, %bb.ad ], [ %i.sf, %.unr-lcssa240 ]
  %lcmp.mod247 = icmp ne i32 %xtraiter242, 0
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader241
  %.0115.epil = phi i32 [ %.0115.epil.init, %.epil.preheader241 ], [ %i.sk, %bb.af ] ; 2 uses
  %.067114.epil = phi i32 [ %.067114.epil.init, %.epil.preheader241 ], [ %i.sj, %bb.af ]
  %epil.iter243 = phi i32 [ 0, %.epil.preheader241 ], [ %epil.iter243.next, %bb.af ]
  %i.sh = shl i32 %.067114.epil, 1
  %i.si = and i32 %.0115.epil, 1
  %i.sj = or disjoint i32 %i.si, %i.sh            ; 2 uses
  %i.sk = lshr i32 %.0115.epil, 1
  %epil.iter243.next = add i32 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i32 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %.epilog-lcssa245, label %bb.af, !llvm.loop !397

.epilog-lcssa245:                                 ; preds = %bb.af, %.unr-lcssa240
  %.lcssa = phi i32 [ %i.sf, %.unr-lcssa240 ], [ %i.sj, %bb.af ]
  %i.sl = trunc i32 %.lcssa to i16
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %indvars.iv147
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !108
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa245
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %bb.ah, label %bb.ac, !llvm.loop !343

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mz_zip_reader_sort_central_dir_offsets_by_filename(i32 %.16.val, ptr nofree readonly captures(none) %.104.val) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.104.val, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.104.val, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 11 uses
  %i.d = add nsw i32 %.16.val, -2
  %i.e = ashr i32 %i.d, 1                         ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %.preheader4, label %.preheader

.preheader4:                                      ; preds = %bb.a, %mz_zip_reader_filename_less.exit114._crit_edge
  %.07426 = phi i32 [ %i.cl, %mz_zip_reader_filename_less.exit114._crit_edge ], [ %i.e, %bb.a ] ; 4 uses
  %i.g = shl nuw i32 %.07426, 1                   ; 2 uses
  %i.h = or disjoint i32 %i.g, 1                  ; 2 uses
  %.not8123 = icmp slt i32 %i.h, %.16.val
  br i1 %.not8123, label %.lr.ph25, label %mz_zip_reader_filename_less.exit114._crit_edge

.lr.ph25:                                         ; preds = %.preheader4
  %i.i = load ptr, ptr %.104.val, align 8, !tbaa !207 ; 4 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !207  ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %mz_zip_reader_filename_less.exit114._crit_edge, %bb.a
  %i.k = icmp sgt i32 %.16.val, 1
  br i1 %i.k, label %.lr.ph56.preheader, label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %.preheader
  %i.l = zext nneg i32 %.16.val to i64
  br label %.lr.ph56

bb.b:                                             ; preds = %.lr.ph25, %bb.g
  %i.m = phi i32 [ %i.h, %.lr.ph25 ], [ %i.ck, %bb.g ] ; 2 uses
  %i.n = phi i32 [ %i.g, %.lr.ph25 ], [ %i.cj, %bb.g ]
  %.07224 = phi i32 [ %.07426, %.lr.ph25 ], [ %i.ba, %bb.g ]
  %i.o = add nsw i32 %i.n, 2                      ; 2 uses
  %i.p = icmp slt i32 %i.o, %.16.val
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.z ; 2 uses
  %i.ab = zext i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !108 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 46 ; 3 uses
  %i.al = icmp ult i16 %i.ah, %i.aj
  %.v.i115 = tail call i16 @llvm.umin.i16(i16 %i.ah, i16 %i.aj) ; 2 uses
  %i.am = zext i16 %.v.i115 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not58 = icmp eq i16 %.v.i115, 0
  br i1 %.not58, label %mz_zip_reader_filename_less.exit130, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 46
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.034.i1176 = phi ptr [ %i.au, %bb.d ], [ %i.ao, %.lr.ph.preheader ] ; 2 uses
  %.035.i1165 = phi ptr [ %i.at, %bb.d ], [ %i.ak, %.lr.ph.preheader ] ; 3 uses
  %i.ap = load i8, ptr %.035.i1165, align 1, !tbaa !7 ; 3 uses
  %i.aq = add i8 %i.ap, -65
  %or.cond.i123 = icmp ult i8 %i.aq, 26
  %narrow.i129 = add nuw nsw i8 %i.ap, 32
  %spec.select = select i1 %or.cond.i123, i8 %narrow.i129, i8 %i.ap ; 3 uses
  %i.ar = load i8, ptr %.034.i1176, align 1, !tbaa !7 ; 3 uses
  %i.as = add i8 %i.ar, -65
  %or.cond41.i125 = icmp ult i8 %i.as, 26
  %narrow38.i128 = add nuw nsw i8 %i.ar, 32
  %.in39.i126 = select i1 %or.cond41.i125, i8 %narrow38.i128, i8 %i.ar ; 2 uses
  %.not.i127 = icmp eq i8 %spec.select, %.in39.i126
  br i1 %.not.i127, label %bb.d, label %mz_zip_reader_filename_less.exit130.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.035.i1165, i64 1 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.034.i1176, i64 1
  %i.av = icmp ult ptr %i.at, %i.an
  br i1 %i.av, label %.lr.ph, label %mz_zip_reader_filename_less.exit130.loopexit, !llvm.loop !398

mz_zip_reader_filename_less.exit130.loopexit:     ; preds = %bb.d, %.lr.ph
  %.in39.i126.lcssa = phi i8 [ %spec.select, %bb.d ], [ %.in39.i126, %.lr.ph ]
  %.035.i116.lcssa.ph = phi ptr [ %i.at, %bb.d ], [ %.035.i1165, %.lr.ph ]
  %i.aw = icmp ult i8 %spec.select, %.in39.i126.lcssa
  br label %mz_zip_reader_filename_less.exit130

mz_zip_reader_filename_less.exit130:              ; preds = %mz_zip_reader_filename_less.exit130.loopexit, %bb.c
  %.035.i116.lcssa = phi ptr [ %i.ak, %bb.c ], [ %.035.i116.lcssa.ph, %mz_zip_reader_filename_less.exit130.loopexit ]
  %.133.i120 = phi i1 [ false, %bb.c ], [ %i.aw, %mz_zip_reader_filename_less.exit130.loopexit ]
  %i.ax = icmp eq ptr %.035.i116.lcssa, %i.an
  %.in40.i122 = select i1 %i.ax, i1 %i.al, i1 %.133.i120
  %i.ay = zext i1 %.in40.i122 to i32
  br label %bb.e

bb.e:                                             ; preds = %mz_zip_reader_filename_less.exit130, %bb.b
  %i.az = phi i32 [ 0, %bb.b ], [ %i.ay, %mz_zip_reader_filename_less.exit130 ]
  %i.ba = add nsw i32 %i.az, %i.m                 ; 3 uses
  %i.bb = sext i32 %.07224 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = sext i32 %i.ba to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = zext i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bk ; 2 uses
  %i.bm = zext i32 %i.bg to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !108 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !108 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 46 ; 3 uses
  %i.bw = icmp uge i16 %i.bs, %i.bu
  %.v.i99 = tail call i16 @llvm.umin.i16(i16 %i.bs, i16 %i.bu) ; 2 uses
  %i.bx = zext i16 %.v.i99 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 2 uses
  %.not59 = icmp eq i16 %.v.i99, 0
  br i1 %.not59, label %mz_zip_reader_filename_less.exit114, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 46
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %bb.f
  %.034.i10114 = phi ptr [ %i.cf, %bb.f ], [ %i.bz, %.lr.ph15.preheader ] ; 2 uses
  %.035.i10013 = phi ptr [ %i.ce, %bb.f ], [ %i.bv, %.lr.ph15.preheader ] ; 3 uses
  %i.ca = load i8, ptr %.035.i10013, align 1, !tbaa !7 ; 3 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i107 = icmp ult i8 %i.cb, 26
  %narrow.i113 = add nuw nsw i8 %i.ca, 32
  %spec.select1 = select i1 %or.cond.i107, i8 %narrow.i113, i8 %i.ca ; 3 uses
  %i.cc = load i8, ptr %.034.i10114, align 1, !tbaa !7 ; 3 uses
  %i.cd = add i8 %i.cc, -65
  %or.cond41.i109 = icmp ult i8 %i.cd, 26
  %narrow38.i112 = add nuw nsw i8 %i.cc, 32
  %.in39.i110 = select i1 %or.cond41.i109, i8 %narrow38.i112, i8 %i.cc ; 2 uses
end_hunk_7
