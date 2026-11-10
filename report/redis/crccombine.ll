Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/crccombine?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gf2_matrix_times_switch:bb.a
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = xor i64 %i.aw, %i.ay
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = xor i64 %i.bc, %.057
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.05255, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.05255, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = xor i64 %i.bf, %i.bh
  %i.bj = xor i64 %i.bi, %.057
  br label %bb.q

bb.l:                                             ; preds = %.lr.ph
  %i.bk = load i64, ptr %.05255, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %.05255, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bn = xor i64 %i.bk, %i.bm
  %i.bo = xor i64 %i.bn, %.057
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.05255, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = xor i64 %i.bq, %.057
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %i.bs = load i64, ptr %.05255, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %.05255, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.bv = xor i64 %i.bs, %i.bu
  %i.bw = xor i64 %i.bv, %.057
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.05255, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.bz = xor i64 %i.by, %.057
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.ca = load i64, ptr %.05255, align 8, !tbaa !16
  %i.cb = xor i64 %i.ca, %.057
  br label %bb.q

default.unreachable59:                            ; preds = %.lr.ph
  unreachable

bb.q:                                             ; preds = %.lr.ph, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i64 [ %op.rdx, %bb.b ], [ %i.l, %bb.c ], [ %i.t, %bb.d ], [ %i.z, %bb.e ], [ %i.ah, %bb.f ], [ %i.an, %bb.g ], [ %i.as, %bb.h ], [ %i.av, %bb.i ], [ %i.bd, %bb.j ], [ %i.bj, %bb.k ], [ %i.bo, %bb.l ], [ %i.br, %bb.m ], [ %i.bw, %bb.n ], [ %i.bz, %bb.o ], [ %i.cb, %bb.p ], [ %.057, %.lr.ph ] ; 2 uses
  %i.cc = lshr i64 %.05156, 4                     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05255, i64 32
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.q ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_combine_cache(i64 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !guid !23 {
bb.a:
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), align 16, !tbaa !16
  %i.a = icmp ugt i8 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %1 to i64
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = add i8 %1, -2
  %i.d = icmp ult i8 %i.c, 3
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.036 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv
  store i64 %.036, ptr %i.e, align 8, !tbaa !16
  %i.f = shl i64 %.036, 1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = shl i64 %.036, 2
  %i.j = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.i, ptr %i.k, align 8, !tbaa !16
  %i.l = shl i64 %.036, 3
  %i.m = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.l, ptr %i.n, align 8, !tbaa !16
  %i.o = shl i64 %.036, 4                         ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.a
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i.loopexit.unr-lcssa:            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.i.loopexit.unr-lcssa ]
  %.036.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %.lr.ph.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.036.epil = phi i64 [ %.036.epil.init, %.lr.ph.epil.preheader ], [ %i.q, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv.epil
  store i64 %.036.epil, ptr %i.p, align 8, !tbaa !16
  %i.q = shl i64 %.036.epil, 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.epil, !llvm.loop !20

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.loopexit.unr-lcssa, %.lr.ph.epil, %._crit_edge
  %wide.trip.count.i = zext i8 %1 to i64          ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = tail call i64 @gf2_matrix_times_switch(ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 noundef %i.s)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @combine_cache, i64 %indvars.iv.i
  store i64 %i.t, ptr %i.u, align 8, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i20, label %.lr.ph.i, !llvm.loop !21

.lr.ph.i20:                                       ; preds = %.lr.ph.i, %.lr.ph.i20
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i22, %.lr.ph.i20 ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @combine_cache, i64 %indvars.iv.i21
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = tail call i64 @gf2_matrix_times_switch(ptr noundef nonnull @combine_cache, i64 noundef %i.w)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @combine_cache, i64 512), i64 %indvars.iv.i21
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i
  br i1 %exitcond.not.i23, label %.lr.ph.preheader.i26, label %.lr.ph.i20, !llvm.loop !21

