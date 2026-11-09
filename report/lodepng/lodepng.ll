Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng?download=true
inline.NumInlined: 891
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_Z14lodepng_decodePPhPjS1_P12LodePNGStatePKhm:bb.a
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !35
  %i.wb = trunc i64 %.11718.i84.i.i to i8
  %i.wc = and i8 %i.wb, 7
  %i.wd = add nuw i64 %.11718.i84.i.i, 1
  %i.we = lshr exact i8 -128, %i.wc
  %i.wf = and i8 %i.we, %i.wa
  %i.wg = icmp eq i8 %i.wf, 0
  %i.wh = lshr i64 %.119.i83.i.i, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.wh ; 2 uses
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !35  ; 2 uses
  br i1 %i.wg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.wk = trunc i64 %.119.i83.i.i to i16
  %i.wl = and i16 %i.wk, 7
  %i.wm = ashr i16 -129, %i.wl
  %i.wn = trunc i16 %i.wm to i8
  %i.wo = and i8 %i.wj, %i.wn
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i

bb.di:                                            ; preds = %bb.dg
  %i.wp = trunc i64 %.119.i83.i.i to i8
  %i.wq = and i8 %i.wp, 7
  %i.wr = lshr exact i8 -128, %i.wq
  %i.ws = or i8 %i.wj, %i.wr
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i

_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i:    ; preds = %bb.di, %bb.dh
  %.sink.i.i86.i.i = phi i8 [ %i.ws, %bb.di ], [ %i.wo, %bb.dh ]
  store i8 %.sink.i.i86.i.i, ptr %i.wi, align 1, !tbaa !35
  %i.wt = add nuw i64 %.119.i83.i.i, 1            ; 2 uses
  %exitcond.not.i87.i.i = icmp eq i64 %i.wt, %i.vx
  br i1 %exitcond.not.i87.i.i, label %._crit_edge.i88.i.i, label %bb.dg, !llvm.loop !550

._crit_edge.i88.i.i:                              ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i85.i.i
  %i.wu = add nuw i64 %.01622.i82.i.i, %i.vu
  %i.wv = add nuw i32 %.024.i80.i.i, 1            ; 2 uses
  %exitcond27.not.i89.i.i = icmp eq i32 %i.wv, %i.vl
  br i1 %exitcond27.not.i89.i.i, label %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i, label %.preheader.i79.i.i, !llvm.loop !551

_ZL17removePaddingBitsPhPKhmmj.exit90.i.i:        ; preds = %._crit_edge.i88.i.i, %bb.df, %bb.de
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i372.i = icmp eq i64 %indvars.iv.next.i.i, 7
  br i1 %.not.i372.i, label %bb.dj, label %bb.dd, !llvm.loop !552

bb.dj:                                            ; preds = %_ZL17removePaddingBitsPhPKhmmj.exit90.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  call fastcc void @_ZL19Adam7_getpassvaluesPjS_PmS0_S0_jjj(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.tk, i32 noundef %i.tl, i32 noundef range(i32 1, 0) %.0.i.i.i.i371.i)
  %i.ww = icmp ugt i32 %.0.i.i.i.i371.i, 7
  br i1 %i.ww, label %.preheader80.split.us.preheader.i.i.i, label %.preheader82.i.i.i

.preheader82.i.i.i:                               ; preds = %bb.dj
  %i.wx = mul i32 %.0.i.i.i.i371.i, %i.tk
  %i.wy = zext i32 %i.wx to i64
  %i.wz = zext nneg i32 %.0.i.i.i.i371.i to i64
  %exitcond.not.i94.i.i = icmp eq i32 %.0.i.i.i.i371.i, 1
  %exitcond.not.i94.i.i.1 = icmp eq i32 %.0.i.i.i.i371.i, 2
  %exitcond.not.i94.i.i.2 = icmp eq i32 %.0.i.i.i.i371.i, 3
  %exitcond.not.i94.i.i.3 = icmp eq i32 %.0.i.i.i.i371.i, 4
  %exitcond.not.i94.i.i.4 = icmp eq i32 %.0.i.i.i.i371.i, 5
  %exitcond.not.i94.i.i.5 = icmp eq i32 %.0.i.i.i.i371.i, 6
  br label %bb.dk

.preheader80.split.us.preheader.i.i.i:            ; preds = %bb.dj
  %i.xa = lshr i32 %.0.i.i.i.i371.i, 3
  %i.xb = zext nneg i32 %i.xa to i64              ; 88 uses
  %i.xc = zext i32 %i.tk to i64                   ; 17 uses
  %i.xd = load i32, ptr %i.b, align 16, !tbaa !29 ; 2 uses
  %.not105.i.i.i = icmp eq i32 %i.xd, 0
  br i1 %.not105.i.i.i, label %._crit_edge98.split.us.i.i.i, label %.preheader.lr.ph.us.i.i.i

