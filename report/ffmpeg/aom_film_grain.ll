Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aom_film_grain?download=true
inline.NumInlined: 164
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0_@ff_aom_apply_film_grain:bb.a
  %i.tl = add i32 %i.tk, 32768
  %broadcast.splatinsert200 = insertelement <4 x i8> poison, i8 %i.qc, i64 0
  %broadcast.splat201 = shufflevector <4 x i8> %broadcast.splatinsert200, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %bc.resume.val198, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %i.qr, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tm = mul nsw <4 x i32> %broadcast.splat205, <i32 0, i32 1, i32 2, i32 3>
  %induction206 = add nsw <4 x i32> %broadcast.splat203, %i.tm
  %i.tn = shl nsw i32 %i.qr, 2
  %broadcast.splatinsert207 = insertelement <4 x i32> poison, i32 %i.tn, i64 0
  %broadcast.splat208 = shufflevector <4 x i32> %broadcast.splatinsert207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph196
  %index210 = phi i64 [ %vec.epilog.resume.val197, %vec.epilog.ph196 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 2 uses
  %vec.ind211 = phi <4 x i32> [ %induction206, %vec.epilog.ph196 ], [ %vec.ind.next213, %vec.epilog.vector.body209 ] ; 2 uses
  %i.to = lshr <4 x i32> %vec.ind211, splat (i32 16)
  %i.tp = trunc <4 x i32> %i.to to <4 x i8>
  %i.tq = add <4 x i8> %broadcast.splat201, %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 %index210
  store <4 x i8> %i.tq, ptr %i.tr, align 1, !tbaa !27
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %vec.ind.next213 = add nsw <4 x i32> %vec.ind211, %broadcast.splat208
  %i.ts = icmp eq i64 %index.next212, %n.vec199
  br i1 %i.ts, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !62

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %n.vec199, %wide.trip.count.i74.i
  br i1 %cmp.n215, label %.loopexit.i71.i, label %.lr.ph.i76.i.preheader

.lr.ph.i76.i.preheader:                           ; preds = %iter.check192, %vec.epilog.iter.check193, %vec.epilog.middle.block214
  %indvars.iv.i77.i.ph = phi i64 [ 0, %iter.check192 ], [ %n.vec178, %vec.epilog.iter.check193 ], [ %n.vec199, %vec.epilog.middle.block214 ]
  %.042.i78.i.ph = phi i32 [ 32768, %iter.check192 ], [ %i.qx, %vec.epilog.iter.check193 ], [ %i.tl, %vec.epilog.middle.block214 ]
  br label %.lr.ph.i76.i

.lr.ph.i76.i:                                     ; preds = %.lr.ph.i76.i.preheader, %.lr.ph.i76.i
  %indvars.iv.i77.i = phi i64 [ %indvars.iv.next.i80.i, %.lr.ph.i76.i ], [ %indvars.iv.i77.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %.042.i78.i = phi i32 [ %i.tw, %.lr.ph.i76.i ], [ %.042.i78.i.ph, %.lr.ph.i76.i.preheader ] ; 2 uses
  %i.tt = lshr i32 %.042.i78.i, 16
  %i.tu = trunc i32 %i.tt to i8
  %i.tv = add i8 %i.qc, %i.tu
  %gep.i79.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i75.i, i64 %indvars.iv.i77.i
  store i8 %i.tv, ptr %gep.i79.i, align 1, !tbaa !27
  %i.tw = add nsw i32 %.042.i78.i, %i.qr
  %indvars.iv.next.i80.i = add nuw nsw i64 %indvars.iv.i77.i, 1 ; 2 uses
  %exitcond.not.i81.i = icmp eq i64 %indvars.iv.next.i80.i, %wide.trip.count.i74.i
  br i1 %exitcond.not.i81.i, label %.loopexit.i71.i, label %.lr.ph.i76.i, !llvm.loop !63

generate_scaling_8.exit82.i:                      ; preds = %.loopexit.i71.i, %bb.aa
  %i.tx = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !27
  %i.ua = sub nuw nsw i64 256, %i.pw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tx, i8 %i.tz, i64 %i.ua, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %generate_scaling_8.exit82.i, %bb.z
  %i.ub = icmp sgt i32 %i.cq, 0
  br i1 %i.ub, label %.lr.ph106.i, label %apply_film_grain_8.exit

.lr.ph106.i:                                      ; preds = %bb.ab
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.ug = getelementptr i8, ptr %2, i64 140       ; 8 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 6068 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uo = getelementptr inbounds nuw i8, ptr %i.a, i64 12136
  %i.up = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.uq = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  br label %bb.ac

bb.ac:                                            ; preds = %apply_grain_row_8.exit.i, %.lr.ph106.i
  %.0104.i = phi i32 [ 0, %.lr.ph106.i ], [ %i.aoi, %apply_grain_row_8.exit.i ] ; 9 uses
  %i.ur = load i32, ptr %i.aj, align 8, !tbaa !30 ; 4 uses
  %i.us = add nsw i32 %i.ur, %i.cr
  %i.ut = ashr i32 %i.us, %i.cr
  %i.uu = load i32, ptr %i.uc, align 4, !tbaa !44
  %i.uv = icmp eq i32 %i.uu, 0
  %i.uw = zext i1 %i.uv to i32                    ; 3 uses
  %i.ux = load i32, ptr %i.ak, align 4, !tbaa !31
  %i.uy = shl nuw nsw i32 %.0104.i, 5             ; 4 uses
  %i.uz = sub nsw i32 %i.ux, %i.uy                ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.uz, i32 32) ; 2 uses
  %i.va = add nsw i32 %spec.select.i.i, %i.cs
  %i.vb = ashr i32 %i.va, %i.cs                   ; 8 uses
  %i.vc = load i32, ptr %i.ud, align 4, !tbaa !29
  %i.vd = mul nsw i32 %i.vc, %i.uy
  %i.ve = ashr i32 %i.vd, %i.cs
  %i.vf = sext i32 %i.ve to i64                   ; 6 uses
  %i.vg = load ptr, ptr %1, align 8, !tbaa !28
  %i.vh = load i32, ptr %i.ai, align 8, !tbaa !29
  %i.vi = mul i32 %i.vh, %i.uy
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr i8, ptr %i.vg, i64 %i.vj  ; 6 uses
  %i.vl = load i32, ptr %i.c, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %i.vl, 0
  br i1 %.not.i.i, label %fgy_32x32xn_c_8.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.vm = load i32, ptr %i.ah, align 8, !tbaa !29 ; 3 uses
  %i.vn = load ptr, ptr %0, align 8, !tbaa !28
  %i.vo = load i32, ptr %i.ue, align 8, !tbaa !45
  %i.vp = icmp ne i32 %i.vo, 0
  %i.vq = icmp ne i32 %.0104.i, 0                 ; 2 uses
  %i.vr = and i1 %i.vq, %i.vp                     ; 3 uses
  %i.vs = load i32, ptr %i.uf, align 4, !tbaa !46
  %i.vt = load i64, ptr %i.ce, align 8, !tbaa !32
  %i.vu = trunc i64 %i.vt to i32                  ; 2 uses
  %i.vv = mul i32 %.0104.i, 9472
  %i.vw = add i32 %i.vv, 45568
  %i.vx = and i32 %i.vw, 65280
  %i.vy = mul i32 %.0104.i, 173
  %i.vz = add i32 %i.vy, 105
  %i.wa = and i32 %i.vz, 255
  %i.wb = or disjoint i32 %i.wa, %i.vx
  %i.wc = xor i32 %i.wb, %i.vu
  br i1 %i.vr, label %bb.ae, label %.preheader232.i.i

.preheader232.i.i:                                ; preds = %bb.ae, %bb.ad
  %.sroa.5.0 = phi i32 [ undef, %bb.ad ], [ %i.wr, %bb.ae ]
  %i.wd = mul i32 %i.vm, %i.uy
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr i8, ptr %i.vn, i64 %i.we
  %i.wg = sext i32 %i.vm to i64                   ; 5 uses
  %i.wh = sext i32 %i.ur to i64
  %.not.i87.i = icmp eq i32 %i.vs, 0              ; 2 uses
  %..i.i = select i1 %.not.i87.i, i32 255, i32 235 ; 7 uses
  %.209.i.i = select i1 %.not.i87.i, i32 0, i32 16 ; 13 uses
  %.not313.i.i = icmp eq i32 %i.ur, 0
  br i1 %.not313.i.i, label %fgy_32x32xn_c_8.exit.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %.preheader232.i.i
  %i.wi = tail call i32 @llvm.smin.i32(i32 %i.uz, i32 2)
  %wide.trip.count338.i.i = sext i32 %spec.select.i.i to i64
  %stride.check = icmp slt i32 %i.vm, 0
  %broadcast.splatinsert241.a = insertelement <4 x i32> poison, i32 %.209.i.i, i64 0
  %broadcast.splat242.a = shufflevector <4 x i32> %broadcast.splatinsert241.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert243 = insertelement <4 x i32> poison, i32 %..i.i, i64 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.loopexit.i88.i

bb.ae:                                            ; preds = %bb.ad
  %i.wj = add nsw i32 %.0104.i, -1                ; 2 uses
  %i.wk = mul i32 %i.wj, 9472
  %i.wl = add i32 %i.wk, 45568
  %i.wm = and i32 %i.wl, 65280
  %i.wn = mul i32 %i.wj, 173
  %i.wo = add i32 %i.wn, 105
  %i.wp = and i32 %i.wo, 255
  %i.wq = or disjoint i32 %i.wp, %i.wm
  %i.wr = xor i32 %i.wq, %i.vu
  br label %.preheader232.i.i

.loopexit.i88.i:                                  ; preds = %._crit_edge297.i.i, %.lr.ph311.i.i
  %.sroa.5.1 = phi i32 [ %.sroa.5.0, %.lr.ph311.i.i ], [ %.sroa.5.2, %._crit_edge297.i.i ] ; 5 uses
  %.sroa.0261.0 = phi i32 [ %i.wc, %.lr.ph311.i.i ], [ %i.xj, %._crit_edge297.i.i ] ; 4 uses
  %.sroa.12.0 = phi i32 [ undef, %.lr.ph311.i.i ], [ %.sroa.12.1, %._crit_edge297.i.i ] ; 2 uses
  %.sroa.9.0 = phi i32 [ undef, %.lr.ph311.i.i ], [ %.sroa.9.1, %._crit_edge297.i.i ]
  %.sroa.6.0 = phi i32 [ undef, %.lr.ph311.i.i ], [ %.sroa.6.1, %._crit_edge297.i.i ] ; 2 uses
  %.sroa.0.0 = phi i32 [ undef, %.lr.ph311.i.i ], [ %i.xl, %._crit_edge297.i.i ]
  %indvars.iv359.i.i = phi i64 [ 0, %.lr.ph311.i.i ], [ %indvars.iv.next360.i.i, %._crit_edge297.i.i ] ; 5 uses
  %i.ws = trunc i64 %indvars.iv359.i.i to i32
  %i.wt = sub i32 %i.ur, %i.ws                    ; 4 uses
  %i.wu = tail call i32 @llvm.umin.i32(i32 %i.wt, i32 32) ; 2 uses
  %i.wv = load i32, ptr %i.ue, align 8, !tbaa !45
  %i.ww = icmp ne i32 %i.wv, 0                    ; 2 uses
  %or.cond.i.i = and i1 %i.vq, %i.ww
  %i.wx = select i1 %or.cond.i.i, i32 %i.wi, i32 0 ; 4 uses
  %i.wy = icmp ne i64 %indvars.iv359.i.i, 0
  %or.cond3.i.i = and i1 %i.wy, %i.ww             ; 3 uses
  %i.wz = tail call i32 @llvm.umin.i32(i32 %i.wt, i32 2)
  %i.xa = select i1 %or.cond3.i.i, i32 %i.wz, i32 0 ; 9 uses
  %.sroa.12.2 = select i1 %i.vr, i32 %.sroa.6.0, i32 %.sroa.12.0
  %.sroa.12.1 = select i1 %or.cond3.i.i, i32 %.sroa.12.2, i32 %.sroa.12.0 ; 3 uses
  %.sroa.9.1 = select i1 %or.cond3.i.i, i32 %.sroa.0.0, i32 %.sroa.9.0 ; 5 uses
  %i.xb = ashr i32 %.sroa.0261.0, 1               ; 2 uses
  %i.xc = lshr i32 %.sroa.0261.0, 3
  %i.xd = lshr i32 %.sroa.0261.0, 12
  %i.xe = xor i32 %i.xc, %i.xd
  %i.xf = xor i32 %i.xe, %.sroa.0261.0
  %i.xg = xor i32 %i.xf, %i.xb
  %i.xh = shl i32 %i.xg, 15
  %i.xi = and i32 %i.xh, 32768
  %i.xj = or i32 %i.xi, %i.xb                     ; 4 uses
  %i.xk = lshr i32 %i.xj, 8                       ; 3 uses
  %i.xl = and i32 %i.xk, 255
  br i1 %i.vr, label %.loopexit.i88.i.1, label %.preheader230.i.i

.preheader230.i.i:                                ; preds = %.loopexit.i88.i.1, %.loopexit.i88.i
  %.sroa.5.2 = phi i32 [ %.sroa.5.1, %.loopexit.i88.i ], [ %i.yl, %.loopexit.i88.i.1 ]
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %.loopexit.i88.i ], [ %i.yn, %.loopexit.i88.i.1 ] ; 3 uses
  %invariant.gep249.i.i = getelementptr i8, ptr %i.vk, i64 %indvars.iv359.i.i ; 6 uses
  %invariant.gep.i89.i = getelementptr i8, ptr %i.wf, i64 %indvars.iv359.i.i ; 7 uses
  %i.xm = icmp sgt i32 %i.uz, %i.wx
  br i1 %i.xm, label %.preheader228.lr.ph.i.i, label %.preheader229.i.i

