Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw__corner_process_h_rect:bb.a
  %i.wn = getelementptr inbounds i8, ptr %i.wl, i64 %i.wm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wn, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.1.i

.split.us.i:                                      ; preds = %bb.q
  %.not280 = icmp eq i32 %i.d, 1
  br i1 %.not280, label %.preheader.split.split.preheader.1.i, label %stbhw__draw_clipped_corner.exit266

.preheader.split.split.preheader.1.i:             ; preds = %.split.us.i.thread, %.split.us.i
  %i.wo = add nsw i64 %i.wg, -1
  %i.wp = mul nsw i64 %i.wo, %i.wh
  %i.wq = getelementptr inbounds i8, ptr %i.we, i64 %i.wp
  %i.wr = mul nsw i64 %i.au, 3
  %i.ws = getelementptr i8, ptr %i.wq, i64 %i.wr  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ws, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.wt = getelementptr i8, ptr %i.ws, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wt, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit266

stbhw__draw_clipped_corner.exit266:               ; preds = %.preheader.split.split.preheader.1.i, %.split.us.i, %stbhw__draw_clipped_corner.exit253
  %i.wu = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 56
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.lm
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !40
  %.not142 = icmp eq i32 %i.wx, 0
  %.pre272.pre275 = load ptr, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %.pre274.pre277 = load i32, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  br i1 %.not142, label %bb.s, label %bb.r

bb.r:                                             ; preds = %stbhw__draw_clipped_corner.exit266
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre272.pre275, i32 noundef %.pre274.pre277, i32 noundef %1, i32 noundef %2, i32 noundef %i.jq, i32 noundef %i.d, i32 noundef %i.lj, i32 noundef %i.lj)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  %.pre272.pre = load ptr, ptr %i.e, align 8, !tbaa !67
  %.pre274.pre = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %stbhw__draw_clipped_corner.exit266
  %.pre274 = phi i32 [ %.pre274.pre, %bb.r ], [ %.pre274.pre277, %stbhw__draw_clipped_corner.exit266 ] ; 2 uses
  %.pre272 = phi ptr [ %.pre272.pre, %bb.r ], [ %.pre272.pre275, %stbhw__draw_clipped_corner.exit266 ] ; 2 uses
  %i.wy = phi ptr [ %.pre, %bb.r ], [ %i.wu, %stbhw__draw_clipped_corner.exit266 ]
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 72
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.jt
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !40
  %.not143 = icmp eq i32 %i.xb, 0
  br i1 %.not143, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.xc = or disjoint i32 %i.jq, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre272, i32 noundef %.pre274, i32 noundef %1, i32 noundef %2, i32 noundef %i.jq, i32 noundef %i.d, i32 noundef %i.xc, i32 noundef %i.lj)
  %.pre271 = load ptr, ptr %i.e, align 8, !tbaa !67
  %.pre273 = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.xd = phi i32 [ %.pre273, %bb.t ], [ %.pre274, %bb.s ]
  %i.xe = phi ptr [ %.pre271, %bb.t ], [ %.pre272, %bb.s ]
  %i.xf = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.j
  %i.xg = mul nsw i32 %i.xd, %2
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %i.xe, i64 %i.xh
  %i.xj = getelementptr inbounds i8, ptr %i.xi, i64 %i.it
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xf, i64 3, i1 false)
  %i.xk = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.xl = load i32, ptr %i.g, align 8, !tbaa !68
  %i.xm = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.l
  %i.xn = mul nsw i32 %i.xl, %2
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds i8, ptr %i.xk, i64 %i.xo
  %i.xq = mul nsw i32 %i.dt, 3
  %i.xr = sext i32 %i.xq to i64                   ; 2 uses
  %i.xs = getelementptr inbounds i8, ptr %i.xp, i64 %i.xr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xs, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xm, i64 3, i1 false)
  %i.xt = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.xu = load i32, ptr %i.g, align 8, !tbaa !68
  %i.xv = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.dw
  %i.xw = mul nsw i32 %i.xu, %2
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds i8, ptr %i.xt, i64 %i.xx
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 %i.kn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.xv, i64 3, i1 false)
  %i.ya = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.yb = load i32, ptr %i.g, align 8, !tbaa !68
  %i.yc = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.hy
  %i.yd = mul nsw i32 %i.yb, %i.lk
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds i8, ptr %i.ya, i64 %i.ye
  %i.yg = getelementptr inbounds i8, ptr %i.yf, i64 %i.it
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.yc, i64 3, i1 false)
  %i.yh = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.yi = load i32, ptr %i.g, align 8, !tbaa !68
  %i.yj = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.lm
  %i.yk = mul nsw i32 %i.yi, %i.lk
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds i8, ptr %i.yh, i64 %i.yl
  %i.yn = getelementptr inbounds i8, ptr %i.ym, i64 %i.xr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yn, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.yj, i64 3, i1 false)
  %i.yo = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.yp = load i32, ptr %i.g, align 8, !tbaa !68
  %i.yq = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.jt
  %i.yr = mul nsw i32 %i.yp, %i.lk
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds i8, ptr %i.yo, i64 %i.ys
  %i.yu = getelementptr inbounds i8, ptr %i.yt, i64 %i.kn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yu, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.yq, i64 3, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbhw__corner_process_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 47 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = add i32 %1, 1                            ; 2 uses
  %i.j = sext i32 %3 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.j ; 2 uses
  %i.l = sext i32 %6 to i64                       ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = mul nsw i32 %i.d, 3
  %i.p = sdiv i32 %i.o, 8                         ; 7 uses
  %i.q = mul nsw i32 %i.d, 5
  %i.r = sdiv i32 %i.q, 8                         ; 7 uses
  %i.s = icmp sgt i32 %i.d, 0                     ; 6 uses
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.t = mul nsw i32 %i.h, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u ; 3 uses
  %i.w = sext i32 %i.i to i64                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %i.d, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.y = add nsw i64 %indvars.iv.i, %i.w
  %i.z = mul nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aa, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ab = add nsw i64 %indvars.iv.next.i, %i.w
  %i.ac = mul nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod365 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod365)
  %i.ae = add nsw i64 %indvars.iv.i.epil.init, %i.w
  %i.af = mul nsw i64 %i.ae, 3
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.ah = sub nsw i32 %i.r, %i.p
  %i.ai = icmp slt i32 %i.ah, 2                   ; 6 uses
  br i1 %i.ai, label %.thread.i, label %iter.check

