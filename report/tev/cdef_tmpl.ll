Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cdef_tmpl?download=true
inline.NumInlined: 47
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 24
begin_hunk_0_@cdef_filter_block_c:bb.a
  store i16 -32768, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 -32768, ptr %i.n, align 2, !tbaa !10
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i16 -32768, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 -32768, ptr %i.r, align 2, !tbaa !10
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 -32768, ptr %i.t, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  store i16 -32768, ptr %i.v, align 2, !tbaa !10
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i16 -32768, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  store i16 -32768, ptr %i.z, align 2, !tbaa !10
  %indvars.iv.next.i.1.i.7 = add nuw nsw i64 %indvars.iv.i.1.i, 8 ; 2 uses
  %niter344.next.7 = add i64 %niter344, 8         ; 2 uses
  %niter344.ncmp.7 = icmp eq i64 %niter344.next.7, %unroll_iter343
  br i1 %niter344.ncmp.7, label %fill.exit.i.loopexit.unr-lcssa, label %bb.c

bb.d:                                             ; preds = %bb.d, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.i.i ], [ %niter.next.7, %bb.d ]
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i16 -32768, ptr %i.aa, align 16, !tbaa !10
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 -32768, ptr %i.ac, align 2, !tbaa !10
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 -32768, ptr %i.ae, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  store i16 -32768, ptr %i.ag, align 2, !tbaa !10
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i16 -32768, ptr %i.ai, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  store i16 -32768, ptr %i.ak, align 2, !tbaa !10
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i16 -32768, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  store i16 -32768, ptr %i.ao, align 2, !tbaa !10
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.1.i.unr-lcssa, label %bb.d

fill.exit.i.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod341.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod341.not, label %fill.exit.i, label %.epil.preheader338