.preheader228.lr.ph.i.i:                          ; preds = %.preheader230.i.i
  %i.xn = icmp ugt i32 %i.wt, %i.xa
  %i.xo = lshr i32 %i.xj, 11
  %i.xp = and i32 %i.xo, 30                       ; 2 uses
  %i.xq = shl nuw nsw i32 %i.xk, 1
  %i.xr = and i32 %i.xq, 30                       ; 2 uses
  %invariant.op257.i.i = add nuw nsw i32 %i.xr, 9
  %invariant.op.i.i = add nuw nsw i32 %i.xp, 9    ; 2 uses
  %.not314.i.i = icmp eq i32 %i.xa, 0
  %invariant.op259.i.i = add nuw nsw i32 %i.xr, 6
  %i.xs = ashr i32 %.sroa.9.1, 3
  %i.xt = and i32 %i.xs, -2                       ; 2 uses
  %i.xu = shl i32 %.sroa.9.1, 1
  %i.xv = and i32 %i.xu, 30
  %invariant.op261.i.i = add nuw nsw i32 %i.xv, 6
  %i.xw = zext nneg i32 %i.xa to i64
  %i.xx = zext nneg i32 %i.wu to i64
  %i.xy = sext i32 %i.wx to i64
  %i.xz = zext nneg i32 %invariant.op.i.i to i64
  %i.ya = sext i32 %i.xt to i64
  %exitcond334.not.i.i = icmp eq i32 %i.xa, 1
  %i.yb = zext nneg i32 %i.xp to i64
  %i.yc = sext i32 %i.xt to i64
  br label %.preheader228.i.i

