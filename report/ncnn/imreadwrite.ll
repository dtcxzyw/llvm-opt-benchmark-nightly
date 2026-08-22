Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@stbi_zlib_compress:bb.a
  %i.vm = add i32 %i.vl, %.1789
  %i.vn = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.1 = getelementptr i8, ptr %i.vn, i64 1
  %i.vo = load i8, ptr %gep.1, align 1, !tbaa !26
  %i.vp = zext i8 %i.vo to i32
  %i.vq = add i32 %i.vl, %i.vp                    ; 2 uses
  %i.vr = add i32 %i.vq, %i.vm
  %i.vs = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.2 = getelementptr i8, ptr %i.vs, i64 2
  %i.vt = load i8, ptr %gep.2, align 1, !tbaa !26
  %i.vu = zext i8 %i.vt to i32
  %i.vv = add i32 %i.vq, %i.vu                    ; 2 uses
  %i.vw = add i32 %i.vv, %i.vr
  %i.vx = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.3 = getelementptr i8, ptr %i.vx, i64 3
  %i.vy = load i8, ptr %gep.3, align 1, !tbaa !26
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add i32 %i.vv, %i.vz                    ; 4 uses
  %i.wb = add i32 %i.wa, %i.vw                    ; 3 uses
  %indvars.iv.next863.3 = add nuw nsw i64 %indvars.iv862, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge791.loopexit.unr-lcssa, label %.lr.ph790, !llvm.loop !552

._crit_edge791.loopexit.unr-lcssa:                ; preds = %.lr.ph790
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil.preheader

.lr.ph790.epil.preheader:                         ; preds = %._crit_edge791.loopexit.unr-lcssa, %.lr.ph790.preheader
  %indvars.iv862.epil.init = phi i64 [ 0, %.lr.ph790.preheader ], [ %indvars.iv.next863.3, %._crit_edge791.loopexit.unr-lcssa ]
  %.1789.epil.init = phi i32 [ %.0177796, %.lr.ph790.preheader ], [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ]
  %.1179788.epil.init = phi i32 [ %.0178795, %.lr.ph790.preheader ], [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ]
  %lcmp.mod1100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  br label %.lr.ph790.epil

.lr.ph790.epil:                                   ; preds = %.lr.ph790.epil, %.lr.ph790.epil.preheader
  %indvars.iv862.epil = phi i64 [ %indvars.iv862.epil.init, %.lr.ph790.epil.preheader ], [ %indvars.iv.next863.epil, %.lr.ph790.epil ] ; 2 uses
  %.1789.epil = phi i32 [ %.1789.epil.init, %.lr.ph790.epil.preheader ], [ %i.wf, %.lr.ph790.epil ]
  %.1179788.epil = phi i32 [ %.1179788.epil.init, %.lr.ph790.epil.preheader ], [ %i.we, %.lr.ph790.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph790.epil.preheader ], [ %epil.iter.next, %.lr.ph790.epil ]
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862.epil
  %i.wc = load i8, ptr %gep.epil, align 1, !tbaa !26
  %i.wd = zext i8 %i.wc to i32
  %i.we = add i32 %.1179788.epil, %i.wd           ; 3 uses
  %i.wf = add i32 %i.we, %.1789.epil              ; 2 uses
  %indvars.iv.next863.epil = add nuw nsw i64 %indvars.iv862.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil, !llvm.loop !553

._crit_edge791.loopexit:                          ; preds = %.lr.ph790.epil, %._crit_edge791.loopexit.unr-lcssa
  %.lcssa1068 = phi i32 [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ], [ %i.we, %.lr.ph790.epil ]
  %.lcssa = phi i32 [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ], [ %i.wf, %.lr.ph790.epil ]
  %i.wg = urem i32 %.lcssa1068, 65521
  %i.wh = urem i32 %.lcssa, 65521
  br label %._crit_edge791