.epil.preheader338:                               ; preds = %fill.exit.i.loopexit.unr-lcssa
  %lcmp.mod342 = icmp ne i64 %xtraiter339, 0
  call void @llvm.assume(i1 %lcmp.mod342)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader338
  %indvars.iv.i.1.i.epil = phi i64 [ %indvars.iv.next.i.1.i.7, %.epil.preheader338 ], [ %indvars.iv.next.i.1.i.epil, %bb.e ] ; 2 uses
  %epil.iter340 = phi i64 [ 0, %.epil.preheader338 ], [ %epil.iter340.next, %bb.e ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.i.1.i.epil
  store i16 -32768, ptr %i.ap, align 2, !tbaa !10
  %indvars.iv.next.i.1.i.epil = add nuw nsw i64 %indvars.iv.i.1.i.epil, 1
  %epil.iter340.next = add i64 %epil.iter340, 1   ; 2 uses
  %epil.iter340.cmp.not = icmp eq i64 %epil.iter340.next, %xtraiter339
  br i1 %epil.iter340.cmp.not, label %fill.exit.i, label %bb.e, !llvm.loop !16

fill.exit.i:                                      ; preds = %fill.exit.i.loopexit.unr-lcssa, %bb.e, %bb.a
  %.098.i = phi i32 [ -2, %bb.a ], [ 0, %bb.e ], [ 0, %fill.exit.i.loopexit.unr-lcssa ] ; 8 uses
  %i.aq = and i32 %11, 8
  %.not106.i = icmp eq i32 %i.aq, 0
  br i1 %.not106.i, label %.preheader.i113.i, label %fill.exit120.i

.preheader.i113.i:                                ; preds = %fill.exit.i
  %narrow.i = mul nuw nsw i32 %10, 12
  %i.ar = zext nneg i32 %narrow.i to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 8 uses
  %i.au = add nuw nsw i32 %9, 4
  %wide.trip.count.i112.i = zext nneg i32 %i.au to i64 ; 4 uses
  %xtraiter346 = and i64 %wide.trip.count.i112.i, 7 ; 3 uses
  %unroll_iter350 = and i64 %wide.trip.count.i112.i, 24
  br label %bb.h

.preheader.i113.1.i.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %.preheader.i113.1.i, label %.epil.preheader345

.epil.preheader345:                               ; preds = %.preheader.i113.1.i.unr-lcssa
  %lcmp.mod349 = icmp ne i64 %xtraiter346, 0
  call void @llvm.assume(i1 %lcmp.mod349)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader345
  %indvars.iv.i116.i.epil = phi i64 [ %indvars.iv.next.i117.i.7, %.epil.preheader345 ], [ %indvars.iv.next.i117.i.epil, %bb.f ] ; 2 uses
  %epil.iter347 = phi i64 [ 0, %.epil.preheader345 ], [ %epil.iter347.next, %bb.f ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i.epil
  store i16 -32768, ptr %i.av, align 2, !tbaa !10
  %indvars.iv.next.i117.i.epil = add nuw nsw i64 %indvars.iv.i116.i.epil, 1
  %epil.iter347.next = add i64 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i64 %epil.iter347.next, %xtraiter346
  br i1 %epil.iter347.cmp.not, label %.preheader.i113.1.i, label %bb.f, !llvm.loop !17

.preheader.i113.1.i:                              ; preds = %bb.f, %.preheader.i113.1.i.unr-lcssa
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 9 uses
  %xtraiter353 = and i64 %wide.trip.count.i112.i, 7 ; 3 uses
  %unroll_iter357 = and i64 %wide.trip.count.i112.i, 24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i113.1.i
  %indvars.iv.i116.1.i = phi i64 [ 0, %.preheader.i113.1.i ], [ %indvars.iv.next.i117.1.i.7, %bb.g ] ; 9 uses
  %niter358 = phi i64 [ 0, %.preheader.i113.1.i ], [ %niter358.next.7, %bb.g ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  store i16 -32768, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 -32768, ptr %i.az, align 2, !tbaa !10
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i16 -32768, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  store i16 -32768, ptr %i.bd, align 2, !tbaa !10
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i16 -32768, ptr %i.bf, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i16 -32768, ptr %i.bh, align 2, !tbaa !10
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i16 -32768, ptr %i.bj, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  store i16 -32768, ptr %i.bl, align 2, !tbaa !10
  %indvars.iv.next.i117.1.i.7 = add nuw nsw i64 %indvars.iv.i116.1.i, 8 ; 2 uses
  %niter358.next.7 = add i64 %niter358, 8         ; 2 uses
  %niter358.ncmp.7 = icmp eq i64 %niter358.next.7, %unroll_iter357
  br i1 %niter358.ncmp.7, label %fill.exit120.i.loopexit.unr-lcssa, label %bb.g

bb.h:                                             ; preds = %bb.h, %.preheader.i113.i
  %indvars.iv.i116.i = phi i64 [ 0, %.preheader.i113.i ], [ %indvars.iv.next.i117.i.7, %bb.h ] ; 9 uses
  %niter351 = phi i64 [ 0, %.preheader.i113.i ], [ %niter351.next.7, %bb.h ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  store i16 -32768, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i16 -32768, ptr %i.bo, align 2, !tbaa !10
  %i.bp = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv.i116.i
  store i16 -32768, ptr %i.bp, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  store i16 -32768, ptr %i.br, align 2, !tbaa !10
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i16 -32768, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  store i16 -32768, ptr %i.bv, align 2, !tbaa !10
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i16 -32768, ptr %i.bx, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i116.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 14
  store i16 -32768, ptr %i.bz, align 2, !tbaa !10
  %indvars.iv.next.i117.i.7 = add nuw nsw i64 %indvars.iv.i116.i, 8 ; 2 uses
  %niter351.next.7 = add i64 %niter351, 8         ; 2 uses
  %niter351.ncmp.7 = icmp eq i64 %niter351.next.7, %unroll_iter350
  br i1 %niter351.ncmp.7, label %.preheader.i113.1.i.unr-lcssa, label %bb.h

fill.exit120.i.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod355.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod355.not, label %fill.exit120.i, label %.epil.preheader352

.epil.preheader352:                               ; preds = %fill.exit120.i.loopexit.unr-lcssa
  %lcmp.mod356 = icmp ne i64 %xtraiter353, 0
  call void @llvm.assume(i1 %lcmp.mod356)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader352
  %indvars.iv.i116.1.i.epil = phi i64 [ %indvars.iv.next.i117.1.i.7, %.epil.preheader352 ], [ %indvars.iv.next.i117.1.i.epil, %bb.i ] ; 2 uses
  %epil.iter354 = phi i64 [ 0, %.epil.preheader352 ], [ %epil.iter354.next, %bb.i ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i116.1.i.epil
  store i16 -32768, ptr %i.ca, align 2, !tbaa !10
  %indvars.iv.next.i117.1.i.epil = add nuw nsw i64 %indvars.iv.i116.1.i.epil, 1
  %epil.iter354.next = add i64 %epil.iter354, 1   ; 2 uses
  %epil.iter354.cmp.not = icmp eq i64 %epil.iter354.next, %xtraiter353
  br i1 %epil.iter354.cmp.not, label %fill.exit120.i, label %bb.i, !llvm.loop !18

fill.exit120.i:                                   ; preds = %fill.exit120.i.loopexit.unr-lcssa, %bb.i, %fill.exit.i
  %.097.i = phi i32 [ %i.g, %fill.exit.i ], [ %10, %bb.i ], [ %10, %fill.exit120.i.loopexit.unr-lcssa ] ; 7 uses
  %i.cb = and i32 %11, 1
  %.not107.not.i = icmp eq i32 %i.cb, 0           ; 2 uses
  br i1 %.not107.not.i, label %bb.j, label %fill.exit128.i

bb.j:                                             ; preds = %fill.exit120.i
  %narrow108.i = mul nsw i32 %.098.i, 12
  %i.cc = sext i32 %narrow108.i to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4 ; 2 uses
  %i.cf = sub nsw i32 %.097.i, %.098.i            ; 2 uses
  %xtraiter359 = and i32 %i.cf, 7                 ; 3 uses
  %i.cg = sub nsw i32 %.098.i, %.097.i
  %i.ch = icmp ugt i32 %i.cg, -8
  br i1 %i.ch, label %.preheader.i121.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter363 = and i32 %i.cf, -8
  br label %.preheader.i121.i

.preheader.i121.i:                                ; preds = %.preheader.i121.i, %.new
  %.01012.i123.i = phi ptr [ %i.ce, %.new ], [ %i.cx, %.preheader.i121.i ] ; 17 uses
  %niter364 = phi i32 [ 0, %.new ], [ %niter364.next.7, %.preheader.i121.i ]
  store i16 -32768, ptr %.01012.i123.i, align 2, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 2
  store i16 -32768, ptr %i.ci, align 2, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 24
  store i16 -32768, ptr %i.cj, align 2, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 26
  store i16 -32768, ptr %i.ck, align 2, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 48
  store i16 -32768, ptr %i.cl, align 2, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 50
  store i16 -32768, ptr %i.cm, align 2, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 72
  store i16 -32768, ptr %i.cn, align 2, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 74
  store i16 -32768, ptr %i.co, align 2, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 96
  store i16 -32768, ptr %i.cp, align 2, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 98
  store i16 -32768, ptr %i.cq, align 2, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 120
  store i16 -32768, ptr %i.cr, align 2, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 122
  store i16 -32768, ptr %i.cs, align 2, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 144
  store i16 -32768, ptr %i.ct, align 2, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 146
  store i16 -32768, ptr %i.cu, align 2, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 168
  store i16 -32768, ptr %i.cv, align 2, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 170
  store i16 -32768, ptr %i.cw, align 2, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %.01012.i123.i, i64 192 ; 2 uses
  %niter364.next.7 = add i32 %niter364, 8         ; 2 uses
  %niter364.ncmp.7 = icmp eq i32 %niter364.next.7, %unroll_iter363
  br i1 %niter364.ncmp.7, label %fill.exit128.i.loopexit.unr-lcssa, label %.preheader.i121.i

fill.exit128.i.loopexit.unr-lcssa:                ; preds = %.preheader.i121.i
  %lcmp.mod361.not = icmp eq i32 %xtraiter359, 0
  br i1 %lcmp.mod361.not, label %fill.exit128.i, label %.preheader.i121.i.epil.preheader

.preheader.i121.i.epil.preheader:                 ; preds = %fill.exit128.i.loopexit.unr-lcssa, %bb.j
  %.01012.i123.i.epil.init = phi ptr [ %i.ce, %bb.j ], [ %i.cx, %fill.exit128.i.loopexit.unr-lcssa ]
  %lcmp.mod362 = icmp ne i32 %xtraiter359, 0
  call void @llvm.assume(i1 %lcmp.mod362)
  br label %.preheader.i121.i.epil

.preheader.i121.i.epil:                           ; preds = %.preheader.i121.i.epil, %.preheader.i121.i.epil.preheader
  %.01012.i123.i.epil = phi ptr [ %.01012.i123.i.epil.init, %.preheader.i121.i.epil.preheader ], [ %i.cz, %.preheader.i121.i.epil ] ; 3 uses
  %epil.iter360 = phi i32 [ 0, %.preheader.i121.i.epil.preheader ], [ %epil.iter360.next, %.preheader.i121.i.epil ]
  store i16 -32768, ptr %.01012.i123.i.epil, align 2, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %.01012.i123.i.epil, i64 2
  store i16 -32768, ptr %i.cy, align 2, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %.01012.i123.i.epil, i64 24
  %epil.iter360.next = add i32 %epil.iter360, 1   ; 2 uses
  %epil.iter360.cmp.not = icmp eq i32 %epil.iter360.next, %xtraiter359
  br i1 %epil.iter360.cmp.not, label %fill.exit128.i, label %.preheader.i121.i.epil, !llvm.loop !19

fill.exit128.i:                                   ; preds = %fill.exit128.i.loopexit.unr-lcssa, %.preheader.i121.i.epil, %fill.exit120.i
  %.0100.i = phi i32 [ -2, %fill.exit120.i ], [ 0, %.preheader.i121.i.epil ], [ 0, %fill.exit128.i.loopexit.unr-lcssa ] ; 4 uses
  %i.da = and i32 %11, 2
  %.not109.i = icmp eq i32 %i.da, 0
  br i1 %.not109.i, label %bb.k, label %fill.exit136.i

bb.k:                                             ; preds = %fill.exit128.i
  %narrow110.i = mul nsw i32 %.098.i, 12
  %i.db = sext i32 %narrow110.i to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.db
  %i.dd = zext nneg i32 %9 to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %i.df = sub nsw i32 %.097.i, %.098.i            ; 2 uses
  %xtraiter366 = and i32 %i.df, 7                 ; 3 uses
  %i.dg = sub nsw i32 %.098.i, %.097.i
  %i.dh = icmp ugt i32 %i.dg, -8
  br i1 %i.dh, label %.preheader.i129.i.epil.preheader, label %.new365

.new365:                                          ; preds = %bb.k
  %unroll_iter370 = and i32 %i.df, -8
  br label %.preheader.i129.i

.preheader.i129.i:                                ; preds = %.preheader.i129.i, %.new365
  %.01012.i131.i = phi ptr [ %i.de, %.new365 ], [ %i.dx, %.preheader.i129.i ] ; 17 uses
  %niter371 = phi i32 [ 0, %.new365 ], [ %niter371.next.7, %.preheader.i129.i ]
  store i16 -32768, ptr %.01012.i131.i, align 2, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 2
  store i16 -32768, ptr %i.di, align 2, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 24
  store i16 -32768, ptr %i.dj, align 2, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 26
  store i16 -32768, ptr %i.dk, align 2, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 48
  store i16 -32768, ptr %i.dl, align 2, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 50
  store i16 -32768, ptr %i.dm, align 2, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 72
  store i16 -32768, ptr %i.dn, align 2, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 74
  store i16 -32768, ptr %i.do, align 2, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 96
  store i16 -32768, ptr %i.dp, align 2, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 98
  store i16 -32768, ptr %i.dq, align 2, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 120
  store i16 -32768, ptr %i.dr, align 2, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 122
  store i16 -32768, ptr %i.ds, align 2, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 144
  store i16 -32768, ptr %i.dt, align 2, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 146
  store i16 -32768, ptr %i.du, align 2, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 168
  store i16 -32768, ptr %i.dv, align 2, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 170
  store i16 -32768, ptr %i.dw, align 2, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.01012.i131.i, i64 192 ; 2 uses
  %niter371.next.7 = add i32 %niter371, 8         ; 2 uses
  %niter371.ncmp.7 = icmp eq i32 %niter371.next.7, %unroll_iter370
  br i1 %niter371.ncmp.7, label %fill.exit136.i.loopexit.unr-lcssa, label %.preheader.i129.i

fill.exit136.i.loopexit.unr-lcssa:                ; preds = %.preheader.i129.i
  %lcmp.mod368.not = icmp eq i32 %xtraiter366, 0
  br i1 %lcmp.mod368.not, label %fill.exit136.i, label %.preheader.i129.i.epil.preheader

.preheader.i129.i.epil.preheader:                 ; preds = %fill.exit136.i.loopexit.unr-lcssa, %bb.k
  %.01012.i131.i.epil.init = phi ptr [ %i.de, %bb.k ], [ %i.dx, %fill.exit136.i.loopexit.unr-lcssa ]
  %lcmp.mod369 = icmp ne i32 %xtraiter366, 0
  call void @llvm.assume(i1 %lcmp.mod369)
  br label %.preheader.i129.i.epil

.preheader.i129.i.epil:                           ; preds = %.preheader.i129.i.epil, %.preheader.i129.i.epil.preheader
  %.01012.i131.i.epil = phi ptr [ %.01012.i131.i.epil.init, %.preheader.i129.i.epil.preheader ], [ %i.dz, %.preheader.i129.i.epil ] ; 3 uses
  %epil.iter367 = phi i32 [ 0, %.preheader.i129.i.epil.preheader ], [ %epil.iter367.next, %.preheader.i129.i.epil ]
  store i16 -32768, ptr %.01012.i131.i.epil, align 2, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %.01012.i131.i.epil, i64 2
  store i16 -32768, ptr %i.dy, align 2, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %.01012.i131.i.epil, i64 24
  %epil.iter367.next = add i32 %epil.iter367, 1   ; 2 uses
  %epil.iter367.cmp.not = icmp eq i32 %epil.iter367.next, %xtraiter366
  br i1 %epil.iter367.cmp.not, label %fill.exit136.i, label %.preheader.i129.i.epil, !llvm.loop !20

fill.exit136.i:                                   ; preds = %fill.exit136.i.loopexit.unr-lcssa, %.preheader.i129.i.epil, %fill.exit128.i
  %.099.i = phi i32 [ %i.f, %fill.exit128.i ], [ %9, %.preheader.i129.i.epil ], [ %9, %fill.exit136.i.loopexit.unr-lcssa ] ; 2 uses
  br i1 %.not.not.i, label %.preheader143.i, label %.preheader144.preheader.i

.preheader144.preheader.i:                        ; preds = %fill.exit136.i
  %i.ea = and i64 %1, 1
  %.not.i.i = icmp eq i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.eb = sext i32 %.0100.i to i64
  %i.ec = sext i32 %.098.i to i64                 ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.098.i, i32 -1)
  %i.ed = add nsw i32 %smax.i, 1                  ; 2 uses
  %wide.trip.count166.i = zext nneg i32 %i.ed to i64 ; 3 uses
  %i.ee = mul nsw i64 %i.ec, 24
  %i.ef = shl nsw i64 %i.eb, 1                    ; 3 uses
  %i.eg = shl nuw nsw i32 %.099.i, 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = sub nsw i64 %i.eh, %i.ef                ; 3 uses
  %i.ej = getelementptr i8, ptr %i.a, i64 %i.ee
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 52     ; 3 uses
  %i.em = getelementptr i8, ptr %3, i64 %i.ef     ; 3 uses
  %xtraiter372 = and i64 %wide.trip.count166.i, 1 ; 2 uses
  %13 = add nsw i64 %wide.trip.count166.i, -1
  %i.en = icmp eq i64 %13, %i.ec
  br i1 %i.en, label %.preheader144.i.epil.preheader, label %.preheader144.preheader.i.new

.preheader144.preheader.i.new:                    ; preds = %.preheader144.preheader.i
  %14 = or disjoint i64 %xtraiter372, %i.ec
  %unroll_iter376 = sub nsw i64 %wide.trip.count166.i, %14
  br label %.preheader144.i

.preheader144.i:                                  ; preds = %.preheader144.i, %.preheader144.preheader.i.new
  %indvar = phi i64 [ 0, %.preheader144.preheader.i.new ], [ %indvar.next.1, %.preheader144.i ] ; 4 uses
  %niter377 = phi i64 [ 0, %.preheader144.preheader.i.new ], [ %niter377.next.1, %.preheader144.i ]
  %15 = mul i64 %indvar, 24
  %scevgep = getelementptr i8, ptr %i.el, i64 %15
  %16 = mul i64 %1, %indvar
  %scevgep292 = getelementptr i8, ptr %i.em, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep, ptr align 2 %scevgep292, i64 %i.ei, i1 false), !tbaa !10
  %indvar.next = or disjoint i64 %indvar, 1       ; 2 uses
  %17 = mul i64 %indvar.next, 24
  %scevgep.1 = getelementptr i8, ptr %i.el, i64 %17
  %18 = mul i64 %1, %indvar.next
  %scevgep292.1 = getelementptr i8, ptr %i.em, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep.1, ptr align 2 %scevgep292.1, i64 %i.ei, i1 false), !tbaa !10
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter377.next.1 = add i64 %niter377, 2         ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %.preheader143.i.loopexit.unr-lcssa, label %.preheader144.i

.preheader143.i.loopexit.unr-lcssa:               ; preds = %.preheader144.i
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %.preheader143.i, label %.preheader144.i.epil.preheader

.preheader144.i.epil.preheader:                   ; preds = %.preheader143.i.loopexit.unr-lcssa, %.preheader144.preheader.i
  %indvar.epil.init = phi i64 [ 0, %.preheader144.preheader.i ], [ %indvar.next.1, %.preheader143.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod375 = trunc i32 %i.ed to i1
  call void @llvm.assume(i1 %lcmp.mod375)
  %19 = mul i64 %indvar.epil.init, 24
  %scevgep.epil = getelementptr i8, ptr %i.el, i64 %19
  %20 = mul i64 %1, %indvar.epil.init
  %scevgep292.epil = getelementptr i8, ptr %i.em, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep.epil, ptr align 2 %scevgep292.epil, i64 %i.ei, i1 false), !tbaa !10
  br label %.preheader143.i

.preheader143.i:                                  ; preds = %.preheader144.i.epil.preheader, %.preheader143.i.loopexit.unr-lcssa, %fill.exit136.i
  br i1 %.not107.not.i, label %.preheader141.split.i, label %.preheader142.preheader.i

.preheader142.preheader.i:                        ; preds = %.preheader143.i
  %i.eo = sext i32 %.0100.i to i64
  %smax172.i = tail call i32 @llvm.smax.i32(i32 %.0100.i, i32 -1)
  %i.ep = shl nsw i64 %i.eo, 1                    ; 3 uses
  %i.eq = shl nsw i32 %smax172.i, 1
  %i.er = add nsw i32 %i.eq, 2
  %i.es = zext nneg i32 %i.er to i64
  %i.et = sub nsw i64 %i.es, %i.ep                ; 8 uses
  %i.eu = getelementptr i8, ptr %i.a, i64 %i.ep   ; 8 uses
  %i.ev = getelementptr i8, ptr %2, i64 %i.ep     ; 8 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %i.ex = getelementptr i8, ptr %i.eu, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ex, ptr align 2 %i.ew, i64 %i.et, i1 false), !tbaa !10
  %scevgep293.1 = getelementptr i8, ptr %i.eu, i64 76
  %scevgep294.1 = getelementptr i8, ptr %i.ev, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.1, ptr align 2 %scevgep294.1, i64 %i.et, i1 false), !tbaa !10
  %scevgep293.2 = getelementptr i8, ptr %i.eu, i64 100
  %scevgep294.2 = getelementptr i8, ptr %i.ev, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.2, ptr align 2 %scevgep294.2, i64 %i.et, i1 false), !tbaa !10
  %scevgep293.3 = getelementptr i8, ptr %i.eu, i64 124
  %scevgep294.3 = getelementptr i8, ptr %i.ev, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.3, ptr align 2 %scevgep294.3, i64 %i.et, i1 false), !tbaa !10
  %exitcond179.not.i.3 = icmp eq i32 %10, 4
  br i1 %exitcond179.not.i.3, label %.preheader141.split.i, label %.preheader142.i.4