.loopexit.i88.i.1:                                ; preds = %.loopexit.i88.i
  %i.yd = ashr i32 %.sroa.5.1, 1                  ; 2 uses
  %i.ye = lshr i32 %.sroa.5.1, 3
  %i.yf = lshr i32 %.sroa.5.1, 12
  %i.yg = xor i32 %i.ye, %i.yf
  %i.yh = xor i32 %i.yg, %.sroa.5.1
  %i.yi = xor i32 %i.yh, %i.yd
  %i.yj = shl i32 %i.yi, 15
  %i.yk = and i32 %i.yj, 32768
  %i.yl = or i32 %i.yk, %i.yd                     ; 2 uses
  %i.ym = lshr i32 %i.yl, 8
  %i.yn = and i32 %i.ym, 255
  br label %.preheader230.i.i

.preheader229.i.i:                                ; preds = %._crit_edge.i91.i, %.preheader230.i.i
  %i.yo = icmp sgt i32 %i.wx, 0
  br i1 %i.yo, label %.preheader226.lr.ph.i.i, label %._crit_edge297.i.i

.preheader226.lr.ph.i.i:                          ; preds = %.preheader229.i.i
  %i.yp = icmp ugt i32 %i.wt, %i.xa
  %i.yq = lshr i32 %i.xj, 11
  %i.yr = and i32 %i.yq, 30                       ; 4 uses
  %i.ys = shl nuw nsw i32 %i.xk, 1
  %i.yt = and i32 %i.ys, 30                       ; 2 uses
  %invariant.op298.i.i = add nuw nsw i32 %i.yt, 9
  %invariant.op265.i.i = add nuw nsw i32 %i.yr, 6 ; 2 uses
  %i.yu = ashr i32 %.sroa.6.1, 3
  %i.yv = and i32 %i.yu, -2                       ; 4 uses
  %i.yw = shl i32 %.sroa.6.1, 1
  %i.yx = and i32 %i.yw, 30                       ; 2 uses
  %invariant.op300.i.i = add nuw nsw i32 %i.yx, 41
  %invariant.op267.i.i = add nsw i32 %i.yv, 6     ; 2 uses
  %.not315.i.i = icmp eq i32 %i.xa, 0
  %i.yy = ashr i32 %.sroa.12.1, 3
  %i.yz = and i32 %i.yy, -2                       ; 2 uses
  %i.za = shl i32 %.sroa.12.1, 1
  %i.zb = and i32 %i.za, 30
  %i.zc = ashr i32 %.sroa.9.1, 3
  %i.zd = and i32 %i.zc, -2                       ; 2 uses
  %i.ze = shl i32 %.sroa.9.1, 1
  %i.zf = and i32 %i.ze, 30
  %i.zg = zext nneg i32 %i.xa to i64              ; 10 uses
  %i.zh = zext nneg i32 %i.wu to i64              ; 4 uses
  %wide.trip.count357.i.i = zext nneg i32 %i.wx to i64 ; 2 uses
  %i.zi = zext nneg i32 %i.yt to i64
  %invariant.gep364.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.a, i64 %i.zi
  %i.zj = zext nneg i32 %i.yx to i64
  %invariant.gep366.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.a, i64 %i.zj
  %i.zk = zext nneg i32 %i.zb to i64
  %invariant.gep368.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.a, i64 %i.zk
  %i.zl = zext nneg i32 %i.zf to i64
  %invariant.gep370.i.i = getelementptr inbounds nuw [82 x i8], ptr %i.a, i64 %i.zl
  %i.zm = add nuw nsw i64 %i.zg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.zh, i64 %i.zm)
  %i.zn = xor i64 %i.zg, -1
  %i.zo = add nsw i64 %umax, %i.zn                ; 2 uses
  %i.zp = add nuw nsw i32 %i.xa, 9                ; 2 uses
  %i.zq = add nuw nsw i32 %i.zp, %i.yr            ; 2 uses
  %i.zr = add nsw i32 %i.zp, %i.yv                ; 2 uses
  %i.zs = add nuw nsw i64 %i.zg, 1
  %umax225 = tail call i64 @llvm.umax.i64(i64 %i.zh, i64 %i.zs) ; 3 uses
  %i.zt = add nsw i64 %wide.trip.count357.i.i, -1
  %i.zu = mul nsw i64 %i.zt, %i.wg
  %3 = getelementptr i8, ptr %invariant.gep.i89.i, i64 %umax225
  %scevgep = getelementptr i8, ptr %3, i64 %i.zu
  %scevgep.a = getelementptr i8, ptr %invariant.gep249.i.i, i64 %umax225
  %scevgep226 = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.zg
  %scevgep227 = getelementptr i8, ptr %invariant.gep.i89.i, i64 %umax225
  %scevgep228 = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.zg ; 2 uses
  %i.zv = add nuw nsw i64 %i.zg, 1
  %i.zw = tail call i64 @llvm.umax.i64(i64 %i.zh, i64 %i.zv)
  %i.zx = sub nsw i64 %i.zw, %i.zg                ; 3 uses
  %min.iters.check229 = icmp ult i64 %i.zx, 28
  %i.zy = trunc nsw i64 %i.zo to i32              ; 2 uses
  %i.zz = add i32 %i.zq, %i.zy
  %i.aaa = icmp slt i32 %i.zz, %i.zq
  %i.aab = add i32 %i.zr, %i.zy
  %i.aac = icmp slt i32 %i.aab, %i.zr
  %i.aad = icmp ugt i64 %i.zo, 4294967295
  %i.aae = or i1 %i.aac, %i.aad
  %i.aaf = or i1 %i.aaa, %i.aae
  %bound0 = icmp ult ptr %scevgep228, %scevgep.a
  %bound1 = icmp ult ptr %scevgep226, %scevgep227
  %found.conflict = and i1 %bound0, %bound1
  %bound0232 = icmp ult ptr %scevgep228, %i.ck
  %bound0230 = icmp ult ptr %i.ug, %scevgep
  %found.conflict234 = and i1 %bound0232, %bound0230
  %4 = or i1 %found.conflict234, %stride.check
  %conflict.rdx = or i1 %found.conflict, %4
  %n.vec234 = and i64 %i.zx, -4                   ; 3 uses
  %i.aag = or disjoint i64 %n.vec234, %i.zg
  %cmp.n251 = icmp eq i64 %i.zx, %n.vec234
  %i.aah = zext nneg i32 %i.yr to i64
  %i.aai = sext i32 %i.yv to i64
  %i.aaj = sext i32 %i.yz to i64
  %i.aak = sext i32 %i.zd to i64
  %exitcond347.not.i.i = icmp eq i32 %i.xa, 1
  %i.aal = zext nneg i32 %i.yr to i64
  %i.aam = sext i32 %i.yv to i64
  %i.aan = sext i32 %i.yz to i64
  %i.aao = sext i32 %i.zd to i64
  br label %.preheader226.i.i