.lr.ph.preheader.i26:                             ; preds = %.lr.ph.i20, %gf2_matrix_square.exit32.loopexit
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %gf2_matrix_square.exit32.loopexit ], [ 0, %.lr.ph.i20 ] ; 3 uses
  %.014 = phi i64 [ 4294967295, %gf2_matrix_square.exit32.loopexit ], [ 1, %.lr.ph.i20 ]
  %i.z = getelementptr inbounds nuw [512 x i8], ptr @combine_cache, i64 %indvars.iv38
  %i.aa = add nuw i64 %.014, %indvars.iv38
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [512 x i8], ptr @combine_cache, i64 %i.ab ; 2 uses
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %gf2_matrix_times_switch.exit, %.lr.ph.preheader.i26
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.preheader.i26 ], [ %indvars.iv.next.i30, %gf2_matrix_times_switch.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i29
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %.not54.i = icmp eq i64 %i.ae, 0
  br i1 %.not54.i, label %gf2_matrix_times_switch.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i28, %bb.q
  %.057.i = phi i64 [ %.1.i, %bb.q ], [ 0, %.lr.ph.i28 ] ; 16 uses
  %.05156.i = phi i64 [ %i.dh, %bb.q ], [ %i.ae, %.lr.ph.i28 ] ; 2 uses
  %.05255.i = phi ptr [ %i.di, %bb.q ], [ %i.ac, %.lr.ph.i28 ] ; 30 uses
  %i.af = and i64 %.05156.i, 15
  switch i64 %i.af, label %default.unreachable [
    i64 15, label %bb.b
    i64 14, label %bb.c
    i64 13, label %bb.d
    i64 12, label %bb.e
    i64 11, label %bb.f
    i64 10, label %bb.g
    i64 9, label %bb.h
    i64 8, label %bb.i
    i64 7, label %bb.j
    i64 6, label %bb.k
    i64 5, label %bb.l
    i64 4, label %bb.m
    i64 3, label %bb.n
    i64 2, label %bb.o
    i64 1, label %bb.p
    i64 0, label %bb.q
  ]

bb.b:                                             ; preds = %.lr.ph.i33
  %i.ag = load <4 x i64>, ptr %.05255.i, align 8, !tbaa !16
  %i.ah = tail call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> %i.ag)
  %op.rdx = xor i64 %i.ah, %.057.i
  br label %bb.q

bb.c:                                             ; preds = %.lr.ph.i33
  %i.ai = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ao = xor i64 %i.aj, %i.al
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = xor i64 %i.ap, %.057.i
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph.i33
  %i.ar = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = xor i64 %i.ar, %i.at
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = xor i64 %i.ax, %.057.i
  br label %bb.q

bb.e:                                             ; preds = %.lr.ph.i33
  %i.az = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.bd = xor i64 %i.ba, %i.bc
  %i.be = xor i64 %i.bd, %.057.i
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph.i33
  %i.bf = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !16
  %i.bk = xor i64 %i.bf, %i.bh
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = xor i64 %i.bl, %.057.i
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph.i33
  %i.bn = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = xor i64 %i.br, %.057.i
  br label %bb.q

bb.h:                                             ; preds = %.lr.ph.i33
  %i.bt = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bw = xor i64 %i.bt, %i.bv
  %i.bx = xor i64 %i.bw, %.057.i
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph.i33
  %i.by = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !16
  %i.ca = xor i64 %i.bz, %.057.i
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph.i33
  %i.cb = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.cg = xor i64 %i.cb, %i.cd
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = xor i64 %i.ch, %.057.i
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph.i33
  %i.cj = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !16
  %i.cn = xor i64 %i.ck, %i.cm
  %i.co = xor i64 %i.cn, %.057.i
  br label %bb.q