.thread.i:                                        ; preds = %._crit_edge.i
  %i.aj = sdiv i32 %i.d, 2                        ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = and i32 %i.d, 1
  %spec.select.v.i = add nuw nsw i32 %i.al, 1
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.aj
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.thread.i
  %.044.i = phi i32 [ %spec.select.i, %.thread.i ], [ %i.r, %._crit_edge.i ]
  %.02643.i = phi i32 [ %i.ak, %.thread.i ], [ %i.p, %._crit_edge.i ]
  %i.am = sext i32 %i.n to i64                    ; 2 uses
  %i.an = getelementptr inbounds [3 x i8], ptr @stbhw__color, i64 %i.am ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.aq = mul nsw i32 %i.h, %2
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.f, i64 %i.ar ; 3 uses
  %i.at = sext i32 %.02643.i to i64               ; 8 uses
  %i.au = sext i32 %i.i to i64                    ; 22 uses
  %wide.trip.count38.i = sext i32 %.044.i to i64  ; 3 uses
  %i.av = sub nsw i64 %wide.trip.count38.i, %i.at ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 2
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = add nsw i64 %i.at, %i.au
  %i.ax = mul nsw i64 %i.aw, 3
  %i.ay = getelementptr i8, ptr %i.f, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ar
  %i.ba = add nsw i64 %wide.trip.count38.i, %i.au
  %i.bb = mul nsw i64 %i.ba, 3
  %i.bc = getelementptr i8, ptr %i.f, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ar
  %i.be = mul nsw i64 %i.am, 3
  %i.bf = getelementptr i8, ptr @stbhw__color, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 3
  %bound0 = icmp ult ptr %i.az, %i.bg
  %bound1 = icmp ult ptr %i.an, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check301 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %i.av, 14
  %n.vec = and i64 %i.av, -16                     ; 4 uses
  %i.bi = add nsw i64 %n.vec, %i.at
  %i.bj = load i8, ptr %i.an, align 1, !tbaa !45, !alias.scope !216
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bk = zext <16 x i8> %broadcast.splat to <16 x i16>
  %i.bl = shl nuw nsw <16 x i16> %i.bk, splat (i16 1)
  %i.bm = add nuw nsw <16 x i16> %i.bl, splat (i16 255)
  %i.bn = udiv <16 x i16> %i.bm, splat (i16 3)
  %i.bo = trunc nuw <16 x i16> %i.bn to <16 x i8>
  %i.bp = load i8, ptr %i.ao, align 1, !tbaa !45, !alias.scope !216
  %broadcast.splatinsert302 = insertelement <16 x i8> poison, i8 %i.bp, i64 0
  %broadcast.splat303 = shufflevector <16 x i8> %broadcast.splatinsert302, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bq = zext <16 x i8> %broadcast.splat303 to <16 x i16>
  %i.br = shl nuw nsw <16 x i16> %i.bq, splat (i16 1)
  %i.bs = add nuw nsw <16 x i16> %i.br, splat (i16 255)
  %i.bt = udiv <16 x i16> %i.bs, splat (i16 3)
  %i.bu = trunc nuw <16 x i16> %i.bt to <16 x i8>
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !45, !alias.scope !216
  %broadcast.splatinsert304 = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %broadcast.splat305 = shufflevector <16 x i8> %broadcast.splatinsert304, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bw = zext <16 x i8> %broadcast.splat305 to <16 x i16>
  %i.bx = shl nuw nsw <16 x i16> %i.bw, splat (i16 1)
  %i.by = add nuw nsw <16 x i16> %i.bx, splat (i16 255)
  %i.bz = udiv <16 x i16> %i.by, splat (i16 3)
  %invariant.op = add i64 %i.at, %i.au
  %i.ca = shufflevector <16 x i8> %i.bo, <16 x i8> %i.bu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cb = shufflevector <16 x i16> %i.bz, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = trunc nuw <32 x i16> %i.cb to <32 x i8>
  %interleaved.vec = shufflevector <32 x i8> %i.ca, <32 x i8> %i.cc, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.cd = mul nsw i64 %.reass, 3
  %i.ce = getelementptr inbounds i8, ptr %i.as, i64 %i.cd
  store <48 x i8> %interleaved.vec, ptr %i.ce, align 1, !alias.scope !217, !noalias !216
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %stbhw__draw_hline.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec306 = and i64 %i.av, -2                   ; 3 uses
  %i.cg = add nsw i64 %n.vec306, %i.at
  %i.ch = load i8, ptr %i.an, align 1, !tbaa !45, !alias.scope !216
  %broadcast.splatinsert307 = insertelement <2 x i8> poison, i8 %i.ch, i64 0
  %broadcast.splat308 = shufflevector <2 x i8> %broadcast.splatinsert307, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ci = zext <2 x i8> %broadcast.splat308 to <2 x i16>
  %i.cj = load i8, ptr %i.ao, align 1, !tbaa !45, !alias.scope !216
  %broadcast.splatinsert309 = insertelement <2 x i8> poison, i8 %i.cj, i64 0
  %broadcast.splat310 = shufflevector <2 x i8> %broadcast.splatinsert309, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ck = zext <2 x i8> %broadcast.splat310 to <2 x i16>
  %i.cl = load i8, ptr %i.ap, align 1, !tbaa !45, !alias.scope !216
  %broadcast.splatinsert311 = insertelement <2 x i8> poison, i8 %i.cl, i64 0
  %broadcast.splat312 = shufflevector <2 x i8> %broadcast.splatinsert311, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cm = zext <2 x i8> %broadcast.splat312 to <2 x i16>
  %i.cn = shl nuw nsw <2 x i16> %i.cm, splat (i16 1)
  %i.co = add nuw nsw <2 x i16> %i.cn, splat (i16 255)
  %i.cp = udiv <2 x i16> %i.co, splat (i16 3)
  %invariant.op396 = add i64 %i.at, %i.au
  %i.cq = shufflevector <2 x i16> %i.ci, <2 x i16> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cr = shl nuw nsw <4 x i16> %i.cq, splat (i16 1)
  %i.cs = add nuw nsw <4 x i16> %i.cr, splat (i16 255)
  %i.ct = udiv <4 x i16> %i.cs, splat (i16 3)
  %i.cu = shufflevector <2 x i16> %i.cp, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x i16> %i.ct, <4 x i16> %i.cu, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec314 = trunc nuw <6 x i16> %i.cv to <6 x i8>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index313 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next315, %vec.epilog.vector.body ] ; 2 uses
  %.reass397 = add i64 %index313, %invariant.op396
  %i.cw = mul nsw i64 %.reass397, 3
  %i.cx = getelementptr inbounds i8, ptr %i.as, i64 %i.cw
  store <6 x i8> %interleaved.vec314, ptr %i.cx, align 1, !alias.scope !217, !noalias !216
  %index.next315 = add nuw i64 %index313, 2       ; 2 uses
  %i.cy = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n316 = icmp eq i64 %i.av, %n.vec306
  br i1 %cmp.n316, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv35.i.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %vec.epilog.scalar.ph ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cz = add nsw i64 %indvars.iv35.i, %i.au
  %i.da = load i8, ptr %i.an, align 1, !tbaa !45
  %i.db = zext i8 %i.da to i16
  %i.dc = shl nuw nsw i16 %i.db, 1
  %i.dd = add nuw nsw i16 %i.dc, 255
  %i.de = udiv i16 %i.dd, 3
  %i.df = trunc nuw i16 %i.de to i8
  %i.dg = load <2 x i8>, ptr %i.ao, align 1, !tbaa !45
  %i.dh = zext <2 x i8> %i.dg to <2 x i16>
  %i.di = shl nuw nsw <2 x i16> %i.dh, splat (i16 1)
  %i.dj = add nuw nsw <2 x i16> %i.di, splat (i16 255)
  %i.dk = udiv <2 x i16> %i.dj, splat (i16 3)     ; 2 uses
  %i.dl = bitcast <2 x i16> %i.dk to <4 x i8>
  %i.dm = extractelement <4 x i8> %i.dl, i64 0
  %i.dn = bitcast <2 x i16> %i.dk to <4 x i8>
  %i.do = extractelement <4 x i8> %i.dn, i64 2
  %i.dp = mul nsw i64 %i.cz, 3
  %i.dq = getelementptr inbounds i8, ptr %i.as, i64 %i.dp ; 3 uses
  store i8 %i.df, ptr %i.dq, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 %i.dm, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store i8 %i.do, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %stbhw__draw_hline.exit, label %vec.epilog.scalar.ph, !llvm.loop !209

stbhw__draw_hline.exit:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.ds = load i32, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.dt = add i32 %2, 1                           ; 3 uses
  %i.du = sext i32 %4 to i64                      ; 4 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40
  br i1 %i.s, label %.lr.ph.i151, label %._crit_edge.i144