.preheader228.i.i:                                ; preds = %._crit_edge.i91.i, %.preheader228.lr.ph.i.i
  %indvars.iv335.i.i = phi i64 [ %i.xy, %.preheader228.lr.ph.i.i ], [ %indvars.iv.next336.i.i, %._crit_edge.i91.i ] ; 5 uses
  br i1 %i.xn, label %.lr.ph.i92.i, label %.preheader227.i.i

.lr.ph.i92.i:                                     ; preds = %.preheader228.i.i
  %i.aap = trunc nsw i64 %indvars.iv335.i.i to i32
  %.reass258.i.i = add i32 %invariant.op257.i.i, %i.aap
  %i.aaq = sext i32 %.reass258.i.i to i64
  %i.aar = getelementptr inbounds [82 x i8], ptr %i.a, i64 %i.aaq
  %i.aas = mul nsw i64 %indvars.iv335.i.i, %i.wg  ; 2 uses
  %gep250.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.aas
  %gep251.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.aas
  br label %bb.af

.preheader227.i.i:                                ; preds = %bb.af, %.preheader228.i.i
  br i1 %.not314.i.i, label %._crit_edge.i91.i, label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.preheader227.i.i
  %i.aat = trunc i64 %indvars.iv335.i.i to i32
  %i.aau = add i32 %i.aat, 3                      ; 2 uses
  %.reass260.i.i = add i32 %invariant.op259.i.i, %i.aau
  %i.aav = sext i32 %.reass260.i.i to i64
  %i.aaw = getelementptr inbounds [82 x i8], ptr %i.a, i64 %i.aav ; 2 uses
  %.reass262.i.i = add i32 %invariant.op261.i.i, %i.aau
  %i.aax = sext i32 %.reass262.i.i to i64
  %i.aay = getelementptr inbounds [82 x i8], ptr %i.a, i64 %i.aax ; 2 uses
  %i.aaz = mul nsw i64 %indvars.iv335.i.i, %i.wg  ; 2 uses
  %gep253.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.aaz ; 2 uses
  %gep255.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.aaz ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.xz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !27
  %i.abc = sext i8 %i.abb to i32
  %i.abd = getelementptr i8, ptr %i.aay, i64 %i.ya
  %i.abe = getelementptr i8, ptr %i.abd, i64 41
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !27
  %i.abg = sext i8 %i.abf to i32
  %i.abh = mul nsw i32 %i.abg, 27
  %i.abi = mul nsw i32 %i.abc, 17
  %i.abj = add nsw i32 %i.abh, 16
  %i.abk = add nsw i32 %i.abj, %i.abi
  %i.abl = ashr i32 %i.abk, 5
  %i.abm = tail call i32 @llvm.smax.i32(i32 %i.abl, i32 -128)
  %.0.i223.i.i = tail call i32 @llvm.smin.i32(i32 %i.abm, i32 127)
  %i.abn = load i8, ptr %gep253.i.i, align 1, !tbaa !27 ; 2 uses
  %i.abo = zext i8 %i.abn to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.abo
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !27
  %i.abr = zext i8 %i.abq to i32
  %i.abs = mul nsw i32 %.0.i223.i.i, %i.abr
  %i.abt = load i32, ptr %i.ug, align 4, !tbaa !47 ; 2 uses
  %i.abu = shl nuw i32 1, %i.abt
  %i.abv = ashr i32 %i.abu, 1
  %i.abw = add nsw i32 %i.abs, %i.abv
  %i.abx = ashr i32 %i.abw, %i.abt
  %i.aby = zext i8 %i.abn to i32
  %i.abz = add nsw i32 %i.abx, %i.aby             ; 2 uses
  %i.aca = icmp slt i32 %i.abz, %.209.i.i
  %..i220.i.i = tail call i32 @llvm.smin.i32(i32 %i.abz, i32 %..i.i)
  %.0.i221.i.i = select i1 %i.aca, i32 %.209.i.i, i32 %..i220.i.i
  %i.acb = trunc i32 %.0.i221.i.i to i8
  store i8 %i.acb, ptr %gep255.i.i, align 1, !tbaa !27
  br i1 %exitcond334.not.i.i, label %._crit_edge.i91.i, label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph.i92.i
  %indvars.iv327.i.i = phi i64 [ %i.xw, %.lr.ph.i92.i ], [ %indvars.iv.next328.i.i, %bb.af ] ; 4 uses
  %i.acc = trunc nuw nsw i64 %indvars.iv327.i.i to i32
  %.reass.i.i = add i32 %invariant.op.i.i, %i.acc
  %i.acd = sext i32 %.reass.i.i to i64
  %i.ace = getelementptr inbounds i8, ptr %i.aar, i64 %i.acd
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !27
  %i.acg = sext i8 %i.acf to i32
  %gep.i93.i = getelementptr inbounds nuw i8, ptr %gep250.i.i, i64 %indvars.iv327.i.i
  %gep238.i.i = getelementptr inbounds nuw i8, ptr %gep251.i.i, i64 %indvars.iv327.i.i
  %i.ach = load i8, ptr %gep.i93.i, align 1, !tbaa !27 ; 2 uses
  %i.aci = zext i8 %i.ach to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aci
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !27
  %i.acl = zext i8 %i.ack to i32
  %i.acm = mul nsw i32 %i.acl, %i.acg
  %i.acn = load i32, ptr %i.ug, align 4, !tbaa !47 ; 2 uses
  %i.aco = shl nuw i32 1, %i.acn
  %i.acp = ashr i32 %i.aco, 1
  %i.acq = add nsw i32 %i.acp, %i.acm
  %i.acr = ashr i32 %i.acq, %i.acn
  %i.acs = zext i8 %i.ach to i32
  %i.act = add nsw i32 %i.acr, %i.acs             ; 2 uses
  %i.acu = icmp slt i32 %i.act, %.209.i.i
  %..i224.i.i = tail call i32 @llvm.smin.i32(i32 %i.act, i32 %..i.i)
  %.0.i225.i.i = select i1 %i.acu, i32 %.209.i.i, i32 %..i224.i.i
  %i.acv = trunc i32 %.0.i225.i.i to i8
  store i8 %i.acv, ptr %gep238.i.i, align 1, !tbaa !27
  %indvars.iv.next328.i.i = add nuw nsw i64 %indvars.iv327.i.i, 1 ; 2 uses
  %i.acw = icmp samesign ult i64 %indvars.iv.next328.i.i, %i.xx
  br i1 %i.acw, label %bb.af, label %.preheader227.i.i, !llvm.loop !64