bb.l:                                             ; preds = %.lr.ph.i33
  %i.cp = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !16
  %i.cs = xor i64 %i.cp, %i.cr
  %i.ct = xor i64 %i.cs, %.057.i
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph.i33
  %i.cu = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cw = xor i64 %i.cv, %.057.i
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph.i33
  %i.cx = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !16
  %i.da = xor i64 %i.cx, %i.cz
  %i.db = xor i64 %i.da, %.057.i
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i33
  %i.dc = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.de = xor i64 %i.dd, %.057.i
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i33
  %i.df = load i64, ptr %.05255.i, align 8, !tbaa !16
  %i.dg = xor i64 %i.df, %.057.i
  br label %bb.q

default.unreachable:                              ; preds = %.lr.ph.i33
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i33
  %.1.i = phi i64 [ %op.rdx, %bb.b ], [ %i.aq, %bb.c ], [ %i.ay, %bb.d ], [ %i.be, %bb.e ], [ %i.bm, %bb.f ], [ %i.bs, %bb.g ], [ %i.bx, %bb.h ], [ %i.ca, %bb.i ], [ %i.ci, %bb.j ], [ %i.co, %bb.k ], [ %i.ct, %bb.l ], [ %i.cw, %bb.m ], [ %i.db, %bb.n ], [ %i.de, %bb.o ], [ %i.dg, %bb.p ], [ %.057.i, %.lr.ph.i33 ] ; 2 uses
  %i.dh = lshr i64 %.05156.i, 4                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05255.i, i64 32
  %.not.i34 = icmp eq i64 %i.dh, 0
  br i1 %.not.i34, label %gf2_matrix_times_switch.exit, label %.lr.ph.i33, !llvm.loop !0

gf2_matrix_times_switch.exit:                     ; preds = %bb.q, %.lr.ph.i28
  %.0.lcssa.i = phi i64 [ 0, %.lr.ph.i28 ], [ %.1.i, %bb.q ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i29
  store i64 %.0.lcssa.i, ptr %i.dj, align 8, !tbaa !16
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %wide.trip.count.i
  br i1 %exitcond.not.i31, label %gf2_matrix_square.exit32.loopexit, label %.lr.ph.i28, !llvm.loop !21

gf2_matrix_square.exit32.loopexit:                ; preds = %gf2_matrix_times_switch.exit
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 64
  br i1 %exitcond41.not, label %.split, label %.lr.ph.preheader.i26, !llvm.loop !22

.split:                                           ; preds = %gf2_matrix_square.exit32.loopexit, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @crc64_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #2 !guid !26 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @combine_cache, align 16, !tbaa !16
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @init_combine_cache(i64 noundef %3, i8 noundef zeroext %4)
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.016 = phi i64 [ %i.h, %bb.f ], [ %2, %.preheader ] ; 2 uses
  %.015 = phi i64 [ %.1, %bb.f ], [ %0, %.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.j, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.d = and i64 %.016, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = zext nneg i32 %.0 to i64
  %i.f = getelementptr inbounds nuw [512 x i8], ptr @combine_cache, i64 %i.e
  %i.g = tail call i64 @gf2_matrix_times_switch(ptr noundef nonnull %i.f, i64 noundef %.015)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.g, %bb.e ], [ %.015, %bb.d ] ; 2 uses
  %i.h = lshr i64 %.016, 1                        ; 2 uses
  %i.i = add nuw nsw i32 %.0, 1
  %i.j = and i32 %i.i, 63
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %bb.g, label %bb.d, !llvm.loop !25

bb.g:                                             ; preds = %bb.f
  %i.k = xor i64 %.1, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.014 = phi i64 [ %i.k, %bb.g ], [ %0, %bb.a ]
  ret i64 %.014
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !17}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 1, !"ThinLTO", i32 0}
!8 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i64 2046948374351255137}
!15 = !{!"long", !11, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 -1606123427464922546}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !24}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{i64 114059120909717893}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !17}
!26 = !{i64 8115783108823494704}
end_hunk_0