.lr.ph.i151:                                      ; preds = %stbhw__draw_hline.exit
  %i.dx = mul nsw i32 %1, 3
  %i.dy = sext i32 %i.dx to i64
  %invariant.gep.i = getelementptr i8, ptr %i.dr, i64 %i.dy ; 3 uses
  %i.dz = sext i32 %i.dt to i64                   ; 3 uses
  %i.ea = sext i32 %i.ds to i64                   ; 3 uses
  %wide.trip.count.i152 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter367 = and i64 %wide.trip.count.i152, 1
  %i.eb = icmp eq i32 %i.d, 1
  br i1 %i.eb, label %.epil.preheader366, label %.lr.ph.i151.new

.lr.ph.i151.new:                                  ; preds = %.lr.ph.i151
  %unroll_iter370 = and i64 %wide.trip.count.i152, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i151.new
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.i151.new ], [ %indvars.iv.next.i154.1, %bb.c ] ; 3 uses
  %niter371 = phi i64 [ 0, %.lr.ph.i151.new ], [ %niter371.next.1, %bb.c ]
  %i.ec = add nsw i64 %indvars.iv.i153, %i.dz
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i154 = or disjoint i64 %indvars.iv.i153, 1
  %i.ee = add nsw i64 %indvars.iv.next.i154, %i.dz
  %i.ef = mul nsw i64 %i.ee, %i.ea
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ef
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i154.1 = add nuw nsw i64 %indvars.iv.i153, 2 ; 2 uses
  %niter371.next.1 = add i64 %niter371, 2         ; 2 uses
  %niter371.ncmp.1 = icmp eq i64 %niter371.next.1, %unroll_iter370
  br i1 %niter371.ncmp.1, label %._crit_edge.i144.loopexit.unr-lcssa, label %bb.c, !llvm.loop !18

._crit_edge.i144.loopexit.unr-lcssa:              ; preds = %bb.c
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %._crit_edge.i144, label %.epil.preheader366

.epil.preheader366:                               ; preds = %._crit_edge.i144.loopexit.unr-lcssa, %.lr.ph.i151
end_hunk_0
begin_hunk_1_@stbhw__corner_process_v_rect:bb.a
  %wide.trip.count.i196 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count.i196, 1
  %i.hn = icmp eq i32 %i.d, 1
  br i1 %i.hn, label %.epil.preheader378, label %.lr.ph.i194.new

.lr.ph.i194.new:                                  ; preds = %.lr.ph.i194
  %unroll_iter382 = and i64 %wide.trip.count.i196, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i194.new
  %indvars.iv.i197 = phi i64 [ 0, %.lr.ph.i194.new ], [ %indvars.iv.next.i199.1, %bb.g ] ; 3 uses
  %niter383 = phi i64 [ 0, %.lr.ph.i194.new ], [ %niter383.next.1, %bb.g ]
  %i.ho = add nsw i64 %indvars.iv.i197, %i.hl
  %i.hp = mul nsw i64 %i.ho, %i.hm
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.hp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i199 = or disjoint i64 %indvars.iv.i197, 1
  %i.hq = add nsw i64 %indvars.iv.next.i199, %i.hl
  %i.hr = mul nsw i64 %i.hq, %i.hm
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.hr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter383.next.1 = add i64 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %._crit_edge.i179.loopexit.unr-lcssa, label %bb.g, !llvm.loop !18

._crit_edge.i179.loopexit.unr-lcssa:              ; preds = %bb.g
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %._crit_edge.i179, label %.epil.preheader378

.epil.preheader378:                               ; preds = %._crit_edge.i179.loopexit.unr-lcssa, %.lr.ph.i194
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.lr.ph.i194 ], [ %indvars.iv.next.i199.1, %._crit_edge.i179.loopexit.unr-lcssa ]
  %lcmp.mod381 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod381)
  %i.hs = add nsw i64 %indvars.iv.i197.epil.init, %i.hl
  %i.ht = mul nsw i64 %i.hs, %i.hm
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.ht
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i198.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i179

._crit_edge.i179:                                 ; preds = %.epil.preheader378, %._crit_edge.i179.loopexit.unr-lcssa, %stbhw__draw_vline.exit178
  br i1 %i.ai, label %.thread.i191, label %.lr.ph32.i180

.thread.i191:                                     ; preds = %._crit_edge.i179
  %i.hu = sdiv i32 %i.d, 2                        ; 2 uses
  %i.hv = add nsw i32 %i.hu, -1
  %i.hw = and i32 %i.d, 1
  %spec.select.v.i192 = add nuw nsw i32 %i.hw, 1
  %spec.select.i193 = add nsw i32 %spec.select.v.i192, %i.hu
  br label %.lr.ph32.i180

.lr.ph32.i180:                                    ; preds = %._crit_edge.i179, %.thread.i191
  %.046.i181 = phi i32 [ %spec.select.i193, %.thread.i191 ], [ %i.r, %._crit_edge.i179 ]
  %.02645.i182 = phi i32 [ %i.hv, %.thread.i191 ], [ %i.p, %._crit_edge.i179 ]
  %i.hx = sext i32 %i.hk to i64
  %i.hy = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 96), i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %invariant.gep34.i183 = getelementptr i8, ptr %i.hd, i64 %i.ep
  %i.ia = sext i32 %.02645.i182 to i64
  %i.ib = sext i32 %i.hg to i64                   ; 5 uses
  %i.ic = sext i32 %i.he to i64
  %wide.trip.count40.i184 = sext i32 %.046.i181 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph32.i180
  %indvars.iv37.i185 = phi i64 [ %i.ia, %.lr.ph32.i180 ], [ %indvars.iv.next38.i189, %bb.h ] ; 2 uses
  %i.id = add nsw i64 %indvars.iv37.i185, %i.ib
  %i.ie = load i8, ptr %i.hy, align 1, !tbaa !45
  %i.if = zext i8 %i.ie to i16
  %i.ig = shl nuw nsw i16 %i.if, 1
  %i.ih = add nuw nsw i16 %i.ig, 255
  %i.ii = udiv i16 %i.ih, 3
  %i.ij = trunc nuw i16 %i.ii to i8
  %i.ik = load <2 x i8>, ptr %i.hz, align 1, !tbaa !45
  %i.il = zext <2 x i8> %i.ik to <2 x i16>
  %i.im = shl nuw nsw <2 x i16> %i.il, splat (i16 1)
  %i.in = add nuw nsw <2 x i16> %i.im, splat (i16 255)
  %i.io = udiv <2 x i16> %i.in, splat (i16 3)     ; 2 uses
  %i.ip = bitcast <2 x i16> %i.io to <4 x i8>
  %i.iq = extractelement <4 x i8> %i.ip, i64 0
  %i.ir = bitcast <2 x i16> %i.io to <4 x i8>
  %i.is = extractelement <4 x i8> %i.ir, i64 2
  %i.it = mul nsw i64 %i.id, %i.ic
  %gep35.i186 = getelementptr i8, ptr %invariant.gep34.i183, i64 %i.it ; 3 uses
  store i8 %i.ij, ptr %gep35.i186, align 1
  %.sroa.4.0..sroa_idx.i.i187 = getelementptr inbounds nuw i8, ptr %gep35.i186, i64 1
  store i8 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i187, align 1
  %.sroa.5.0..sroa_idx.i.i188 = getelementptr inbounds nuw i8, ptr %gep35.i186, i64 2
  store i8 %i.is, ptr %.sroa.5.0..sroa_idx.i.i188, align 1
  %indvars.iv.next38.i189 = add nsw i64 %indvars.iv37.i185, 1 ; 2 uses
  %exitcond41.not.i190 = icmp eq i64 %indvars.iv.next38.i189, %wide.trip.count40.i184
  br i1 %exitcond41.not.i190, label %stbhw__draw_vline.exit201, label %bb.h, !llvm.loop !19