.preheader142.i.4:                                ; preds = %.preheader142.preheader.i
  %scevgep293.4 = getelementptr i8, ptr %i.eu, i64 148
  %scevgep294.4 = getelementptr i8, ptr %i.ev, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.4, ptr align 2 %scevgep294.4, i64 %i.et, i1 false), !tbaa !10
  %exitcond179.not.i.4 = icmp eq i32 %10, 5
  br i1 %exitcond179.not.i.4, label %.preheader141.split.i, label %.preheader142.i.5

.preheader142.i.5:                                ; preds = %.preheader142.i.4
  %scevgep293.5 = getelementptr i8, ptr %i.eu, i64 172
  %scevgep294.5 = getelementptr i8, ptr %i.ev, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.5, ptr align 2 %scevgep294.5, i64 %i.et, i1 false), !tbaa !10
  %exitcond179.not.i.5 = icmp eq i32 %10, 6
  br i1 %exitcond179.not.i.5, label %.preheader141.split.i, label %.preheader142.i.6

.preheader142.i.6:                                ; preds = %.preheader142.i.5
  %scevgep293.6 = getelementptr i8, ptr %i.eu, i64 196
  %scevgep294.6 = getelementptr i8, ptr %i.ev, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.6, ptr align 2 %scevgep294.6, i64 %i.et, i1 false), !tbaa !10
  %exitcond179.not.i.6 = icmp eq i32 %10, 7
  br i1 %exitcond179.not.i.6, label %.preheader141.split.i, label %.preheader142.i.7