._crit_edge.i91.i:                                ; preds = %bb.ag, %.lr.ph240.i.i, %.preheader227.i.i
  %indvars.iv.next336.i.i = add nsw i64 %indvars.iv335.i.i, 1 ; 2 uses
  %exitcond339.not.i.i = icmp eq i64 %indvars.iv.next336.i.i, %wide.trip.count338.i.i
  br i1 %exitcond339.not.i.i, label %.preheader229.i.i, label %.preheader228.i.i, !llvm.loop !65

bb.ag:                                            ; preds = %.lr.ph240.i.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.yb
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 10
  %i.acz = load i8, ptr %i.acy, align 2, !tbaa !27
  %i.ada = sext i8 %i.acz to i32
  %i.adb = getelementptr i8, ptr %i.aay, i64 %i.yc
  %i.adc = getelementptr i8, ptr %i.adb, i64 42
  %i.add = load i8, ptr %i.adc, align 2, !tbaa !27
  %i.ade = sext i8 %i.add to i32
  %i.adf = mul nsw i32 %i.ade, 17
  %i.adg = mul nsw i32 %i.ada, 27
  %i.adh = add nsw i32 %i.adf, 16
  %i.adi = add nsw i32 %i.adh, %i.adg
  %i.adj = ashr i32 %i.adi, 5
  %i.adk = tail call i32 @llvm.smax.i32(i32 %i.adj, i32 -128)
  %.0.i223.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.adk, i32 127)
  %gep246.i.i.1 = getelementptr inbounds nuw i8, ptr %gep253.i.i, i64 1
  %gep248.i.i.1 = getelementptr inbounds nuw i8, ptr %gep255.i.i, i64 1
  %i.adl = load i8, ptr %gep246.i.i.1, align 1, !tbaa !27 ; 2 uses
  %i.adm = zext i8 %i.adl to i64
  %i.adn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.adm
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !27
  %i.adp = zext i8 %i.ado to i32
  %i.adq = mul nsw i32 %.0.i223.i.i.1, %i.adp
  %i.adr = load i32, ptr %i.ug, align 4, !tbaa !47 ; 2 uses
  %i.ads = shl nuw i32 1, %i.adr
  %i.adt = ashr i32 %i.ads, 1
  %i.adu = add nsw i32 %i.adq, %i.adt
  %i.adv = ashr i32 %i.adu, %i.adr
  %i.adw = zext i8 %i.adl to i32
  %i.adx = add nsw i32 %i.adv, %i.adw             ; 2 uses
  %i.ady = icmp slt i32 %i.adx, %.209.i.i
  %..i220.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.adx, i32 %..i.i)
  %.0.i221.i.i.1 = select i1 %i.ady, i32 %.209.i.i, i32 %..i220.i.i.1
  %i.adz = trunc i32 %.0.i221.i.i.1 to i8
  store i8 %i.adz, ptr %gep248.i.i.1, align 1, !tbaa !27
  br label %._crit_edge.i91.i