stbhw__draw_vline.exit201:                        ; preds = %bb.h
  %i.iu = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.iv = load i32, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.iw = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.fp
  %i.ix = sext i32 %8 to i64                      ; 4 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !40
  br i1 %i.s, label %.lr.ph.i217, label %._crit_edge.i202

.lr.ph.i217:                                      ; preds = %stbhw__draw_vline.exit201
  %invariant.gep.i218 = getelementptr i8, ptr %i.iu, i64 %i.gj ; 3 uses
  %i.ja = sext i32 %i.iv to i64                   ; 3 uses
  %wide.trip.count.i219 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter385 = and i64 %wide.trip.count.i219, 1
  %i.jb = icmp eq i32 %i.d, 1
  br i1 %i.jb, label %.epil.preheader384, label %.lr.ph.i217.new

.lr.ph.i217.new:                                  ; preds = %.lr.ph.i217
  %unroll_iter388 = and i64 %wide.trip.count.i219, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i217.new
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.i217.new ], [ %indvars.iv.next.i222.1, %bb.i ] ; 3 uses
  %niter389 = phi i64 [ 0, %.lr.ph.i217.new ], [ %niter389.next.1, %bb.i ]
  %i.jc = add nsw i64 %indvars.iv.i220, %i.ib
  %i.jd = mul nsw i64 %i.jc, %i.ja
  %gep.i221 = getelementptr i8, ptr %invariant.gep.i218, i64 %i.jd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i222 = or disjoint i64 %indvars.iv.i220, 1
  %i.je = add nsw i64 %indvars.iv.next.i222, %i.ib
  %i.jf = mul nsw i64 %i.je, %i.ja
  %gep.i221.1 = getelementptr i8, ptr %invariant.gep.i218, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221.1, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i222.1 = add nuw nsw i64 %indvars.iv.i220, 2 ; 2 uses
  %niter389.next.1 = add i64 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i64 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %._crit_edge.i202.loopexit.unr-lcssa, label %bb.i, !llvm.loop !18

._crit_edge.i202.loopexit.unr-lcssa:              ; preds = %bb.i
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %._crit_edge.i202, label %.epil.preheader384

.epil.preheader384:                               ; preds = %._crit_edge.i202.loopexit.unr-lcssa, %.lr.ph.i217
  %indvars.iv.i220.epil.init = phi i64 [ 0, %.lr.ph.i217 ], [ %indvars.iv.next.i222.1, %._crit_edge.i202.loopexit.unr-lcssa ]
  %lcmp.mod387 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod387)
  %i.jg = add nsw i64 %indvars.iv.i220.epil.init, %i.ib
  %i.jh = mul nsw i64 %i.jg, %i.ja
  %gep.i221.epil = getelementptr i8, ptr %invariant.gep.i218, i64 %i.jh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %gep.i221.epil, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %.epil.preheader384, %._crit_edge.i202.loopexit.unr-lcssa, %stbhw__draw_vline.exit201
  br i1 %i.ai, label %.thread.i214, label %.lr.ph32.i203

.thread.i214:                                     ; preds = %._crit_edge.i202
  %i.ji = sdiv i32 %i.d, 2                        ; 2 uses
  %i.jj = add nsw i32 %i.ji, -1
  %i.jk = and i32 %i.d, 1
  %spec.select.v.i215 = add nuw nsw i32 %i.jk, 1
  %spec.select.i216 = add nsw i32 %spec.select.v.i215, %i.ji
  br label %.lr.ph32.i203

.lr.ph32.i203:                                    ; preds = %._crit_edge.i202, %.thread.i214
  %.046.i204 = phi i32 [ %spec.select.i216, %.thread.i214 ], [ %i.r, %._crit_edge.i202 ]
  %.02645.i205 = phi i32 [ %i.jj, %.thread.i214 ], [ %i.p, %._crit_edge.i202 ]
  %i.jl = sext i32 %i.iz to i64
  %i.jm = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 120), i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %invariant.gep34.i206 = getelementptr i8, ptr %i.iu, i64 %i.gj
  %i.jo = sext i32 %.02645.i205 to i64
  %i.jp = sext i32 %i.iv to i64
  %wide.trip.count40.i207 = sext i32 %.046.i204 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph32.i203
  %indvars.iv37.i208 = phi i64 [ %i.jo, %.lr.ph32.i203 ], [ %indvars.iv.next38.i212, %bb.j ] ; 2 uses
  %i.jq = add nsw i64 %indvars.iv37.i208, %i.ib
  %i.jr = load i8, ptr %i.jm, align 1, !tbaa !45
  %i.js = zext i8 %i.jr to i16
  %i.jt = shl nuw nsw i16 %i.js, 1
  %i.ju = add nuw nsw i16 %i.jt, 255
  %i.jv = udiv i16 %i.ju, 3
  %i.jw = trunc nuw i16 %i.jv to i8
  %i.jx = load <2 x i8>, ptr %i.jn, align 1, !tbaa !45
  %i.jy = zext <2 x i8> %i.jx to <2 x i16>
  %i.jz = shl nuw nsw <2 x i16> %i.jy, splat (i16 1)
  %i.ka = add nuw nsw <2 x i16> %i.jz, splat (i16 255)
  %i.kb = udiv <2 x i16> %i.ka, splat (i16 3)     ; 2 uses
  %i.kc = bitcast <2 x i16> %i.kb to <4 x i8>
  %i.kd = extractelement <4 x i8> %i.kc, i64 0
  %i.ke = bitcast <2 x i16> %i.kb to <4 x i8>
  %i.kf = extractelement <4 x i8> %i.ke, i64 2
  %i.kg = mul nsw i64 %i.jq, %i.jp
  %gep35.i209 = getelementptr i8, ptr %invariant.gep34.i206, i64 %i.kg ; 3 uses
  store i8 %i.jw, ptr %gep35.i209, align 1
  %.sroa.4.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %gep35.i209, i64 1
  store i8 %i.kd, ptr %.sroa.4.0..sroa_idx.i.i210, align 1
  %.sroa.5.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %gep35.i209, i64 2
  store i8 %i.kf, ptr %.sroa.5.0..sroa_idx.i.i211, align 1
  %indvars.iv.next38.i212 = add nsw i64 %indvars.iv37.i208, 1 ; 2 uses
  %exitcond41.not.i213 = icmp eq i64 %indvars.iv.next38.i212, %wide.trip.count40.i207
  br i1 %exitcond41.not.i213, label %stbhw__draw_vline.exit224, label %bb.j, !llvm.loop !19

stbhw__draw_vline.exit224:                        ; preds = %bb.j
  %i.kh = load ptr, ptr %i.e, align 8, !tbaa !67  ; 4 uses
  %i.ki = load i32, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.kj = shl nsw i32 %i.d, 1                     ; 7 uses
  %i.kk = add i32 %i.dt, %i.kj                    ; 4 uses
  %i.kl = getelementptr inbounds [16 x i8], ptr @stbhw__corner_colors_to_edge_color, i64 %i.hi
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.ix
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !40
  br i1 %i.s, label %.lr.ph.i238, label %._crit_edge.i225

.lr.ph.i238:                                      ; preds = %stbhw__draw_vline.exit224
  %i.ko = mul nsw i32 %i.ki, %i.kk
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds i8, ptr %i.kh, i64 %i.kp ; 3 uses
  %wide.trip.count.i239 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter391 = and i64 %wide.trip.count.i239, 1
  %i.kr = icmp eq i32 %i.d, 1
  br i1 %i.kr, label %.epil.preheader390, label %.lr.ph.i238.new