.preheader142.i.7:                                ; preds = %.preheader142.i.6
  %scevgep293.7 = getelementptr i8, ptr %i.eu, i64 220
  %scevgep294.7 = getelementptr i8, ptr %i.ev, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep293.7, ptr align 2 %scevgep294.7, i64 %i.et, i1 false), !tbaa !10
  br label %.preheader141.split.i

.preheader141.split.i:                            ; preds = %.preheader142.preheader.i, %.preheader142.i.4, %.preheader142.i.5, %.preheader142.i.6, %.preheader142.i.7, %.preheader143.i
  %i.ey = and i64 %1, 1
  %.not.i137.i = icmp eq i64 %i.ey, 0
  tail call void @llvm.assume(i1 %.not.i137.i)
  %i.ez = shl nuw nsw i32 %.099.i, 1
  %i.fa = zext nneg i32 %i.ez to i64              ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 2 dereferenceable(1) %0, i64 %i.fa, i1 false), !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.fc = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fb, ptr noundef nonnull align 2 dereferenceable(1) %i.fc, i64 %i.fa, i1 false), !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fd, ptr noundef nonnull align 2 dereferenceable(1) %i.fe, i64 %i.fa, i1 false), !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ff, ptr noundef nonnull align 2 dereferenceable(1) %i.fg, i64 %i.fa, i1 false), !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 148 ; 2 uses
  %exitcond185.not.i.3 = icmp eq i32 %10, 4
  br i1 %exitcond185.not.i.3, label %.preheader139.i, label %.preheader140.i.4