._crit_edge791:                                   ; preds = %._crit_edge791.loopexit, %.preheader
  %.1179.lcssa = phi i32 [ %.0178795, %.preheader ], [ %i.wg, %._crit_edge791.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0177796, %.preheader ], [ %i.wh, %._crit_edge791.loopexit ] ; 2 uses
  %i.wi = add nuw nsw i32 %.0797, %.5191794       ; 2 uses
  %i.wj = icmp slt i32 %i.wi, %1
  br i1 %i.wj, label %.preheader, label %._crit_edge798, !llvm.loop !554

._crit_edge798:                                   ; preds = %._crit_edge791, %bb.an, %.loopexit
  %.131007 = phi ptr [ %.13, %.loopexit ], [ %storemerge.lcssa, %bb.an ], [ %.13, %._crit_edge791 ] ; 4 uses
  %i.wk = phi i32 [ %i.ve, %.loopexit ], [ 2, %bb.an ], [ %i.ve, %._crit_edge791 ]
  %.0178.lcssa = phi i32 [ 1, %.loopexit ], [ 1, %bb.an ], [ %.1179.lcssa, %._crit_edge791 ] ; 2 uses
  %.0177.lcssa = phi i32 [ 0, %.loopexit ], [ 0, %bb.an ], [ %.1.lcssa, %._crit_edge791 ] ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wm = add nsw i32 %i.wk, 1
  %i.wn = load i32, ptr %i.wl, align 4, !tbaa !13 ; 2 uses
  %.not228 = icmp slt i32 %i.wm, %i.wn
  br i1 %.not228, label %bb.bd, label %.thread704