iter.check:                                       ; preds = %._crit_edge93.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv124.i.i.i = phi i64 [ %indvars.iv.next125.i.i.i, %._crit_edge93.us.i.i.i ], [ 0, %.preheader.us.i.i.i ] ; 4 uses
  %i.xe = trunc nuw i64 %indvars.iv124.i.i.i to i32
  %i.xf = add i32 %i.als, %i.xe
  %i.xg = zext i32 %i.xf to i64
  %i.xh = mul nuw nsw i64 %i.xg, %i.xb            ; 2 uses
  %reass.add.i.i = add nuw i64 %indvars.iv124.i.i.i, %i.alt
  %i.xi = mul i64 %reass.mul.i.i, %reass.add.i.i
  %i.xj = getelementptr i8, ptr %i.alw, i64 %i.xh ; 7 uses
  %i.xk = getelementptr i8, ptr %i.tg, i64 %i.xi  ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.xl = mul nuw i64 %indvars.iv124.i.i.i, %reass.mul.i.i
  %i.xm = add i64 %i.alq, %i.xl
  %i.xn = add i64 %13, %i.xh
  %i.xo = sub i64 %i.xn, %i.xm
  %diff.check = icmp ugt i64 %i.xo, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check189, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.xp = getelementptr i8, ptr %i.xj, i64 %index ; 2 uses
  %i.xq = getelementptr i8, ptr %i.xp, i64 16
  %wide.load = load <16 x i8>, ptr %i.xp, align 1, !tbaa !35
  %wide.load190 = load <16 x i8>, ptr %i.xq, align 1, !tbaa !35
  %i.xr = getelementptr i8, ptr %i.xk, i64 %index ; 2 uses
  %i.xs = getelementptr i8, ptr %i.xr, i64 16
  store <16 x i8> %wide.load, ptr %i.xr, align 1, !tbaa !35
  store <16 x i8> %wide.load190, ptr %i.xs, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xt = icmp eq i64 %index.next, %n.vec
  br i1 %i.xt, label %middle.block, label %vector.body, !llvm.loop !553

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge93.us.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index192 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next194, %vec.epilog.vector.body ] ; 3 uses
  %i.xu = getelementptr i8, ptr %i.xj, i64 %index192
  %wide.load193 = load <4 x i8>, ptr %i.xu, align 1, !tbaa !35
  %i.xv = getelementptr i8, ptr %i.xk, i64 %index192
  store <4 x i8> %wide.load193, ptr %i.xv, align 1, !tbaa !35
  %index.next194 = add nuw i64 %index192, 4       ; 2 uses
  %i.xw = icmp eq i64 %index.next194, %n.vec191
  br i1 %i.xw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !554

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n195, label %._crit_edge93.us.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv119.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec191, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod416.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv119.i.i.i.prol = phi i64 [ %indvars.iv.next120.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv119.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.xx = getelementptr i8, ptr %i.xj, i64 %indvars.iv119.i.i.i.prol
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !35
  %i.xz = getelementptr i8, ptr %i.xk, i64 %indvars.iv119.i.i.i.prol
  store i8 %i.xy, ptr %i.xz, align 1, !tbaa !35
  %indvars.iv.next120.i.i.i.prol = add nuw nsw i64 %indvars.iv119.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter415
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !555

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv119.i.i.i.unr = phi i64 [ %indvars.iv119.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next120.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ya = sub nsw i64 %indvars.iv119.i.i.i.ph, %i.xb
  %i.yb = icmp ugt i64 %i.ya, -4
  br i1 %i.yb, label %._crit_edge93.us.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv119.i.i.i = phi i64 [ %indvars.iv.next120.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv119.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.yc = getelementptr i8, ptr %i.xj, i64 %indvars.iv119.i.i.i
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !35
  %i.ye = getelementptr i8, ptr %i.xk, i64 %indvars.iv119.i.i.i
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !35
  %indvars.iv.next120.i.i.i = add nuw nsw i64 %indvars.iv119.i.i.i, 1 ; 2 uses
  %i.yf = getelementptr i8, ptr %i.xj, i64 %indvars.iv.next120.i.i.i
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !35
  %i.yh = getelementptr i8, ptr %i.xk, i64 %indvars.iv.next120.i.i.i
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !35
  %indvars.iv.next120.i.i.i.1 = add nuw nsw i64 %indvars.iv119.i.i.i, 2 ; 2 uses
  %i.yi = getelementptr i8, ptr %i.xj, i64 %indvars.iv.next120.i.i.i.1
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !35
  %i.yk = getelementptr i8, ptr %i.xk, i64 %indvars.iv.next120.i.i.i.1
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !35
  %indvars.iv.next120.i.i.i.2 = add nuw nsw i64 %indvars.iv119.i.i.i, 3 ; 2 uses
  %i.yl = getelementptr i8, ptr %i.xj, i64 %indvars.iv.next120.i.i.i.2
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !35
  %i.yn = getelementptr i8, ptr %i.xk, i64 %indvars.iv.next120.i.i.i.2
  store i8 %i.ym, ptr %i.yn, align 1, !tbaa !35
  %indvars.iv.next120.i.i.i.3 = add nuw nsw i64 %indvars.iv119.i.i.i, 4 ; 2 uses
  %exitcond123.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.i.i.i.3, %i.xb
  br i1 %exitcond123.not.i.i.i.3, label %._crit_edge93.us.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !556

._crit_edge98.split.us.i.i.i:                     ; preds = %._crit_edge96.us.i.i.i, %.preheader.lr.ph.us.i.i.i, %.preheader80.split.us.preheader.i.i.i
  %i.yo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !29 ; 2 uses
  %.not105.1.i.i.i = icmp eq i32 %i.yp, 0
  br i1 %.not105.1.i.i.i, label %._crit_edge98.split.us.1.i.i.i, label %.preheader.lr.ph.us.1.i.i.i

.preheader.lr.ph.us.1.i.i.i:                      ; preds = %._crit_edge98.split.us.i.i.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !29 ; 3 uses
  %.not106.1.i.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not106.1.i.i.i, label %._crit_edge98.split.us.1.i.i.i, label %.preheader.lr.ph.split.us.1.i.i.i

.preheader.lr.ph.split.us.1.i.i.i:                ; preds = %.preheader.lr.ph.us.1.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !25 ; 2 uses
  %i.yu = getelementptr i8, ptr %i.ti, i64 %i.yt
  %wide.trip.count132.1.i.i.i = zext i32 %i.yp to i64
  %wide.trip.count127.1.i.i.i = zext i32 %i.yr to i64
  %i.yv = and i32 %.0.i.i.i.i371.i, -8
  %i.yw = zext i32 %i.yv to i64
  %i.yx = shl nuw nsw i64 %i.xb, 2
  %i.yy = add i64 %i.yx, %i.th
  %i.yz = mul nuw nsw i64 %i.xb, %i.xc
  %i.za = shl nuw i64 %i.yz, 3
  %min.iters.check198 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %7 = add i64 %i.yt, %i.tj
  %min.iters.check202 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.zb = and i64 %i.xb, 28
  %n.vec204 = and i64 %i.xb, 536870880            ; 4 uses
  %cmp.n211 = icmp eq i64 %n.vec204, %i.xb
  %min.epilog.iters.check215 = icmp eq i64 %i.zb, 0
  %n.vec218 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n224 = icmp eq i64 %n.vec218, %i.xb
  %xtraiter417 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br label %.preheader.us.1.i.i.i

.preheader.us.1.i.i.i:                            ; preds = %._crit_edge96.us.1.i.i.i, %.preheader.lr.ph.split.us.1.i.i.i
  %indvars.iv129.1.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.1.i.i.i ], [ %indvars.iv.next130.1.i.i.i, %._crit_edge96.us.1.i.i.i ] ; 4 uses
  %i.zc = mul i64 %i.za, %indvars.iv129.1.i.i.i
  %i.zd = add i64 %i.yy, %i.zc
  %i.ze = trunc nuw i64 %indvars.iv129.1.i.i.i to i32
  %i.zf = mul i32 %i.yr, %i.ze
  %i.zg = mul nuw i64 %indvars.iv129.1.i.i.i, %i.xc
  br label %iter.check212

iter.check212:                                    ; preds = %._crit_edge93.us.1.i.i.i, %.preheader.us.1.i.i.i
  %indvars.iv124.1.i.i.i = phi i64 [ %indvars.iv.next125.1.i.i.i, %._crit_edge93.us.1.i.i.i ], [ 0, %.preheader.us.1.i.i.i ] ; 4 uses
  %i.zh = trunc nuw i64 %indvars.iv124.1.i.i.i to i32
  %i.zi = add i32 %i.zf, %i.zh
  %i.zj = zext i32 %i.zi to i64
  %i.zk = mul nuw nsw i64 %i.zj, %i.xb            ; 2 uses
  %reass.add97.i.i = add nuw i64 %indvars.iv124.1.i.i.i, %i.zg
  %reass.mul98.i.i = shl i64 %reass.add97.i.i, 3
  %i.zl = or disjoint i64 %reass.mul98.i.i, 4
  %i.zm = mul i64 %i.zl, %i.xb
  %i.zn = getelementptr i8, ptr %i.yu, i64 %i.zk  ; 7 uses
  %i.zo = getelementptr i8, ptr %i.tg, i64 %i.zm  ; 7 uses
  br i1 %min.iters.check198, label %vec.epilog.scalar.ph214.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %iter.check212
  %i.zp = mul nuw i64 %indvars.iv124.1.i.i.i, %i.yw
  %i.zq = add i64 %i.zd, %i.zp
  %i.zr = add i64 %7, %i.zk
  %i.zs = sub i64 %i.zr, %i.zq
  %diff.check200 = icmp ugt i64 %i.zs, -32
  br i1 %diff.check200, label %vec.epilog.scalar.ph214.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %vector.memcheck199
  br i1 %min.iters.check202, label %vec.epilog.ph216, label %vector.body205

vector.body205:                                   ; preds = %vector.main.loop.iter.check201, %vector.body205
  %index206 = phi i64 [ %index.next209, %vector.body205 ], [ 0, %vector.main.loop.iter.check201 ] ; 3 uses
  %i.zt = getelementptr i8, ptr %i.zn, i64 %index206 ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zt, i64 16
  %wide.load207 = load <16 x i8>, ptr %i.zt, align 1, !tbaa !35
  %wide.load208 = load <16 x i8>, ptr %i.zu, align 1, !tbaa !35
  %i.zv = getelementptr i8, ptr %i.zo, i64 %index206 ; 2 uses
  %i.zw = getelementptr i8, ptr %i.zv, i64 16
  store <16 x i8> %wide.load207, ptr %i.zv, align 1, !tbaa !35
  store <16 x i8> %wide.load208, ptr %i.zw, align 1, !tbaa !35
  %index.next209 = add nuw i64 %index206, 32      ; 2 uses
  %i.zx = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.zx, label %middle.block210, label %vector.body205, !llvm.loop !557

middle.block210:                                  ; preds = %vector.body205
  br i1 %cmp.n211, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.iter.check213

vec.epilog.iter.check213:                         ; preds = %middle.block210
  br i1 %min.epilog.iters.check215, label %vec.epilog.scalar.ph214.preheader, label %vec.epilog.ph216, !prof !90

vec.epilog.ph216:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check213
  %vec.epilog.resume.val217 = phi i64 [ %n.vec204, %vec.epilog.iter.check213 ], [ 0, %vector.main.loop.iter.check201 ]
  br label %vec.epilog.vector.body219

vec.epilog.vector.body219:                        ; preds = %vec.epilog.vector.body219, %vec.epilog.ph216
  %index220 = phi i64 [ %vec.epilog.resume.val217, %vec.epilog.ph216 ], [ %index.next222, %vec.epilog.vector.body219 ] ; 3 uses
  %i.zy = getelementptr i8, ptr %i.zn, i64 %index220
  %wide.load221 = load <4 x i8>, ptr %i.zy, align 1, !tbaa !35
  %i.zz = getelementptr i8, ptr %i.zo, i64 %index220
  store <4 x i8> %wide.load221, ptr %i.zz, align 1, !tbaa !35
  %index.next222 = add nuw i64 %index220, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next222, %n.vec218
  br i1 %i.aaa, label %vec.epilog.middle.block223, label %vec.epilog.vector.body219, !llvm.loop !558

vec.epilog.middle.block223:                       ; preds = %vec.epilog.vector.body219
  br i1 %cmp.n224, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.scalar.ph214.preheader

vec.epilog.scalar.ph214.preheader:                ; preds = %iter.check212, %vector.memcheck199, %vec.epilog.iter.check213, %vec.epilog.middle.block223
  %indvars.iv119.1.i.i.i.ph = phi i64 [ 0, %iter.check212 ], [ 0, %vector.memcheck199 ], [ %n.vec204, %vec.epilog.iter.check213 ], [ %n.vec218, %vec.epilog.middle.block223 ] ; 3 uses
  br i1 %lcmp.mod418.not, label %vec.epilog.scalar.ph214.prol.loopexit, label %vec.epilog.scalar.ph214.prol

vec.epilog.scalar.ph214.prol:                     ; preds = %vec.epilog.scalar.ph214.preheader, %vec.epilog.scalar.ph214.prol
  %indvars.iv119.1.i.i.i.prol = phi i64 [ %indvars.iv.next120.1.i.i.i.prol, %vec.epilog.scalar.ph214.prol ], [ %indvars.iv119.1.i.i.i.ph, %vec.epilog.scalar.ph214.preheader ] ; 3 uses
  %prol.iter419 = phi i64 [ %prol.iter419.next, %vec.epilog.scalar.ph214.prol ], [ 0, %vec.epilog.scalar.ph214.preheader ]
  %i.aab = getelementptr i8, ptr %i.zn, i64 %indvars.iv119.1.i.i.i.prol
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !35
  %i.aad = getelementptr i8, ptr %i.zo, i64 %indvars.iv119.1.i.i.i.prol
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !35
  %indvars.iv.next120.1.i.i.i.prol = add nuw nsw i64 %indvars.iv119.1.i.i.i.prol, 1 ; 2 uses
  %prol.iter419.next = add i64 %prol.iter419, 1   ; 2 uses
  %prol.iter419.cmp.not = icmp eq i64 %prol.iter419.next, %xtraiter417
  br i1 %prol.iter419.cmp.not, label %vec.epilog.scalar.ph214.prol.loopexit, label %vec.epilog.scalar.ph214.prol, !llvm.loop !559

vec.epilog.scalar.ph214.prol.loopexit:            ; preds = %vec.epilog.scalar.ph214.prol, %vec.epilog.scalar.ph214.preheader
  %indvars.iv119.1.i.i.i.unr = phi i64 [ %indvars.iv119.1.i.i.i.ph, %vec.epilog.scalar.ph214.preheader ], [ %indvars.iv.next120.1.i.i.i.prol, %vec.epilog.scalar.ph214.prol ]
  %i.aae = sub nsw i64 %indvars.iv119.1.i.i.i.ph, %i.xb
  %i.aaf = icmp ugt i64 %i.aae, -4
  br i1 %i.aaf, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.scalar.ph214

vec.epilog.scalar.ph214:                          ; preds = %vec.epilog.scalar.ph214.prol.loopexit, %vec.epilog.scalar.ph214
  %indvars.iv119.1.i.i.i = phi i64 [ %indvars.iv.next120.1.i.i.i.3, %vec.epilog.scalar.ph214 ], [ %indvars.iv119.1.i.i.i.unr, %vec.epilog.scalar.ph214.prol.loopexit ] ; 6 uses
  %i.aag = getelementptr i8, ptr %i.zn, i64 %indvars.iv119.1.i.i.i
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !35
  %i.aai = getelementptr i8, ptr %i.zo, i64 %indvars.iv119.1.i.i.i
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !35
  %indvars.iv.next120.1.i.i.i = add nuw nsw i64 %indvars.iv119.1.i.i.i, 1 ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.zn, i64 %indvars.iv.next120.1.i.i.i
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !35
  %i.aal = getelementptr i8, ptr %i.zo, i64 %indvars.iv.next120.1.i.i.i
  store i8 %i.aak, ptr %i.aal, align 1, !tbaa !35
  %indvars.iv.next120.1.i.i.i.1 = add nuw nsw i64 %indvars.iv119.1.i.i.i, 2 ; 2 uses
  %i.aam = getelementptr i8, ptr %i.zn, i64 %indvars.iv.next120.1.i.i.i.1
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !35
  %i.aao = getelementptr i8, ptr %i.zo, i64 %indvars.iv.next120.1.i.i.i.1
  store i8 %i.aan, ptr %i.aao, align 1, !tbaa !35
  %indvars.iv.next120.1.i.i.i.2 = add nuw nsw i64 %indvars.iv119.1.i.i.i, 3 ; 2 uses
  %i.aap = getelementptr i8, ptr %i.zn, i64 %indvars.iv.next120.1.i.i.i.2
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !35
  %i.aar = getelementptr i8, ptr %i.zo, i64 %indvars.iv.next120.1.i.i.i.2
  store i8 %i.aaq, ptr %i.aar, align 1, !tbaa !35
  %indvars.iv.next120.1.i.i.i.3 = add nuw nsw i64 %indvars.iv119.1.i.i.i, 4 ; 2 uses
  %exitcond123.1.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.1.i.i.i.3, %i.xb
  br i1 %exitcond123.1.not.i.i.i.3, label %._crit_edge93.us.1.i.i.i, label %vec.epilog.scalar.ph214, !llvm.loop !560

._crit_edge93.us.1.i.i.i:                         ; preds = %vec.epilog.scalar.ph214.prol.loopexit, %vec.epilog.scalar.ph214, %vec.epilog.middle.block223, %middle.block210
  %indvars.iv.next125.1.i.i.i = add nuw nsw i64 %indvars.iv124.1.i.i.i, 1 ; 2 uses
  %exitcond128.1.not.i.i.i = icmp eq i64 %indvars.iv.next125.1.i.i.i, %wide.trip.count127.1.i.i.i
  br i1 %exitcond128.1.not.i.i.i, label %._crit_edge96.us.1.i.i.i, label %iter.check212, !llvm.loop !561

._crit_edge96.us.1.i.i.i:                         ; preds = %._crit_edge93.us.1.i.i.i
  %indvars.iv.next130.1.i.i.i = add nuw nsw i64 %indvars.iv129.1.i.i.i, 1 ; 2 uses
  %exitcond133.1.not.i.i.i = icmp eq i64 %indvars.iv.next130.1.i.i.i, %wide.trip.count132.1.i.i.i
  br i1 %exitcond133.1.not.i.i.i, label %._crit_edge98.split.us.1.i.i.i, label %.preheader.us.1.i.i.i, !llvm.loop !562

._crit_edge98.split.us.1.i.i.i:                   ; preds = %._crit_edge96.us.1.i.i.i, %.preheader.lr.ph.us.1.i.i.i, %._crit_edge98.split.us.i.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !29 ; 2 uses
  %.not105.2.i.i.i = icmp eq i32 %i.aat, 0
  br i1 %.not105.2.i.i.i, label %._crit_edge98.split.us.2.i.i.i, label %.preheader.lr.ph.us.2.i.i.i

.preheader.lr.ph.us.2.i.i.i:                      ; preds = %._crit_edge98.split.us.1.i.i.i
  %i.aau = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !29 ; 3 uses
  %.not106.2.i.i.i = icmp eq i32 %i.aav, 0
  br i1 %.not106.2.i.i.i, label %._crit_edge98.split.us.2.i.i.i, label %.preheader.lr.ph.split.us.2.i.i.i

.preheader.lr.ph.split.us.2.i.i.i:                ; preds = %.preheader.lr.ph.us.2.i.i.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aax = load i64, ptr %i.aaw, align 16, !tbaa !25 ; 2 uses
  %i.aay = getelementptr i8, ptr %i.ti, i64 %i.aax
  %wide.trip.count132.2.i.i.i = zext i32 %i.aat to i64
  %wide.trip.count127.2.i.i.i = zext i32 %i.aav to i64
  %i.aaz = shl nuw nsw i64 %i.xb, 2
  %i.aba = mul nuw nsw i64 %i.xb, %i.xc
  %i.abb = shl nuw nsw i64 %i.aba, 2
  %i.abc = add i64 %i.abb, %i.th
  %i.abd = mul nuw nsw i64 %i.xb, %i.xc
  %i.abe = shl nuw i64 %i.abd, 3
  %min.iters.check228 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %8 = add i64 %i.aax, %i.tj
  %min.iters.check232 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.abf = and i64 %i.xb, 28
  %n.vec234 = and i64 %i.xb, 536870880            ; 4 uses
  %cmp.n241 = icmp eq i64 %n.vec234, %i.xb
  %min.epilog.iters.check245 = icmp eq i64 %i.abf, 0
  %n.vec248 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n254 = icmp eq i64 %n.vec248, %i.xb
  %xtraiter420 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br label %.preheader.us.2.i.i.i

.preheader.us.2.i.i.i:                            ; preds = %._crit_edge96.us.2.i.i.i, %.preheader.lr.ph.split.us.2.i.i.i
  %indvars.iv129.2.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.2.i.i.i ], [ %indvars.iv.next130.2.i.i.i, %._crit_edge96.us.2.i.i.i ] ; 4 uses
  %i.abg = mul i64 %i.abe, %indvars.iv129.2.i.i.i
  %i.abh = add i64 %i.abc, %i.abg
  %i.abi = trunc nuw i64 %indvars.iv129.2.i.i.i to i32
  %i.abj = mul i32 %i.aav, %i.abi
  %i.abk = shl nuw nsw i64 %indvars.iv129.2.i.i.i, 3
  %i.abl = or disjoint i64 %i.abk, 4
  %i.abm = mul i64 %i.abl, %i.xc
  br label %iter.check242

iter.check242:                                    ; preds = %._crit_edge93.us.2.i.i.i, %.preheader.us.2.i.i.i
  %indvars.iv124.2.i.i.i = phi i64 [ %indvars.iv.next125.2.i.i.i, %._crit_edge93.us.2.i.i.i ], [ 0, %.preheader.us.2.i.i.i ] ; 4 uses
  %i.abn = trunc nuw i64 %indvars.iv124.2.i.i.i to i32
  %i.abo = add i32 %i.abj, %i.abn
  %i.abp = zext i32 %i.abo to i64
  %i.abq = mul nuw nsw i64 %i.abp, %i.xb          ; 2 uses
  %i.abr = shl nuw nsw i64 %indvars.iv124.2.i.i.i, 2
  %i.abs = add i64 %i.abr, %i.abm
  %i.abt = mul i64 %i.abs, %i.xb
  %i.abu = getelementptr i8, ptr %i.aay, i64 %i.abq ; 7 uses
  %i.abv = getelementptr i8, ptr %i.tg, i64 %i.abt ; 7 uses
  br i1 %min.iters.check228, label %vec.epilog.scalar.ph244.preheader, label %vector.memcheck229

vector.memcheck229:                               ; preds = %iter.check242
  %i.abw = mul nuw nsw i64 %indvars.iv124.2.i.i.i, %i.aaz
  %i.abx = add i64 %i.abh, %i.abw
  %i.aby = add i64 %8, %i.abq
  %i.abz = sub i64 %i.aby, %i.abx
  %diff.check230 = icmp ugt i64 %i.abz, -32
  br i1 %diff.check230, label %vec.epilog.scalar.ph244.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %vector.memcheck229
  br i1 %min.iters.check232, label %vec.epilog.ph246, label %vector.body235

vector.body235:                                   ; preds = %vector.main.loop.iter.check231, %vector.body235
  %index236 = phi i64 [ %index.next239, %vector.body235 ], [ 0, %vector.main.loop.iter.check231 ] ; 3 uses
  %i.aca = getelementptr i8, ptr %i.abu, i64 %index236 ; 2 uses
  %i.acb = getelementptr i8, ptr %i.aca, i64 16
  %wide.load237 = load <16 x i8>, ptr %i.aca, align 1, !tbaa !35
  %wide.load238 = load <16 x i8>, ptr %i.acb, align 1, !tbaa !35
  %i.acc = getelementptr i8, ptr %i.abv, i64 %index236 ; 2 uses
  %i.acd = getelementptr i8, ptr %i.acc, i64 16
  store <16 x i8> %wide.load237, ptr %i.acc, align 1, !tbaa !35
  store <16 x i8> %wide.load238, ptr %i.acd, align 1, !tbaa !35
  %index.next239 = add nuw i64 %index236, 32      ; 2 uses
  %i.ace = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.ace, label %middle.block240, label %vector.body235, !llvm.loop !563

middle.block240:                                  ; preds = %vector.body235
  br i1 %cmp.n241, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.iter.check243

vec.epilog.iter.check243:                         ; preds = %middle.block240
  br i1 %min.epilog.iters.check245, label %vec.epilog.scalar.ph244.preheader, label %vec.epilog.ph246, !prof !90

vec.epilog.ph246:                                 ; preds = %vector.main.loop.iter.check231, %vec.epilog.iter.check243
  %vec.epilog.resume.val247 = phi i64 [ %n.vec234, %vec.epilog.iter.check243 ], [ 0, %vector.main.loop.iter.check231 ]
  br label %vec.epilog.vector.body249

vec.epilog.vector.body249:                        ; preds = %vec.epilog.vector.body249, %vec.epilog.ph246
  %index250 = phi i64 [ %vec.epilog.resume.val247, %vec.epilog.ph246 ], [ %index.next252, %vec.epilog.vector.body249 ] ; 3 uses
  %i.acf = getelementptr i8, ptr %i.abu, i64 %index250
  %wide.load251 = load <4 x i8>, ptr %i.acf, align 1, !tbaa !35
  %i.acg = getelementptr i8, ptr %i.abv, i64 %index250
  store <4 x i8> %wide.load251, ptr %i.acg, align 1, !tbaa !35
  %index.next252 = add nuw i64 %index250, 4       ; 2 uses
  %i.ach = icmp eq i64 %index.next252, %n.vec248
  br i1 %i.ach, label %vec.epilog.middle.block253, label %vec.epilog.vector.body249, !llvm.loop !564

vec.epilog.middle.block253:                       ; preds = %vec.epilog.vector.body249
  br i1 %cmp.n254, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.scalar.ph244.preheader

vec.epilog.scalar.ph244.preheader:                ; preds = %iter.check242, %vector.memcheck229, %vec.epilog.iter.check243, %vec.epilog.middle.block253
  %indvars.iv119.2.i.i.i.ph = phi i64 [ 0, %iter.check242 ], [ 0, %vector.memcheck229 ], [ %n.vec234, %vec.epilog.iter.check243 ], [ %n.vec248, %vec.epilog.middle.block253 ] ; 3 uses
  br i1 %lcmp.mod421.not, label %vec.epilog.scalar.ph244.prol.loopexit, label %vec.epilog.scalar.ph244.prol

vec.epilog.scalar.ph244.prol:                     ; preds = %vec.epilog.scalar.ph244.preheader, %vec.epilog.scalar.ph244.prol
  %indvars.iv119.2.i.i.i.prol = phi i64 [ %indvars.iv.next120.2.i.i.i.prol, %vec.epilog.scalar.ph244.prol ], [ %indvars.iv119.2.i.i.i.ph, %vec.epilog.scalar.ph244.preheader ] ; 3 uses
  %prol.iter422 = phi i64 [ %prol.iter422.next, %vec.epilog.scalar.ph244.prol ], [ 0, %vec.epilog.scalar.ph244.preheader ]
  %i.aci = getelementptr i8, ptr %i.abu, i64 %indvars.iv119.2.i.i.i.prol
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !35
  %i.ack = getelementptr i8, ptr %i.abv, i64 %indvars.iv119.2.i.i.i.prol
  store i8 %i.acj, ptr %i.ack, align 1, !tbaa !35
  %indvars.iv.next120.2.i.i.i.prol = add nuw nsw i64 %indvars.iv119.2.i.i.i.prol, 1 ; 2 uses
  %prol.iter422.next = add i64 %prol.iter422, 1   ; 2 uses
  %prol.iter422.cmp.not = icmp eq i64 %prol.iter422.next, %xtraiter420
  br i1 %prol.iter422.cmp.not, label %vec.epilog.scalar.ph244.prol.loopexit, label %vec.epilog.scalar.ph244.prol, !llvm.loop !565

vec.epilog.scalar.ph244.prol.loopexit:            ; preds = %vec.epilog.scalar.ph244.prol, %vec.epilog.scalar.ph244.preheader
  %indvars.iv119.2.i.i.i.unr = phi i64 [ %indvars.iv119.2.i.i.i.ph, %vec.epilog.scalar.ph244.preheader ], [ %indvars.iv.next120.2.i.i.i.prol, %vec.epilog.scalar.ph244.prol ]
  %i.acl = sub nsw i64 %indvars.iv119.2.i.i.i.ph, %i.xb
  %i.acm = icmp ugt i64 %i.acl, -4
  br i1 %i.acm, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.scalar.ph244

vec.epilog.scalar.ph244:                          ; preds = %vec.epilog.scalar.ph244.prol.loopexit, %vec.epilog.scalar.ph244
  %indvars.iv119.2.i.i.i = phi i64 [ %indvars.iv.next120.2.i.i.i.3, %vec.epilog.scalar.ph244 ], [ %indvars.iv119.2.i.i.i.unr, %vec.epilog.scalar.ph244.prol.loopexit ] ; 6 uses
  %i.acn = getelementptr i8, ptr %i.abu, i64 %indvars.iv119.2.i.i.i
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !35
  %i.acp = getelementptr i8, ptr %i.abv, i64 %indvars.iv119.2.i.i.i
  store i8 %i.aco, ptr %i.acp, align 1, !tbaa !35
  %indvars.iv.next120.2.i.i.i = add nuw nsw i64 %indvars.iv119.2.i.i.i, 1 ; 2 uses
  %i.acq = getelementptr i8, ptr %i.abu, i64 %indvars.iv.next120.2.i.i.i
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !35
  %i.acs = getelementptr i8, ptr %i.abv, i64 %indvars.iv.next120.2.i.i.i
  store i8 %i.acr, ptr %i.acs, align 1, !tbaa !35
  %indvars.iv.next120.2.i.i.i.1 = add nuw nsw i64 %indvars.iv119.2.i.i.i, 2 ; 2 uses
  %i.act = getelementptr i8, ptr %i.abu, i64 %indvars.iv.next120.2.i.i.i.1
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !35
  %i.acv = getelementptr i8, ptr %i.abv, i64 %indvars.iv.next120.2.i.i.i.1
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !35
  %indvars.iv.next120.2.i.i.i.2 = add nuw nsw i64 %indvars.iv119.2.i.i.i, 3 ; 2 uses
  %i.acw = getelementptr i8, ptr %i.abu, i64 %indvars.iv.next120.2.i.i.i.2
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !35
  %i.acy = getelementptr i8, ptr %i.abv, i64 %indvars.iv.next120.2.i.i.i.2
  store i8 %i.acx, ptr %i.acy, align 1, !tbaa !35
  %indvars.iv.next120.2.i.i.i.3 = add nuw nsw i64 %indvars.iv119.2.i.i.i, 4 ; 2 uses
  %exitcond123.2.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.2.i.i.i.3, %i.xb
  br i1 %exitcond123.2.not.i.i.i.3, label %._crit_edge93.us.2.i.i.i, label %vec.epilog.scalar.ph244, !llvm.loop !566

._crit_edge93.us.2.i.i.i:                         ; preds = %vec.epilog.scalar.ph244.prol.loopexit, %vec.epilog.scalar.ph244, %vec.epilog.middle.block253, %middle.block240
  %indvars.iv.next125.2.i.i.i = add nuw nsw i64 %indvars.iv124.2.i.i.i, 1 ; 2 uses
  %exitcond128.2.not.i.i.i = icmp eq i64 %indvars.iv.next125.2.i.i.i, %wide.trip.count127.2.i.i.i
  br i1 %exitcond128.2.not.i.i.i, label %._crit_edge96.us.2.i.i.i, label %iter.check242, !llvm.loop !561

._crit_edge96.us.2.i.i.i:                         ; preds = %._crit_edge93.us.2.i.i.i
  %indvars.iv.next130.2.i.i.i = add nuw nsw i64 %indvars.iv129.2.i.i.i, 1 ; 2 uses
  %exitcond133.2.not.i.i.i = icmp eq i64 %indvars.iv.next130.2.i.i.i, %wide.trip.count132.2.i.i.i
  br i1 %exitcond133.2.not.i.i.i, label %._crit_edge98.split.us.2.i.i.i, label %.preheader.us.2.i.i.i, !llvm.loop !562

._crit_edge98.split.us.2.i.i.i:                   ; preds = %._crit_edge96.us.2.i.i.i, %.preheader.lr.ph.us.2.i.i.i, %._crit_edge98.split.us.1.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !29 ; 2 uses
  %.not105.3.i.i.i = icmp eq i32 %i.ada, 0
  br i1 %.not105.3.i.i.i, label %._crit_edge98.split.us.3.i.i.i, label %.preheader.lr.ph.us.3.i.i.i

.preheader.lr.ph.us.3.i.i.i:                      ; preds = %._crit_edge98.split.us.2.i.i.i
  %i.adb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !29 ; 3 uses
  %.not106.3.i.i.i = icmp eq i32 %i.adc, 0
  br i1 %.not106.3.i.i.i, label %._crit_edge98.split.us.3.i.i.i, label %.preheader.lr.ph.split.us.3.i.i.i

.preheader.lr.ph.split.us.3.i.i.i:                ; preds = %.preheader.lr.ph.us.3.i.i.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !25 ; 2 uses
  %i.adf = getelementptr i8, ptr %i.ti, i64 %i.ade
  %wide.trip.count132.3.i.i.i = zext i32 %i.ada to i64
  %wide.trip.count127.3.i.i.i = zext i32 %i.adc to i64
  %i.adg = shl nuw nsw i64 %i.xb, 2
  %i.adh = shl nuw nsw i64 %i.xb, 1
  %i.adi = add i64 %i.adh, %i.th
  %i.adj = mul nuw nsw i64 %i.xb, %i.xc
  %i.adk = shl nuw nsw i64 %i.adj, 2
  %min.iters.check258 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %9 = add i64 %i.ade, %i.tj
  %min.iters.check262 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.adl = and i64 %i.xb, 28
  %n.vec264 = and i64 %i.xb, 536870880            ; 4 uses
  %cmp.n271 = icmp eq i64 %n.vec264, %i.xb
  %min.epilog.iters.check275 = icmp eq i64 %i.adl, 0
  %n.vec278 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n284 = icmp eq i64 %n.vec278, %i.xb
  %xtraiter423 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br label %.preheader.us.3.i.i.i

.preheader.us.3.i.i.i:                            ; preds = %._crit_edge96.us.3.i.i.i, %.preheader.lr.ph.split.us.3.i.i.i
  %indvars.iv129.3.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.3.i.i.i ], [ %indvars.iv.next130.3.i.i.i, %._crit_edge96.us.3.i.i.i ] ; 4 uses
  %i.adm = mul i64 %i.adk, %indvars.iv129.3.i.i.i
  %i.adn = add i64 %i.adi, %i.adm
  %i.ado = trunc nuw i64 %indvars.iv129.3.i.i.i to i32
  %i.adp = mul i32 %i.adc, %i.ado
  %i.adq = mul nuw i64 %indvars.iv129.3.i.i.i, %i.xc
  br label %iter.check272