.lr.ph.i238.new:                                  ; preds = %.lr.ph.i238
  %unroll_iter394 = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i238.new
  %indvars.iv.i240 = phi i64 [ 0, %.lr.ph.i238.new ], [ %indvars.iv.next.i241.1, %bb.k ] ; 3 uses
  %niter395 = phi i64 [ 0, %.lr.ph.i238.new ], [ %niter395.next.1, %bb.k ]
  %i.ks = add nsw i64 %indvars.iv.i240, %i.au
  %i.kt = mul nsw i64 %i.ks, 3
  %i.ku = getelementptr inbounds i8, ptr %i.kq, i64 %i.kt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ku, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i241 = or disjoint i64 %indvars.iv.i240, 1
  %i.kv = add nsw i64 %indvars.iv.next.i241, %i.au
  %i.kw = mul nsw i64 %i.kv, 3
  %i.kx = getelementptr inbounds i8, ptr %i.kq, i64 %i.kw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  %indvars.iv.next.i241.1 = add nuw nsw i64 %indvars.iv.i240, 2 ; 2 uses
  %niter395.next.1 = add i64 %niter395, 2         ; 2 uses
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394
  br i1 %niter395.ncmp.1, label %._crit_edge.i225.loopexit.unr-lcssa, label %bb.k, !llvm.loop !17

._crit_edge.i225.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %._crit_edge.i225, label %.epil.preheader390

.epil.preheader390:                               ; preds = %._crit_edge.i225.loopexit.unr-lcssa, %.lr.ph.i238
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i238 ], [ %indvars.iv.next.i241.1, %._crit_edge.i225.loopexit.unr-lcssa ]
  %lcmp.mod393 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod393)
  %i.ky = add nsw i64 %indvars.iv.i240.epil.init, %i.au
  %i.kz = mul nsw i64 %i.ky, 3
  %i.la = getelementptr inbounds i8, ptr %i.kq, i64 %i.kz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.la, ptr noundef nonnull align 1 dereferenceable(3) @stbhw__black, i64 3, i1 false)
  br label %._crit_edge.i225

._crit_edge.i225:                                 ; preds = %.epil.preheader390, %._crit_edge.i225.loopexit.unr-lcssa, %stbhw__draw_vline.exit224
  br i1 %i.ai, label %.thread.i235, label %iter.check346

.thread.i235:                                     ; preds = %._crit_edge.i225
  %i.lb = sdiv i32 %i.d, 2                        ; 2 uses
  %i.lc = add nsw i32 %i.lb, -1
  %i.ld = and i32 %i.d, 1
  %spec.select.v.i236 = add nuw nsw i32 %i.ld, 1
  %spec.select.i237 = add nsw i32 %spec.select.v.i236, %i.lb
  br label %iter.check346

iter.check346:                                    ; preds = %._crit_edge.i225, %.thread.i235
  %.044.i227 = phi i32 [ %spec.select.i237, %.thread.i235 ], [ %i.r, %._crit_edge.i225 ]
  %.02643.i228 = phi i32 [ %i.lc, %.thread.i235 ], [ %i.p, %._crit_edge.i225 ]
  %i.le = sext i32 %i.kn to i64                   ; 2 uses
  %i.lf = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__color, i64 72), i64 %i.le ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 2 ; 2 uses
  %i.li = mul nsw i32 %i.ki, %i.kk
  %i.lj = sext i32 %i.li to i64                   ; 3 uses
  %i.lk = getelementptr inbounds i8, ptr %i.kh, i64 %i.lj ; 3 uses
  %i.ll = sext i32 %.02643.i228 to i64            ; 8 uses
  %wide.trip.count38.i229 = sext i32 %.044.i227 to i64 ; 3 uses
  %i.lm = sub nsw i64 %wide.trip.count38.i229, %i.ll ; 7 uses
  %min.iters.check324 = icmp ult i64 %i.lm, 2
  br i1 %min.iters.check324, label %vec.epilog.scalar.ph347.preheader, label %vector.memcheck325

vector.memcheck325:                               ; preds = %iter.check346
  %i.ln = add nsw i64 %i.ll, %i.au
  %i.lo = mul nsw i64 %i.ln, 3
  %i.lp = getelementptr i8, ptr %i.kh, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 %i.lj
  %i.lr = add nsw i64 %wide.trip.count38.i229, %i.au
  %i.ls = mul nsw i64 %i.lr, 3
  %i.lt = getelementptr i8, ptr %i.kh, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 %i.lj
  %i.lv = mul nsw i64 %i.le, 3
  %i.lw = getelementptr i8, ptr @stbhw__color, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 75
  %bound0326 = icmp ult ptr %i.lq, %i.lx
  %bound1327 = icmp ult ptr %i.lf, %i.lu
  %found.conflict328 = and i1 %bound0326, %bound1327
  br i1 %found.conflict328, label %vec.epilog.scalar.ph347.preheader, label %vector.main.loop.iter.check329

vector.main.loop.iter.check329:                   ; preds = %vector.memcheck325
  %min.iters.check330 = icmp ult i64 %i.lm, 16
  br i1 %min.iters.check330, label %vec.epilog.ph350, label %vector.ph331

vector.ph331:                                     ; preds = %vector.main.loop.iter.check329
  %i.ly = and i64 %i.lm, 14
  %n.vec332 = and i64 %i.lm, -16                  ; 4 uses
  %i.lz = add nsw i64 %n.vec332, %i.ll
  %i.ma = load i8, ptr %i.lf, align 1, !tbaa !45, !alias.scope !218
  %broadcast.splatinsert333 = insertelement <16 x i8> poison, i8 %i.ma, i64 0
  %broadcast.splat334 = shufflevector <16 x i8> %broadcast.splatinsert333, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mb = zext <16 x i8> %broadcast.splat334 to <16 x i16>
  %i.mc = shl nuw nsw <16 x i16> %i.mb, splat (i16 1)
  %i.md = add nuw nsw <16 x i16> %i.mc, splat (i16 255)
  %i.me = udiv <16 x i16> %i.md, splat (i16 3)
  %i.mf = trunc nuw <16 x i16> %i.me to <16 x i8>
  %i.mg = load i8, ptr %i.lg, align 1, !tbaa !45, !alias.scope !218
  %broadcast.splatinsert335 = insertelement <16 x i8> poison, i8 %i.mg, i64 0
  %broadcast.splat336 = shufflevector <16 x i8> %broadcast.splatinsert335, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mh = zext <16 x i8> %broadcast.splat336 to <16 x i16>
  %i.mi = shl nuw nsw <16 x i16> %i.mh, splat (i16 1)
  %i.mj = add nuw nsw <16 x i16> %i.mi, splat (i16 255)
  %i.mk = udiv <16 x i16> %i.mj, splat (i16 3)
  %i.ml = trunc nuw <16 x i16> %i.mk to <16 x i8>
  %i.mm = load i8, ptr %i.lh, align 1, !tbaa !45, !alias.scope !218
  %broadcast.splatinsert337 = insertelement <16 x i8> poison, i8 %i.mm, i64 0
  %broadcast.splat338 = shufflevector <16 x i8> %broadcast.splatinsert337, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mn = zext <16 x i8> %broadcast.splat338 to <16 x i16>
  %i.mo = shl nuw nsw <16 x i16> %i.mn, splat (i16 1)
  %i.mp = add nuw nsw <16 x i16> %i.mo, splat (i16 255)
  %i.mq = udiv <16 x i16> %i.mp, splat (i16 3)
  %invariant.op398 = add i64 %i.ll, %i.au
  %i.mr = shufflevector <16 x i8> %i.mf, <16 x i8> %i.ml, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ms = shufflevector <16 x i16> %i.mq, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mt = trunc nuw <32 x i16> %i.ms to <32 x i8>
  %interleaved.vec341 = shufflevector <32 x i8> %i.mr, <32 x i8> %i.mt, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  br label %vector.body339