.thread704:                                       ; preds = %._crit_edge798
  %i.wo = shl nsw i32 %i.wn, 1                    ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wq = sext i32 %i.wo to i64
  %i.wr = add nsw i64 %i.wq, 9
  %i.ws = tail call ptr @realloc(ptr noundef nonnull %i.wp, i64 noundef %i.wr) #37 ; 3 uses
  %.not18.i478 = icmp eq ptr %i.ws, null
  br i1 %.not18.i478, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.thread704
  %i.wt = or disjoint i32 %i.wo, 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i32 %i.wt, ptr %i.ws, align 4, !tbaa !13
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge798, %.thread704, %bb.bc
  %.14 = phi ptr [ %.131007, %._crit_edge798 ], [ %.131007, %.thread704 ], [ %i.wu, %bb.bc ] ; 5 uses
  %i.wv = lshr i32 %.0177.lcssa, 8
  %i.ww = trunc nuw i32 %i.wv to i8
  %i.wx = getelementptr inbounds i8, ptr %.14, i64 -4 ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !13 ; 2 uses
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr %i.wx, align 4, !tbaa !13
  %i.xa = sext i32 %i.wy to i64
  %i.xb = getelementptr inbounds i8, ptr %.14, i64 %i.xa
  store i8 %i.ww, ptr %i.xb, align 1, !tbaa !26
  %i.xc = getelementptr inbounds i8, ptr %.14, i64 -8 ; 2 uses
  %i.xd = load i32, ptr %i.wx, align 4, !tbaa !13
  %i.xe = add nsw i32 %i.xd, 1
  %i.xf = load i32, ptr %i.xc, align 4, !tbaa !13 ; 2 uses
  %.not229 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not229, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.xg = shl nsw i32 %i.xf, 1                    ; 2 uses
  %i.xh = sext i32 %i.xg to i64
  %i.xi = add nsw i64 %i.xh, 9
  %i.xj = tail call ptr @realloc(ptr noundef nonnull %i.xc, i64 noundef %i.xi) #37 ; 3 uses
  %.not18.i484 = icmp eq ptr %i.xj, null
  br i1 %.not18.i484, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.xk = or disjoint i32 %i.xg, 1
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i32 %i.xk, ptr %i.xj, align 4, !tbaa !13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.15 = phi ptr [ %.14, %bb.bd ], [ %.14, %bb.be ], [ %i.xl, %bb.bf ] ; 5 uses
  %i.xm = trunc i32 %.0177.lcssa to i8
  %i.xn = getelementptr inbounds i8, ptr %.15, i64 -4 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !13 ; 2 uses
  %i.xp = add nsw i32 %i.xo, 1
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !13
  %i.xq = sext i32 %i.xo to i64
  %i.xr = getelementptr inbounds i8, ptr %.15, i64 %i.xq
  store i8 %i.xm, ptr %i.xr, align 1, !tbaa !26
  %i.xs = getelementptr inbounds i8, ptr %.15, i64 -8 ; 2 uses
  %i.xt = load i32, ptr %i.xn, align 4, !tbaa !13
  %i.xu = add nsw i32 %i.xt, 1
  %i.xv = load i32, ptr %i.xs, align 4, !tbaa !13 ; 2 uses
  %.not230 = icmp slt i32 %i.xu, %i.xv
  br i1 %.not230, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xw = shl nsw i32 %i.xv, 1                    ; 2 uses
  %i.xx = sext i32 %i.xw to i64
  %i.xy = add nsw i64 %i.xx, 9
  %i.xz = tail call ptr @realloc(ptr noundef nonnull %i.xs, i64 noundef %i.xy) #37 ; 3 uses
  %.not18.i490 = icmp eq ptr %i.xz, null
  br i1 %.not18.i490, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ya = or disjoint i32 %i.xw, 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i32 %i.ya, ptr %i.xz, align 4, !tbaa !13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %.16 = phi ptr [ %.15, %bb.bg ], [ %.15, %bb.bh ], [ %i.yb, %bb.bi ] ; 5 uses
  %i.yc = lshr i32 %.0178.lcssa, 8
  %i.yd = trunc nuw i32 %i.yc to i8
  %i.ye = getelementptr inbounds i8, ptr %.16, i64 -4 ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !13 ; 2 uses
  %i.yg = add nsw i32 %i.yf, 1
  store i32 %i.yg, ptr %i.ye, align 4, !tbaa !13
  %i.yh = sext i32 %i.yf to i64
  %i.yi = getelementptr inbounds i8, ptr %.16, i64 %i.yh
  store i8 %i.yd, ptr %i.yi, align 1, !tbaa !26
  %i.yj = getelementptr inbounds i8, ptr %.16, i64 -8 ; 2 uses
  %i.yk = load i32, ptr %i.ye, align 4, !tbaa !13
  %i.yl = add nsw i32 %i.yk, 1
  %i.ym = load i32, ptr %i.yj, align 4, !tbaa !13 ; 2 uses
  %.not231 = icmp slt i32 %i.yl, %i.ym
  br i1 %.not231, label %_ZL14stbiw__sbgrowfPPvii.exit499, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.yn = shl nsw i32 %i.ym, 1                    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = add nsw i64 %i.yo, 9
  %i.yq = tail call ptr @realloc(ptr noundef nonnull %i.yj, i64 noundef %i.yp) #37 ; 3 uses
  %.not18.i496 = icmp eq ptr %i.yq, null
  br i1 %.not18.i496, label %_ZL14stbiw__sbgrowfPPvii.exit499, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.yr = or disjoint i32 %i.yn, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store i32 %i.yr, ptr %i.yq, align 4, !tbaa !13
  br label %_ZL14stbiw__sbgrowfPPvii.exit499

