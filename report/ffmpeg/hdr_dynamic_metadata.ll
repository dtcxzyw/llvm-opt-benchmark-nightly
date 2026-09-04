Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdr_dynamic_metadata?download=true
inline.NumInlined: 158
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@av_dynamic_hdr_plus_from_t35:bb.a
  %.not356 = icmp eq i32 %i.vy, 0
  br i1 %.not356, label %.loopexit, label %.lr.ph341

.lr.ph341:                                        ; preds = %.preheader
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uf, i64 296 ; 3 uses
  %wide.trip.count402 = zext nneg i32 %i.vy to i64 ; 2 uses
  %xtraiter447 = and i64 %wide.trip.count402, 1
  %i.wh = icmp eq i32 %i.vy, 1
  br i1 %i.wh, label %.epil.preheader446, label %.lr.ph341.new

.lr.ph341.new:                                    ; preds = %.lr.ph341
  %unroll_iter453 = and i64 %wide.trip.count402, 14
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph341.new
  %indvars.iv399 = phi i64 [ 0, %.lr.ph341.new ], [ %indvars.iv.next400.1, %bb.t ] ; 3 uses
  %i.wi = phi i32 [ %i.wa, %.lr.ph341.new ], [ %i.xf, %bb.t ] ; 3 uses
  %niter454 = phi i64 [ 0, %.lr.ph341.new ], [ %niter454.next.1, %bb.t ]
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv399 ; 2 uses
  %i.wk = lshr i32 %i.wi, 3
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 1, !tbaa !21
  %i.wo = call i32 @llvm.bswap.i32(i32 %i.wn)
  %i.wp = and i32 %i.wi, 7
  %i.wq = shl i32 %i.wo, %i.wp
  %i.wr = lshr i32 %i.wq, 22
  %i.ws = add i32 %i.wi, 10
  %i.wt = call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.ws) ; 3 uses
  store i32 %i.wr, ptr %i.wj, align 4, !tbaa !77
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  store i32 1023, ptr %.sroa.218.0..sroa_idx, align 4, !tbaa !77
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv399 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = lshr i32 %i.wt, 3
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.wx
  %i.wz = load i32, ptr %i.wy, align 1, !tbaa !21
  %i.xa = call i32 @llvm.bswap.i32(i32 %i.wz)
  %i.xb = and i32 %i.wt, 7
  %i.xc = shl i32 %i.xa, %i.xb
  %i.xd = lshr i32 %i.xc, 22
  %i.xe = add i32 %i.wt, 10
  %i.xf = call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.xe) ; 3 uses
  store i32 %i.xd, ptr %i.wv, align 4, !tbaa !77
  %.sroa.218.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  store i32 1023, ptr %.sroa.218.0..sroa_idx.1, align 4, !tbaa !77
  %indvars.iv.next400.1 = add nuw nsw i64 %indvars.iv399, 2 ; 2 uses
  %niter454.next.1 = add i64 %niter454, 2         ; 2 uses
  %niter454.ncmp.1 = icmp eq i64 %niter454.next.1, %unroll_iter453
  br i1 %niter454.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.t, !llvm.loop !73

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.t
  %lcmp.mod450.not = icmp eq i64 %xtraiter447, 0
  br i1 %lcmp.mod450.not, label %.loopexit, label %.epil.preheader446

.epil.preheader446:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph341
  %indvars.iv399.epil.init = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next400.1, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init449 = phi i32 [ %i.wa, %.lr.ph341 ], [ %i.xf, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod452 = trunc i32 %i.vy to i1
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %indvars.iv399.epil.init ; 2 uses
  %i.xh = lshr i32 %.epil.init449, 3
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 1, !tbaa !21
  %i.xl = call i32 @llvm.bswap.i32(i32 %i.xk)
  %i.xm = and i32 %.epil.init449, 7
  %i.xn = shl i32 %i.xl, %i.xm
  %i.xo = lshr i32 %i.xn, 22
  %i.xp = add i32 %.epil.init449, 10
  %i.xq = call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.xp)
  store i32 %i.xo, ptr %i.xg, align 4, !tbaa !77
  %.sroa.218.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  store i32 1023, ptr %.sroa.218.0..sroa_idx.epil, align 4, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader446, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.q
  %.lcssa339344 = phi i32 [ %spec.select.i284, %bb.q ], [ %i.wa, %.preheader ], [ %i.xf, %.loopexit.loopexit.unr-lcssa ], [ %i.xq, %.epil.preheader446 ] ; 5 uses
  %.not289 = icmp sgt i32 %.val271.pre, %.lcssa339344
  br i1 %.not289, label %bb.u, label %.critedge