.preheader226.i.i:                                ; preds = %._crit_edge275.i.i, %.preheader226.lr.ph.i.i
  %indvars.iv348.i.i = phi i64 [ 0, %.preheader226.lr.ph.i.i ], [ %indvars.iv.next349.i.i, %._crit_edge275.i.i ] ; 8 uses
  br i1 %i.yp, label %.lr.ph264.i.i, label %.preheader.i.i

.lr.ph264.i.i:                                    ; preds = %.preheader226.i.i
  %i.aea = trunc i64 %indvars.iv348.i.i to i32    ; 2 uses
  %i.aeb = add i32 %invariant.op298.i.i, %i.aea
  %i.aec = sext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds [82 x i8], ptr %i.a, i64 %i.aec ; 2 uses
  %i.aee = add i32 %invariant.op300.i.i, %i.aea
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds [82 x i8], ptr %i.a, i64 %i.aef ; 2 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c_16.w, i64 %indvars.iv348.i.i ; 2 uses
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !29 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !29 ; 2 uses
  %i.ael = mul nsw i64 %indvars.iv348.i.i, %i.wg  ; 2 uses
  %gep289.i.i = getelementptr i8, ptr %invariant.gep249.i.i, i64 %i.ael ; 2 uses
  %gep291.i.i = getelementptr i8, ptr %invariant.gep.i89.i, i64 %i.ael ; 2 uses
  %brmerge = select i1 %min.iters.check229, i1 true, i1 %i.aaf
  %brmerge265 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge265, label %scalar.ph.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph264.i.i
  %i.aem = load i32, ptr %i.ug, align 4, !tbaa !47, !alias.scope !79
  %broadcast.splatinsert235 = insertelement <4 x i32> poison, i32 %i.aem, i64 0
  %broadcast.splat236 = shufflevector <4 x i32> %broadcast.splatinsert235, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aen = shl nuw <4 x i32> splat (i32 1), %broadcast.splat236
  %i.aeo = ashr <4 x i32> %i.aen, splat (i32 1)
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.aei, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %i.aek, i64 0
  %broadcast.splat240 = shufflevector <4 x i32> %broadcast.splatinsert239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph233
  %index246 = phi i64 [ 0, %vector.ph233 ], [ %index.next249, %vector.body245 ] ; 2 uses
  %i.aep = or disjoint i64 %index246, %i.zg       ; 3 uses
  %i.aeq = trunc i64 %i.aep to i32
  %i.aer = add i32 %i.aeq, 3                      ; 2 uses
  %i.aes = add i32 %i.aer, %invariant.op265.i.i
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds i8, ptr %i.aed, i64 %i.aet
  %wide.load247 = load <4 x i8>, ptr %i.aeu, align 1, !tbaa !27
  %i.aev = sext <4 x i8> %wide.load247 to <4 x i32>
  %i.aew = add i32 %i.aer, %invariant.op267.i.i
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr inbounds i8, ptr %i.aeg, i64 %i.aex
end_hunk_0