vector.body339:                                   ; preds = %vector.ph331, %vector.body339
  %index340 = phi i64 [ 0, %vector.ph331 ], [ %index.next342, %vector.body339 ] ; 2 uses
  %.reass399 = add i64 %index340, %invariant.op398
  %i.mu = mul nsw i64 %.reass399, 3
  %i.mv = getelementptr inbounds i8, ptr %i.lk, i64 %i.mu
  store <48 x i8> %interleaved.vec341, ptr %i.mv, align 1, !alias.scope !219, !noalias !218
  %index.next342 = add nuw i64 %index340, 16      ; 2 uses
  %i.mw = icmp eq i64 %index.next342, %n.vec332
  br i1 %i.mw, label %middle.block343, label %vector.body339, !llvm.loop !213

middle.block343:                                  ; preds = %vector.body339
  %cmp.n344 = icmp eq i64 %i.lm, %n.vec332
  br i1 %cmp.n344, label %stbhw__draw_hline.exit243, label %vec.epilog.iter.check348

vec.epilog.iter.check348:                         ; preds = %middle.block343
  %min.epilog.iters.check349 = icmp eq i64 %i.ly, 0
  br i1 %min.epilog.iters.check349, label %vec.epilog.scalar.ph347.preheader, label %vec.epilog.ph350, !prof !70

vec.epilog.ph350:                                 ; preds = %vector.main.loop.iter.check329, %vec.epilog.iter.check348
  %vec.epilog.resume.val345 = phi i64 [ %n.vec332, %vec.epilog.iter.check348 ], [ 0, %vector.main.loop.iter.check329 ]
  %n.vec351 = and i64 %i.lm, -2                   ; 3 uses
  %i.mx = add nsw i64 %n.vec351, %i.ll
  %i.my = load i8, ptr %i.lf, align 1, !tbaa !45, !alias.scope !218
  %broadcast.splatinsert352 = insertelement <2 x i8> poison, i8 %i.my, i64 0
  %broadcast.splat353 = shufflevector <2 x i8> %broadcast.splatinsert352, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.mz = zext <2 x i8> %broadcast.splat353 to <2 x i16>
  %i.na = load i8, ptr %i.lg, align 1, !tbaa !45, !alias.scope !218
  %broadcast.splatinsert354 = insertelement <2 x i8> poison, i8 %i.na, i64 0
  %broadcast.splat355 = shufflevector <2 x i8> %broadcast.splatinsert354, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.nb = zext <2 x i8> %broadcast.splat355 to <2 x i16>
  %i.nc = load i8, ptr %i.lh, align 1, !tbaa !45, !alias.scope !218
  %broadcast.splatinsert356 = insertelement <2 x i8> poison, i8 %i.nc, i64 0
  %broadcast.splat357 = shufflevector <2 x i8> %broadcast.splatinsert356, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.nd = zext <2 x i8> %broadcast.splat357 to <2 x i16>
  %i.ne = shl nuw nsw <2 x i16> %i.nd, splat (i16 1)
  %i.nf = add nuw nsw <2 x i16> %i.ne, splat (i16 255)
  %i.ng = udiv <2 x i16> %i.nf, splat (i16 3)
  %invariant.op400 = add i64 %i.ll, %i.au
  %i.nh = shufflevector <2 x i16> %i.mz, <2 x i16> %i.nb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ni = shl nuw nsw <4 x i16> %i.nh, splat (i16 1)
  %i.nj = add nuw nsw <4 x i16> %i.ni, splat (i16 255)
  %i.nk = udiv <4 x i16> %i.nj, splat (i16 3)
  %i.nl = shufflevector <2 x i16> %i.ng, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x i16> %i.nk, <4 x i16> %i.nl, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  %interleaved.vec360 = trunc nuw <6 x i16> %i.nm to <6 x i8>
  br label %vec.epilog.vector.body358

vec.epilog.vector.body358:                        ; preds = %vec.epilog.vector.body358, %vec.epilog.ph350
  %index359 = phi i64 [ %vec.epilog.resume.val345, %vec.epilog.ph350 ], [ %index.next361, %vec.epilog.vector.body358 ] ; 2 uses
  %.reass401 = add i64 %index359, %invariant.op400
  %i.nn = mul nsw i64 %.reass401, 3
  %i.no = getelementptr inbounds i8, ptr %i.lk, i64 %i.nn
  store <6 x i8> %interleaved.vec360, ptr %i.no, align 1, !alias.scope !219, !noalias !218
  %index.next361 = add nuw i64 %index359, 2       ; 2 uses
  %i.np = icmp eq i64 %index.next361, %n.vec351
  br i1 %i.np, label %vec.epilog.middle.block362, label %vec.epilog.vector.body358, !llvm.loop !214

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body358
  %cmp.n363 = icmp eq i64 %i.lm, %n.vec351
  br i1 %cmp.n363, label %stbhw__draw_hline.exit243, label %vec.epilog.scalar.ph347.preheader

vec.epilog.scalar.ph347.preheader:                ; preds = %iter.check346, %vector.memcheck325, %vec.epilog.iter.check348, %vec.epilog.middle.block362
  %indvars.iv35.i230.ph = phi i64 [ %i.ll, %iter.check346 ], [ %i.ll, %vector.memcheck325 ], [ %i.lz, %vec.epilog.iter.check348 ], [ %i.mx, %vec.epilog.middle.block362 ]
  br label %vec.epilog.scalar.ph347

vec.epilog.scalar.ph347:                          ; preds = %vec.epilog.scalar.ph347.preheader, %vec.epilog.scalar.ph347
  %indvars.iv35.i230 = phi i64 [ %indvars.iv.next36.i233, %vec.epilog.scalar.ph347 ], [ %indvars.iv35.i230.ph, %vec.epilog.scalar.ph347.preheader ] ; 2 uses
  %i.nq = add nsw i64 %indvars.iv35.i230, %i.au
  %i.nr = load i8, ptr %i.lf, align 1, !tbaa !45
  %i.ns = zext i8 %i.nr to i16
  %i.nt = shl nuw nsw i16 %i.ns, 1
  %i.nu = add nuw nsw i16 %i.nt, 255
  %i.nv = udiv i16 %i.nu, 3
  %i.nw = trunc nuw i16 %i.nv to i8
  %i.nx = load <2 x i8>, ptr %i.lg, align 1, !tbaa !45
  %i.ny = zext <2 x i8> %i.nx to <2 x i16>
  %i.nz = shl nuw nsw <2 x i16> %i.ny, splat (i16 1)
  %i.oa = add nuw nsw <2 x i16> %i.nz, splat (i16 255)
  %i.ob = udiv <2 x i16> %i.oa, splat (i16 3)     ; 2 uses
  %i.oc = bitcast <2 x i16> %i.ob to <4 x i8>
  %i.od = extractelement <4 x i8> %i.oc, i64 0
  %i.oe = bitcast <2 x i16> %i.ob to <4 x i8>
  %i.of = extractelement <4 x i8> %i.oe, i64 2
  %i.og = mul nsw i64 %i.nq, 3
  %i.oh = getelementptr inbounds i8, ptr %i.lk, i64 %i.og ; 3 uses
  store i8 %i.nw, ptr %i.oh, align 1
  %.sroa.4.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  store i8 %i.od, ptr %.sroa.4.0..sroa_idx.i.i231, align 1
  %.sroa.5.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  store i8 %i.of, ptr %.sroa.5.0..sroa_idx.i.i232, align 1
  %indvars.iv.next36.i233 = add nsw i64 %indvars.iv35.i230, 1 ; 2 uses
  %exitcond39.not.i234 = icmp eq i64 %indvars.iv.next36.i233, %wide.trip.count38.i229
  br i1 %exitcond39.not.i234, label %stbhw__draw_hline.exit243, label %vec.epilog.scalar.ph347, !llvm.loop !215