.preheader140.i.4:                                ; preds = %.preheader141.split.i
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fh, ptr noundef nonnull align 2 dereferenceable(1) %i.fi, i64 %i.fa, i1 false), !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 172 ; 2 uses
  %exitcond185.not.i.4 = icmp eq i32 %10, 5
  br i1 %exitcond185.not.i.4, label %.preheader139.i, label %.preheader140.i.5

.preheader140.i.5:                                ; preds = %.preheader140.i.4
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fj, ptr noundef nonnull align 2 dereferenceable(1) %i.fk, i64 %i.fa, i1 false), !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 2 uses
  %exitcond185.not.i.5 = icmp eq i32 %10, 6
  br i1 %exitcond185.not.i.5, label %.preheader139.i, label %.preheader140.i.6

.preheader140.i.6:                                ; preds = %.preheader140.i.5
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fl, ptr noundef nonnull align 2 dereferenceable(1) %i.fm, i64 %i.fa, i1 false), !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 220 ; 2 uses
  %exitcond185.not.i.6 = icmp eq i32 %10, 7
  br i1 %exitcond185.not.i.6, label %.preheader139.i, label %.preheader140.i.7

.preheader140.i.7:                                ; preds = %.preheader140.i.6
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fn, ptr noundef nonnull align 2 dereferenceable(1) %i.fo, i64 %i.fa, i1 false), !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  br label %.preheader139.i