iter.check272:                                    ; preds = %._crit_edge93.us.3.i.i.i, %.preheader.us.3.i.i.i
  %indvars.iv124.3.i.i.i = phi i64 [ %indvars.iv.next125.3.i.i.i, %._crit_edge93.us.3.i.i.i ], [ 0, %.preheader.us.3.i.i.i ] ; 4 uses
  %i.adr = trunc nuw i64 %indvars.iv124.3.i.i.i to i32
  %i.ads = add i32 %i.adp, %i.adr
  %i.adt = zext i32 %i.ads to i64
  %i.adu = mul nuw nsw i64 %i.adt, %i.xb          ; 2 uses
  %reass.add99.i.i = add nuw i64 %indvars.iv124.3.i.i.i, %i.adq
  %reass.mul100.i.i = shl i64 %reass.add99.i.i, 2
  %i.adv = or disjoint i64 %reass.mul100.i.i, 2
  %i.adw = mul i64 %i.adv, %i.xb
  %i.adx = getelementptr i8, ptr %i.adf, i64 %i.adu ; 7 uses
  %i.ady = getelementptr i8, ptr %i.tg, i64 %i.adw ; 7 uses
  br i1 %min.iters.check258, label %vec.epilog.scalar.ph274.preheader, label %vector.memcheck259