_ZL14stbiw__sbgrowfPPvii.exit499:                 ; preds = %bb.bl, %bb.bk, %bb.bj
  %.17 = phi ptr [ %.16, %bb.bj ], [ %.16, %bb.bk ], [ %i.ys, %bb.bl ] ; 4 uses
  %i.yt = trunc i32 %.0178.lcssa to i8
  %i.yu = getelementptr inbounds i8, ptr %.17, i64 -4 ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !13 ; 2 uses
  %i.yw = add nsw i32 %i.yv, 1
  store i32 %i.yw, ptr %i.yu, align 4, !tbaa !13
  %i.yx = sext i32 %i.yv to i64
  %i.yy = getelementptr inbounds i8, ptr %.17, i64 %i.yx
  store i8 %i.yt, ptr %i.yy, align 1, !tbaa !26
  %i.yz = load i32, ptr %i.yu, align 4, !tbaa !13 ; 2 uses
  store i32 %i.yz, ptr %2, align 4, !tbaa !13
  %i.za = getelementptr inbounds i8, ptr %.17, i64 -8 ; 2 uses
  %i.zb = sext i32 %i.yz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.za, ptr nonnull align 1 %.17, i64 %i.zb, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %_ZL14stbiw__sbgrowfPPvii.exit499
  %.0198 = phi ptr [ %i.za, %_ZL14stbiw__sbgrowfPPvii.exit499 ], [ null, %bb.a ]
  ret ptr %.0198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @stbi_write_png_to_mem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @stbi_write_force_png_filter, align 4, !tbaa !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.c = icmp eq i32 %1, 0
  %i.d = mul i32 %4, %2                           ; 10 uses
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1 ; 13 uses
  %i.e = icmp sgt i32 %i.b, 4
  %spec.store.select = select i1 %i.e, i32 -1, i32 %i.b ; 2 uses
  %i.f = add nsw i32 %i.d, 1                      ; 4 uses
  %i.g = mul nsw i32 %i.f, %3                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #36 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.d to i64                     ; 4 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #36 ; 28 uses
  %.not108 = icmp eq ptr %i.k, null
  br i1 %.not108, label %bb.d, label %.preheader179

.preheader179:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader179
  %i.m = icmp sgt i32 %spec.store.select, -1
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = trunc i32 %i.b to i8
  %i.o = sext i32 %i.f to i64
  %wide.trip.count214 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv211 to i32
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.p, i32 noundef %4, i32 noundef %spec.store.select, ptr noundef %i.k)
  %i.q = mul nsw i64 %indvars.iv211, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 2 uses
  store i8 %i.n, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.c, !llvm.loop !555

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = icmp sgt i32 %i.d, 0
  %wide.trip.count209 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %i.t, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.u = sext i32 %i.f to i64
  br label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph.split
  %i.v = zext nneg i32 %i.f to i64
  %wide.trip.count203 = zext nneg i32 %i.d to i64 ; 15 uses
  %min.iters.check287 = icmp ult i32 %i.d, 8
  %n.vec289 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec289, %wide.trip.count203
  %min.iters.check271 = icmp ult i32 %i.d, 8
  %n.vec273 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec273, %wide.trip.count203
  %min.iters.check255 = icmp ult i32 %i.d, 8
  %n.vec257 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec257, %wide.trip.count203
  %min.iters.check239 = icmp ult i32 %i.d, 8
  %n.vec241 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n251 = icmp eq i64 %n.vec241, %wide.trip.count203
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv206 to i32  ; 6 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.body290