stbhw__draw_hline.exit243:                        ; preds = %vec.epilog.scalar.ph347, %vec.epilog.middle.block362, %middle.block343
  %i.oi = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 40
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.j
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !40
  %.not = icmp eq i32 %i.ol, 0
  br i1 %.not, label %stbhw__draw_clipped_corner.exit, label %bb.l

bb.l:                                             ; preds = %stbhw__draw_hline.exit243
  %i.om = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.on = load i32, ptr %i.g, align 8, !tbaa !68
  %i.oo = sext i32 %i.on to i64                   ; 2 uses
  %i.op = icmp slt i32 %i.d, 1
  br i1 %i.op, label %stbhw__draw_clipped_corner.exit, label %.preheader.split.split.preheader.2.i

.preheader.split.split.preheader.2.i:             ; preds = %bb.l
  %i.oq = mul nsw i64 %i.oo, %i.er
  %i.or = getelementptr inbounds i8, ptr %i.om, i64 %i.oq
  %i.os = mul nsw i64 %i.au, 3
  %i.ot = getelementptr i8, ptr %i.or, i64 %i.os  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ot, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.ou = icmp eq i32 %i.d, 1
  br i1 %i.ou, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.split.split.preheader.2.i
  %i.ov = getelementptr i8, ptr %i.ot, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ov, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.split.split.preheader.2.i
  %i.ow = add nsw i64 %i.er, 1
  %i.ox = mul nsw i64 %i.ow, %i.oo
  %i.oy = getelementptr inbounds i8, ptr %i.om, i64 %i.ox
  %i.oz = mul nsw i64 %i.au, 3
  %i.pa = getelementptr inbounds i8, ptr %i.oy, i64 %i.oz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pa, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit

stbhw__draw_clipped_corner.exit:                  ; preds = %bb.l, %bb.n, %stbhw__draw_hline.exit243
  %i.pb = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 88
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.du
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !40
  %.not139 = icmp eq i32 %i.pe, 0
  br i1 %.not139, label %stbhw__draw_clipped_corner.exit248, label %bb.o

bb.o:                                             ; preds = %stbhw__draw_clipped_corner.exit
  %i.pf = load ptr, ptr %i.e, align 8, !tbaa !67  ; 6 uses
  %i.pg = load i32, ptr %i.g, align 8, !tbaa !68
  %i.ph = add nsw i32 %i.fm, %2
  %i.pi = sext i32 %i.ph to i64                   ; 6 uses
  %i.pj = sext i32 %i.pg to i64                   ; 6 uses
  %i.pk = icmp slt i32 %i.d, 2
  br i1 %i.pk, label %.split.us.i, label %bb.p

.split.us.i:                                      ; preds = %bb.o
  %.not298 = icmp eq i32 %i.d, 1
  br i1 %.not298, label %.preheader.split.split.preheader.2.i244.thread.thread, label %.split.us.1.i

bb.p:                                             ; preds = %bb.o
  %i.pl = add nsw i64 %i.pi, -2
  %i.pm = mul nsw i64 %i.pl, %i.pj
  %i.pn = getelementptr inbounds i8, ptr %i.pf, i64 %i.pm
  %i.po = mul nsw i64 %i.au, 3
  %i.pp = getelementptr inbounds i8, ptr %i.pn, i64 %i.po
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pp, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.pq = add nsw i64 %i.pi, -1
  %i.pr = mul nsw i64 %i.pq, %i.pj
  %i.ps = getelementptr inbounds i8, ptr %i.pf, i64 %i.pr
  %i.pt = mul nsw i64 %i.au, 3
  %i.pu = getelementptr i8, ptr %i.ps, i64 %i.pt  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pu, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.pv = getelementptr i8, ptr %i.pu, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.pv, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %bb.p, %.split.us.i
  %.not283 = icmp slt i32 %i.d, %i.kj
  br i1 %.not283, label %.preheader.split.split.preheader.2.i244.thread, label %.split.us.2.i246

.preheader.split.split.preheader.2.i244.thread.thread: ; preds = %.split.us.i
  %i.pw = add nsw i64 %i.pi, -1
  %i.px = mul nsw i64 %i.pw, %i.pj
  %i.py = getelementptr inbounds i8, ptr %i.pf, i64 %i.px
  %i.pz = mul nsw i64 %i.au, 3                    ; 2 uses
  %i.qa = getelementptr i8, ptr %i.py, i64 %i.pz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qa, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %.pn297 = mul nsw i64 %i.pj, %i.pi
  %i.qb = getelementptr inbounds i8, ptr %i.pf, i64 %.pn297
  %i.qc = getelementptr i8, ptr %i.qb, i64 %i.pz
  br label %.split.us.2.i246.sink.split

.preheader.split.split.preheader.2.i244.thread:   ; preds = %.split.us.1.i
  %.pre293 = mul nsw i64 %i.au, 3
  %.pn = mul nsw i64 %i.pj, %i.pi
  %i.qd = getelementptr inbounds i8, ptr %i.pf, i64 %.pn
  %i.qe = getelementptr i8, ptr %i.qd, i64 %.pre293 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qe, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %9 = icmp samesign ult i32 %i.d, 2
  br i1 %9, label %.split.us.2.i246, label %bb.q

bb.q:                                             ; preds = %.preheader.split.split.preheader.2.i244.thread
  %i.qf = getelementptr i8, ptr %i.qe, i64 3
  br label %.split.us.2.i246.sink.split