vector.memcheck259:                               ; preds = %iter.check272
  %i.adz = mul nuw nsw i64 %indvars.iv124.3.i.i.i, %i.adg
  %i.aea = add i64 %i.adn, %i.adz
  %i.aeb = add i64 %9, %i.adu
  %i.aec = sub i64 %i.aeb, %i.aea
  %diff.check260 = icmp ugt i64 %i.aec, -32
  br i1 %diff.check260, label %vec.epilog.scalar.ph274.preheader, label %vector.main.loop.iter.check261

vector.main.loop.iter.check261:                   ; preds = %vector.memcheck259
  br i1 %min.iters.check262, label %vec.epilog.ph276, label %vector.body265

vector.body265:                                   ; preds = %vector.main.loop.iter.check261, %vector.body265
  %index266 = phi i64 [ %index.next269, %vector.body265 ], [ 0, %vector.main.loop.iter.check261 ] ; 3 uses
  %i.aed = getelementptr i8, ptr %i.adx, i64 %index266 ; 2 uses
  %i.aee = getelementptr i8, ptr %i.aed, i64 16
  %wide.load267 = load <16 x i8>, ptr %i.aed, align 1, !tbaa !35
  %wide.load268 = load <16 x i8>, ptr %i.aee, align 1, !tbaa !35
  %i.aef = getelementptr i8, ptr %i.ady, i64 %index266 ; 2 uses
  %i.aeg = getelementptr i8, ptr %i.aef, i64 16
  store <16 x i8> %wide.load267, ptr %i.aef, align 1, !tbaa !35
  store <16 x i8> %wide.load268, ptr %i.aeg, align 1, !tbaa !35
  %index.next269 = add nuw i64 %index266, 32      ; 2 uses
  %i.aeh = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.aeh, label %middle.block270, label %vector.body265, !llvm.loop !567

middle.block270:                                  ; preds = %vector.body265
  br i1 %cmp.n271, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.iter.check273

vec.epilog.iter.check273:                         ; preds = %middle.block270
  br i1 %min.epilog.iters.check275, label %vec.epilog.scalar.ph274.preheader, label %vec.epilog.ph276, !prof !90

vec.epilog.ph276:                                 ; preds = %vector.main.loop.iter.check261, %vec.epilog.iter.check273
  %vec.epilog.resume.val277 = phi i64 [ %n.vec264, %vec.epilog.iter.check273 ], [ 0, %vector.main.loop.iter.check261 ]
  br label %vec.epilog.vector.body279

vec.epilog.vector.body279:                        ; preds = %vec.epilog.vector.body279, %vec.epilog.ph276
  %index280 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph276 ], [ %index.next282, %vec.epilog.vector.body279 ] ; 3 uses
  %i.aei = getelementptr i8, ptr %i.adx, i64 %index280
  %wide.load281 = load <4 x i8>, ptr %i.aei, align 1, !tbaa !35
  %i.aej = getelementptr i8, ptr %i.ady, i64 %index280
  store <4 x i8> %wide.load281, ptr %i.aej, align 1, !tbaa !35
  %index.next282 = add nuw i64 %index280, 4       ; 2 uses
  %i.aek = icmp eq i64 %index.next282, %n.vec278
  br i1 %i.aek, label %vec.epilog.middle.block283, label %vec.epilog.vector.body279, !llvm.loop !568

vec.epilog.middle.block283:                       ; preds = %vec.epilog.vector.body279
  br i1 %cmp.n284, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.scalar.ph274.preheader

vec.epilog.scalar.ph274.preheader:                ; preds = %iter.check272, %vector.memcheck259, %vec.epilog.iter.check273, %vec.epilog.middle.block283
  %indvars.iv119.3.i.i.i.ph = phi i64 [ 0, %iter.check272 ], [ 0, %vector.memcheck259 ], [ %n.vec264, %vec.epilog.iter.check273 ], [ %n.vec278, %vec.epilog.middle.block283 ] ; 3 uses
  br i1 %lcmp.mod424.not, label %vec.epilog.scalar.ph274.prol.loopexit, label %vec.epilog.scalar.ph274.prol

vec.epilog.scalar.ph274.prol:                     ; preds = %vec.epilog.scalar.ph274.preheader, %vec.epilog.scalar.ph274.prol
  %indvars.iv119.3.i.i.i.prol = phi i64 [ %indvars.iv.next120.3.i.i.i.prol, %vec.epilog.scalar.ph274.prol ], [ %indvars.iv119.3.i.i.i.ph, %vec.epilog.scalar.ph274.preheader ] ; 3 uses
  %prol.iter425 = phi i64 [ %prol.iter425.next, %vec.epilog.scalar.ph274.prol ], [ 0, %vec.epilog.scalar.ph274.preheader ]
  %i.ael = getelementptr i8, ptr %i.adx, i64 %indvars.iv119.3.i.i.i.prol
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !35
  %i.aen = getelementptr i8, ptr %i.ady, i64 %indvars.iv119.3.i.i.i.prol
  store i8 %i.aem, ptr %i.aen, align 1, !tbaa !35
  %indvars.iv.next120.3.i.i.i.prol = add nuw nsw i64 %indvars.iv119.3.i.i.i.prol, 1 ; 2 uses
  %prol.iter425.next = add i64 %prol.iter425, 1   ; 2 uses
  %prol.iter425.cmp.not = icmp eq i64 %prol.iter425.next, %xtraiter423
  br i1 %prol.iter425.cmp.not, label %vec.epilog.scalar.ph274.prol.loopexit, label %vec.epilog.scalar.ph274.prol, !llvm.loop !569

vec.epilog.scalar.ph274.prol.loopexit:            ; preds = %vec.epilog.scalar.ph274.prol, %vec.epilog.scalar.ph274.preheader
  %indvars.iv119.3.i.i.i.unr = phi i64 [ %indvars.iv119.3.i.i.i.ph, %vec.epilog.scalar.ph274.preheader ], [ %indvars.iv.next120.3.i.i.i.prol, %vec.epilog.scalar.ph274.prol ]
  %i.aeo = sub nsw i64 %indvars.iv119.3.i.i.i.ph, %i.xb
  %i.aep = icmp ugt i64 %i.aeo, -4
  br i1 %i.aep, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.scalar.ph274

vec.epilog.scalar.ph274:                          ; preds = %vec.epilog.scalar.ph274.prol.loopexit, %vec.epilog.scalar.ph274
  %indvars.iv119.3.i.i.i = phi i64 [ %indvars.iv.next120.3.i.i.i.3, %vec.epilog.scalar.ph274 ], [ %indvars.iv119.3.i.i.i.unr, %vec.epilog.scalar.ph274.prol.loopexit ] ; 6 uses
  %i.aeq = getelementptr i8, ptr %i.adx, i64 %indvars.iv119.3.i.i.i
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !35
  %i.aes = getelementptr i8, ptr %i.ady, i64 %indvars.iv119.3.i.i.i
  store i8 %i.aer, ptr %i.aes, align 1, !tbaa !35
  %indvars.iv.next120.3.i.i.i = add nuw nsw i64 %indvars.iv119.3.i.i.i, 1 ; 2 uses
  %i.aet = getelementptr i8, ptr %i.adx, i64 %indvars.iv.next120.3.i.i.i
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !35
  %i.aev = getelementptr i8, ptr %i.ady, i64 %indvars.iv.next120.3.i.i.i
  store i8 %i.aeu, ptr %i.aev, align 1, !tbaa !35
  %indvars.iv.next120.3.i.i.i.1 = add nuw nsw i64 %indvars.iv119.3.i.i.i, 2 ; 2 uses
  %i.aew = getelementptr i8, ptr %i.adx, i64 %indvars.iv.next120.3.i.i.i.1
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !35
  %i.aey = getelementptr i8, ptr %i.ady, i64 %indvars.iv.next120.3.i.i.i.1
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !35
  %indvars.iv.next120.3.i.i.i.2 = add nuw nsw i64 %indvars.iv119.3.i.i.i, 3 ; 2 uses
  %i.aez = getelementptr i8, ptr %i.adx, i64 %indvars.iv.next120.3.i.i.i.2
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !35
  %i.afb = getelementptr i8, ptr %i.ady, i64 %indvars.iv.next120.3.i.i.i.2
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !35
  %indvars.iv.next120.3.i.i.i.3 = add nuw nsw i64 %indvars.iv119.3.i.i.i, 4 ; 2 uses
  %exitcond123.3.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.3.i.i.i.3, %i.xb
  br i1 %exitcond123.3.not.i.i.i.3, label %._crit_edge93.us.3.i.i.i, label %vec.epilog.scalar.ph274, !llvm.loop !570

._crit_edge93.us.3.i.i.i:                         ; preds = %vec.epilog.scalar.ph274.prol.loopexit, %vec.epilog.scalar.ph274, %vec.epilog.middle.block283, %middle.block270
  %indvars.iv.next125.3.i.i.i = add nuw nsw i64 %indvars.iv124.3.i.i.i, 1 ; 2 uses
  %exitcond128.3.not.i.i.i = icmp eq i64 %indvars.iv.next125.3.i.i.i, %wide.trip.count127.3.i.i.i
  br i1 %exitcond128.3.not.i.i.i, label %._crit_edge96.us.3.i.i.i, label %iter.check272, !llvm.loop !561

._crit_edge96.us.3.i.i.i:                         ; preds = %._crit_edge93.us.3.i.i.i
  %indvars.iv.next130.3.i.i.i = add nuw nsw i64 %indvars.iv129.3.i.i.i, 1 ; 2 uses
  %exitcond133.3.not.i.i.i = icmp eq i64 %indvars.iv.next130.3.i.i.i, %wide.trip.count132.3.i.i.i
  br i1 %exitcond133.3.not.i.i.i, label %._crit_edge98.split.us.3.i.i.i, label %.preheader.us.3.i.i.i, !llvm.loop !562

._crit_edge98.split.us.3.i.i.i:                   ; preds = %._crit_edge96.us.3.i.i.i, %.preheader.lr.ph.us.3.i.i.i, %._crit_edge98.split.us.2.i.i.i
  %i.afc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.afd = load i32, ptr %i.afc, align 16, !tbaa !29 ; 2 uses
  %.not105.4.i.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not105.4.i.i.i, label %._crit_edge98.split.us.4.i.i.i, label %.preheader.lr.ph.us.4.i.i.i

.preheader.lr.ph.us.4.i.i.i:                      ; preds = %._crit_edge98.split.us.3.i.i.i
  %i.afe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aff = load i32, ptr %i.afe, align 16, !tbaa !29 ; 3 uses
  %.not106.4.i.i.i = icmp eq i32 %i.aff, 0
  br i1 %.not106.4.i.i.i, label %._crit_edge98.split.us.4.i.i.i, label %.preheader.lr.ph.split.us.4.i.i.i

.preheader.lr.ph.split.us.4.i.i.i:                ; preds = %.preheader.lr.ph.us.4.i.i.i
  %i.afg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.afh = load i64, ptr %i.afg, align 16, !tbaa !25 ; 2 uses
  %i.afi = getelementptr i8, ptr %i.ti, i64 %i.afh
  %wide.trip.count132.4.i.i.i = zext i32 %i.afd to i64
  %wide.trip.count127.4.i.i.i = zext i32 %i.aff to i64
  %i.afj = shl nuw nsw i64 %i.xb, 1
  %i.afk = mul nuw nsw i64 %i.xb, %i.xc
  %i.afl = shl nuw nsw i64 %i.afk, 1
  %i.afm = add i64 %i.afl, %i.th
  %i.afn = mul nuw nsw i64 %i.xb, %i.xc
  %i.afo = shl nuw nsw i64 %i.afn, 2
  %min.iters.check288 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %10 = add i64 %i.afh, %i.tj
  %min.iters.check292 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.afp = and i64 %i.xb, 28
  %n.vec294 = and i64 %i.xb, 536870880            ; 4 uses
  %cmp.n301 = icmp eq i64 %n.vec294, %i.xb
  %min.epilog.iters.check305 = icmp eq i64 %i.afp, 0
  %n.vec308 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n314 = icmp eq i64 %n.vec308, %i.xb
  %xtraiter426 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br label %.preheader.us.4.i.i.i