.preheader139.i:                                  ; preds = %.preheader140.i.7, %.preheader140.i.6, %.preheader140.i.5, %.preheader140.i.4, %.preheader141.split.i
  %.lcssa = phi ptr [ %i.fp, %.preheader140.i.7 ], [ %i.fn, %.preheader140.i.6 ], [ %i.fl, %.preheader140.i.5 ], [ %i.fh, %.preheader141.split.i ], [ %i.fj, %.preheader140.i.4 ]
  %i.fq = icmp samesign ult i32 %10, %.097.i
  br i1 %i.fq, label %.preheader.preheader.i, label %padding.exit

.preheader.preheader.i:                           ; preds = %.preheader139.i
  %i.fr = sext i32 %.0100.i to i64
  %i.fs = shl nsw i64 %i.fr, 1                    ; 3 uses
  %i.ft = ptrtoaddr ptr %.lcssa to i64
  %reass.sub = sub i64 %i.ft, %i.b
  %i.fu = sub nsw i64 %i.fa, %i.fs                ; 3 uses
  %i.fv = getelementptr i8, ptr %i.a, i64 %reass.sub
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fs  ; 3 uses
  %i.fx = getelementptr i8, ptr %4, i64 %i.fs     ; 3 uses
  %21 = sub nuw nsw i32 %.097.i, %10              ; 3 uses
  %.neg = add nuw nsw i32 %10, 1
  %xtraiter378 = and i32 %21, 1
  %i.fy = icmp eq i32 %.097.i, %.neg
  br i1 %i.fy, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter382 = and i32 %21, 30
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvar295 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvar.next296.1, %.preheader.i ] ; 4 uses
  %niter383 = phi i32 [ 0, %.preheader.preheader.i.new ], [ %niter383.next.1, %.preheader.i ]
  %22 = mul nuw nsw i64 %indvar295, 24
  %scevgep297 = getelementptr i8, ptr %i.fw, i64 %22
  %23 = mul i64 %1, %indvar295
  %scevgep298 = getelementptr i8, ptr %i.fx, i64 %23
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep297, ptr align 2 %scevgep298, i64 %i.fu, i1 false), !tbaa !10
  %indvar.next296 = or disjoint i64 %indvar295, 1 ; 2 uses
  %24 = mul nuw nsw i64 %indvar.next296, 24
  %scevgep297.1.a = getelementptr i8, ptr %i.fw, i64 %24
  %i.fz = mul i64 %1, %indvar.next296
  %scevgep298.1.a = getelementptr i8, ptr %i.fx, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep297.1.a, ptr align 2 %scevgep298.1.a, i64 %i.fu, i1 false), !tbaa !10
  %indvar.next296.1 = add nuw nsw i64 %indvar295, 2 ; 2 uses
  %niter383.next.1 = add i32 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i32 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %padding.exit.loopexit.unr-lcssa, label %.preheader.i