bb.u:                                             ; preds = %.loopexit
  %i.xr = lshr i32 %.lcssa339344, 3
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !21
  %i.xv = icmp slt i32 %.lcssa339344, %i.ka
  %i.xw = zext i1 %i.xv to i32
  %spec.select.i285 = add nsw i32 %.lcssa339344, %i.xw ; 5 uses
  %i.xx = zext i8 %i.xu to i32
  %i.xy = and i32 %.lcssa339344, 7
  %i.xz = shl nuw nsw i32 %i.xx, %i.xy
  %i.ya = lshr i32 %i.xz, 7
  %i.yb = and i32 %i.ya, 1                        ; 2 uses
  %i.yc = trunc nuw nsw i32 %i.yb to i8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.uf, i64 416
  store i8 %i.yc, ptr %i.yd, align 4, !tbaa !47
  %.not240 = icmp eq i32 %i.yb, 0
  br i1 %.not240, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ye = sub nsw i32 %.val271.pre, %spec.select.i285
  %i.yf = icmp slt i32 %i.ye, 6
  br i1 %i.yf, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.yg = getelementptr inbounds nuw i8, ptr %i.uf, i64 420
  %i.yh = lshr i32 %spec.select.i285, 3
  %i.yi = zext nneg i32 %i.yh to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 1, !tbaa !21
  %i.yl = call i32 @llvm.bswap.i32(i32 %i.yk)
  %i.ym = and i32 %spec.select.i285, 7
  %i.yn = shl i32 %i.yl, %i.ym
  %i.yo = lshr i32 %i.yn, 26
  %i.yp = add i32 %spec.select.i285, 6
  %i.yq = call i32 @llvm.umin.i32(i32 %i.ka, i32 %i.yp)
  store i32 %i.yo, ptr %i.yg, align 4, !tbaa !77
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 424
  store i32 8, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !77
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.lcssa339346 = phi i32 [ %i.yq, %bb.w ], [ %spec.select.i285, %bb.u ]
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next405, %wide.trip.count387
  br i1 %exitcond408.not, label %.critedge, label %.loopexit292, !llvm.loop !74

.critedge:                                        ; preds = %._crit_edge319, %.preheader294, %bb.k, %bb.x, %.loopexit, %bb.s, %bb.r, %.loopexit292, %bb.v, %bb.p, %bb.n, %bb.o, %bb.j, %bb.h, %bb.i, %.critedge246, %._crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.10 = phi i32 [ -12, %bb.a ], [ -22, %bb.b ], [ -1094995529, %bb.c ], [ -1094995529, %bb.o ], [ -1094995529, %bb.d ], [ -1094995529, %bb.e ], [ -1094995529, %._crit_edge ], [ -1094995529, %.critedge246 ], [ -1094995529, %bb.p ], [ -1094995529, %bb.j ], [ -1094995529, %bb.n ], [ -1094995529, %bb.v ], [ -1094995529, %bb.i ], [ -1094995529, %bb.h ], [ 0, %bb.x ], [ -1094995529, %.loopexit ], [ -1094995529, %bb.s ], [ -1094995529, %bb.r ], [ -1094995529, %.loopexit292 ], [ -1094995529, %bb.k ], [ -1094995529, %.preheader294 ], [ -1094995529, %._crit_edge319 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 134217728) i32 @get_bits_long(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !21
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k
  %i.m = add i32 %i.b, 16
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.m) ; 4 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !34
  %i.o = lshr i32 %i.n, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.r = load i32, ptr %i.q, align 1, !tbaa !21
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = and i32 %i.n, 7
  %i.u = shl i32 %i.s, %i.t
  %i.v = lshr i32 %i.u, 21
  %i.w = add i32 %i.n, 11
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.w)
  store i32 %i.x, ptr %i.a, align 8, !tbaa !34
  %i.y = lshr i32 %i.l, 5
  %i.z = and i32 %i.y, 134215680
  %i.aa = or disjoint i32 %i.v, %i.z
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define range(i32 -1397118274, 1) i32 @av_dynamic_hdr_plus_to_t35(ptr nofree noundef readonly %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.fy, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not254 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not254, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp ne ptr %2, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %._crit_edge, label %bb.fy

bb.d:                                             ; preds = %bb.b
  %.old1.not = icmp eq ptr %2, null
  br i1 %.old1.not, label %bb.fy, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 7 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !24    ; 7 uses
  %i.f = icmp ugt i8 %i.e, 1
  %i.g = zext i8 %i.e to i64
  %3 = add nuw nsw i64 %i.g, 4294967294
  %4 = and i64 %3, 4294967295
  %i.h = mul nuw nsw i64 %4, 153
  %i.i = add nuw nsw i64 %i.h, 163
  %.0244.lcssa = select i1 %i.f, i64 %i.i, i64 10 ; 2 uses
  %i.j = add nuw nsw i64 %.0244.lcssa, 28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 3 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !35
  %.not255 = icmp eq i8 %i.l, 0
  br i1 %.not255, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1297
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1298
  %i.q = load i8, ptr %i.p, align 2, !tbaa !37
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.o, 2
  %i.t = mul nuw nsw i64 %i.s, %i.r
  %i.u = add nuw nsw i64 %.0244.lcssa, 38
  %i.v = add nuw nsw i64 %i.u, %i.t
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.v, %bb.e ], [ %i.j, %._crit_edge ] ; 3 uses
  %.not680 = icmp eq i8 %i.e, 0                   ; 2 uses
  br i1 %.not680, label %._crit_edge591, label %.lr.ph590.preheader