.preheader.us.4.i.i.i:                            ; preds = %._crit_edge96.us.4.i.i.i, %.preheader.lr.ph.split.us.4.i.i.i
  %indvars.iv129.4.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.4.i.i.i ], [ %indvars.iv.next130.4.i.i.i, %._crit_edge96.us.4.i.i.i ] ; 4 uses
  %i.afq = mul i64 %i.afo, %indvars.iv129.4.i.i.i
  %i.afr = add i64 %i.afm, %i.afq
  %i.afs = trunc nuw i64 %indvars.iv129.4.i.i.i to i32
  %i.aft = mul i32 %i.aff, %i.afs
  %i.afu = shl nuw nsw i64 %indvars.iv129.4.i.i.i, 2
  %i.afv = or disjoint i64 %i.afu, 2
  %i.afw = mul i64 %i.afv, %i.xc
  br label %iter.check302

iter.check302:                                    ; preds = %._crit_edge93.us.4.i.i.i, %.preheader.us.4.i.i.i
  %indvars.iv124.4.i.i.i = phi i64 [ %indvars.iv.next125.4.i.i.i, %._crit_edge93.us.4.i.i.i ], [ 0, %.preheader.us.4.i.i.i ] ; 4 uses
  %i.afx = trunc nuw i64 %indvars.iv124.4.i.i.i to i32
  %i.afy = add i32 %i.aft, %i.afx
  %i.afz = zext i32 %i.afy to i64
  %i.aga = mul nuw nsw i64 %i.afz, %i.xb          ; 2 uses
  %i.agb = shl nuw nsw i64 %indvars.iv124.4.i.i.i, 1
  %i.agc = add i64 %i.agb, %i.afw
  %i.agd = mul i64 %i.agc, %i.xb
  %i.age = getelementptr i8, ptr %i.afi, i64 %i.aga ; 7 uses
  %i.agf = getelementptr i8, ptr %i.tg, i64 %i.agd ; 7 uses
  br i1 %min.iters.check288, label %vec.epilog.scalar.ph304.preheader, label %vector.memcheck289

vector.memcheck289:                               ; preds = %iter.check302
  %i.agg = mul nuw nsw i64 %indvars.iv124.4.i.i.i, %i.afj
  %i.agh = add i64 %i.afr, %i.agg
  %i.agi = add i64 %10, %i.aga
  %i.agj = sub i64 %i.agi, %i.agh
  %diff.check290 = icmp ugt i64 %i.agj, -32
  br i1 %diff.check290, label %vec.epilog.scalar.ph304.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %vector.memcheck289
  br i1 %min.iters.check292, label %vec.epilog.ph306, label %vector.body295

vector.body295:                                   ; preds = %vector.main.loop.iter.check291, %vector.body295
  %index296 = phi i64 [ %index.next299, %vector.body295 ], [ 0, %vector.main.loop.iter.check291 ] ; 3 uses
  %i.agk = getelementptr i8, ptr %i.age, i64 %index296 ; 2 uses
  %i.agl = getelementptr i8, ptr %i.agk, i64 16
  %wide.load297 = load <16 x i8>, ptr %i.agk, align 1, !tbaa !35
  %wide.load298 = load <16 x i8>, ptr %i.agl, align 1, !tbaa !35
  %i.agm = getelementptr i8, ptr %i.agf, i64 %index296 ; 2 uses
  %i.agn = getelementptr i8, ptr %i.agm, i64 16
  store <16 x i8> %wide.load297, ptr %i.agm, align 1, !tbaa !35
  store <16 x i8> %wide.load298, ptr %i.agn, align 1, !tbaa !35
  %index.next299 = add nuw i64 %index296, 32      ; 2 uses
  %i.ago = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.ago, label %middle.block300, label %vector.body295, !llvm.loop !571

middle.block300:                                  ; preds = %vector.body295
  br i1 %cmp.n301, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.iter.check303

vec.epilog.iter.check303:                         ; preds = %middle.block300
  br i1 %min.epilog.iters.check305, label %vec.epilog.scalar.ph304.preheader, label %vec.epilog.ph306, !prof !90

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check291, %vec.epilog.iter.check303
  %vec.epilog.resume.val307 = phi i64 [ %n.vec294, %vec.epilog.iter.check303 ], [ 0, %vector.main.loop.iter.check291 ]
  br label %vec.epilog.vector.body309

vec.epilog.vector.body309:                        ; preds = %vec.epilog.vector.body309, %vec.epilog.ph306
  %index310 = phi i64 [ %vec.epilog.resume.val307, %vec.epilog.ph306 ], [ %index.next312, %vec.epilog.vector.body309 ] ; 3 uses
  %i.agp = getelementptr i8, ptr %i.age, i64 %index310
  %wide.load311 = load <4 x i8>, ptr %i.agp, align 1, !tbaa !35
  %i.agq = getelementptr i8, ptr %i.agf, i64 %index310
  store <4 x i8> %wide.load311, ptr %i.agq, align 1, !tbaa !35
  %index.next312 = add nuw i64 %index310, 4       ; 2 uses
  %i.agr = icmp eq i64 %index.next312, %n.vec308
  br i1 %i.agr, label %vec.epilog.middle.block313, label %vec.epilog.vector.body309, !llvm.loop !572

vec.epilog.middle.block313:                       ; preds = %vec.epilog.vector.body309
  br i1 %cmp.n314, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.scalar.ph304.preheader

vec.epilog.scalar.ph304.preheader:                ; preds = %iter.check302, %vector.memcheck289, %vec.epilog.iter.check303, %vec.epilog.middle.block313
  %indvars.iv119.4.i.i.i.ph = phi i64 [ 0, %iter.check302 ], [ 0, %vector.memcheck289 ], [ %n.vec294, %vec.epilog.iter.check303 ], [ %n.vec308, %vec.epilog.middle.block313 ] ; 3 uses
  br i1 %lcmp.mod427.not, label %vec.epilog.scalar.ph304.prol.loopexit, label %vec.epilog.scalar.ph304.prol

vec.epilog.scalar.ph304.prol:                     ; preds = %vec.epilog.scalar.ph304.preheader, %vec.epilog.scalar.ph304.prol
  %indvars.iv119.4.i.i.i.prol = phi i64 [ %indvars.iv.next120.4.i.i.i.prol, %vec.epilog.scalar.ph304.prol ], [ %indvars.iv119.4.i.i.i.ph, %vec.epilog.scalar.ph304.preheader ] ; 3 uses
  %prol.iter428 = phi i64 [ %prol.iter428.next, %vec.epilog.scalar.ph304.prol ], [ 0, %vec.epilog.scalar.ph304.preheader ]
  %i.ags = getelementptr i8, ptr %i.age, i64 %indvars.iv119.4.i.i.i.prol
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !35
  %i.agu = getelementptr i8, ptr %i.agf, i64 %indvars.iv119.4.i.i.i.prol
  store i8 %i.agt, ptr %i.agu, align 1, !tbaa !35
  %indvars.iv.next120.4.i.i.i.prol = add nuw nsw i64 %indvars.iv119.4.i.i.i.prol, 1 ; 2 uses
  %prol.iter428.next = add i64 %prol.iter428, 1   ; 2 uses
  %prol.iter428.cmp.not = icmp eq i64 %prol.iter428.next, %xtraiter426
  br i1 %prol.iter428.cmp.not, label %vec.epilog.scalar.ph304.prol.loopexit, label %vec.epilog.scalar.ph304.prol, !llvm.loop !573

vec.epilog.scalar.ph304.prol.loopexit:            ; preds = %vec.epilog.scalar.ph304.prol, %vec.epilog.scalar.ph304.preheader
  %indvars.iv119.4.i.i.i.unr = phi i64 [ %indvars.iv119.4.i.i.i.ph, %vec.epilog.scalar.ph304.preheader ], [ %indvars.iv.next120.4.i.i.i.prol, %vec.epilog.scalar.ph304.prol ]
  %i.agv = sub nsw i64 %indvars.iv119.4.i.i.i.ph, %i.xb
  %i.agw = icmp ugt i64 %i.agv, -4
  br i1 %i.agw, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.scalar.ph304

vec.epilog.scalar.ph304:                          ; preds = %vec.epilog.scalar.ph304.prol.loopexit, %vec.epilog.scalar.ph304
  %indvars.iv119.4.i.i.i = phi i64 [ %indvars.iv.next120.4.i.i.i.3, %vec.epilog.scalar.ph304 ], [ %indvars.iv119.4.i.i.i.unr, %vec.epilog.scalar.ph304.prol.loopexit ] ; 6 uses
  %i.agx = getelementptr i8, ptr %i.age, i64 %indvars.iv119.4.i.i.i
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !35
  %i.agz = getelementptr i8, ptr %i.agf, i64 %indvars.iv119.4.i.i.i
  store i8 %i.agy, ptr %i.agz, align 1, !tbaa !35
  %indvars.iv.next120.4.i.i.i = add nuw nsw i64 %indvars.iv119.4.i.i.i, 1 ; 2 uses
  %i.aha = getelementptr i8, ptr %i.age, i64 %indvars.iv.next120.4.i.i.i
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !35
  %i.ahc = getelementptr i8, ptr %i.agf, i64 %indvars.iv.next120.4.i.i.i
  store i8 %i.ahb, ptr %i.ahc, align 1, !tbaa !35
  %indvars.iv.next120.4.i.i.i.1 = add nuw nsw i64 %indvars.iv119.4.i.i.i, 2 ; 2 uses
  %i.ahd = getelementptr i8, ptr %i.age, i64 %indvars.iv.next120.4.i.i.i.1
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !35
  %i.ahf = getelementptr i8, ptr %i.agf, i64 %indvars.iv.next120.4.i.i.i.1
  store i8 %i.ahe, ptr %i.ahf, align 1, !tbaa !35
  %indvars.iv.next120.4.i.i.i.2 = add nuw nsw i64 %indvars.iv119.4.i.i.i, 3 ; 2 uses
  %i.ahg = getelementptr i8, ptr %i.age, i64 %indvars.iv.next120.4.i.i.i.2
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !35
  %i.ahi = getelementptr i8, ptr %i.agf, i64 %indvars.iv.next120.4.i.i.i.2
  store i8 %i.ahh, ptr %i.ahi, align 1, !tbaa !35
  %indvars.iv.next120.4.i.i.i.3 = add nuw nsw i64 %indvars.iv119.4.i.i.i, 4 ; 2 uses
  %exitcond123.4.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.4.i.i.i.3, %i.xb
  br i1 %exitcond123.4.not.i.i.i.3, label %._crit_edge93.us.4.i.i.i, label %vec.epilog.scalar.ph304, !llvm.loop !574

._crit_edge93.us.4.i.i.i:                         ; preds = %vec.epilog.scalar.ph304.prol.loopexit, %vec.epilog.scalar.ph304, %vec.epilog.middle.block313, %middle.block300
  %indvars.iv.next125.4.i.i.i = add nuw nsw i64 %indvars.iv124.4.i.i.i, 1 ; 2 uses
  %exitcond128.4.not.i.i.i = icmp eq i64 %indvars.iv.next125.4.i.i.i, %wide.trip.count127.4.i.i.i
  br i1 %exitcond128.4.not.i.i.i, label %._crit_edge96.us.4.i.i.i, label %iter.check302, !llvm.loop !561

._crit_edge96.us.4.i.i.i:                         ; preds = %._crit_edge93.us.4.i.i.i
  %indvars.iv.next130.4.i.i.i = add nuw nsw i64 %indvars.iv129.4.i.i.i, 1 ; 2 uses
  %exitcond133.4.not.i.i.i = icmp eq i64 %indvars.iv.next130.4.i.i.i, %wide.trip.count132.4.i.i.i
  br i1 %exitcond133.4.not.i.i.i, label %._crit_edge98.split.us.4.i.i.i, label %.preheader.us.4.i.i.i, !llvm.loop !562

._crit_edge98.split.us.4.i.i.i:                   ; preds = %._crit_edge96.us.4.i.i.i, %.preheader.lr.ph.us.4.i.i.i, %._crit_edge98.split.us.3.i.i.i
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !29 ; 2 uses
  %.not105.5.i.i.i = icmp eq i32 %i.ahk, 0
  br i1 %.not105.5.i.i.i, label %._crit_edge98.split.us.5.i.i.i, label %.preheader.lr.ph.us.5.i.i.i

.preheader.lr.ph.us.5.i.i.i:                      ; preds = %._crit_edge98.split.us.4.i.i.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !29 ; 3 uses
  %.not106.5.i.i.i = icmp eq i32 %i.ahm, 0
  br i1 %.not106.5.i.i.i, label %._crit_edge98.split.us.5.i.i.i, label %.preheader.lr.ph.split.us.5.i.i.i