padding.exit.loopexit.unr-lcssa:                  ; preds = %.preheader.i
  %lcmp.mod380.not = icmp eq i32 %xtraiter378, 0
  br i1 %lcmp.mod380.not, label %padding.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %padding.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvar295.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvar.next296.1, %padding.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod381 = trunc i32 %21 to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %25 = mul nuw nsw i64 %indvar295.epil.init, 24
  %scevgep297.epil = getelementptr i8, ptr %i.fw, i64 %25
  %i.ga = mul i64 %1, %indvar295.epil.init
  %scevgep298.epil = getelementptr i8, ptr %i.fx, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep297.epil, ptr align 2 %scevgep298.epil, i64 %i.fu, i1 false), !tbaa !10
  br label %padding.exit

padding.exit:                                     ; preds = %.preheader.i.epil.preheader, %padding.exit.loopexit.unr-lcssa, %.preheader139.i
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %padding.exit
  %i.gb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %12, i1 true)
  %i.gc = sub nsw i32 24, %i.gb
  %i.gd = lshr i32 %5, %i.gc
  %i.ge = and i32 %i.gd, 1
  %i.gf = sub nuw nsw i32 4, %i.ge                ; 4 uses
  %i.gg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
  %i.gh = xor i32 %i.gg, 31
  %i.gi = sub nsw i32 %8, %i.gh
  %i.gj = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.gi, i32 0) ; 8 uses
  %.not255 = icmp eq i32 %6, 0
  br i1 %.not255, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.l
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.pre.pre = load i8, ptr %i.gk, align 2, !tbaa !22
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.pre317.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 1, !tbaa !22
  %wide.trip.count307 = zext nneg i32 %9 to i64
  %i.gl = sext i8 %.pre.pre to i32                ; 2 uses
  %i.gm = and i32 %i.gf, 1
  %i.gn = or disjoint i32 %i.gm, 2
  %i.go = sext i8 %.pre317.pre to i32             ; 2 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.gp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
  %i.gq = xor i32 %i.gp, 31
  %i.gr = sub nsw i32 %8, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count = zext nneg i32 %9 to i64
  %i.gu = load i8, ptr %i.gs, align 2, !tbaa !22
  %i.gv = sext i8 %i.gu to i32                    ; 2 uses
  %i.gw = and i32 %i.gf, 1
  %i.gx = or disjoint i32 %i.gw, 2
  %i.gy = load i8, ptr %i.gt, align 2, !tbaa !22
  %i.gz = sext i8 %i.gy to i32                    ; 2 uses
  %i.ha = load i8, ptr %i.e, align 2, !tbaa !22
  %i.hb = sext i8 %i.ha to i32                    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !22
  %i.he = sext i8 %i.hd to i32                    ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !22
  %i.hh = sext i8 %i.hg to i32                    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !22
  %i.hk = sext i8 %i.hj to i32                    ; 2 uses
  %i.hl = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.hm = shufflevector <4 x i32> %i.hl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hn = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %i.ho = shufflevector <4 x i32> %i.hn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.0233 = phi ptr [ %i.c, %bb.m ], [ %i.hq, %bb.o ] ; 13 uses
  %.0230 = phi i32 [ %10, %bb.m ], [ %i.hr, %bb.o ]
  %.0 = phi ptr [ %0, %bb.m ], [ %i.hp, %bb.o ]   ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.hp = getelementptr inbounds i8, ptr %.0, i64 %1
  %i.hq = getelementptr inbounds nuw i8, ptr %.0233, i64 24
  %i.hr = add nsw i32 %.0230, -1                  ; 2 uses
  %.not257 = icmp eq i32 %i.hr, 0
  br i1 %.not257, label %.loopexit, label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.n ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %indvars.iv ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !10
  %i.hu = zext i16 %i.ht to i32                   ; 8 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv to i32    ; 12 uses
  %i.hw = add nsw i32 %i.hv, %i.gv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !10
  %i.ia = sext i16 %i.hz to i32                   ; 3 uses
  %i.ib = sub nsw i32 %i.hv, %i.gv
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !10
  %i.if = sext i16 %i.ie to i32                   ; 3 uses
  %i.ig = sub nsw i32 %i.ia, %i.hu                ; 2 uses
  %i.ih = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.ig, i1 true) ; 2 uses
  %i.ii = lshr i32 %i.ih, %i.gj
  %i.ij = sub nsw i32 %5, %i.ii
  %i.ik = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.ij, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ih, i32 %i.ik) ; 2 uses
  %i.im = icmp slt i32 %i.ig, 0
  %i.in = sub nsw i32 0, %i.il
  %i.io = select i1 %i.im, i32 %i.in, i32 %i.il
  %i.ip = sub nsw i32 %i.if, %i.hu                ; 2 uses
  %i.iq = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.ip, i1 true) ; 2 uses
  %i.ir = lshr i32 %i.iq, %i.gj
  %i.is = sub nsw i32 %5, %i.ir
  %i.it = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.is, i32 0)
  %i.iu = tail call i32 @llvm.umin.i32(i32 %i.iq, i32 %i.it) ; 2 uses
  %i.iv = icmp slt i32 %i.ip, 0
  %i.iw = sub nsw i32 0, %i.iu
  %i.ix = select i1 %i.iv, i32 %i.iw, i32 %i.iu
  %i.iy = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.ia, i32 range(i32 -32768, 65536) %i.hu)
  %i.iz = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ia, i32 %i.hu)
  %i.ja = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.if, i32 range(i32 -32768, 65536) %i.iy)
  %i.jb = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.if, i32 %i.iz)
  %i.jc = add nsw i32 %i.hv, %i.gz
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !10 ; 2 uses
  %i.jg = sub nsw i32 %i.hv, %i.gz
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !10 ; 2 uses
  %i.jk = add nsw i32 %i.hv, %i.hb
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !10 ; 2 uses
  %i.jo = sub nsw i32 %i.hv, %i.hb
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !10 ; 2 uses
  %i.js = sext i16 %i.jr to i32                   ; 2 uses
  %i.jt = insertelement <4 x i16> poison, i16 %i.jj, i64 0
  %i.ju = insertelement <4 x i16> %i.jt, i16 %i.jf, i64 1
  %i.jv = insertelement <4 x i16> %i.ju, i16 %i.jn, i64 2
  %i.jw = insertelement <4 x i16> %i.jv, i16 %i.jr, i64 3
  %i.jx = sext <4 x i16> %i.jw to <4 x i32>
  %i.jy = sext i16 %i.jn to i32                   ; 2 uses
  %i.jz = sext i16 %i.jf to i32                   ; 2 uses
  %i.ka = sext i16 %i.jj to i32                   ; 2 uses
  %i.kb = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %i.kc = shufflevector <4 x i32> %i.kb, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kd = sub nsw <4 x i32> %i.jx, %i.kc          ; 2 uses
  %i.ke = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.kd, i1 true) ; 2 uses
  %i.kf = lshr <4 x i32> %i.ke, %i.ho
  %i.kg = sub nsw <4 x i32> %i.hm, %i.kf
  %i.kh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kg, <4 x i32> zeroinitializer)
  %i.ki = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ke, <4 x i32> %i.kh) ; 2 uses
  %i.kj = icmp slt <4 x i32> %i.kd, zeroinitializer
  %i.kk = sub nsw <4 x i32> zeroinitializer, %i.ki
  %i.kl = select <4 x i1> %i.kj, <4 x i32> %i.kk, <4 x i32> %i.ki
  %i.km = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kl)
  %reass.mul = shl nsw i32 %i.km, 1
  %reass.add262 = add nsw i32 %i.ix, %i.io
  %reass.mul263 = mul nsw i32 %reass.add262, %i.gf
  %i.kn = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.jz, i32 range(i32 -32768, 65536) %i.ja)
  %i.ko = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.jz, i32 %i.jb)
  %i.kp = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.ka, i32 range(i32 -32768, 65536) %i.kn)
  %i.kq = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ka, i32 %i.ko)
  %i.kr = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.jy, i32 range(i32 -32768, 65536) %i.kp)
  %i.ks = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.jy, i32 %i.kq)
  %i.kt = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.js, i32 range(i32 -32768, 65536) %i.kr)
  %i.ku = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.js, i32 %i.ks)
  %i.kv = add nsw i32 %i.hv, %i.he
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !10
  %i.kz = sext i16 %i.ky to i32                   ; 3 uses
  %i.la = sub nsw i32 %i.hv, %i.he
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !10
  %i.le = sext i16 %i.ld to i32                   ; 3 uses
  %i.lf = sub nsw i32 %i.kz, %i.hu                ; 2 uses
  %i.lg = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.lf, i1 true) ; 2 uses
  %i.lh = lshr i32 %i.lg, %i.gj
  %i.li = sub nsw i32 %5, %i.lh
  %i.lj = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.li, i32 0)
  %i.lk = tail call i32 @llvm.umin.i32(i32 %i.lg, i32 %i.lj) ; 2 uses
  %i.ll = icmp slt i32 %i.lf, 0
  %i.lm = sub nsw i32 0, %i.lk
  %i.ln = select i1 %i.ll, i32 %i.lm, i32 %i.lk
  %i.lo = sub nsw i32 %i.le, %i.hu                ; 2 uses
  %i.lp = tail call i32 @llvm.abs.i32(i32 range(i32 -98303, 32768) %i.lo, i1 true) ; 2 uses
  %i.lq = lshr i32 %i.lp, %i.gj
  %i.lr = sub nsw i32 %5, %i.lq
  %i.ls = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 %i.lr, i32 0)
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.lp, i32 %i.ls) ; 2 uses
  %i.lu = icmp slt i32 %i.lo, 0
  %i.lv = sub nsw i32 0, %i.lt
  %i.lw = select i1 %i.lu, i32 %i.lv, i32 %i.lt
  %i.lx = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.kz, i32 range(i32 -32768, 65536) %i.kt)
  %i.ly = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.kz, i32 %i.ku)
  %i.lz = tail call range(i32 -32768, 65536) i32 @llvm.umin.i32(i32 range(i32 -32768, 32768) %i.le, i32 range(i32 -32768, 65536) %i.lx)
  %i.ma = tail call range(i32 -32768, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.le, i32 %i.ly)
  %i.mb = add nsw i32 %i.hv, %i.hh
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !10 ; 2 uses
  %i.mf = sub nsw i32 %i.hv, %i.hh
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !10 ; 2 uses
  %i.mj = add nsw i32 %i.hv, %i.hk
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [2 x i8], ptr %.0233, i64 %i.mk
end_hunk_0