.split.us.2.i246.sink.split:                      ; preds = %bb.q, %.preheader.split.split.preheader.2.i244.thread.thread
  %.sink = phi ptr [ %i.qc, %.preheader.split.split.preheader.2.i244.thread.thread ], [ %i.qf, %bb.q ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sink, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.split.us.2.i246

.split.us.2.i246:                                 ; preds = %.split.us.2.i246.sink.split, %.preheader.split.split.preheader.2.i244.thread, %.split.us.1.i
  %.not284 = icmp slt i32 %i.fm, %i.kj
  br i1 %.not284, label %.preheader.split.split.us.3.i247.thread, label %stbhw__draw_clipped_corner.exit248

.preheader.split.split.us.3.i247.thread:          ; preds = %.split.us.2.i246
  %i.qg = add nsw i64 %i.pi, 1
  %i.qh = mul nsw i64 %i.qg, %i.pj
  %i.qi = getelementptr inbounds i8, ptr %i.pf, i64 %i.qh
  %i.qj = mul nsw i64 %i.au, 3
  %i.qk = getelementptr inbounds i8, ptr %i.qi, i64 %i.qj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.qk, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit248

stbhw__draw_clipped_corner.exit248:               ; preds = %.preheader.split.split.us.3.i247.thread, %.split.us.2.i246, %stbhw__draw_clipped_corner.exit
  %i.ql = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 72
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.hi
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !40
  %.not140 = icmp eq i32 %i.qo, 0
  br i1 %.not140, label %stbhw__draw_clipped_corner.exit262, label %bb.r

bb.r:                                             ; preds = %stbhw__draw_clipped_corner.exit248
  %i.qp = or disjoint i32 %i.kj, 1                ; 2 uses
  %i.qq = icmp slt i32 %i.qp, 3
  br i1 %i.qq, label %stbhw__draw_clipped_corner.exit262, label %.split.us.i251.thread

.split.us.i251.thread:                            ; preds = %bb.r
  %i.qr = load i32, ptr %i.g, align 8, !tbaa !68
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %i.qt = add nsw i32 %i.qp, %2
  %i.qu = sext i32 %i.qt to i64                   ; 2 uses
  %i.qv = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.qw = add nsw i64 %i.qu, -2
  %i.qx = mul nsw i64 %i.qw, %i.qs
  %i.qy = getelementptr inbounds i8, ptr %i.qv, i64 %i.qx
  %i.qz = mul nsw i64 %i.au, 3
  %i.ra = getelementptr inbounds i8, ptr %i.qy, i64 %i.qz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ra, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.rb = add nsw i64 %i.qu, -1
  %i.rc = mul nsw i64 %i.rb, %i.qs
  %i.rd = getelementptr inbounds i8, ptr %i.qv, i64 %i.rc
  %i.re = mul nsw i64 %i.au, 3
  %i.rf = getelementptr i8, ptr %i.rd, i64 %i.re  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rf, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.rg = icmp slt i32 %i.d, 2
  br i1 %i.rg, label %stbhw__draw_clipped_corner.exit262, label %bb.s

bb.s:                                             ; preds = %.split.us.i251.thread
  %i.rh = getelementptr i8, ptr %i.rf, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rh, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit262

stbhw__draw_clipped_corner.exit262:               ; preds = %bb.r, %bb.s, %.split.us.i251.thread, %stbhw__draw_clipped_corner.exit248
  %i.ri = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.l
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !40
  %.not141 = icmp eq i32 %i.rl, 0
  br i1 %.not141, label %stbhw__draw_clipped_corner.exit276, label %bb.t

bb.t:                                             ; preds = %stbhw__draw_clipped_corner.exit262
  %i.rm = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.rn = load i32, ptr %i.g, align 8, !tbaa !68
  %i.ro = sext i32 %i.fn to i64                   ; 2 uses
  %i.rp = sext i32 %i.rn to i64                   ; 2 uses
  %i.rq = icmp slt i32 %i.d, 1
  %i.rr = mul nsw i64 %i.rp, %i.er
  %i.rs = getelementptr inbounds i8, ptr %i.rm, i64 %i.rr ; 2 uses
  br i1 %i.rq, label %stbhw__draw_clipped_corner.exit276, label %.preheader.split.split.preheader.2.i271

.preheader.split.split.preheader.2.i271:          ; preds = %bb.t
  %i.rt = icmp eq i32 %i.d, 1
  %.pre294 = mul nsw i64 %i.ro, 3                 ; 2 uses
  br i1 %i.rt, label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, label %bb.u

bb.u:                                             ; preds = %.preheader.split.split.preheader.2.i271
  %i.ru = getelementptr i8, ptr %i.rs, i64 %.pre294
  %i.rv = getelementptr i8, ptr %i.ru, i64 -6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rv, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge

.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge: ; preds = %.preheader.split.split.preheader.2.i271, %bb.u
  %i.rw = getelementptr i8, ptr %i.rs, i64 %.pre294
  %i.rx = getelementptr i8, ptr %i.rw, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.rx, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  %i.ry = add nsw i64 %i.er, 1
  %i.rz = mul nsw i64 %i.ry, %i.rp
  %i.sa = getelementptr inbounds i8, ptr %i.rm, i64 %i.rz
  %i.sb = mul nsw i64 %i.ro, 3
  %i.sc = getelementptr i8, ptr %i.sa, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sd, ptr noundef nonnull readonly align 1 dereferenceable(3) @__const.stbhw__draw_clipped_corner.template_color, i64 3, i1 false)
  br label %stbhw__draw_clipped_corner.exit276

stbhw__draw_clipped_corner.exit276:               ; preds = %bb.t, %.preheader.split.split.preheader.2.i271..preheader.split.split.1.2.i_crit_edge, %stbhw__draw_clipped_corner.exit262
  %i.se = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 40
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.fp
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !40
  %.not142 = icmp eq i32 %i.sh, 0
  %.pre286.pre289 = load ptr, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %.pre288.pre291 = load i32, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  br i1 %.not142, label %bb.w, label %bb.v

bb.v:                                             ; preds = %stbhw__draw_clipped_corner.exit276
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286.pre289, i32 noundef %.pre288.pre291, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kj, i32 noundef %i.fm, i32 noundef %i.fm)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  %.pre286.pre = load ptr, ptr %i.e, align 8, !tbaa !67
  %.pre288.pre = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %stbhw__draw_clipped_corner.exit276
  %.pre288 = phi i32 [ %.pre288.pre, %bb.v ], [ %.pre288.pre291, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %.pre286 = phi ptr [ %.pre286.pre, %bb.v ], [ %.pre286.pre289, %stbhw__draw_clipped_corner.exit276 ] ; 2 uses
  %i.si = phi ptr [ %.pre, %bb.v ], [ %i.se, %stbhw__draw_clipped_corner.exit276 ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 88
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.ix
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !40
  %.not143 = icmp eq i32 %i.sl, 0
  br i1 %.not143, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.sm = or disjoint i32 %i.kj, 1
  tail call void @stbhw__draw_clipped_corner(ptr noundef %.pre286, i32 noundef %.pre288, i32 noundef %1, i32 noundef %2, i32 noundef %i.d, i32 noundef %i.kj, i32 noundef %i.fm, i32 noundef %i.sm)
  %.pre285 = load ptr, ptr %i.e, align 8, !tbaa !67
  %.pre287 = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.sn = phi i32 [ %.pre287, %bb.x ], [ %.pre288, %bb.w ]
  %i.so = phi ptr [ %.pre285, %bb.x ], [ %.pre286, %bb.w ]
  %i.sp = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.j
  %i.sq = mul nsw i32 %i.sn, %2
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds i8, ptr %i.so, i64 %i.sr
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.st, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sp, i64 3, i1 false)
  %i.su = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.sv = load i32, ptr %i.g, align 8, !tbaa !68
  %i.sw = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.du
  %i.sx = mul nsw i32 %i.sv, %i.hf
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds i8, ptr %i.su, i64 %i.sy
  %i.ta = getelementptr inbounds i8, ptr %i.sz, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ta, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.sw, i64 3, i1 false)
  %i.tb = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.tc = load i32, ptr %i.g, align 8, !tbaa !68
  %i.td = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 24), i64 %i.hi
  %i.te = mul nsw i32 %i.tc, %i.kk
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.tb, i64 %i.tf
  %i.th = getelementptr inbounds i8, ptr %i.tg, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.th, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.td, i64 3, i1 false)
  %i.ti = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.tj = load i32, ptr %i.g, align 8, !tbaa !68
  %i.tk = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 12), i64 %i.l
  %i.tl = mul nsw i32 %i.tj, %2
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds i8, ptr %i.ti, i64 %i.tm
  %i.to = getelementptr inbounds i8, ptr %i.tn, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.to, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tk, i64 3, i1 false)
  %i.tp = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.tq = load i32, ptr %i.g, align 8, !tbaa !68
  %i.tr = getelementptr inbounds [3 x i8], ptr @stbhw__corner_colors, i64 %i.fp
  %i.ts = mul nsw i32 %i.tq, %i.hf
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds i8, ptr %i.tp, i64 %i.tt
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.tr, i64 3, i1 false)
  %i.tw = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.tx = load i32, ptr %i.g, align 8, !tbaa !68
  %i.ty = getelementptr inbounds [3 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbhw__corner_colors, i64 36), i64 %i.ix
  %i.tz = mul nsw i32 %i.tx, %i.kk
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds i8, ptr %i.tw, i64 %i.ua
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 %i.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.uc, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ty, i64 3, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_make_template(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw__process, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %3, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %4, ptr %i.d, align 8, !tbaa !68
  store ptr null, ptr %5, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !34
  %i.f = load i32, ptr %0, align 4, !tbaa !39
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %spec.select = select i1 %.not, ptr @stbhw__edge_process_h_rect, ptr @stbhw__corner_process_h_rect
  %spec.select76 = select i1 %.not, ptr @stbhw__edge_process_v_rect, ptr @stbhw__corner_process_v_rect
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_1