.preheader.lr.ph.split.us.5.i.i.i:                ; preds = %.preheader.lr.ph.us.5.i.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !25 ; 2 uses
  %i.ahp = getelementptr i8, ptr %i.ti, i64 %i.aho
  %wide.trip.count132.5.i.i.i = zext i32 %i.ahk to i64
  %wide.trip.count127.5.i.i.i = zext i32 %i.ahm to i64
  %i.ahq = shl nuw nsw i64 %i.xb, 1
  %i.ahr = add i64 %i.th, %i.xb
  %i.ahs = mul nuw nsw i64 %i.xb, %i.xc
  %i.aht = shl nuw nsw i64 %i.ahs, 1
  %min.iters.check318 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %11 = add i64 %i.aho, %i.tj
  %min.iters.check322 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.ahu = and i64 %i.xb, 28
  %n.vec324 = and i64 %i.xb, 536870880            ; 4 uses
  %cmp.n331 = icmp eq i64 %n.vec324, %i.xb
  %min.epilog.iters.check335 = icmp eq i64 %i.ahu, 0
  %n.vec338 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n344 = icmp eq i64 %n.vec338, %i.xb
  %xtraiter429 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br label %.preheader.us.5.i.i.i

.preheader.us.5.i.i.i:                            ; preds = %._crit_edge96.us.5.i.i.i, %.preheader.lr.ph.split.us.5.i.i.i
  %indvars.iv129.5.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.5.i.i.i ], [ %indvars.iv.next130.5.i.i.i, %._crit_edge96.us.5.i.i.i ] ; 4 uses
  %i.ahv = mul i64 %i.aht, %indvars.iv129.5.i.i.i
  %i.ahw = add i64 %i.ahr, %i.ahv
  %i.ahx = trunc nuw i64 %indvars.iv129.5.i.i.i to i32
  %i.ahy = mul i32 %i.ahm, %i.ahx
  %i.ahz = mul nuw i64 %indvars.iv129.5.i.i.i, %i.xc
  br label %iter.check332

iter.check332:                                    ; preds = %._crit_edge93.us.5.i.i.i, %.preheader.us.5.i.i.i
  %indvars.iv124.5.i.i.i = phi i64 [ %indvars.iv.next125.5.i.i.i, %._crit_edge93.us.5.i.i.i ], [ 0, %.preheader.us.5.i.i.i ] ; 4 uses
  %i.aia = trunc nuw i64 %indvars.iv124.5.i.i.i to i32
  %i.aib = add i32 %i.ahy, %i.aia
  %i.aic = zext i32 %i.aib to i64
  %i.aid = mul nuw nsw i64 %i.aic, %i.xb          ; 2 uses
  %reass.add101.i.i = add nuw i64 %indvars.iv124.5.i.i.i, %i.ahz
  %reass.mul102.i.i = shl i64 %reass.add101.i.i, 1
  %i.aie = or disjoint i64 %reass.mul102.i.i, 1
  %i.aif = mul i64 %i.aie, %i.xb
  %i.aig = getelementptr i8, ptr %i.ahp, i64 %i.aid ; 7 uses
  %i.aih = getelementptr i8, ptr %i.tg, i64 %i.aif ; 7 uses
  br i1 %min.iters.check318, label %vec.epilog.scalar.ph334.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %iter.check332
  %i.aii = mul nuw nsw i64 %indvars.iv124.5.i.i.i, %i.ahq
  %i.aij = add i64 %i.ahw, %i.aii
  %i.aik = add i64 %11, %i.aid
  %i.ail = sub i64 %i.aik, %i.aij
  %diff.check320 = icmp ugt i64 %i.ail, -32
  br i1 %diff.check320, label %vec.epilog.scalar.ph334.preheader, label %vector.main.loop.iter.check321

vector.main.loop.iter.check321:                   ; preds = %vector.memcheck319
  br i1 %min.iters.check322, label %vec.epilog.ph336, label %vector.body325

vector.body325:                                   ; preds = %vector.main.loop.iter.check321, %vector.body325
  %index326 = phi i64 [ %index.next329, %vector.body325 ], [ 0, %vector.main.loop.iter.check321 ] ; 3 uses
  %i.aim = getelementptr i8, ptr %i.aig, i64 %index326 ; 2 uses
  %i.ain = getelementptr i8, ptr %i.aim, i64 16
  %wide.load327 = load <16 x i8>, ptr %i.aim, align 1, !tbaa !35
  %wide.load328 = load <16 x i8>, ptr %i.ain, align 1, !tbaa !35
  %i.aio = getelementptr i8, ptr %i.aih, i64 %index326 ; 2 uses
  %i.aip = getelementptr i8, ptr %i.aio, i64 16
  store <16 x i8> %wide.load327, ptr %i.aio, align 1, !tbaa !35
  store <16 x i8> %wide.load328, ptr %i.aip, align 1, !tbaa !35
  %index.next329 = add nuw i64 %index326, 32      ; 2 uses
  %i.aiq = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.aiq, label %middle.block330, label %vector.body325, !llvm.loop !575

middle.block330:                                  ; preds = %vector.body325
  br i1 %cmp.n331, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.iter.check333

vec.epilog.iter.check333:                         ; preds = %middle.block330
  br i1 %min.epilog.iters.check335, label %vec.epilog.scalar.ph334.preheader, label %vec.epilog.ph336, !prof !90

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check321, %vec.epilog.iter.check333
  %vec.epilog.resume.val337 = phi i64 [ %n.vec324, %vec.epilog.iter.check333 ], [ 0, %vector.main.loop.iter.check321 ]
  br label %vec.epilog.vector.body339

vec.epilog.vector.body339:                        ; preds = %vec.epilog.vector.body339, %vec.epilog.ph336
  %index340 = phi i64 [ %vec.epilog.resume.val337, %vec.epilog.ph336 ], [ %index.next342, %vec.epilog.vector.body339 ] ; 3 uses
  %i.air = getelementptr i8, ptr %i.aig, i64 %index340
  %wide.load341 = load <4 x i8>, ptr %i.air, align 1, !tbaa !35
  %i.ais = getelementptr i8, ptr %i.aih, i64 %index340
  store <4 x i8> %wide.load341, ptr %i.ais, align 1, !tbaa !35
  %index.next342 = add nuw i64 %index340, 4       ; 2 uses
  %i.ait = icmp eq i64 %index.next342, %n.vec338
  br i1 %i.ait, label %vec.epilog.middle.block343, label %vec.epilog.vector.body339, !llvm.loop !576

vec.epilog.middle.block343:                       ; preds = %vec.epilog.vector.body339
  br i1 %cmp.n344, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.scalar.ph334.preheader

vec.epilog.scalar.ph334.preheader:                ; preds = %iter.check332, %vector.memcheck319, %vec.epilog.iter.check333, %vec.epilog.middle.block343
  %indvars.iv119.5.i.i.i.ph = phi i64 [ 0, %iter.check332 ], [ 0, %vector.memcheck319 ], [ %n.vec324, %vec.epilog.iter.check333 ], [ %n.vec338, %vec.epilog.middle.block343 ] ; 3 uses
  br i1 %lcmp.mod430.not, label %vec.epilog.scalar.ph334.prol.loopexit, label %vec.epilog.scalar.ph334.prol

vec.epilog.scalar.ph334.prol:                     ; preds = %vec.epilog.scalar.ph334.preheader, %vec.epilog.scalar.ph334.prol
  %indvars.iv119.5.i.i.i.prol = phi i64 [ %indvars.iv.next120.5.i.i.i.prol, %vec.epilog.scalar.ph334.prol ], [ %indvars.iv119.5.i.i.i.ph, %vec.epilog.scalar.ph334.preheader ] ; 3 uses
  %prol.iter431 = phi i64 [ %prol.iter431.next, %vec.epilog.scalar.ph334.prol ], [ 0, %vec.epilog.scalar.ph334.preheader ]
  %i.aiu = getelementptr i8, ptr %i.aig, i64 %indvars.iv119.5.i.i.i.prol
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !35
  %i.aiw = getelementptr i8, ptr %i.aih, i64 %indvars.iv119.5.i.i.i.prol
  store i8 %i.aiv, ptr %i.aiw, align 1, !tbaa !35
  %indvars.iv.next120.5.i.i.i.prol = add nuw nsw i64 %indvars.iv119.5.i.i.i.prol, 1 ; 2 uses
  %prol.iter431.next = add i64 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i64 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %vec.epilog.scalar.ph334.prol.loopexit, label %vec.epilog.scalar.ph334.prol, !llvm.loop !577

vec.epilog.scalar.ph334.prol.loopexit:            ; preds = %vec.epilog.scalar.ph334.prol, %vec.epilog.scalar.ph334.preheader
  %indvars.iv119.5.i.i.i.unr = phi i64 [ %indvars.iv119.5.i.i.i.ph, %vec.epilog.scalar.ph334.preheader ], [ %indvars.iv.next120.5.i.i.i.prol, %vec.epilog.scalar.ph334.prol ]
  %i.aix = sub nsw i64 %indvars.iv119.5.i.i.i.ph, %i.xb
  %i.aiy = icmp ugt i64 %i.aix, -4
  br i1 %i.aiy, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.scalar.ph334

vec.epilog.scalar.ph334:                          ; preds = %vec.epilog.scalar.ph334.prol.loopexit, %vec.epilog.scalar.ph334
  %indvars.iv119.5.i.i.i = phi i64 [ %indvars.iv.next120.5.i.i.i.3, %vec.epilog.scalar.ph334 ], [ %indvars.iv119.5.i.i.i.unr, %vec.epilog.scalar.ph334.prol.loopexit ] ; 6 uses
  %i.aiz = getelementptr i8, ptr %i.aig, i64 %indvars.iv119.5.i.i.i
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !35
  %i.ajb = getelementptr i8, ptr %i.aih, i64 %indvars.iv119.5.i.i.i
  store i8 %i.aja, ptr %i.ajb, align 1, !tbaa !35
  %indvars.iv.next120.5.i.i.i = add nuw nsw i64 %indvars.iv119.5.i.i.i, 1 ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.aig, i64 %indvars.iv.next120.5.i.i.i
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !35
  %i.aje = getelementptr i8, ptr %i.aih, i64 %indvars.iv.next120.5.i.i.i
  store i8 %i.ajd, ptr %i.aje, align 1, !tbaa !35
  %indvars.iv.next120.5.i.i.i.1 = add nuw nsw i64 %indvars.iv119.5.i.i.i, 2 ; 2 uses
  %i.ajf = getelementptr i8, ptr %i.aig, i64 %indvars.iv.next120.5.i.i.i.1
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !35
  %i.ajh = getelementptr i8, ptr %i.aih, i64 %indvars.iv.next120.5.i.i.i.1
  store i8 %i.ajg, ptr %i.ajh, align 1, !tbaa !35
  %indvars.iv.next120.5.i.i.i.2 = add nuw nsw i64 %indvars.iv119.5.i.i.i, 3 ; 2 uses
  %i.aji = getelementptr i8, ptr %i.aig, i64 %indvars.iv.next120.5.i.i.i.2
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !35
  %i.ajk = getelementptr i8, ptr %i.aih, i64 %indvars.iv.next120.5.i.i.i.2
  store i8 %i.ajj, ptr %i.ajk, align 1, !tbaa !35
  %indvars.iv.next120.5.i.i.i.3 = add nuw nsw i64 %indvars.iv119.5.i.i.i, 4 ; 2 uses
  %exitcond123.5.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.5.i.i.i.3, %i.xb
  br i1 %exitcond123.5.not.i.i.i.3, label %._crit_edge93.us.5.i.i.i, label %vec.epilog.scalar.ph334, !llvm.loop !578

._crit_edge93.us.5.i.i.i:                         ; preds = %vec.epilog.scalar.ph334.prol.loopexit, %vec.epilog.scalar.ph334, %vec.epilog.middle.block343, %middle.block330
  %indvars.iv.next125.5.i.i.i = add nuw nsw i64 %indvars.iv124.5.i.i.i, 1 ; 2 uses
  %exitcond128.5.not.i.i.i = icmp eq i64 %indvars.iv.next125.5.i.i.i, %wide.trip.count127.5.i.i.i
  br i1 %exitcond128.5.not.i.i.i, label %._crit_edge96.us.5.i.i.i, label %iter.check332, !llvm.loop !561

._crit_edge96.us.5.i.i.i:                         ; preds = %._crit_edge93.us.5.i.i.i
  %indvars.iv.next130.5.i.i.i = add nuw nsw i64 %indvars.iv129.5.i.i.i, 1 ; 2 uses
  %exitcond133.5.not.i.i.i = icmp eq i64 %indvars.iv.next130.5.i.i.i, %wide.trip.count132.5.i.i.i
  br i1 %exitcond133.5.not.i.i.i, label %._crit_edge98.split.us.5.i.i.i, label %.preheader.us.5.i.i.i, !llvm.loop !562

._crit_edge98.split.us.5.i.i.i:                   ; preds = %._crit_edge96.us.5.i.i.i, %.preheader.lr.ph.us.5.i.i.i, %._crit_edge98.split.us.4.i.i.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !29 ; 2 uses
  %.not105.6.i.i.i = icmp eq i32 %i.ajm, 0
  br i1 %.not105.6.i.i.i, label %.loopexit.i.i, label %.preheader.lr.ph.us.6.i.i.i