.lr.ph590.preheader:                              ; preds = %bb.f
  %wide.trip.count = zext i8 %i.e to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.w = icmp ult i8 %i.e, 4
  br i1 %i.w, label %.lr.ph590.epil.preheader, label %.lr.ph590.preheader.new

.lr.ph590.preheader.new:                          ; preds = %.lr.ph590.preheader
  %unroll_iter = and i64 %wide.trip.count, 252
  br label %.lr.ph590

._crit_edge591.loopexit.unr-lcssa:                ; preds = %.lr.ph590
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge591, label %.lr.ph590.epil.preheader

.lr.ph590.epil.preheader:                         ; preds = %._crit_edge591.loopexit.unr-lcssa, %.lr.ph590.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph590.preheader ], [ %indvars.iv.next.3, %._crit_edge591.loopexit.unr-lcssa ]
  %.2587.epil.init = phi i64 [ %.1, %.lr.ph590.preheader ], [ %i.bi, %._crit_edge591.loopexit.unr-lcssa ]
  %lcmp.mod792 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod792)
  br label %.lr.ph590.epil

.lr.ph590.epil:                                   ; preds = %.lr.ph590.epil, %.lr.ph590.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph590.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph590.epil ] ; 2 uses
  %.2587.epil = phi i64 [ %.2587.epil.init, %.lr.ph590.epil.preheader ], [ %i.ad, %.lr.ph590.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph590.epil.preheader ], [ %epil.iter.next, %.lr.ph590.epil ]
  %i.x = getelementptr inbounds nuw [428 x i8], ptr %0, i64 %indvars.iv.epil
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.z = load i8, ptr %i.y, align 4, !tbaa !39
  %i.aa = zext i8 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.aa, 24
  %i.ac = add i64 %.2587.epil, 82
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge591, label %.lr.ph590.epil, !llvm.loop !78

._crit_edge591:                                   ; preds = %._crit_edge591.loopexit.unr-lcssa, %.lr.ph590.epil, %bb.f
  %.2.lcssa = phi i64 [ %.1, %bb.f ], [ %i.bi, %._crit_edge591.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph590.epil ] ; 2 uses
  %i.ae = add i64 %.2.lcssa, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6300 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !42
  %.not256 = icmp eq i8 %i.ag, 0
  br i1 %.not256, label %bb.h, label %bb.g

.lr.ph590:                                        ; preds = %.lr.ph590, %.lr.ph590.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph590.preheader.new ], [ %indvars.iv.next.3, %.lr.ph590 ] ; 5 uses
  %.2587 = phi i64 [ %.1, %.lr.ph590.preheader.new ], [ %i.bi, %.lr.ph590 ]
  %niter = phi i64 [ 0, %.lr.ph590.preheader.new ], [ %niter.next.3, %.lr.ph590 ]
  %i.ah = getelementptr inbounds nuw [428 x i8], ptr %0, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !39
  %i.ak = zext i8 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, 24
  %i.am = add i64 %.2587, 82
  %i.an = add i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw [428 x i8], ptr %0, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !39
  %i.ar = zext i8 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 24
  %i.at = add i64 %i.an, 82
  %i.au = add i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw [428 x i8], ptr %0, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 940
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !39
  %i.ay = zext i8 %i.ax to i64
  %i.az = mul nuw nsw i64 %i.ay, 24
  %i.ba = add i64 %i.au, 82
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw [428 x i8], ptr %0, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1368
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !39
  %i.bf = zext i8 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, 24
  %i.bh = add i64 %i.bb, 82
  %i.bi = add i64 %i.bh, %i.bg                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge591.loopexit.unr-lcssa, label %.lr.ph590, !llvm.loop !79