vector.body290:                                   ; preds = %.preheader.us, %vector.body290
  %index291 = phi i64 [ %index.next296, %vector.body290 ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi292 = phi <4 x i32> [ %i.ad, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %vec.phi293 = phi <4 x i32> [ %i.ae, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %index291 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load294 = load <4 x i8>, ptr %i.x, align 1, !tbaa !26
  %wide.load295 = load <4 x i8>, ptr %i.y, align 1, !tbaa !26
  %i.z = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load294, i1 false)
  %i.aa = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load295, i1 false)
  %i.ab = zext <4 x i8> %i.z to <4 x i32>
  %i.ac = zext <4 x i8> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi292, %i.ab        ; 2 uses
  %i.ae = add <4 x i32> %vec.phi293, %i.ac        ; 2 uses
  %index.next296 = add nuw i64 %index291, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.af, label %middle.block297, label %vector.body290, !llvm.loop !556

middle.block297:                                  ; preds = %vector.body290
  %bin.rdx298 = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx298) ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.us.us, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %.preheader.us, %middle.block297
  %indvars.iv200.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec289, %middle.block297 ]
  %.092182.us.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.ag, %middle.block297 ]
  br label %scalar.ph286

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa235 = phi i32 [ %i.cw, %middle.block ], [ %i.db, %scalar.ph ]
  %i.ah = icmp samesign ult i32 %.lcssa234, %spec.select113.us.us.2
  %spec.select112.us.us.3 = select i1 %i.ah, i32 3, i32 %spec.select112.us.us.2
  %spec.select113.us.us.3 = tail call i32 @llvm.smin.i32(i32 %.lcssa234, i32 %spec.select113.us.us.2)
  %i.ai = icmp samesign ult i32 %.lcssa235, %spec.select113.us.us.3
  %spec.select112.us.us.4 = select i1 %i.ai, i32 4, i32 %spec.select112.us.us.3 ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef %spec.select112.us.us.4, ptr noundef %i.k)
  %i.aj = trunc nuw nsw i32 %spec.select112.us.us.4 to i8
  %i.ak = mul nuw nsw i64 %indvars.iv206, %i.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ak ; 2 uses
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge, label %.preheader.us, !llvm.loop !555

scalar.ph286:                                     ; preds = %scalar.ph286.preheader, %scalar.ph286
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph286 ], [ %indvars.iv200.ph, %scalar.ph286.preheader ] ; 2 uses
  %.092182.us.us = phi i32 [ %i.ar, %scalar.ph286 ], [ %.092182.us.us.ph, %scalar.ph286.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26
  %i.ap = tail call i8 @llvm.abs.i8(i8 %i.ao, i1 false)
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.092182.us.us, %i.aq   ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.us.us, label %scalar.ph286, !llvm.loop !557

._crit_edge.us.us:                                ; preds = %scalar.ph286, %middle.block297
  %.lcssa231 = phi i32 [ %i.ag, %middle.block297 ], [ %i.ar, %scalar.ph286 ] ; 2 uses
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %._crit_edge.us.us, %vector.body274
  %index275 = phi i64 [ %index.next280, %vector.body274 ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %vec.phi276 = phi <4 x i32> [ %i.ay, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %vec.phi277 = phi <4 x i32> [ %i.az, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 %index275 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %wide.load278 = load <4 x i8>, ptr %i.as, align 1, !tbaa !26
  %wide.load279 = load <4 x i8>, ptr %i.at, align 1, !tbaa !26
  %i.au = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load278, i1 false)
  %i.av = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load279, i1 false)
  %i.aw = zext <4 x i8> %i.au to <4 x i32>
  %i.ax = zext <4 x i8> %i.av to <4 x i32>
  %i.ay = add <4 x i32> %vec.phi276, %i.aw        ; 2 uses
  %i.az = add <4 x i32> %vec.phi277, %i.ax        ; 2 uses
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ba, label %middle.block281, label %vector.body274, !llvm.loop !558

middle.block281:                                  ; preds = %vector.body274
  %bin.rdx282 = add <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx282) ; 2 uses
  br i1 %cmp.n283, label %._crit_edge.us.us.1, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %._crit_edge.us.us, %middle.block281
  %indvars.iv200.1.ph = phi i64 [ 0, %._crit_edge.us.us ], [ %n.vec273, %middle.block281 ]
  %.092182.us.us.1.ph = phi i32 [ 0, %._crit_edge.us.us ], [ %i.bb, %middle.block281 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %indvars.iv200.1 = phi i64 [ %indvars.iv.next201.1, %scalar.ph270 ], [ %indvars.iv200.1.ph, %scalar.ph270.preheader ] ; 2 uses
  %.092182.us.us.1 = phi i32 [ %i.bg, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !26
  %i.be = tail call i8 @llvm.abs.i8(i8 %i.bd, i1 false)
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %.092182.us.us.1, %i.bf ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !559

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
end_hunk_0