.preheader.lr.ph.us.6.i.i.i:                      ; preds = %._crit_edge98.split.us.5.i.i.i
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ajo = load i32, ptr %i.ajn, align 8, !tbaa !29 ; 3 uses
  %.not106.6.i.i.i = icmp eq i32 %i.ajo, 0
  br i1 %.not106.6.i.i.i, label %.loopexit.i.i, label %.preheader.lr.ph.split.us.6.i.i.i

.preheader.lr.ph.split.us.6.i.i.i:                ; preds = %.preheader.lr.ph.us.6.i.i.i
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ajq = load i64, ptr %i.ajp, align 16, !tbaa !25 ; 2 uses
  %i.ajr = getelementptr i8, ptr %i.ti, i64 %i.ajq
  %wide.trip.count132.6.i.i.i = zext i32 %i.ajm to i64
  %wide.trip.count127.6.i.i.i = zext i32 %i.ajo to i64
  %i.ajs = mul nuw nsw i64 %i.xb, %i.xc
  %i.ajt = add i64 %i.ajs, %i.th
  %i.aju = mul nuw nsw i64 %i.xb, %i.xc
  %i.ajv = shl nuw nsw i64 %i.aju, 1
  %min.iters.check348 = icmp ult i32 %.0.i.i.i.i371.i, 32
  %12 = add i64 %i.ajq, %i.tj
  %min.iters.check352 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.ajw = and i64 %i.xb, 28
  %n.vec354 = and i64 %i.xb, 536870880            ; 4 uses
  %cmp.n361 = icmp eq i64 %n.vec354, %i.xb
  %min.epilog.iters.check365 = icmp eq i64 %i.ajw, 0
  %n.vec368 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n374 = icmp eq i64 %n.vec368, %i.xb
  %xtraiter432 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br label %.preheader.us.6.i.i.i

.preheader.us.6.i.i.i:                            ; preds = %._crit_edge96.us.6.i.i.i, %.preheader.lr.ph.split.us.6.i.i.i
  %indvars.iv129.6.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.6.i.i.i ], [ %indvars.iv.next130.6.i.i.i, %._crit_edge96.us.6.i.i.i ] ; 4 uses
  %i.ajx = mul i64 %i.ajv, %indvars.iv129.6.i.i.i
  %i.ajy = add i64 %i.ajt, %i.ajx
  %i.ajz = trunc nuw i64 %indvars.iv129.6.i.i.i to i32
  %i.aka = mul i32 %i.ajo, %i.ajz
  %i.akb = shl nuw nsw i64 %indvars.iv129.6.i.i.i, 1
  %i.akc = or disjoint i64 %i.akb, 1
  %i.akd = mul i64 %i.akc, %i.xc
  br label %iter.check362

iter.check362:                                    ; preds = %._crit_edge93.us.6.i.i.i, %.preheader.us.6.i.i.i
  %indvars.iv124.6.i.i.i = phi i64 [ %indvars.iv.next125.6.i.i.i, %._crit_edge93.us.6.i.i.i ], [ 0, %.preheader.us.6.i.i.i ] ; 4 uses
  %i.ake = trunc nuw i64 %indvars.iv124.6.i.i.i to i32
  %i.akf = add i32 %i.aka, %i.ake
  %i.akg = zext i32 %i.akf to i64
  %i.akh = mul nuw nsw i64 %i.akg, %i.xb          ; 2 uses
  %i.aki = add i64 %indvars.iv124.6.i.i.i, %i.akd
  %i.akj = mul i64 %i.aki, %i.xb
  %i.akk = getelementptr i8, ptr %i.ajr, i64 %i.akh ; 7 uses
  %i.akl = getelementptr i8, ptr %i.tg, i64 %i.akj ; 7 uses
  br i1 %min.iters.check348, label %vec.epilog.scalar.ph364.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %iter.check362
  %i.akm = mul nuw nsw i64 %indvars.iv124.6.i.i.i, %i.xb
  %i.akn = add i64 %i.ajy, %i.akm
  %i.ako = add i64 %12, %i.akh
  %i.akp = sub i64 %i.ako, %i.akn
  %diff.check350 = icmp ugt i64 %i.akp, -32
  br i1 %diff.check350, label %vec.epilog.scalar.ph364.preheader, label %vector.main.loop.iter.check351

vector.main.loop.iter.check351:                   ; preds = %vector.memcheck349
  br i1 %min.iters.check352, label %vec.epilog.ph366, label %vector.body355

vector.body355:                                   ; preds = %vector.main.loop.iter.check351, %vector.body355
  %index356 = phi i64 [ %index.next359, %vector.body355 ], [ 0, %vector.main.loop.iter.check351 ] ; 3 uses
  %i.akq = getelementptr i8, ptr %i.akk, i64 %index356 ; 2 uses
  %i.akr = getelementptr i8, ptr %i.akq, i64 16
  %wide.load357 = load <16 x i8>, ptr %i.akq, align 1, !tbaa !35
  %wide.load358 = load <16 x i8>, ptr %i.akr, align 1, !tbaa !35
  %i.aks = getelementptr i8, ptr %i.akl, i64 %index356 ; 2 uses
  %i.akt = getelementptr i8, ptr %i.aks, i64 16
  store <16 x i8> %wide.load357, ptr %i.aks, align 1, !tbaa !35
  store <16 x i8> %wide.load358, ptr %i.akt, align 1, !tbaa !35
  %index.next359 = add nuw i64 %index356, 32      ; 2 uses
  %i.aku = icmp eq i64 %index.next359, %n.vec354
  br i1 %i.aku, label %middle.block360, label %vector.body355, !llvm.loop !579

middle.block360:                                  ; preds = %vector.body355
  br i1 %cmp.n361, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.iter.check363

vec.epilog.iter.check363:                         ; preds = %middle.block360
  br i1 %min.epilog.iters.check365, label %vec.epilog.scalar.ph364.preheader, label %vec.epilog.ph366, !prof !90

vec.epilog.ph366:                                 ; preds = %vector.main.loop.iter.check351, %vec.epilog.iter.check363
  %vec.epilog.resume.val367 = phi i64 [ %n.vec354, %vec.epilog.iter.check363 ], [ 0, %vector.main.loop.iter.check351 ]
  br label %vec.epilog.vector.body369

vec.epilog.vector.body369:                        ; preds = %vec.epilog.vector.body369, %vec.epilog.ph366
  %index370 = phi i64 [ %vec.epilog.resume.val367, %vec.epilog.ph366 ], [ %index.next372, %vec.epilog.vector.body369 ] ; 3 uses
  %i.akv = getelementptr i8, ptr %i.akk, i64 %index370
  %wide.load371 = load <4 x i8>, ptr %i.akv, align 1, !tbaa !35
  %i.akw = getelementptr i8, ptr %i.akl, i64 %index370
  store <4 x i8> %wide.load371, ptr %i.akw, align 1, !tbaa !35
  %index.next372 = add nuw i64 %index370, 4       ; 2 uses
  %i.akx = icmp eq i64 %index.next372, %n.vec368
  br i1 %i.akx, label %vec.epilog.middle.block373, label %vec.epilog.vector.body369, !llvm.loop !580

vec.epilog.middle.block373:                       ; preds = %vec.epilog.vector.body369
  br i1 %cmp.n374, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.scalar.ph364.preheader

vec.epilog.scalar.ph364.preheader:                ; preds = %iter.check362, %vector.memcheck349, %vec.epilog.iter.check363, %vec.epilog.middle.block373
  %indvars.iv119.6.i.i.i.ph = phi i64 [ 0, %iter.check362 ], [ 0, %vector.memcheck349 ], [ %n.vec354, %vec.epilog.iter.check363 ], [ %n.vec368, %vec.epilog.middle.block373 ] ; 3 uses
  br i1 %lcmp.mod433.not, label %vec.epilog.scalar.ph364.prol.loopexit, label %vec.epilog.scalar.ph364.prol

vec.epilog.scalar.ph364.prol:                     ; preds = %vec.epilog.scalar.ph364.preheader, %vec.epilog.scalar.ph364.prol
  %indvars.iv119.6.i.i.i.prol = phi i64 [ %indvars.iv.next120.6.i.i.i.prol, %vec.epilog.scalar.ph364.prol ], [ %indvars.iv119.6.i.i.i.ph, %vec.epilog.scalar.ph364.preheader ] ; 3 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %vec.epilog.scalar.ph364.prol ], [ 0, %vec.epilog.scalar.ph364.preheader ]
  %i.aky = getelementptr i8, ptr %i.akk, i64 %indvars.iv119.6.i.i.i.prol
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !35
  %i.ala = getelementptr i8, ptr %i.akl, i64 %indvars.iv119.6.i.i.i.prol
  store i8 %i.akz, ptr %i.ala, align 1, !tbaa !35
  %indvars.iv.next120.6.i.i.i.prol = add nuw nsw i64 %indvars.iv119.6.i.i.i.prol, 1 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %vec.epilog.scalar.ph364.prol.loopexit, label %vec.epilog.scalar.ph364.prol, !llvm.loop !581

vec.epilog.scalar.ph364.prol.loopexit:            ; preds = %vec.epilog.scalar.ph364.prol, %vec.epilog.scalar.ph364.preheader
  %indvars.iv119.6.i.i.i.unr = phi i64 [ %indvars.iv119.6.i.i.i.ph, %vec.epilog.scalar.ph364.preheader ], [ %indvars.iv.next120.6.i.i.i.prol, %vec.epilog.scalar.ph364.prol ]
  %i.alb = sub nsw i64 %indvars.iv119.6.i.i.i.ph, %i.xb
  %i.alc = icmp ugt i64 %i.alb, -4
  br i1 %i.alc, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.scalar.ph364

vec.epilog.scalar.ph364:                          ; preds = %vec.epilog.scalar.ph364.prol.loopexit, %vec.epilog.scalar.ph364
  %indvars.iv119.6.i.i.i = phi i64 [ %indvars.iv.next120.6.i.i.i.3, %vec.epilog.scalar.ph364 ], [ %indvars.iv119.6.i.i.i.unr, %vec.epilog.scalar.ph364.prol.loopexit ] ; 6 uses
  %i.ald = getelementptr i8, ptr %i.akk, i64 %indvars.iv119.6.i.i.i
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !35
  %i.alf = getelementptr i8, ptr %i.akl, i64 %indvars.iv119.6.i.i.i
  store i8 %i.ale, ptr %i.alf, align 1, !tbaa !35
  %indvars.iv.next120.6.i.i.i = add nuw nsw i64 %indvars.iv119.6.i.i.i, 1 ; 2 uses
  %i.alg = getelementptr i8, ptr %i.akk, i64 %indvars.iv.next120.6.i.i.i
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !35
  %i.ali = getelementptr i8, ptr %i.akl, i64 %indvars.iv.next120.6.i.i.i
  store i8 %i.alh, ptr %i.ali, align 1, !tbaa !35
  %indvars.iv.next120.6.i.i.i.1 = add nuw nsw i64 %indvars.iv119.6.i.i.i, 2 ; 2 uses
  %i.alj = getelementptr i8, ptr %i.akk, i64 %indvars.iv.next120.6.i.i.i.1
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !35
  %i.all = getelementptr i8, ptr %i.akl, i64 %indvars.iv.next120.6.i.i.i.1
  store i8 %i.alk, ptr %i.all, align 1, !tbaa !35
  %indvars.iv.next120.6.i.i.i.2 = add nuw nsw i64 %indvars.iv119.6.i.i.i, 3 ; 2 uses
  %i.alm = getelementptr i8, ptr %i.akk, i64 %indvars.iv.next120.6.i.i.i.2
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !35
  %i.alo = getelementptr i8, ptr %i.akl, i64 %indvars.iv.next120.6.i.i.i.2
  store i8 %i.aln, ptr %i.alo, align 1, !tbaa !35
  %indvars.iv.next120.6.i.i.i.3 = add nuw nsw i64 %indvars.iv119.6.i.i.i, 4 ; 2 uses
  %exitcond123.6.not.i.i.i.3 = icmp eq i64 %indvars.iv.next120.6.i.i.i.3, %i.xb
  br i1 %exitcond123.6.not.i.i.i.3, label %._crit_edge93.us.6.i.i.i, label %vec.epilog.scalar.ph364, !llvm.loop !582

._crit_edge93.us.6.i.i.i:                         ; preds = %vec.epilog.scalar.ph364.prol.loopexit, %vec.epilog.scalar.ph364, %vec.epilog.middle.block373, %middle.block360
  %indvars.iv.next125.6.i.i.i = add nuw nsw i64 %indvars.iv124.6.i.i.i, 1 ; 2 uses
  %exitcond128.6.not.i.i.i = icmp eq i64 %indvars.iv.next125.6.i.i.i, %wide.trip.count127.6.i.i.i
  br i1 %exitcond128.6.not.i.i.i, label %._crit_edge96.us.6.i.i.i, label %iter.check362, !llvm.loop !561