bb.g:                                             ; preds = %._crit_edge591
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6301
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !43
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 6302
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !44
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bl, 2
  %i.bq = mul nuw nsw i64 %i.bp, %i.bo
  %i.br = add i64 %.2.lcssa, 11
  %i.bs = add i64 %i.br, %i.bq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge591
  %.3 = phi i64 [ %i.bs, %bb.g ], [ %i.ae, %._crit_edge591 ] ; 2 uses
  br i1 %.not680, label %._crit_edge597, label %.lr.ph596

.lr.ph596:                                        ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count695 = zext i8 %i.e to i64
  br label %bb.i

._crit_edge597:                                   ; preds = %bb.k, %bb.h
  %.4.lcssa = phi i64 [ %.3, %bb.h ], [ %spec.select, %bb.k ]
  %i.bu = add i64 %.4.lcssa, 7                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 3                       ; 4 uses
  %i.bw = icmp ult i64 %i.bu, 7264
  br i1 %i.bw, label %bb.m, label %bb.l

bb.i:                                             ; preds = %.lr.ph596, %bb.k
  %indvars.iv692 = phi i64 [ 0, %.lr.ph596 ], [ %indvars.iv.next693, %bb.k ] ; 2 uses
  %.4593 = phi i64 [ %.3, %.lr.ph596 ], [ %spec.select, %bb.k ] ; 2 uses
  %i.bx = add i64 %.4593, 1
  %i.by = getelementptr inbounds nuw [428 x i8], ptr %i.bt, i64 %indvars.iv692 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 272
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !45
  %.not264 = icmp eq i8 %i.ca, 0
  br i1 %.not264, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 292
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !46
  %i.cd = zext i8 %i.cc to i64
  %i.ce = mul nuw nsw i64 %i.cd, 10
  %i.cf = add i64 %.4593, 29
  %i.cg = add i64 %i.cf, %i.ce
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5 = phi i64 [ %i.cg, %bb.j ], [ %i.bx, %bb.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 416
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !47
  %.not265 = icmp eq i8 %i.ci, 0
  %spec.select.v = select i1 %.not265, i64 1, i64 7
  %spec.select = add i64 %spec.select.v, %.5      ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond696.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count695
  br i1 %exitcond696.not, label %._crit_edge597, label %bb.i, !llvm.loop !80

bb.l:                                             ; preds = %._crit_edge597
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 298) #10
  tail call void @abort() #11
  unreachable

bb.m:                                             ; preds = %._crit_edge597
  br i1 %.not254, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %.not257 = icmp eq ptr %i.cj, null
  br i1 %.not257, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = load i64, ptr %2, align 8, !tbaa !11
  %i.cl = icmp ult i64 %i.ck, %i.bv
  br i1 %i.cl, label %bb.fy, label %put_bits.exit269

bb.p:                                             ; preds = %bb.n
  %i.cm = tail call noalias ptr @av_malloc(i64 noundef %i.bv) #10 ; 2 uses
  %.not258 = icmp eq ptr %i.cm, null
  br i1 %.not258, label %bb.fy, label %.put_bits.exit269_crit_edge

.put_bits.exit269_crit_edge:                      ; preds = %bb.p
  %.pre = load i8, ptr %i.d, align 2, !tbaa !24
  br label %put_bits.exit269

put_bits.exit269:                                 ; preds = %.put_bits.exit269_crit_edge, %bb.o
  %i.cn = phi i8 [ %.pre, %.put_bits.exit269_crit_edge ], [ %i.e, %bb.o ] ; 2 uses
  %.0245 = phi ptr [ %i.cm, %.put_bits.exit269_crit_edge ], [ %i.cj, %bb.o ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0245, i64 %i.bv ; 13 uses
  %i.cp = or i8 %i.cn, 4
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = icmp ugt i8 %i.cn, 1
end_hunk_0