._crit_edge96.us.6.i.i.i:                         ; preds = %._crit_edge93.us.6.i.i.i
  %indvars.iv.next130.6.i.i.i = add nuw nsw i64 %indvars.iv129.6.i.i.i, 1 ; 2 uses
  %exitcond133.6.not.i.i.i = icmp eq i64 %indvars.iv.next130.6.i.i.i, %wide.trip.count132.6.i.i.i
  br i1 %exitcond133.6.not.i.i.i, label %.loopexit.i.i, label %.preheader.us.6.i.i.i, !llvm.loop !562

.preheader.us.i.i.i:                              ; preds = %.preheader.lr.ph.split.us.i.i.i, %._crit_edge96.us.i.i.i
  %indvars.iv129.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.i.i.i ], [ %indvars.iv.next130.i.i.i, %._crit_edge96.us.i.i.i ] ; 4 uses
  %i.alp = mul i64 %i.aly, %indvars.iv129.i.i.i
  %i.alq = add i64 %i.alp, %i.th
  %i.alr = trunc nuw i64 %indvars.iv129.i.i.i to i32
  %i.als = mul i32 %i.alu, %i.alr
  %i.alt = mul nuw i64 %indvars.iv129.i.i.i, %i.xc
  br label %iter.check

._crit_edge93.us.i.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next125.i.i.i = add nuw nsw i64 %indvars.iv124.i.i.i, 1 ; 2 uses
  %exitcond128.not.i.i.i = icmp eq i64 %indvars.iv.next125.i.i.i, %wide.trip.count127.i.i.i
  br i1 %exitcond128.not.i.i.i, label %._crit_edge96.us.i.i.i, label %iter.check, !llvm.loop !561

._crit_edge96.us.i.i.i:                           ; preds = %._crit_edge93.us.i.i.i
  %indvars.iv.next130.i.i.i = add nuw nsw i64 %indvars.iv129.i.i.i, 1 ; 2 uses
  %exitcond133.not.i.i.i = icmp eq i64 %indvars.iv.next130.i.i.i, %wide.trip.count132.i.i.i
  br i1 %exitcond133.not.i.i.i, label %._crit_edge98.split.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !562

.preheader.lr.ph.us.i.i.i:                        ; preds = %.preheader80.split.us.preheader.i.i.i
  %i.alu = load i32, ptr %i.a, align 16, !tbaa !29 ; 3 uses
  %.not106.i.i.i = icmp eq i32 %i.alu, 0
  br i1 %.not106.i.i.i, label %._crit_edge98.split.us.i.i.i, label %.preheader.lr.ph.split.us.i.i.i

.preheader.lr.ph.split.us.i.i.i:                  ; preds = %.preheader.lr.ph.us.i.i.i
  %i.alv = load i64, ptr %i.e, align 16, !tbaa !25 ; 2 uses
  %i.alw = getelementptr i8, ptr %i.ti, i64 %i.alv
  %wide.trip.count132.i.i.i = zext i32 %i.xd to i64
  %wide.trip.count127.i.i.i = zext i32 %i.alu to i64
  %reass.mul.i.i = shl nuw nsw i64 %i.xb, 3       ; 2 uses
  %i.alx = mul nuw nsw i64 %i.xb, %i.xc
  %i.aly = shl nuw i64 %i.alx, 3
  %min.iters.check = icmp ult i32 %.0.i.i.i.i371.i, 32
  %13 = add i64 %i.alv, %i.tj
  %min.iters.check189 = icmp ult i32 %.0.i.i.i.i371.i, 256
  %i.alz = and i64 %i.xb, 28
  %n.vec = and i64 %i.xb, 536870880               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.xb
  %min.epilog.iters.check = icmp eq i64 %i.alz, 0
  %n.vec191 = and i64 %i.xb, 536870908            ; 3 uses
  %cmp.n195 = icmp eq i64 %n.vec191, %i.xb
  %xtraiter415 = and i64 %i.xb, 3                 ; 2 uses
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br label %.preheader.us.i.i.i

bb.dk:                                            ; preds = %._crit_edge89.split.i.i.i, %.preheader82.i.i.i
  %indvars.iv116.i.i.i = phi i64 [ 0, %.preheader82.i.i.i ], [ %indvars.iv.next117.i.i.i, %._crit_edge89.split.i.i.i ] ; 8 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116.i.i.i
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !29 ; 3 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116.i.i.i
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !29 ; 2 uses
  %.not101.i.i.i = icmp eq i32 %i.amd, 0
  %.not102.i.i.i = icmp eq i32 %i.amb, 0
  %or.cond.i91.i.i = select i1 %.not101.i.i.i, i1 true, i1 %.not102.i.i.i
  br i1 %or.cond.i91.i.i, label %._crit_edge89.split.i.i.i, label %.preheader81.lr.ph.split.i.i.i

.preheader81.lr.ph.split.i.i.i:                   ; preds = %bb.dk
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DX, i64 %indvars.iv116.i.i.i
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IX, i64 %indvars.iv116.i.i.i
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_DY, i64 %indvars.iv116.i.i.i
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr @_ZL8ADAM7_IY, i64 %indvars.iv116.i.i.i
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv116.i.i.i
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !25
  %i.amk = shl i64 %i.amj, 3
  %i.aml = load i32, ptr %i.amh, align 4, !tbaa !29
  %i.amm = zext i32 %i.aml to i64
  %i.amn = load i32, ptr %i.amg, align 4, !tbaa !29
  %i.amo = zext i32 %i.amn to i64
  %i.amp = load i32, ptr %i.amf, align 4, !tbaa !29
  %i.amq = zext i32 %i.amp to i64
  %i.amr = load i32, ptr %i.ame, align 4, !tbaa !29
  %i.ams = zext i32 %i.amr to i64
  %wide.trip.count114.i.i.i = zext i32 %i.amd to i64
  %wide.trip.count.i.i.i = zext i32 %i.amb to i64
  br label %.preheader81.i.i.i

.preheader81.i.i.i:                               ; preds = %._crit_edge.i95.i.i, %.preheader81.lr.ph.split.i.i.i
  %indvars.iv111.i.i.i = phi i64 [ 0, %.preheader81.lr.ph.split.i.i.i ], [ %indvars.iv.next112.i.i.i, %._crit_edge.i95.i.i ] ; 3 uses
  %i.amt = trunc nuw i64 %indvars.iv111.i.i.i to i32
  %i.amu = mul i32 %i.amb, %i.amt
  %i.amv = mul nuw i64 %indvars.iv111.i.i.i, %i.amo
  %i.amw = add nuw i64 %i.amv, %i.amm
  %i.amx = mul i64 %i.amw, %i.wy
  br label %bb.dl

bb.dl:                                            ; preds = %bb.eg, %.preheader81.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader81.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.eg ] ; 3 uses
  %i.amy = trunc nuw i64 %indvars.iv.i.i.i to i32
  %reass.add.i.i.i = add i32 %i.amu, %i.amy
  %reass.mul.i.i.i = mul i32 %reass.add.i.i.i, %.0.i.i.i.i371.i ; 2 uses
  %i.amz = zext i32 %reass.mul.i.i.i to i64
  %i.ana = add i64 %i.amk, %i.amz                 ; 7 uses
  %i.anb = mul nuw i64 %indvars.iv.i.i.i, %i.ams
  %i.anc = add nuw i64 %i.anb, %i.amq
  %i.and = mul i64 %i.anc, %i.wz
  %i.ane = add i64 %i.and, %i.amx                 ; 9 uses
  %i.anf = lshr i64 %i.ana, 3
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.anf
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !35
  %i.ani = trunc i32 %reass.mul.i.i.i to i8
  %i.anj = and i8 %i.ani, 7
  %i.ank = add i64 %i.ana, 1                      ; 2 uses
  %i.anl = lshr exact i8 -128, %i.anj
  %i.anm = and i8 %i.anl, %i.anh
  %i.ann = icmp eq i8 %i.anm, 0
  %i.ano = lshr i64 %i.ane, 3
  %i.anp = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.ano ; 2 uses
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !35 ; 2 uses
  br i1 %i.ann, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.anr = trunc i64 %i.ane to i16
  %i.ans = and i16 %i.anr, 7
  %i.ant = ashr i16 -129, %i.ans
  %i.anu = trunc i16 %i.ant to i8
  %i.anv = and i8 %i.anq, %i.anu
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.anw = trunc i64 %i.ane to i8
  %i.anx = and i8 %i.anw, 7
  %i.any = lshr exact i8 -128, %i.anx
  %i.anz = or i8 %i.any, %i.anq
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i:    ; preds = %bb.dn, %bb.dm
  %.sink.i.i93.i.i = phi i8 [ %i.anz, %bb.dn ], [ %i.anv, %bb.dm ]
  store i8 %.sink.i.i93.i.i, ptr %i.anp, align 1, !tbaa !35
  %i.aoa = add i64 %i.ane, 1                      ; 3 uses
  br i1 %exitcond.not.i94.i.i, label %bb.eg, label %bb.do

bb.do:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i
  %i.aob = lshr i64 %i.ank, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.aob
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !35
  %i.aoe = trunc i64 %i.ank to i8
  %i.aof = and i8 %i.aoe, 7
  %i.aog = add i64 %i.ana, 2                      ; 2 uses
  %i.aoh = lshr exact i8 -128, %i.aof
  %i.aoi = and i8 %i.aoh, %i.aod
  %i.aoj = icmp eq i8 %i.aoi, 0
  %i.aok = lshr i64 %i.aoa, 3
  %i.aol = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.aok ; 2 uses
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !35 ; 2 uses
  br i1 %i.aoj, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aon = trunc i64 %i.aoa to i8
  %i.aoo = and i8 %i.aon, 7
  %i.aop = lshr exact i8 -128, %i.aoo
  %i.aoq = or i8 %i.aop, %i.aom
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1

bb.dq:                                            ; preds = %bb.do
  %i.aor = trunc i64 %i.aoa to i16
  %i.aos = and i16 %i.aor, 7
  %i.aot = ashr i16 -129, %i.aos
  %i.aou = trunc i16 %i.aot to i8
  %i.aov = and i8 %i.aom, %i.aou
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1:  ; preds = %bb.dq, %bb.dp
  %.sink.i.i93.i.i.1 = phi i8 [ %i.aoq, %bb.dp ], [ %i.aov, %bb.dq ]
  store i8 %.sink.i.i93.i.i.1, ptr %i.aol, align 1, !tbaa !35
  %i.aow = add i64 %i.ane, 2                      ; 3 uses
  br i1 %exitcond.not.i94.i.i.1, label %bb.eg, label %bb.dr

bb.dr:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.1
  %i.aox = lshr i64 %i.aog, 3
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.aox
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !35
  %i.apa = trunc i64 %i.aog to i8
  %i.apb = and i8 %i.apa, 7
  %i.apc = add i64 %i.ana, 3                      ; 2 uses
  %i.apd = lshr exact i8 -128, %i.apb
  %i.ape = and i8 %i.apd, %i.aoz
  %i.apf = icmp eq i8 %i.ape, 0
  %i.apg = lshr i64 %i.aow, 3
  %i.aph = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.apg ; 2 uses
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !35 ; 2 uses
  br i1 %i.apf, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.apj = trunc i64 %i.aow to i8
  %i.apk = and i8 %i.apj, 7
  %i.apl = lshr exact i8 -128, %i.apk
  %i.apm = or i8 %i.apl, %i.api
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2

bb.dt:                                            ; preds = %bb.dr
  %i.apn = trunc i64 %i.aow to i16
  %i.apo = and i16 %i.apn, 7
  %i.app = ashr i16 -129, %i.apo
  %i.apq = trunc i16 %i.app to i8
  %i.apr = and i8 %i.api, %i.apq
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2:  ; preds = %bb.dt, %bb.ds
  %.sink.i.i93.i.i.2 = phi i8 [ %i.apm, %bb.ds ], [ %i.apr, %bb.dt ]
  store i8 %.sink.i.i93.i.i.2, ptr %i.aph, align 1, !tbaa !35
  %i.aps = add i64 %i.ane, 3                      ; 3 uses
  br i1 %exitcond.not.i94.i.i.2, label %bb.eg, label %bb.du

bb.du:                                            ; preds = %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.2
  %i.apt = lshr i64 %i.apc, 3
  %i.apu = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.apt
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !35
  %i.apw = trunc i64 %i.apc to i8
  %i.apx = and i8 %i.apw, 7
  %i.apy = add i64 %i.ana, 4                      ; 2 uses
  %i.apz = lshr exact i8 -128, %i.apx
  %i.aqa = and i8 %i.apz, %i.apv
  %i.aqb = icmp eq i8 %i.aqa, 0
  %i.aqc = lshr i64 %i.aps, 3
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.aqc ; 2 uses
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !35 ; 2 uses
  br i1 %i.aqb, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aqf = trunc i64 %i.aps to i8
  %i.aqg = and i8 %i.aqf, 7
  %i.aqh = lshr exact i8 -128, %i.aqg
  %i.aqi = or i8 %i.aqh, %i.aqe
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.3

bb.dw:                                            ; preds = %bb.du
  %i.aqj = trunc i64 %i.aps to i16
  %i.aqk = and i16 %i.aqj, 7
  %i.aql = ashr i16 -129, %i.aqk
  %i.aqm = trunc i16 %i.aql to i8
  %i.aqn = and i8 %i.aqe, %i.aqm
  br label %_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.3

_ZL22setBitOfReversedStreamPmPhh.exit.i92.i.i.3:  ; preds = %bb.dw, %bb.dv
end_hunk_0
