inline.NumInlined: 10110
inline.NumDeleted: 2827
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !3  ; 2 uses
  %i.wg = icmp sgt i64 %i.vp, 0                   ; 3 uses
  %i.wh = add nsw i32 %i.wf, -1
  %i.wi = select i1 %i.wg, i32 0, i32 %i.wh
  store i32 %i.wi, ptr %i.vx, align 4, !tbaa !3
  %i.wj = select i1 %i.wg, i32 %i.wf, i32 -1
  store i32 %i.wj, ptr %i.vy, align 4, !tbaa !3
  %i.wk = select i1 %i.wg, i32 1, i32 -1          ; 9 uses
  store i32 %i.wk, ptr %i.vz, align 4, !tbaa !3
  %i.wl = call noundef i64 @llvm.abs.i64(i64 %i.vp, i1 true) ; 6 uses
  %i.wm = load i32, ptr %i.vx, align 4, !tbaa !3  ; 9 uses
  %i.wn = load i32, ptr %i.vy, align 4, !tbaa !3  ; 13 uses
  %.not1641.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wm, %i.wn
  br i1 %.not1641.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ci
  %i.wo = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !2910, !nonnull !74, !align !275 ; 7 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wq, null
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 59 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 8 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wo, i64 16 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 58
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 64 ; 3 uses
  %i.ww = load i8, ptr %i.wu, align 2, !tbaa !338, !range !73, !noundef !74
  %i.wx = trunc nuw i8 %i.ww to i1                ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.wy = load ptr, ptr %i.wt, align 8, !tbaa !487
  %i.wz = sext i32 %i.wm to i64
  %i.xa = sext i32 %i.wk to i64
  %i.xb = sext i32 %i.tz to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i
  %indvars.iv108.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next109.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i ], [ %i.wz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i ], [ %i.wl, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xc = add nsw i64 %indvars.iv108.i.i.i.i.i.i.i.i.i, %i.xb ; 2 uses
  %i.xd = trunc nsw i64 %i.xc to i32
  br i1 %i.wx, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i
  %i.xe = load i8, ptr %i.wr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.xg = load ptr, ptr %i.ws, align 8, !tbaa !331
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xc
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.xj = load i32, ptr %i.wv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i = phi i32 [ %i.xi, %bb.ck ], [ %i.xj, %bb.cl ], [ %i.xd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i ]
  %i.xk = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.xl = lshr i64 %i.xk, 6
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.xl
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !137
  %i.xo = and i64 %i.xk, 63
  %i.xp = lshr i64 %i.xn, %i.xo
  %i.xq = xor i64 %i.xp, %i.uw
  %i.xr = and i64 %i.xq, 1
  %i.xs = icmp eq i64 %i.xr, 0
  br i1 %i.xs, label %bb.cm, label %.critedge.us.i.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.xt = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.xu = icmp eq i64 %i.xt, 0
  br i1 %i.xu, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i

.critedge.us.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.cm, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.xt, %bb.cm ]
  %indvars.iv.next109.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv108.i.i.i.i.i.i.i.i.i, %i.xa ; 2 uses
  %i.xv = trunc nsw i64 %indvars.iv.next109.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %i.xv
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2911

.lr.ph.split.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wo, i64 57
  %i.xx = load i8, ptr %i.xw, align 1, !range !73
  %i.xy = trunc nuw i8 %i.xx to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.wx, i1 true, i1 %i.xy
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %i.xz = sext i32 %i.wm to i64
  %i.ya = sext i32 %i.wk to i64
  %i.yb = sext i32 %i.tz to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv105.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xz, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next106.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wl, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.1.us51.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yc = add nsw i64 %indvars.iv105.i.i.i.i.i.i.i.i.i, %i.yb ; 4 uses
  %i.yd = lshr i64 %i.yc, 6
  %i.ye = and i64 %i.yd, 67108863
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.ye
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !137
  %i.yh = and i64 %i.yc, 63
  %i.yi = shl nuw i64 1, %i.yh
  %i.yj = and i64 %i.yi, %i.yg
  %.not.i.i.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.yj, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i, label %.critedge.us50.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i
  %i.yk = trunc nsw i64 %i.yc to i32
  %i.yl = load ptr, ptr %i.wt, align 8, !tbaa !487
  br i1 %i.wx, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i
  %i.ym = load i8, ptr %i.wr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.yo = load ptr, ptr %i.ws, align 8, !tbaa !331
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yo, i64 %i.yc
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.yr = load i32, ptr %i.wv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yq, %bb.co ], [ %i.yr, %bb.cp ], [ %i.yk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i ]
  %i.ys = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.yt = lshr i64 %i.ys, 6
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %i.yt
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !137
  %i.yw = and i64 %i.ys, 63
  %i.yx = lshr i64 %i.yv, %i.yw
  %i.yy = xor i64 %i.yx, %i.uw
  %i.yz = and i64 %i.yy, 1
  %i.za = icmp eq i64 %i.yz, 0
  br i1 %i.za, label %bb.cq, label %.critedge.us50.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.zb = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.zc = icmp eq i64 %i.zb, 0
  br i1 %i.zc, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us50.i.i.i.i.i.i.i.i.i

.critedge.us50.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cq, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i
  %.1.us51.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.zb, %bb.cq ], [ %.03542.us46.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next106.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv105.i.i.i.i.i.i.i.i.i, %i.ya ; 2 uses
  %i.zd = trunc nsw i64 %indvars.iv.next106.i.i.i.i.i.i.i.i.i to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %i.zd
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2911

.lr.ph.split.split.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %i.ze = load i8, ptr %i.wr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i
  %i.zg = load i64, ptr %i.wq, align 8, !tbaa !137
  %i.zh = and i64 %i.zg, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.zh, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i
  %i.zi = load ptr, ptr %i.wt, align 8, !tbaa !487
  %.0.i.i19.us61.i.i.i.i.i.i.i.i.i = load i32, ptr %i.wv, align 8, !tbaa !3
  %i.zj = sext i32 %.0.i.i19.us61.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.zk = lshr i64 %i.zj, 6
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %i.zk
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !137
  %i.zn = and i64 %i.zj, 63
  %i.zo = lshr i64 %i.zm, %i.zn
  %i.zp = xor i64 %i.zo, %i.uw
  %i.zq = and i64 %i.zp, 1
  %i.zr = icmp eq i64 %i.zq, 0
  br i1 %i.zr, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i
  %i.zs = zext i32 %i.wk to i64
  %i.zt = zext i32 %i.wm to i64
  %i.zu = add nsw i64 %i.wl, -1
  %i.zv = mul i64 %i.zu, %i.zs
  %i.zw = add i64 %i.zv, %i.zt                    ; 3 uses
  %i.zx = add nsw i64 %i.wl, -1                   ; 5 uses
  %i.zy = icmp eq i64 %i.zx, 0
  br i1 %i.zy, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph

.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph:        ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check5821 = icmp samesign ult i64 %i.wl, 33
  br i1 %min.iters.check5821, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader, label %vector.ph5822

vector.ph5822:                                    ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5824 = and i64 %i.zx, -32                 ; 3 uses
  %i.zz = and i64 %i.zx, 31
  %i.aaa = trunc i64 %n.vec5824 to i32
  %i.aab = mul i32 %i.wk, %i.aaa
  %i.aac = add i32 %i.wm, %i.aab
  %broadcast.splatinsert5825 = insertelement <32 x i32> poison, i32 %i.wk, i64 0
  %broadcast.splat5826 = shufflevector <32 x i32> %broadcast.splatinsert5825, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5827 = insertelement <32 x i32> poison, i32 %i.wn, i64 0
  %broadcast.splat5828 = shufflevector <32 x i32> %broadcast.splatinsert5827, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5829 = insertelement <32 x i32> poison, i32 %i.wm, i64 0
  %broadcast.splat5830 = shufflevector <32 x i32> %broadcast.splatinsert5829, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.aad = mul <32 x i32> %broadcast.splat5826, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5831 = add <32 x i32> %broadcast.splat5830, %i.aad
  %i.aae = shl nsw i32 %i.wk, 5
  %broadcast.splatinsert5832 = insertelement <32 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat5833 = shufflevector <32 x i32> %broadcast.splatinsert5832, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5834

vector.body5834:                                  ; preds = %vector.body.interim5839, %vector.ph5822
  %index5835 = phi i64 [ 0, %vector.ph5822 ], [ %index.next5837, %vector.body.interim5839 ]
  %vec.ind5836 = phi <32 x i32> [ %induction5831, %vector.ph5822 ], [ %vec.ind.next5838, %vector.body.interim5839 ] ; 2 uses
  %i.aaf = add <32 x i32> %vec.ind5836, %broadcast.splat5826
  %i.aag = icmp eq <32 x i32> %broadcast.splat5828, %i.aaf
  %i.aah = freeze <32 x i1> %i.aag
  %i.aai = bitcast <32 x i1> %i.aah to i32
  %.not5860 = icmp eq i32 %i.aai, 0
  br i1 %.not5860, label %vector.body.interim5839, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i

vector.body.interim5839:                          ; preds = %vector.body5834
  %vec.ind.next5838 = add <32 x i32> %vec.ind5836, %broadcast.splat5833
  %index.next5837 = add nuw i64 %index5835, 32    ; 2 uses
  %i.aaj = icmp eq i64 %index.next5837, %n.vec5824
  br i1 %i.aaj, label %middle.block5840, label %vector.body5834, !llvm.loop !2912

middle.block5840:                                 ; preds = %vector.body.interim5839
  %cmp.n5841 = icmp eq i64 %i.zx, %n.vec5824
  br i1 %cmp.n5841, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader

.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader:    ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph, %middle.block5840
  %.ph = phi i64 [ %i.zx, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.zz, %middle.block5840 ]
  %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434.ph = phi i32 [ %i.wm, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.aac, %middle.block5840 ]
  br label %.critedge.us62.i.us.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i: ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i
  %i.aak = add nsw i64 %i.aam, -1                 ; 2 uses
  %i.aal = icmp eq i64 %i.aak, 0
  br i1 %i.aal, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i, !llvm.loop !2913

.critedge.us62.i.us.i.i.i.i.i.i.i.i:              ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i
  %i.aam = phi i64 [ %i.aak, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i ], [ %.ph, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434 = phi i32 [ %indvars.iv.next100.i.us.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i ], [ %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434.ph, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next100.i.us.i.i.i.i.i.i.i.i = add i32 %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434, %i.wk ; 2 uses
  %.not16.us64.i.us.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %indvars.iv.next100.i.us.i.i.i.i.i.i.i.i
  br i1 %.not16.us64.i.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i, !llvm.loop !2911

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i
  %i.aan = load ptr, ptr %i.ws, align 8, !tbaa !331
  %i.aao = sext i32 %i.wm to i64
  %i.aap = sext i32 %i.wk to i64
  %i.aaq = sext i32 %i.tz to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.aan, i64 %i.aaq
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aao, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wl, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i
  %i.aar = load i32, ptr %gep.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 2 uses
  %i.aat = lshr i64 %i.aas, 6
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.aat
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !137
  %i.aaw = and i64 %i.aas, 63
  %i.aax = shl nuw i64 1, %i.aaw
  %i.aay = and i64 %i.aax, %i.aav
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aay, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr
  %i.aaz = load ptr, ptr %i.wt, align 8, !tbaa !487
  %i.aba = sext i32 %i.aar to i64                 ; 2 uses
  %i.abb = lshr i64 %i.aba, 6
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abb
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !137
  %i.abe = and i64 %i.aba, 63
  %i.abf = lshr i64 %i.abd, %i.abe
  %i.abg = xor i64 %i.abf, %i.uw
  %i.abh = and i64 %i.abg, 1
  %i.abi = icmp eq i64 %i.abh, 0
  br i1 %i.abi, label %bb.cs, label %.critedge.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.abj = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.abk = icmp eq i64 %i.abj, 0
  br i1 %i.abk, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cs, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i, %bb.cq, %bb.cm, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i, %middle.block5840
  %.us-phi.in.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv105.i.i.i.i.i.i.i.i.i, %bb.cq ], [ %i.zw, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i ], [ %i.zw, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i ], [ %i.zw, %middle.block5840 ], [ %indvars.iv108.i.i.i.i.i.i.i.i.i, %bb.cm ], [ %indvars.iv.i.i.i.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %.us-phi.i.i.i.i.i.i.i.i.i = trunc i64 %.us-phi.in.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.abl = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !2914, !nonnull !74, !align !275 ; 5 uses
  %i.abm = shl i64 %.us-phi.in.i.i.i.i.i.i.i.i.i, 32
  %sext124.i.i.i.i.i.i.i.i.i = add i64 %i.abm, 4294967296
  %i.abn = ashr exact i64 %sext124.i.i.i.i.i.i.i.i.i, 32
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 144 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !341 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, null
  br i1 %i.abq, label %bb.ct, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i
  %i.abr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.abl)
          to label %.noexc19.i.i.i.i.i.i.i.i unwind label %bb.cy ; 0 uses

.noexc19.i.i.i.i.i.i.i.i:                         ; preds = %bb.ct
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.abo, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i
  %i.abs = phi ptr [ %i.abp, %.split.us.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i.i ]
  %i.abt = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.wa
  store i64 %i.abn, ptr %i.abt, align 8, !tbaa !137
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abl, i64 32 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abv, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abl, i64 56
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.abl, i32 noundef %i.abx, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i unwind label %bb.cy

.noexc20.i.i.i.i.i.i.i.i:                         ; preds = %bb.cu
  %i.aby = load ptr, ptr %i.abu, align 8, !tbaa !362 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 44
  %i.aca = load i8, ptr %i.abz, align 4, !tbaa !363
  %i.acb = and i8 %i.aca, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.acb, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i.i.i.i.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !368
  %i.ace = lshr i64 %.072.i.i.i.i.i.i.i.i, 3
  %i.acf = and i64 %i.ace, 536870911
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acf ; 2 uses
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !30
  %i.aci = trunc i64 %.072.i.i.i.i.i.i.i.i to i8
  %i.acj = and i8 %i.aci, 7
  %i.ack = shl nuw i8 1, %i.acj
  %i.acl = or i8 %i.ach, %i.ack
  store i8 %i.acl, ptr %i.acg, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cs, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.cr
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.abj, %bb.cs ], [ %.03542.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, %i.aap ; 2 uses
  %i.acm = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i to i32
  %.not16.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %i.acm
  br i1 %.not16.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %bb.cr, !llvm.loop !2911

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %vector.body5834, %.critedge.us62.i.us.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i, %bb.ci
  %.040.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.wm, %bb.ci ], [ %i.wn, %.critedge.us50.i.i.i.i.i.i.i.i.i ], [ %i.wn, %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i ], [ %i.wn, %vector.body5834 ], [ %i.wn, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.wn, %.critedge.us62.i.us.i.i.i.i.i.i.i.i ], [ %i.wn, %.critedge.us.i.i.i.i.i.i.i.i.i ], [ %i.wn, %.critedge.i.i.i.i.i.i.i.i.i ]
  %i.acn = load ptr, ptr %.sroa.951.0..sroa_idx.i, align 8, !tbaa !2908, !nonnull !74, !align !497
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !3
  %i.acp = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i, %i.aco
  br i1 %i.acp, label %bb.cv, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i
  %i.acq = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !2914, !nonnull !74, !align !275 ; 5 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 144 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !341 ; 2 uses
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %bb.cw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.acu = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.acq)
          to label %.noexc22.i.i.i.i.i.i.i.i unwind label %bb.cy ; 0 uses

.noexc22.i.i.i.i.i.i.i.i:                         ; preds = %bb.cw
  %.pre.i26.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.acr, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i, %bb.cv
  %i.acv = phi ptr [ %i.acs, %bb.cv ], [ %.pre.i26.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i ]
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.acv, i64 %i.wa
  store i64 0, ptr %i.acw, align 8, !tbaa !137
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 32 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acy, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acq, i64 56
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.acq, i32 noundef %i.ada, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i unwind label %bb.cy

.noexc23.i.i.i.i.i.i.i.i:                         ; preds = %bb.cx
  %i.adb = load ptr, ptr %i.acx, align 8, !tbaa !362 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 44
  %i.add = load i8, ptr %i.adc, align 4, !tbaa !363
  %i.ade = and i8 %i.add, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ade, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i, !prof !69

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %.noexc23.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.cy

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i.i.i.i
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !368
  %i.adh = lshr i64 %.072.i.i.i.i.i.i.i.i, 3
  %i.adi = and i64 %i.adh, 536870911
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 %i.adi ; 2 uses
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !30
  %i.adl = trunc i64 %.072.i.i.i.i.i.i.i.i to i8
  %i.adm = and i8 %i.adl, 7
  %i.adn = shl nuw i8 1, %i.adm
  %i.ado = or i8 %i.adk, %i.adn
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.he:                                            ; preds = %bb.hd
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awk, i64 59
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.awt = trunc nuw i8 %i.aws to i1
  br i1 %i.awt, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 64
  %i.awv = load i32, ptr %i.awu, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i

bb.hg:                                            ; preds = %bb.he
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awk, i64 8
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i25 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.awy = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i25, 30
  %i.awz = getelementptr inbounds i8, ptr %i.awx, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.hg, %bb.hf, %bb.hd
  %.0.i.i.i.i.i.i.i.i.i.i.i26 = phi i32 [ %i.axa, %bb.hg ], [ %i.awv, %bb.hf ], [ %i.awl, %bb.hd ]
  %i.axb = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i26 to i64
  %i.axc = getelementptr inbounds [4 x i8], ptr %i.awn, i64 %i.axb
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !3 ; 6 uses
  %i.axe = load ptr, ptr %.sroa.649.0..sroa_idx.i, align 8, !tbaa !2935, !nonnull !74, !align !275 ; 5 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !487
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 58
  %i.axi = load i8, ptr %i.axh, align 2, !tbaa !338, !range !73, !noundef !74
  %i.axj = trunc nuw i8 %i.axi to i1
  br i1 %i.axj, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28, label %bb.hh

bb.hh:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axe, i64 59
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !339, !range !73, !noundef !74
  %i.axm = trunc nuw i8 %i.axl to i1
  br i1 %i.axm, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axe, i64 64
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28

bb.hj:                                            ; preds = %bb.hh
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i27 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.axr = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i27, 30
  %i.axs = getelementptr inbounds i8, ptr %i.axq, i64 %i.axr
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28: ; preds = %bb.hj, %bb.hi, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i29 = phi i32 [ %i.axt, %bb.hj ], [ %i.axo, %bb.hi ], [ %i.awl, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.axu = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i29 to i64
  %i.axv = getelementptr inbounds [8 x i8], ptr %i.axg, i64 %i.axu
  %i.axw = load i64, ptr %i.axv, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq i64 %i.axw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %bb.hk, label %bb.hn, !prof !48

bb.hk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #35, !noalias !2936
  store i64 0, ptr %191, align 16, !tbaa !30, !noalias !2936
  store i32 0, ptr %i.avp, align 16, !tbaa !30, !alias.scope !2939, !noalias !2936
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %192, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %191)
          to label %.noexc.i.i.i.i.i.i.i.i108 unwind label %bb.ib

.noexc.i.i.i.i.i.i.i.i108:                        ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #35, !noalias !2936
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %192, ptr nonnull @.str.178) #38
          to label %bb.hl unwind label %bb.hm

bb.hl:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i108
  unreachable

bb.hm:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i108
  %i.axx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.axy = load ptr, ptr %192, align 8, !tbaa !49 ; 2 uses
  %i.axz = icmp eq ptr %i.axy, %i.avq
  br i1 %i.axz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109: ; preds = %bb.hm
  %i.aya = load i64, ptr %i.avq, align 8, !tbaa !30
  %i.ayb = add i64 %i.aya, 1
  call void @_ZdlPvm(ptr noundef %i.axy, i64 noundef %i.ayb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #35
  br label %.body.i.i.i.i.i.i.i.i52

bb.hn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28
  %i.ayc = load ptr, ptr %.sroa.750.0..sroa_idx.i, align 8, !tbaa !2942, !nonnull !74, !align !275
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !329
  %i.aye = load ptr, ptr %.sroa.851.0..sroa_idx.i, align 8, !tbaa !2943, !nonnull !74, !align !497 ; 2 uses
  %i.ayf = load ptr, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !2944, !nonnull !74, !align !497 ; 2 uses
  %i.ayg = load ptr, ptr %.sroa.1053.0..sroa_idx.i, align 8, !tbaa !2945, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i31 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.ayh = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i31, 32 ; 3 uses
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.awe, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !3
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.ayd, i64 %i.ayk
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !3 ; 2 uses
  %i.ayn = icmp sgt i64 %i.axw, 0                 ; 3 uses
  %i.ayo = add nsw i32 %i.aym, -1
  %i.ayp = select i1 %i.ayn, i32 0, i32 %i.ayo
  store i32 %i.ayp, ptr %i.aye, align 4, !tbaa !3
  %i.ayq = select i1 %i.ayn, i32 %i.aym, i32 -1
  store i32 %i.ayq, ptr %i.ayf, align 4, !tbaa !3
  %i.ayr = select i1 %i.ayn, i32 1, i32 -1        ; 15 uses
  store i32 %i.ayr, ptr %i.ayg, align 4, !tbaa !3
  %i.ays = call noundef i64 @llvm.abs.i64(i64 %i.axw, i1 true) ; 10 uses
  %i.ayt = load i32, ptr %i.aye, align 4, !tbaa !3 ; 14 uses
  %i.ayu = load i32, ptr %i.ayf, align 4, !tbaa !3 ; 20 uses
  %.not1641.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %i.ayt, %i.ayu
  br i1 %.not1641.i.i.i.i.i.i.i.i.i32, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i.i.i33:                       ; preds = %bb.hn
  %i.ayv = load ptr, ptr %.sroa.11.0..sroa_idx.i5, align 8, !tbaa !2946, !nonnull !74, !align !275 ; 7 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.ayx, null
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 59 ; 3 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8 ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16 ; 4 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayv, i64 58
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64 ; 3 uses
  %i.azd = load i8, ptr %i.azb, align 2, !tbaa !338, !range !73, !noundef !74
  %i.aze = trunc nuw i8 %i.azd to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i34, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102, label %.lr.ph.split.i.i.i.i.i.i.i.i.i35

.lr.ph.split.us.i.i.i.i.i.i.i.i.i102:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i33
  %i.azf = load ptr, ptr %i.aza, align 8, !tbaa !487 ; 3 uses
  br i1 %i.aze, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102
  %i.azg = sext i32 %i.ayt to i64
  %i.azh = sext i32 %i.ayr to i64
  %i.azi = sext i32 %i.awj to i64
  %invariant.gep195.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.azf, i64 %i.azi
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv157.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ays, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.1.us.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %gep196.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep195.i.i.i.i.i.i.i.i.i, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i
  %i.azj = load i32, ptr %gep196.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.azk = icmp eq i32 %i.azj, %i.axd
  br i1 %i.azk, label %bb.ho, label %.critedge.us.us.i.i.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i
  %i.azl = add nsw i64 %.03542.us.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.azm = icmp eq i64 %i.azl, 0
  br i1 %i.azm, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i, label %.critedge.us.us.i.i.i.i.i.i.i.i.i

.critedge.us.us.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ho, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i
  %.1.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i ], [ %i.azl, %bb.ho ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i, %i.azh ; 2 uses
  %i.azn = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayu, %i.azn
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2947

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102
  %i.azo = load i8, ptr %i.ayy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.azp = trunc nuw i8 %i.azo to i1
  br i1 %i.azp, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i
  %i.azq = load i32, ptr %i.azc, align 8, !tbaa !488
  %i.azr = sext i32 %i.azq to i64
  %i.azs = getelementptr inbounds [4 x i8], ptr %i.azf, i64 %i.azr
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !3
  %i.azu = icmp eq i32 %i.azt, %i.axd
  br i1 %i.azu, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i
  %i.azv = trunc i64 %i.ays to i32
  %i.azw = add i32 %i.azv, -1
  %i.azx = mul i32 %i.azw, %i.ayr
  %i.azy = add i32 %i.ayt, %i.azx                 ; 3 uses
  %i.azz = add nsw i64 %i.ays, -1                 ; 5 uses
  %i.baa = icmp eq i64 %i.azz, 0
  br i1 %i.baa, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph:    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5771 = icmp samesign ult i64 %i.ays, 33
  br i1 %min.iters.check5771, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5772

vector.ph5772:                                    ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5774 = and i64 %i.azz, -32                ; 3 uses
  %i.bab = and i64 %i.azz, 31
  %i.bac = trunc i64 %n.vec5774 to i32
  %i.bad = mul i32 %i.ayr, %i.bac
  %i.bae = add i32 %i.ayt, %i.bad
  %broadcast.splatinsert5775 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5776 = shufflevector <32 x i32> %broadcast.splatinsert5775, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5777 = insertelement <32 x i32> poison, i32 %i.ayu, i64 0
  %broadcast.splat5778 = shufflevector <32 x i32> %broadcast.splatinsert5777, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5779 = insertelement <32 x i32> poison, i32 %i.ayt, i64 0
  %broadcast.splat5780 = shufflevector <32 x i32> %broadcast.splatinsert5779, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.baf = mul <32 x i32> %broadcast.splat5776, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5781 = add <32 x i32> %broadcast.splat5780, %i.baf
  %i.bag = shl nsw i32 %i.ayr, 5
  %broadcast.splatinsert5782 = insertelement <32 x i32> poison, i32 %i.bag, i64 0
  %broadcast.splat5783 = shufflevector <32 x i32> %broadcast.splatinsert5782, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5784

vector.body5784:                                  ; preds = %vector.body.interim5789, %vector.ph5772
  %index5785 = phi i64 [ 0, %vector.ph5772 ], [ %index.next5787, %vector.body.interim5789 ]
  %vec.ind5786 = phi <32 x i32> [ %induction5781, %vector.ph5772 ], [ %vec.ind.next5788, %vector.body.interim5789 ] ; 2 uses
  %i.bah = add nsw <32 x i32> %vec.ind5786, %broadcast.splat5776
  %i.bai = icmp eq <32 x i32> %i.bah, %broadcast.splat5778
  %i.baj = freeze <32 x i1> %i.bai
  %i.bak = bitcast <32 x i1> %i.baj to i32
  %.not5859 = icmp eq i32 %i.bak, 0
  br i1 %.not5859, label %vector.body.interim5789, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

vector.body.interim5789:                          ; preds = %vector.body5784
  %vec.ind.next5788 = add <32 x i32> %vec.ind5786, %broadcast.splat5783
  %index.next5787 = add nuw i64 %index5785, 32    ; 2 uses
  %i.bal = icmp eq i64 %index.next5787, %n.vec5774
  br i1 %i.bal, label %middle.block5790, label %vector.body5784, !llvm.loop !2948

middle.block5790:                                 ; preds = %vector.body.interim5789
  %cmp.n5791 = icmp eq i64 %i.azz, %n.vec5774
  br i1 %cmp.n5791, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5790
  %.ph5895 = phi i64 [ %i.azz, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bab, %middle.block5790 ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427.ph = phi i32 [ %i.ayt, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bae, %middle.block5790 ]
  br label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i
  %i.bam = add nsw i64 %i.bao, -1                 ; 2 uses
  %i.ban = icmp eq i64 %i.bam, 0
  br i1 %i.ban, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2949

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i
  %i.bao = phi i64 [ %i.bam, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i ], [ %.ph5895, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427 = phi i32 [ %i.bap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i ], [ %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427.ph, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bap = add nsw i32 %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427, %i.ayr ; 2 uses
  %.not16.us.us102.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bap, %i.ayu
  br i1 %.not16.us.us102.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2947

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i
  %i.baq = load ptr, ptr %i.ayz, align 8, !tbaa !331
  %i.bar = sext i32 %i.ayt to i64
  %i.bas = sext i32 %i.ayr to i64
  %i.bat = sext i32 %i.awj to i64
  %invariant.gep193.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.baq, i64 %i.bat
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i105, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i
  %indvars.iv154.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.bar, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i104 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i106, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.ays, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %gep194.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep193.i.i.i.i.i.i.i.i.i, i64 %indvars.iv154.i.i.i.i.i.i.i.i.i
  %i.bau = load i32, ptr %gep194.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.bav = sext i32 %i.bau to i64
  %i.baw = getelementptr inbounds [4 x i8], ptr %i.azf, i64 %i.bav
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !3
  %i.bay = icmp eq i32 %i.bax, %i.axd
  br i1 %i.bay, label %bb.hp, label %.critedge.us.i.i.i.i.i.i.i.i.i105

bb.hp:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103
  %i.baz = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i104, -1 ; 2 uses
  %i.bba = icmp eq i64 %i.baz, 0
  br i1 %i.bba, label %.split.us.loopexit112.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i105

.critedge.us.i.i.i.i.i.i.i.i.i105:                ; preds = %bb.hp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103
  %.1.us.i.i.i.i.i.i.i.i.i106 = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i104, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103 ], [ %i.baz, %bb.hp ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i, %i.bas ; 2 uses
  %i.bbb = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i107 = icmp eq i32 %i.ayu, %i.bbb
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i107, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103, !llvm.loop !2947

.lr.ph.split.i.i.i.i.i.i.i.i.i35:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i33
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 57
  %i.bbd = load i8, ptr %i.bbc, align 1, !range !73
  %i.bbe = trunc nuw i8 %i.bbd to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i36 = select i1 %i.aze, i1 true, i1 %i.bbe
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i36, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i37

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i35
  %i.bbf = sext i32 %i.ayt to i64
  %i.bbg = sext i32 %i.ayr to i64
  %i.bbh = sext i32 %i.awj to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94:        ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i99, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93
  %indvars.iv151.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbf, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93 ], [ %indvars.iv.next152.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i99 ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i95 = phi i64 [ %i.ays, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93 ], [ %.1.us51.i.i.i.i.i.i.i.i.i100, %.critedge.us50.i.i.i.i.i.i.i.i.i99 ] ; 3 uses
  %i.bbi = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i, %i.bbh ; 4 uses
  %i.bbj = lshr i64 %i.bbi, 6
  %i.bbk = and i64 %i.bbj, 67108863
  %i.bbl = getelementptr inbounds nuw [8 x i8], ptr %i.ayx, i64 %i.bbk
  %i.bbm = load i64, ptr %i.bbl, align 8, !tbaa !137
  %i.bbn = and i64 %i.bbi, 63
  %i.bbo = shl nuw i64 1, %i.bbn
  %i.bbp = and i64 %i.bbo, %i.bbm
  %.not.i.i.us.i.i.i.i.i.i.i.i.i96 = icmp eq i64 %i.bbp, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i96, label %.critedge.us50.i.i.i.i.i.i.i.i.i99, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94
  %i.bbq = trunc nsw i64 %i.bbi to i32
  %i.bbr = load ptr, ptr %i.aza, align 8, !tbaa !487
  br i1 %i.aze, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97
  %i.bbs = load i8, ptr %i.ayy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.bbt = trunc nuw i8 %i.bbs to i1
  br i1 %i.bbt, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bbu = load ptr, ptr %i.ayz, align 8, !tbaa !331
  %i.bbv = getelementptr inbounds [4 x i8], ptr %i.bbu, i64 %i.bbi
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hq
  %i.bbx = load i32, ptr %i.azc, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.hs, %bb.hr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i98 = phi i32 [ %i.bbw, %bb.hr ], [ %i.bbx, %bb.hs ], [ %i.bbq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97 ]
  %i.bby = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i98 to i64
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bby
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !3
  %i.bcb = icmp eq i32 %i.bca, %i.axd
  br i1 %i.bcb, label %bb.ht, label %.critedge.us50.i.i.i.i.i.i.i.i.i99

bb.ht:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.bcc = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i95, -1 ; 2 uses
  %i.bcd = icmp eq i64 %i.bcc, 0
  br i1 %i.bcd, label %.split.us.loopexit114.i.i.i.i.i.i.i.i.i, label %.critedge.us50.i.i.i.i.i.i.i.i.i99

.critedge.us50.i.i.i.i.i.i.i.i.i99:               ; preds = %bb.ht, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94
  %.1.us51.i.i.i.i.i.i.i.i.i100 = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i95, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.bcc, %bb.ht ], [ %.03542.us46.i.i.i.i.i.i.i.i.i95, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94 ]
  %indvars.iv.next152.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i, %i.bbg ; 2 uses
  %i.bce = trunc nsw i64 %indvars.iv.next152.i.i.i.i.i.i.i.i.i to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i101 = icmp eq i32 %i.ayu, %i.bce
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i101, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94, !llvm.loop !2947

.lr.ph.split.split.i.i.i.i.i.i.i.i.i37:           ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i35
  %i.bcf = load i8, ptr %i.ayy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.bcg = trunc nuw i8 %i.bcf to i1
  br i1 %i.bcg, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91:  ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i37
  %i.bch = load i64, ptr %i.ayx, align 8, !tbaa !137
  %i.bci = and i64 %i.bch, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.bci, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i92, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91
  %i.bcj = load ptr, ptr %i.aza, align 8, !tbaa !487
  %i.bck = load i32, ptr %i.azc, align 8, !tbaa !488
  %i.bcl = sext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds [4 x i8], ptr %i.bcj, i64 %i.bcl
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !3
  %i.bco = icmp eq i32 %i.bcn, %i.axd
  br i1 %i.bco, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i
  %i.bcp = trunc i64 %i.ays to i32
  %i.bcq = add i32 %i.bcp, -1
  %i.bcr = mul i32 %i.bcq, %i.ayr
  %i.bcs = add i32 %i.ayt, %i.bcr                 ; 3 uses
  %i.bct = add nsw i64 %i.ays, -1                 ; 5 uses
  %i.bcu = icmp eq i64 %i.bct, 0
  br i1 %i.bcu, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5796 = icmp samesign ult i64 %i.ays, 33
  br i1 %min.iters.check5796, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5797

vector.ph5797:                                    ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5799 = and i64 %i.bct, -32                ; 3 uses
  %i.bcv = and i64 %i.bct, 31
  %i.bcw = trunc i64 %n.vec5799 to i32
  %i.bcx = mul i32 %i.ayr, %i.bcw
  %i.bcy = add i32 %i.ayt, %i.bcx
  %broadcast.splatinsert5800 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5801 = shufflevector <32 x i32> %broadcast.splatinsert5800, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5802 = insertelement <32 x i32> poison, i32 %i.ayu, i64 0
  %broadcast.splat5803 = shufflevector <32 x i32> %broadcast.splatinsert5802, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5804 = insertelement <32 x i32> poison, i32 %i.ayt, i64 0
  %broadcast.splat5805 = shufflevector <32 x i32> %broadcast.splatinsert5804, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.bcz = mul <32 x i32> %broadcast.splat5801, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5806 = add <32 x i32> %broadcast.splat5805, %i.bcz
  %i.bda = shl nsw i32 %i.ayr, 5
  %broadcast.splatinsert5807 = insertelement <32 x i32> poison, i32 %i.bda, i64 0
  %broadcast.splat5808 = shufflevector <32 x i32> %broadcast.splatinsert5807, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5809

vector.body5809:                                  ; preds = %vector.body.interim5814, %vector.ph5797
  %index5810 = phi i64 [ 0, %vector.ph5797 ], [ %index.next5812, %vector.body.interim5814 ]
  %vec.ind5811 = phi <32 x i32> [ %induction5806, %vector.ph5797 ], [ %vec.ind.next5813, %vector.body.interim5814 ] ; 2 uses
  %i.bdb = add nsw <32 x i32> %vec.ind5811, %broadcast.splat5801
  %i.bdc = icmp eq <32 x i32> %i.bdb, %broadcast.splat5803
  %i.bdd = freeze <32 x i1> %i.bdc
  %i.bde = bitcast <32 x i1> %i.bdd to i32
  %.not5858 = icmp eq i32 %i.bde, 0
  br i1 %.not5858, label %vector.body.interim5814, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

vector.body.interim5814:                          ; preds = %vector.body5809
  %vec.ind.next5813 = add <32 x i32> %vec.ind5811, %broadcast.splat5808
  %index.next5812 = add nuw i64 %index5810, 32    ; 2 uses
  %i.bdf = icmp eq i64 %index.next5812, %n.vec5799
  br i1 %i.bdf, label %middle.block5815, label %vector.body5809, !llvm.loop !2950

middle.block5815:                                 ; preds = %vector.body.interim5814
  %cmp.n5816 = icmp eq i64 %i.bct, %n.vec5799
  br i1 %cmp.n5816, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5815
  %.ph5900 = phi i64 [ %i.bct, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bcv, %middle.block5815 ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426.ph = phi i32 [ %i.ayt, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bcy, %middle.block5815 ]
  br label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i
  %i.bdg = add nsw i64 %i.bdi, -1                 ; 2 uses
  %i.bdh = icmp eq i64 %i.bdg, 0
  br i1 %i.bdh, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2951

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i
  %i.bdi = phi i64 [ %i.bdg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i ], [ %.ph5900, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426 = phi i32 [ %i.bdj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i ], [ %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426.ph, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bdj = add nsw i32 %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426, %i.ayr ; 2 uses
  %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bdj, %i.ayu
  br i1 %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2947

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38:     ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i37
  %i.bdk = load ptr, ptr %i.ayz, align 8, !tbaa !331
  %i.bdl = sext i32 %i.ayt to i64
  %i.bdm = sext i32 %i.ayr to i64
  %i.bdn = sext i32 %i.awj to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i39 = getelementptr [4 x i8], ptr %i.bdk, i64 %i.bdn
  br label %bb.hu

bb.hu:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i44, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38
  %indvars.iv.i.i.i.i.i.i.i.i.i40 = phi i64 [ %i.bdl, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i46, %.critedge.i.i.i.i.i.i.i.i.i44 ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i41 = phi i64 [ %i.ays, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38 ], [ %.1.i.i.i.i.i.i.i.i.i45, %.critedge.i.i.i.i.i.i.i.i.i44 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i42 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i39, i64 %indvars.iv.i.i.i.i.i.i.i.i.i40
  %i.bdo = load i32, ptr %gep.i.i.i.i.i.i.i.i.i42, align 4, !tbaa !3 ; 2 uses
  %i.bdp = zext i32 %i.bdo to i64                 ; 2 uses
  %i.bdq = lshr i64 %i.bdp, 6
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.ayx, i64 %i.bdq
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !137
  %i.bdt = and i64 %i.bdp, 63
  %i.bdu = shl nuw i64 1, %i.bdt
  %i.bdv = and i64 %i.bdu, %i.bds
  %.not.i7.i.i.i.i.i.i.i.i.i.i43 = icmp eq i64 %i.bdv, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i43, label %.critedge.i.i.i.i.i.i.i.i.i44, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.hu
  %i.bdw = load ptr, ptr %i.aza, align 8, !tbaa !487
  %i.bdx = sext i32 %i.bdo to i64
  %i.bdy = getelementptr inbounds [4 x i8], ptr %i.bdw, i64 %i.bdx
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !3
  %i.bea = icmp eq i32 %i.bdz, %i.axd
  br i1 %i.bea, label %bb.hv, label %.critedge.i.i.i.i.i.i.i.i.i44

bb.hv:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.beb = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i41, -1 ; 2 uses
  %i.bec = icmp eq i64 %i.beb, 0
  br i1 %i.bec, label %.split.us.loopexit124.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i44

.split.us.loopexit.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ho
  %i.bed = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.loopexit112.i.i.i.i.i.i.i.i.i:          ; preds = %bb.hp
  %i.bee = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.loopexit114.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ht
  %i.bef = trunc nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.loopexit124.i.i.i.i.i.i.i.i.i:          ; preds = %bb.hv
  %i.beg = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i40 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.i.i.i.i.i.i.i.i.i82:                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5815, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5790, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i83 = phi i32 [ %i.bef, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i ], [ %i.beg, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i ], [ %i.bed, %.split.us.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bee, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i ], [ %i.azy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.azy, %middle.block5790 ], [ %i.bcs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.bcs, %middle.block5815 ], [ %i.azy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i ], [ %i.bcs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.beh = load ptr, ptr %.sroa.12.0..sroa_idx.i6, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.bei = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i83, 1
  %i.bej = sext i32 %i.bei to i64
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beh, i64 144 ; 2 uses
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !341 ; 2 uses
  %i.bem = icmp eq ptr %i.bel, null
  br i1 %i.bem, label %bb.hw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84

bb.hw:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i82
  %i.ben = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.beh)
          to label %.noexc19.i.i.i.i.i.i.i.i89 unwind label %bb.ib ; 0 uses

.noexc19.i.i.i.i.i.i.i.i89:                       ; preds = %bb.hw
  %.pre.i.i.i.i.i.i.i.i.i.i90 = load ptr, ptr %i.bek, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84: ; preds = %.noexc19.i.i.i.i.i.i.i.i89, %.split.us.i.i.i.i.i.i.i.i.i82
  %i.beo = phi ptr [ %i.bel, %.split.us.i.i.i.i.i.i.i.i.i82 ], [ %.pre.i.i.i.i.i.i.i.i.i.i90, %.noexc19.i.i.i.i.i.i.i.i89 ]
  %i.bep = getelementptr inbounds [8 x i8], ptr %i.beo, i64 %i.ayh
  store i64 %i.bej, ptr %i.bep, align 8, !tbaa !137
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beh, i64 32 ; 2 uses
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.ber, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i85, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %bb.hx

bb.hx:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beh, i64 56
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.beh, i32 noundef %i.bet, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i86 unwind label %bb.ib

.noexc20.i.i.i.i.i.i.i.i86:                       ; preds = %bb.hx
  %i.beu = load ptr, ptr %i.beq, align 8, !tbaa !362 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 44
  %i.bew = load i8, ptr %i.bev, align 4, !tbaa !363
  %i.bex = and i8 %i.bew, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i87 = icmp eq i8 %i.bex, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i87, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88, label %.invoke.i.i.i.i.i.i.i.i77, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88: ; preds = %.noexc20.i.i.i.i.i.i.i.i86
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !368
  %i.bfa = lshr i64 %.074.i.i.i.i.i.i.i.i, 3
  %i.bfb = and i64 %i.bfa, 536870911
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 %i.bfb ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !30
  %i.bfe = trunc i64 %.074.i.i.i.i.i.i.i.i to i8
  %i.bff = and i8 %i.bfe, 7
  %i.bfg = shl nuw i8 1, %i.bff
  %i.bfh = or i8 %i.bfd, %i.bfg
  store i8 %i.bfh, ptr %i.bfc, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

.critedge.i.i.i.i.i.i.i.i.i44:                    ; preds = %bb.hv, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.hu
  %.1.i.i.i.i.i.i.i.i.i45 = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i41, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.beb, %bb.hv ], [ %.03542.i.i.i.i.i.i.i.i.i41, %bb.hu ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i46 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i40, %i.bdm ; 2 uses
  %i.bfi = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i46 to i32
  %.not16.i.i.i.i.i.i.i.i.i47 = icmp eq i32 %i.ayu, %i.bfi
  br i1 %.not16.i.i.i.i.i.i.i.i.i47, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %bb.hu, !llvm.loop !2947

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48: ; preds = %.critedge.i.i.i.i.i.i.i.i.i44, %vector.body5809, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i99, %.critedge.us.i.i.i.i.i.i.i.i.i105, %vector.body5784, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i, %bb.hn
  %.040.i.i.i.i.i.i.i.i.i49 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i83, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84 ], [ %.us-phi.i.i.i.i.i.i.i.i.i83, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88 ], [ %i.ayt, %bb.hn ], [ %i.ayu, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.critedge.us50.i.i.i.i.i.i.i.i.i99 ], [ %i.ayu, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %vector.body5784 ], [ %i.ayu, %.critedge.us.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91 ], [ %i.ayu, %vector.body5809 ], [ %i.ayu, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.ayu, %.critedge.i.i.i.i.i.i.i.i.i44 ]
  %i.bfj = load ptr, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !2944, !nonnull !74, !align !497
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !3
  %i.bfl = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i49, %i.bfk
  br i1 %i.bfl, label %bb.hy, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.hy:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48
  %i.bfm = load ptr, ptr %.sroa.12.0..sroa_idx.i6, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 144 ; 2 uses
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !341 ; 2 uses
  %i.bfp = icmp eq ptr %i.bfo, null
  br i1 %i.bfp, label %bb.hz, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50

bb.hz:                                            ; preds = %bb.hy
  %i.bfq = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bfm)
          to label %.noexc22.i.i.i.i.i.i.i.i80 unwind label %bb.ib ; 0 uses

.noexc22.i.i.i.i.i.i.i.i80:                       ; preds = %bb.hz
  %.pre.i26.i.i.i.i.i.i.i.i.i81 = load ptr, ptr %i.bfn, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50: ; preds = %.noexc22.i.i.i.i.i.i.i.i80, %bb.hy
  %i.bfr = phi ptr [ %i.bfo, %bb.hy ], [ %.pre.i26.i.i.i.i.i.i.i.i.i81, %.noexc22.i.i.i.i.i.i.i.i80 ]
  %i.bfs = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.ayh
  store i64 0, ptr %i.bfs, align 8, !tbaa !137
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfm, i64 32 ; 2 uses
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.bfu, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i51, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfm, i64 56
  %i.bfw = load i32, ptr %i.bfv, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.bfm, i32 noundef %i.bfw, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i75 unwind label %bb.ib

.noexc23.i.i.i.i.i.i.i.i75:                       ; preds = %bb.ia
  %i.bfx = load ptr, ptr %i.bft, align 8, !tbaa !362 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 44
  %i.bfz = load i8, ptr %i.bfy, align 4, !tbaa !363
  %i.bga = and i8 %i.bfz, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i76 = icmp eq i8 %i.bga, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i76, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i79, label %.invoke.i.i.i.i.i.i.i.i77, !prof !69

.invoke.i.i.i.i.i.i.i.i77:                        ; preds = %.noexc23.i.i.i.i.i.i.i.i75, %.noexc20.i.i.i.i.i.i.i.i86
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i78 unwind label %bb.ib

.cont.i.i.i.i.i.i.i.i78:                          ; preds = %.invoke.i.i.i.i.i.i.i.i77
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i79: ; preds = %.noexc23.i.i.i.i.i.i.i.i75
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfx, i64 16
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.mh:                                            ; preds = %bb.mg
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzg, i64 59
  %i.bzo = load i8, ptr %i.bzn, align 1, !tbaa !339, !range !73, !noundef !74
  %i.bzp = trunc nuw i8 %i.bzo to i1
  br i1 %i.bzp, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzg, i64 64
  %i.bzr = load i32, ptr %i.bzq, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i

bb.mj:                                            ; preds = %bb.mh
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzg, i64 8
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i276 = shl i64 %.074.i.i.i.i.i.i.i.i275, 32
  %i.bzu = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i276, 30
  %i.bzv = getelementptr inbounds i8, ptr %i.bzt, i64 %i.bzu
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.mj, %bb.mi, %bb.mg
  %.0.i.i.i.i.i.i.i.i.i.i.i277 = phi i32 [ %i.bzw, %bb.mj ], [ %i.bzr, %bb.mi ], [ %i.bzh, %bb.mg ]
  %i.bzx = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i277 to i64
  %i.bzy = getelementptr inbounds i8, ptr %i.bzj, i64 %i.bzx
  %i.bzz = load i8, ptr %i.bzy, align 1, !tbaa !30 ; 6 uses
  %i.caa = load ptr, ptr %.sroa.649.0..sroa_idx.i246, align 8, !tbaa !2973, !nonnull !74, !align !275 ; 5 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 16
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !487
  %i.cad = getelementptr inbounds nuw i8, ptr %i.caa, i64 58
  %i.cae = load i8, ptr %i.cad, align 2, !tbaa !338, !range !73, !noundef !74
  %i.caf = trunc nuw i8 %i.cae to i1
  br i1 %i.caf, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279, label %bb.mk

bb.mk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caa, i64 59
  %i.cah = load i8, ptr %i.cag, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cai = trunc nuw i8 %i.cah to i1
  br i1 %i.cai, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.caj = getelementptr inbounds nuw i8, ptr %i.caa, i64 64
  %i.cak = load i32, ptr %i.caj, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279

bb.mm:                                            ; preds = %bb.mk
  %i.cal = getelementptr inbounds nuw i8, ptr %i.caa, i64 8
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i278 = shl i64 %.074.i.i.i.i.i.i.i.i275, 32
  %i.can = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i278, 30
  %i.cao = getelementptr inbounds i8, ptr %i.cam, i64 %i.can
  %i.cap = load i32, ptr %i.cao, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279: ; preds = %bb.mm, %bb.ml, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i280 = phi i32 [ %i.cap, %bb.mm ], [ %i.cak, %bb.ml ], [ %i.bzh, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.caq = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i280 to i64
  %i.car = getelementptr inbounds [8 x i8], ptr %i.cac, i64 %i.caq
  %i.cas = load i64, ptr %i.car, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i281 = icmp eq i64 %i.cas, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i281, label %bb.mn, label %bb.mq, !prof !48

bb.mn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #35, !noalias !2974
  store i64 0, ptr %174, align 16, !tbaa !30, !noalias !2974
  store i32 0, ptr %i.byl, align 16, !tbaa !30, !alias.scope !2977, !noalias !2974
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %175, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %174)
          to label %.noexc.i.i.i.i.i.i.i.i395 unwind label %bb.ne

.noexc.i.i.i.i.i.i.i.i395:                        ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #35, !noalias !2974
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %175, ptr nonnull @.str.178) #38
          to label %bb.mo unwind label %bb.mp

bb.mo:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i395
  unreachable

bb.mp:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i395
  %i.cat = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cau = load ptr, ptr %175, align 8, !tbaa !49 ; 2 uses
  %i.cav = icmp eq ptr %i.cau, %i.bym
  br i1 %i.cav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i396: ; preds = %bb.mp
  %i.caw = load i64, ptr %i.bym, align 8, !tbaa !30
  %i.cax = add i64 %i.caw, 1
  call void @_ZdlPvm(ptr noundef %i.cau, i64 noundef %i.cax) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i397: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #35
  br label %.body.i.i.i.i.i.i.i.i303

bb.mq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279
  %i.cay = load ptr, ptr %.sroa.750.0..sroa_idx.i247, align 8, !tbaa !2980, !nonnull !74, !align !275
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !329
  %i.cba = load ptr, ptr %.sroa.851.0..sroa_idx.i248, align 8, !tbaa !2981, !nonnull !74, !align !497 ; 2 uses
  %i.cbb = load ptr, ptr %.sroa.952.0..sroa_idx.i249, align 8, !tbaa !2982, !nonnull !74, !align !497 ; 2 uses
  %i.cbc = load ptr, ptr %.sroa.1053.0..sroa_idx.i250, align 8, !tbaa !2983, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i282 = shl i64 %.074.i.i.i.i.i.i.i.i275, 32
  %i.cbd = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i282, 32 ; 3 uses
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.bza, i64 %i.cbd
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !3
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.cbg
  %i.cbi = load i32, ptr %i.cbh, align 4, !tbaa !3 ; 2 uses
  %i.cbj = icmp sgt i64 %i.cas, 0                 ; 3 uses
  %i.cbk = add nsw i32 %i.cbi, -1
  %i.cbl = select i1 %i.cbj, i32 0, i32 %i.cbk
  store i32 %i.cbl, ptr %i.cba, align 4, !tbaa !3
  %i.cbm = select i1 %i.cbj, i32 %i.cbi, i32 -1
  store i32 %i.cbm, ptr %i.cbb, align 4, !tbaa !3
  %i.cbn = select i1 %i.cbj, i32 1, i32 -1        ; 15 uses
  store i32 %i.cbn, ptr %i.cbc, align 4, !tbaa !3
  %i.cbo = call noundef i64 @llvm.abs.i64(i64 %i.cas, i1 true) ; 10 uses
  %i.cbp = load i32, ptr %i.cba, align 4, !tbaa !3 ; 14 uses
  %i.cbq = load i32, ptr %i.cbb, align 4, !tbaa !3 ; 20 uses
  %.not1641.i.i.i.i.i.i.i.i.i283 = icmp eq i32 %i.cbp, %i.cbq
  br i1 %.not1641.i.i.i.i.i.i.i.i.i283, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %.lr.ph.i.i.i.i.i.i.i.i.i284

.lr.ph.i.i.i.i.i.i.i.i.i284:                      ; preds = %bb.mq
  %i.cbr = load ptr, ptr %.sroa.11.0..sroa_idx.i251, align 8, !tbaa !2984, !nonnull !74, !align !275 ; 7 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbr, i64 24
  %i.cbt = load ptr, ptr %i.cbs, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i285 = icmp eq ptr %i.cbt, null
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbr, i64 59 ; 3 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbr, i64 8 ; 3 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbr, i64 16 ; 4 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbr, i64 58
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbr, i64 64 ; 3 uses
  %i.cbz = load i8, ptr %i.cbx, align 2, !tbaa !338, !range !73, !noundef !74
  %i.cca = trunc nuw i8 %i.cbz to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i285, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i364, label %.lr.ph.split.i.i.i.i.i.i.i.i.i286

.lr.ph.split.us.i.i.i.i.i.i.i.i.i364:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i284
  %i.ccb = load ptr, ptr %i.cbw, align 8, !tbaa !487 ; 3 uses
  br i1 %i.cca, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i364
  %i.ccc = sext i32 %i.cbp to i64
  %i.ccd = sext i32 %i.cbn to i64
  %i.cce = sext i32 %i.bzf to i64
  %invariant.gep195.i.i.i.i.i.i.i.i.i385 = getelementptr i8, ptr %i.ccb, i64 %i.cce
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i390, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384
  %indvars.iv157.i.i.i.i.i.i.i.i.i387 = phi i64 [ %i.ccc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384 ], [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i392, %.critedge.us.us.i.i.i.i.i.i.i.i.i390 ] ; 3 uses
  %.03542.us.us.i.i.i.i.i.i.i.i.i388 = phi i64 [ %i.cbo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i391, %.critedge.us.us.i.i.i.i.i.i.i.i.i390 ] ; 2 uses
  %gep196.i.i.i.i.i.i.i.i.i389 = getelementptr i8, ptr %invariant.gep195.i.i.i.i.i.i.i.i.i385, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i387
  %i.ccf = load i8, ptr %gep196.i.i.i.i.i.i.i.i.i389, align 1, !tbaa !30
  %i.ccg = icmp eq i8 %i.ccf, %i.bzz
  br i1 %i.ccg, label %bb.mr, label %.critedge.us.us.i.i.i.i.i.i.i.i.i390

bb.mr:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386
  %i.cch = add nsw i64 %.03542.us.us.i.i.i.i.i.i.i.i.i388, -1 ; 2 uses
  %i.cci = icmp eq i64 %i.cch, 0
  br i1 %i.cci, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i394, label %.critedge.us.us.i.i.i.i.i.i.i.i.i390

.critedge.us.us.i.i.i.i.i.i.i.i.i390:             ; preds = %bb.mr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386
  %.1.us.us.i.i.i.i.i.i.i.i.i391 = phi i64 [ %.03542.us.us.i.i.i.i.i.i.i.i.i388, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386 ], [ %i.cch, %bb.mr ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i392 = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i387, %i.ccd ; 2 uses
  %i.ccj = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i392 to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i393 = icmp eq i32 %i.cbq, %i.ccj
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i393, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386, !llvm.loop !2985

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i364
  %i.cck = load i8, ptr %i.cbu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ccl = trunc nuw i8 %i.cck to i1
  br i1 %i.ccl, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365
  %i.ccm = load i32, ptr %i.cby, align 8, !tbaa !488
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds i8, ptr %i.ccb, i64 %i.ccn
  %i.ccp = load i8, ptr %i.cco, align 1, !tbaa !30
  %i.ccq = icmp eq i8 %i.ccp, %i.bzz
  br i1 %i.ccq, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377
  %i.ccr = trunc i64 %i.cbo to i32
  %i.ccs = add i32 %i.ccr, -1
  %i.cct = mul i32 %i.ccs, %i.cbn
  %i.ccu = add i32 %i.cbp, %i.cct                 ; 3 uses
  %i.ccv = add nsw i64 %i.cbo, -1                 ; 5 uses
  %i.ccw = icmp eq i64 %i.ccv, 0
  br i1 %i.ccw, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378
  %min.iters.check5721 = icmp samesign ult i64 %i.cbo, 33
  br i1 %min.iters.check5721, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader, label %vector.ph5722

vector.ph5722:                                    ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph
  %n.vec5724 = and i64 %i.ccv, -32                ; 3 uses
  %i.ccx = and i64 %i.ccv, 31
  %i.ccy = trunc i64 %n.vec5724 to i32
  %i.ccz = mul i32 %i.cbn, %i.ccy
  %i.cda = add i32 %i.cbp, %i.ccz
  %broadcast.splatinsert5725 = insertelement <32 x i32> poison, i32 %i.cbn, i64 0
  %broadcast.splat5726 = shufflevector <32 x i32> %broadcast.splatinsert5725, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5727 = insertelement <32 x i32> poison, i32 %i.cbq, i64 0
  %broadcast.splat5728 = shufflevector <32 x i32> %broadcast.splatinsert5727, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5729 = insertelement <32 x i32> poison, i32 %i.cbp, i64 0
  %broadcast.splat5730 = shufflevector <32 x i32> %broadcast.splatinsert5729, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.cdb = mul <32 x i32> %broadcast.splat5726, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5731 = add <32 x i32> %broadcast.splat5730, %i.cdb
  %i.cdc = shl nsw i32 %i.cbn, 5
  %broadcast.splatinsert5732 = insertelement <32 x i32> poison, i32 %i.cdc, i64 0
  %broadcast.splat5733 = shufflevector <32 x i32> %broadcast.splatinsert5732, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5734

vector.body5734:                                  ; preds = %vector.body.interim5739, %vector.ph5722
  %index5735 = phi i64 [ 0, %vector.ph5722 ], [ %index.next5737, %vector.body.interim5739 ]
  %vec.ind5736 = phi <32 x i32> [ %induction5731, %vector.ph5722 ], [ %vec.ind.next5738, %vector.body.interim5739 ] ; 2 uses
  %i.cdd = add nsw <32 x i32> %vec.ind5736, %broadcast.splat5726
  %i.cde = icmp eq <32 x i32> %i.cdd, %broadcast.splat5728
  %i.cdf = freeze <32 x i1> %i.cde
  %i.cdg = bitcast <32 x i1> %i.cdf to i32
  %.not5857 = icmp eq i32 %i.cdg, 0
  br i1 %.not5857, label %vector.body.interim5739, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

vector.body.interim5739:                          ; preds = %vector.body5734
  %vec.ind.next5738 = add <32 x i32> %vec.ind5736, %broadcast.splat5733
  %index.next5737 = add nuw i64 %index5735, 32    ; 2 uses
  %i.cdh = icmp eq i64 %index.next5737, %n.vec5724
  br i1 %i.cdh, label %middle.block5740, label %vector.body5734, !llvm.loop !2986

middle.block5740:                                 ; preds = %vector.body.interim5739
  %cmp.n5741 = icmp eq i64 %i.ccv, %n.vec5724
  br i1 %cmp.n5741, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph, %middle.block5740
  %.ph5927 = phi i64 [ %i.ccv, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph ], [ %i.ccx, %middle.block5740 ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419.ph = phi i32 [ %i.cbp, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph ], [ %i.cda, %middle.block5740 ]
  br label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382
  %i.cdi = add nsw i64 %i.cdk, -1                 ; 2 uses
  %i.cdj = icmp eq i64 %i.cdi, 0
  br i1 %i.cdj, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382, !llvm.loop !2987

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382:       ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379
  %i.cdk = phi i64 [ %i.cdi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379 ], [ %.ph5927, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419 = phi i32 [ %i.cdl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379 ], [ %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419.ph, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader ]
  %i.cdl = add nsw i32 %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419, %i.cbn ; 2 uses
  %.not16.us.us102.us.i.i.i.i.i.i.i.i.i383 = icmp eq i32 %i.cdl, %i.cbq
  br i1 %.not16.us.us102.us.i.i.i.i.i.i.i.i.i383, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379, !llvm.loop !2985

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365
  %i.cdm = load ptr, ptr %i.cbv, align 8, !tbaa !331
  %i.cdn = sext i32 %i.cbp to i64
  %i.cdo = sext i32 %i.cbn to i64
  %i.cdp = sext i32 %i.bzf to i64
  %invariant.gep193.i.i.i.i.i.i.i.i.i367 = getelementptr [4 x i8], ptr %i.cdm, i64 %i.cdp
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i372, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366
  %indvars.iv154.i.i.i.i.i.i.i.i.i369 = phi i64 [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i374, %.critedge.us.i.i.i.i.i.i.i.i.i372 ], [ %i.cdn, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366 ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i370 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i373, %.critedge.us.i.i.i.i.i.i.i.i.i372 ], [ %i.cbo, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366 ] ; 2 uses
  %gep194.i.i.i.i.i.i.i.i.i371 = getelementptr [4 x i8], ptr %invariant.gep193.i.i.i.i.i.i.i.i.i367, i64 %indvars.iv154.i.i.i.i.i.i.i.i.i369
  %i.cdq = load i32, ptr %gep194.i.i.i.i.i.i.i.i.i371, align 4, !tbaa !3
  %i.cdr = sext i32 %i.cdq to i64
  %i.cds = getelementptr inbounds i8, ptr %i.ccb, i64 %i.cdr
  %i.cdt = load i8, ptr %i.cds, align 1, !tbaa !30
  %i.cdu = icmp eq i8 %i.cdt, %i.bzz
  br i1 %i.cdu, label %bb.ms, label %.critedge.us.i.i.i.i.i.i.i.i.i372

bb.ms:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368
  %i.cdv = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i370, -1 ; 2 uses
  %i.cdw = icmp eq i64 %i.cdv, 0
  br i1 %i.cdw, label %.split.us.loopexit112.i.i.i.i.i.i.i.i.i376, label %.critedge.us.i.i.i.i.i.i.i.i.i372

.critedge.us.i.i.i.i.i.i.i.i.i372:                ; preds = %bb.ms, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368
  %.1.us.i.i.i.i.i.i.i.i.i373 = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i370, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368 ], [ %i.cdv, %bb.ms ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i374 = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i369, %i.cdo ; 2 uses
  %i.cdx = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i374 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i375 = icmp eq i32 %i.cbq, %i.cdx
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i375, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368, !llvm.loop !2985

.lr.ph.split.i.i.i.i.i.i.i.i.i286:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i284
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cbr, i64 57
  %i.cdz = load i8, ptr %i.cdy, align 1, !range !73
  %i.cea = trunc nuw i8 %i.cdz to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i287 = select i1 %i.cca, i1 true, i1 %i.cea
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i287, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i288

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i286
  %i.ceb = sext i32 %i.cbp to i64
  %i.cec = sext i32 %i.cbn to i64
  %i.ced = sext i32 %i.bzf to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353:       ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i359, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352
  %indvars.iv151.i.i.i.i.i.i.i.i.i354 = phi i64 [ %i.ceb, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352 ], [ %indvars.iv.next152.i.i.i.i.i.i.i.i.i361, %.critedge.us50.i.i.i.i.i.i.i.i.i359 ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i355 = phi i64 [ %i.cbo, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352 ], [ %.1.us51.i.i.i.i.i.i.i.i.i360, %.critedge.us50.i.i.i.i.i.i.i.i.i359 ] ; 3 uses
  %i.cee = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i354, %i.ced ; 4 uses
  %i.cef = lshr i64 %i.cee, 6
  %i.ceg = and i64 %i.cef, 67108863
  %i.ceh = getelementptr inbounds nuw [8 x i8], ptr %i.cbt, i64 %i.ceg
  %i.cei = load i64, ptr %i.ceh, align 8, !tbaa !137
  %i.cej = and i64 %i.cee, 63
  %i.cek = shl nuw i64 1, %i.cej
  %i.cel = and i64 %i.cek, %i.cei
  %.not.i.i.us.i.i.i.i.i.i.i.i.i356 = icmp eq i64 %i.cel, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i356, label %.critedge.us50.i.i.i.i.i.i.i.i.i359, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353
  %i.cem = trunc nsw i64 %i.cee to i32
  %i.cen = load ptr, ptr %i.cbw, align 8, !tbaa !487
  br i1 %i.cca, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.mt

bb.mt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357
  %i.ceo = load i8, ptr %i.cbu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cep = trunc nuw i8 %i.ceo to i1
  br i1 %i.cep, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.ceq = load ptr, ptr %i.cbv, align 8, !tbaa !331
  %i.cer = getelementptr inbounds [4 x i8], ptr %i.ceq, i64 %i.cee
  %i.ces = load i32, ptr %i.cer, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.cet = load i32, ptr %i.cby, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.mv, %bb.mu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i358 = phi i32 [ %i.ces, %bb.mu ], [ %i.cet, %bb.mv ], [ %i.cem, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357 ]
  %i.ceu = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i358 to i64
  %i.cev = getelementptr inbounds i8, ptr %i.cen, i64 %i.ceu
  %i.cew = load i8, ptr %i.cev, align 1, !tbaa !30
  %i.cex = icmp eq i8 %i.cew, %i.bzz
  br i1 %i.cex, label %bb.mw, label %.critedge.us50.i.i.i.i.i.i.i.i.i359

bb.mw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.cey = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i355, -1 ; 2 uses
  %i.cez = icmp eq i64 %i.cey, 0
  br i1 %i.cez, label %.split.us.loopexit114.i.i.i.i.i.i.i.i.i363, label %.critedge.us50.i.i.i.i.i.i.i.i.i359

.critedge.us50.i.i.i.i.i.i.i.i.i359:              ; preds = %bb.mw, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353
  %.1.us51.i.i.i.i.i.i.i.i.i360 = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i355, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.cey, %bb.mw ], [ %.03542.us46.i.i.i.i.i.i.i.i.i355, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353 ]
  %indvars.iv.next152.i.i.i.i.i.i.i.i.i361 = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i354, %i.cec ; 2 uses
  %i.cfa = trunc nsw i64 %indvars.iv.next152.i.i.i.i.i.i.i.i.i361 to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i362 = icmp eq i32 %i.cbq, %i.cfa
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i362, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353, !llvm.loop !2985

.lr.ph.split.split.i.i.i.i.i.i.i.i.i288:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i286
  %i.cfb = load i8, ptr %i.cbu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cfc = trunc nuw i8 %i.cfb to i1
  br i1 %i.cfc, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i288
  %i.cfd = load i64, ptr %i.cbt, align 8, !tbaa !137
  %i.cfe = and i64 %i.cfd, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i344 = icmp eq i64 %i.cfe, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i344, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343
  %i.cff = load ptr, ptr %i.cbw, align 8, !tbaa !487
  %i.cfg = load i32, ptr %i.cby, align 8, !tbaa !488
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr inbounds i8, ptr %i.cff, i64 %i.cfh
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !30
  %i.cfk = icmp eq i8 %i.cfj, %i.bzz
  br i1 %i.cfk, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345
  %i.cfl = trunc i64 %i.cbo to i32
  %i.cfm = add i32 %i.cfl, -1
  %i.cfn = mul i32 %i.cfm, %i.cbn
  %i.cfo = add i32 %i.cbp, %i.cfn                 ; 3 uses
  %i.cfp = add nsw i64 %i.cbo, -1                 ; 5 uses
  %i.cfq = icmp eq i64 %i.cfp, 0
  br i1 %i.cfq, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346
  %min.iters.check5746 = icmp samesign ult i64 %i.cbo, 33
  br i1 %min.iters.check5746, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader, label %vector.ph5747

vector.ph5747:                                    ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph
  %n.vec5749 = and i64 %i.cfp, -32                ; 3 uses
  %i.cfr = and i64 %i.cfp, 31
  %i.cfs = trunc i64 %n.vec5749 to i32
  %i.cft = mul i32 %i.cbn, %i.cfs
  %i.cfu = add i32 %i.cbp, %i.cft
  %broadcast.splatinsert5750 = insertelement <32 x i32> poison, i32 %i.cbn, i64 0
  %broadcast.splat5751 = shufflevector <32 x i32> %broadcast.splatinsert5750, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5752 = insertelement <32 x i32> poison, i32 %i.cbq, i64 0
  %broadcast.splat5753 = shufflevector <32 x i32> %broadcast.splatinsert5752, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5754 = insertelement <32 x i32> poison, i32 %i.cbp, i64 0
  %broadcast.splat5755 = shufflevector <32 x i32> %broadcast.splatinsert5754, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.cfv = mul <32 x i32> %broadcast.splat5751, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5756 = add <32 x i32> %broadcast.splat5755, %i.cfv
  %i.cfw = shl nsw i32 %i.cbn, 5
  %broadcast.splatinsert5757 = insertelement <32 x i32> poison, i32 %i.cfw, i64 0
  %broadcast.splat5758 = shufflevector <32 x i32> %broadcast.splatinsert5757, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5759

vector.body5759:                                  ; preds = %vector.body.interim5764, %vector.ph5747
  %index5760 = phi i64 [ 0, %vector.ph5747 ], [ %index.next5762, %vector.body.interim5764 ]
  %vec.ind5761 = phi <32 x i32> [ %induction5756, %vector.ph5747 ], [ %vec.ind.next5763, %vector.body.interim5764 ] ; 2 uses
  %i.cfx = add nsw <32 x i32> %vec.ind5761, %broadcast.splat5751
  %i.cfy = icmp eq <32 x i32> %i.cfx, %broadcast.splat5753
  %i.cfz = freeze <32 x i1> %i.cfy
  %i.cga = bitcast <32 x i1> %i.cfz to i32
  %.not5856 = icmp eq i32 %i.cga, 0
  br i1 %.not5856, label %vector.body.interim5764, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

vector.body.interim5764:                          ; preds = %vector.body5759
  %vec.ind.next5763 = add <32 x i32> %vec.ind5761, %broadcast.splat5758
  %index.next5762 = add nuw i64 %index5760, 32    ; 2 uses
  %i.cgb = icmp eq i64 %index.next5762, %n.vec5749
  br i1 %i.cgb, label %middle.block5765, label %vector.body5759, !llvm.loop !2988

middle.block5765:                                 ; preds = %vector.body.interim5764
  %cmp.n5766 = icmp eq i64 %i.cfp, %n.vec5749
  br i1 %cmp.n5766, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph, %middle.block5765
  %.ph5932 = phi i64 [ %i.cfp, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph ], [ %i.cfr, %middle.block5765 ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418.ph = phi i32 [ %i.cbp, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph ], [ %i.cfu, %middle.block5765 ]
  br label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350
  %i.cgc = add nsw i64 %i.cge, -1                 ; 2 uses
  %i.cgd = icmp eq i64 %i.cgc, 0
  br i1 %i.cgd, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350, !llvm.loop !2989

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350:      ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347
  %i.cge = phi i64 [ %i.cgc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347 ], [ %.ph5932, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418 = phi i32 [ %i.cgf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347 ], [ %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418.ph, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader ]
  %i.cgf = add nsw i32 %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418, %i.cbn ; 2 uses
  %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i351 = icmp eq i32 %i.cgf, %i.cbq
  br i1 %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i351, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347, !llvm.loop !2985

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i288
  %i.cgg = load ptr, ptr %i.cbv, align 8, !tbaa !331
  %i.cgh = sext i32 %i.cbp to i64
  %i.cgi = sext i32 %i.cbn to i64
  %i.cgj = sext i32 %i.bzf to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i290 = getelementptr [4 x i8], ptr %i.cgg, i64 %i.cgj
  br label %bb.mx

bb.mx:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i295, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289
  %indvars.iv.i.i.i.i.i.i.i.i.i291 = phi i64 [ %i.cgh, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i297, %.critedge.i.i.i.i.i.i.i.i.i295 ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i292 = phi i64 [ %i.cbo, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289 ], [ %.1.i.i.i.i.i.i.i.i.i296, %.critedge.i.i.i.i.i.i.i.i.i295 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i293 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i290, i64 %indvars.iv.i.i.i.i.i.i.i.i.i291
  %i.cgk = load i32, ptr %gep.i.i.i.i.i.i.i.i.i293, align 4, !tbaa !3 ; 2 uses
  %i.cgl = zext i32 %i.cgk to i64                 ; 2 uses
  %i.cgm = lshr i64 %i.cgl, 6
  %i.cgn = getelementptr inbounds nuw [8 x i8], ptr %i.cbt, i64 %i.cgm
  %i.cgo = load i64, ptr %i.cgn, align 8, !tbaa !137
  %i.cgp = and i64 %i.cgl, 63
  %i.cgq = shl nuw i64 1, %i.cgp
  %i.cgr = and i64 %i.cgq, %i.cgo
  %.not.i7.i.i.i.i.i.i.i.i.i.i294 = icmp eq i64 %i.cgr, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i294, label %.critedge.i.i.i.i.i.i.i.i.i295, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.mx
  %i.cgs = load ptr, ptr %i.cbw, align 8, !tbaa !487
  %i.cgt = sext i32 %i.cgk to i64
  %i.cgu = getelementptr inbounds i8, ptr %i.cgs, i64 %i.cgt
  %i.cgv = load i8, ptr %i.cgu, align 1, !tbaa !30
  %i.cgw = icmp eq i8 %i.cgv, %i.bzz
  br i1 %i.cgw, label %bb.my, label %.critedge.i.i.i.i.i.i.i.i.i295

bb.my:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.cgx = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i292, -1 ; 2 uses
  %i.cgy = icmp eq i64 %i.cgx, 0
  br i1 %i.cgy, label %.split.us.loopexit124.i.i.i.i.i.i.i.i.i333, label %.critedge.i.i.i.i.i.i.i.i.i295

.split.us.loopexit.i.i.i.i.i.i.i.i.i394:          ; preds = %bb.mr
  %i.cgz = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i387 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.loopexit112.i.i.i.i.i.i.i.i.i376:       ; preds = %bb.ms
  %i.cha = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i369 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.loopexit114.i.i.i.i.i.i.i.i.i363:       ; preds = %bb.mw
  %i.chb = trunc nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i354 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.loopexit124.i.i.i.i.i.i.i.i.i333:       ; preds = %bb.my
  %i.chc = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i291 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.i.i.i.i.i.i.i.i.i334:                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346, %middle.block5765, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378, %middle.block5740, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i333, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i363, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i376, %.split.us.loopexit.i.i.i.i.i.i.i.i.i394
  %.us-phi.i.i.i.i.i.i.i.i.i335 = phi i32 [ %i.chb, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i363 ], [ %i.chc, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i333 ], [ %i.cgz, %.split.us.loopexit.i.i.i.i.i.i.i.i.i394 ], [ %i.cha, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i376 ], [ %i.ccu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378 ], [ %i.ccu, %middle.block5740 ], [ %i.cfo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346 ], [ %i.cfo, %middle.block5765 ], [ %i.ccu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379 ], [ %i.cfo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347 ] ; 3 uses
  %i.chd = load ptr, ptr %.sroa.12.0..sroa_idx.i252, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.che = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i335, 1
  %i.chf = sext i32 %i.che to i64
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chd, i64 144 ; 2 uses
  %i.chh = load ptr, ptr %i.chg, align 8, !tbaa !341 ; 2 uses
  %i.chi = icmp eq ptr %i.chh, null
  br i1 %i.chi, label %bb.mz, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336

bb.mz:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i334
  %i.chj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.chd)
          to label %.noexc19.i.i.i.i.i.i.i.i341 unwind label %bb.ne ; 0 uses

.noexc19.i.i.i.i.i.i.i.i341:                      ; preds = %bb.mz
  %.pre.i.i.i.i.i.i.i.i.i.i342 = load ptr, ptr %i.chg, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336: ; preds = %.noexc19.i.i.i.i.i.i.i.i341, %.split.us.i.i.i.i.i.i.i.i.i334
  %i.chk = phi ptr [ %i.chh, %.split.us.i.i.i.i.i.i.i.i.i334 ], [ %.pre.i.i.i.i.i.i.i.i.i.i342, %.noexc19.i.i.i.i.i.i.i.i341 ]
  %i.chl = getelementptr inbounds [8 x i8], ptr %i.chk, i64 %i.cbd
  store i64 %i.chf, ptr %i.chl, align 8, !tbaa !137
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chd, i64 32 ; 2 uses
  %i.chn = load ptr, ptr %i.chm, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i337 = icmp eq ptr %i.chn, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i337, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %bb.na

bb.na:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chd, i64 56
  %i.chp = load i32, ptr %i.cho, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.chd, i32 noundef %i.chp, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i338 unwind label %bb.ne

.noexc20.i.i.i.i.i.i.i.i338:                      ; preds = %bb.na
  %i.chq = load ptr, ptr %i.chm, align 8, !tbaa !362 ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chq, i64 44
  %i.chs = load i8, ptr %i.chr, align 4, !tbaa !363
  %i.cht = and i8 %i.chs, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i339 = icmp eq i8 %i.cht, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i339, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340, label %.invoke.i.i.i.i.i.i.i.i328, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340: ; preds = %.noexc20.i.i.i.i.i.i.i.i338
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chq, i64 16
  %i.chv = load ptr, ptr %i.chu, align 8, !tbaa !368
  %i.chw = lshr i64 %.074.i.i.i.i.i.i.i.i275, 3
  %i.chx = and i64 %i.chw, 536870911
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chv, i64 %i.chx ; 2 uses
  %i.chz = load i8, ptr %i.chy, align 1, !tbaa !30
  %i.cia = trunc i64 %.074.i.i.i.i.i.i.i.i275 to i8
  %i.cib = and i8 %i.cia, 7
  %i.cic = shl nuw i8 1, %i.cib
  %i.cid = or i8 %i.chz, %i.cic
  store i8 %i.cid, ptr %i.chy, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

.critedge.i.i.i.i.i.i.i.i.i295:                   ; preds = %bb.my, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.mx
  %.1.i.i.i.i.i.i.i.i.i296 = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i292, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.cgx, %bb.my ], [ %.03542.i.i.i.i.i.i.i.i.i292, %bb.mx ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i297 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i291, %i.cgi ; 2 uses
  %i.cie = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i297 to i32
  %.not16.i.i.i.i.i.i.i.i.i298 = icmp eq i32 %i.cbq, %i.cie
  br i1 %.not16.i.i.i.i.i.i.i.i.i298, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %bb.mx, !llvm.loop !2985

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299: ; preds = %.critedge.i.i.i.i.i.i.i.i.i295, %vector.body5759, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350, %.critedge.us50.i.i.i.i.i.i.i.i.i359, %.critedge.us.i.i.i.i.i.i.i.i.i372, %vector.body5734, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382, %.critedge.us.us.i.i.i.i.i.i.i.i.i390, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377, %bb.mq
  %.040.i.i.i.i.i.i.i.i.i300 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i335, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336 ], [ %.us-phi.i.i.i.i.i.i.i.i.i335, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340 ], [ %i.cbp, %bb.mq ], [ %i.cbq, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350 ], [ %i.cbq, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382 ], [ %i.cbq, %.critedge.us50.i.i.i.i.i.i.i.i.i359 ], [ %i.cbq, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345 ], [ %i.cbq, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377 ], [ %i.cbq, %vector.body5734 ], [ %i.cbq, %.critedge.us.us.i.i.i.i.i.i.i.i.i390 ], [ %i.cbq, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343 ], [ %i.cbq, %vector.body5759 ], [ %i.cbq, %.critedge.us.i.i.i.i.i.i.i.i.i372 ], [ %i.cbq, %.critedge.i.i.i.i.i.i.i.i.i295 ]
  %i.cif = load ptr, ptr %.sroa.952.0..sroa_idx.i249, align 8, !tbaa !2982, !nonnull !74, !align !497
  %i.cig = load i32, ptr %i.cif, align 4, !tbaa !3
  %i.cih = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i300, %i.cig
  br i1 %i.cih, label %bb.nb, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.nb:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299
  %i.cii = load ptr, ptr %.sroa.12.0..sroa_idx.i252, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cii, i64 144 ; 2 uses
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !341 ; 2 uses
  %i.cil = icmp eq ptr %i.cik, null
  br i1 %i.cil, label %bb.nc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301

bb.nc:                                            ; preds = %bb.nb
  %i.cim = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cii)
          to label %.noexc22.i.i.i.i.i.i.i.i331 unwind label %bb.ne ; 0 uses

.noexc22.i.i.i.i.i.i.i.i331:                      ; preds = %bb.nc
  %.pre.i26.i.i.i.i.i.i.i.i.i332 = load ptr, ptr %i.cij, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301: ; preds = %.noexc22.i.i.i.i.i.i.i.i331, %bb.nb
  %i.cin = phi ptr [ %i.cik, %bb.nb ], [ %.pre.i26.i.i.i.i.i.i.i.i.i332, %.noexc22.i.i.i.i.i.i.i.i331 ]
  %i.cio = getelementptr inbounds [8 x i8], ptr %i.cin, i64 %i.cbd
  store i64 0, ptr %i.cio, align 8, !tbaa !137
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cii, i64 32 ; 2 uses
  %i.ciq = load ptr, ptr %i.cip, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i302 = icmp eq ptr %i.ciq, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i302, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.nd

bb.nd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cii, i64 56
  %i.cis = load i32, ptr %i.cir, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cii, i32 noundef %i.cis, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i326 unwind label %bb.ne

.noexc23.i.i.i.i.i.i.i.i326:                      ; preds = %bb.nd
  %i.cit = load ptr, ptr %i.cip, align 8, !tbaa !362 ; 2 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cit, i64 44
  %i.civ = load i8, ptr %i.ciu, align 4, !tbaa !363
  %i.ciw = and i8 %i.civ, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i327 = icmp eq i8 %i.ciw, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i327, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i330, label %.invoke.i.i.i.i.i.i.i.i328, !prof !69

.invoke.i.i.i.i.i.i.i.i328:                       ; preds = %.noexc23.i.i.i.i.i.i.i.i326, %.noexc20.i.i.i.i.i.i.i.i338
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i329 unwind label %bb.ne

.cont.i.i.i.i.i.i.i.i329:                         ; preds = %.invoke.i.i.i.i.i.i.i.i328
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i330: ; preds = %.noexc23.i.i.i.i.i.i.i.i326
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cit, i64 16
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.rk:                                            ; preds = %bb.rj
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dcc, i64 59
  %i.dck = load i8, ptr %i.dcj, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dcl = trunc nuw i8 %i.dck to i1
  br i1 %i.dcl, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcc, i64 64
  %i.dcn = load i32, ptr %i.dcm, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i

bb.rm:                                            ; preds = %bb.rk
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcc, i64 8
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i592 = shl i64 %.074.i.i.i.i.i.i.i.i591, 32
  %i.dcq = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i592, 30
  %i.dcr = getelementptr inbounds i8, ptr %i.dcp, i64 %i.dcq
  %i.dcs = load i32, ptr %i.dcr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.rm, %bb.rl, %bb.rj
  %.0.i.i.i.i.i.i.i.i.i.i.i593 = phi i32 [ %i.dcs, %bb.rm ], [ %i.dcn, %bb.rl ], [ %i.dcd, %bb.rj ]
  %i.dct = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i593 to i64
  %i.dcu = getelementptr inbounds [2 x i8], ptr %i.dcf, i64 %i.dct
  %i.dcv = load i16, ptr %i.dcu, align 2, !tbaa !2009 ; 6 uses
  %i.dcw = load ptr, ptr %.sroa.649.0..sroa_idx.i562, align 8, !tbaa !3011, !nonnull !74, !align !275 ; 5 uses
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcw, i64 16
  %i.dcy = load ptr, ptr %i.dcx, align 8, !tbaa !487
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcw, i64 58
  %i.dda = load i8, ptr %i.dcz, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ddb = trunc nuw i8 %i.dda to i1
  br i1 %i.ddb, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595, label %bb.rn

bb.rn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.dcw, i64 59
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dde = trunc nuw i8 %i.ddd to i1
  br i1 %i.dde, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dcw, i64 64
  %i.ddg = load i32, ptr %i.ddf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595

bb.rp:                                            ; preds = %bb.rn
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dcw, i64 8
  %i.ddi = load ptr, ptr %i.ddh, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i594 = shl i64 %.074.i.i.i.i.i.i.i.i591, 32
  %i.ddj = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i594, 30
  %i.ddk = getelementptr inbounds i8, ptr %i.ddi, i64 %i.ddj
  %i.ddl = load i32, ptr %i.ddk, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595: ; preds = %bb.rp, %bb.ro, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i596 = phi i32 [ %i.ddl, %bb.rp ], [ %i.ddg, %bb.ro ], [ %i.dcd, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.ddm = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i596 to i64
  %i.ddn = getelementptr inbounds [8 x i8], ptr %i.dcy, i64 %i.ddm
  %i.ddo = load i64, ptr %i.ddn, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i597 = icmp eq i64 %i.ddo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i597, label %bb.rq, label %bb.rt, !prof !48

bb.rq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #35, !noalias !3012
  store i64 0, ptr %157, align 16, !tbaa !30, !noalias !3012
  store i32 0, ptr %i.dbh, align 16, !tbaa !30, !alias.scope !3015, !noalias !3012
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %158, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %157)
          to label %.noexc.i.i.i.i.i.i.i.i711 unwind label %bb.sh

.noexc.i.i.i.i.i.i.i.i711:                        ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #35, !noalias !3012
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %158, ptr nonnull @.str.178) #38
          to label %bb.rr unwind label %bb.rs

bb.rr:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i711
  unreachable

bb.rs:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i711
  %i.ddp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ddq = load ptr, ptr %158, align 8, !tbaa !49 ; 2 uses
  %i.ddr = icmp eq ptr %i.ddq, %i.dbi
  br i1 %i.ddr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i712: ; preds = %bb.rs
  %i.dds = load i64, ptr %i.dbi, align 8, !tbaa !30
  %i.ddt = add i64 %i.dds, 1
  call void @_ZdlPvm(ptr noundef %i.ddq, i64 noundef %i.ddt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i713: ; preds = %bb.rs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i712
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #35
  br label %.body.i.i.i.i.i.i.i.i619

bb.rt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595
  %i.ddu = load ptr, ptr %.sroa.750.0..sroa_idx.i563, align 8, !tbaa !3018, !nonnull !74, !align !275
  %i.ddv = load ptr, ptr %i.ddu, align 8, !tbaa !329
  %i.ddw = load ptr, ptr %.sroa.851.0..sroa_idx.i564, align 8, !tbaa !3019, !nonnull !74, !align !497 ; 2 uses
  %i.ddx = load ptr, ptr %.sroa.952.0..sroa_idx.i565, align 8, !tbaa !3020, !nonnull !74, !align !497 ; 2 uses
  %i.ddy = load ptr, ptr %.sroa.1053.0..sroa_idx.i566, align 8, !tbaa !3021, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i598 = shl i64 %.074.i.i.i.i.i.i.i.i591, 32
  %i.ddz = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i598, 32 ; 3 uses
  %i.dea = getelementptr inbounds [4 x i8], ptr %i.dbw, i64 %i.ddz
  %i.deb = load i32, ptr %i.dea, align 4, !tbaa !3
  %i.dec = sext i32 %i.deb to i64
  %i.ded = getelementptr inbounds [4 x i8], ptr %i.ddv, i64 %i.dec
  %i.dee = load i32, ptr %i.ded, align 4, !tbaa !3 ; 2 uses
  %i.def = icmp sgt i64 %i.ddo, 0                 ; 3 uses
  %i.deg = add nsw i32 %i.dee, -1
  %i.deh = select i1 %i.def, i32 0, i32 %i.deg
  store i32 %i.deh, ptr %i.ddw, align 4, !tbaa !3
  %i.dei = select i1 %i.def, i32 %i.dee, i32 -1
  store i32 %i.dei, ptr %i.ddx, align 4, !tbaa !3
  %i.dej = select i1 %i.def, i32 1, i32 -1        ; 15 uses
  store i32 %i.dej, ptr %i.ddy, align 4, !tbaa !3
  %i.dek = call noundef i64 @llvm.abs.i64(i64 %i.ddo, i1 true) ; 10 uses
  %i.del = load i32, ptr %i.ddw, align 4, !tbaa !3 ; 14 uses
  %i.dem = load i32, ptr %i.ddx, align 4, !tbaa !3 ; 20 uses
  %.not1641.i.i.i.i.i.i.i.i.i599 = icmp eq i32 %i.del, %i.dem
  br i1 %.not1641.i.i.i.i.i.i.i.i.i599, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %.lr.ph.i.i.i.i.i.i.i.i.i600

.lr.ph.i.i.i.i.i.i.i.i.i600:                      ; preds = %bb.rt
  %i.den = load ptr, ptr %.sroa.11.0..sroa_idx.i567, align 8, !tbaa !3022, !nonnull !74, !align !275 ; 7 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 24
  %i.dep = load ptr, ptr %i.deo, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i601 = icmp eq ptr %i.dep, null
  %i.deq = getelementptr inbounds nuw i8, ptr %i.den, i64 59 ; 3 uses
  %i.der = getelementptr inbounds nuw i8, ptr %i.den, i64 8 ; 3 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.den, i64 16 ; 4 uses
  %i.det = getelementptr inbounds nuw i8, ptr %i.den, i64 58
  %i.deu = getelementptr inbounds nuw i8, ptr %i.den, i64 64 ; 3 uses
  %i.dev = load i8, ptr %i.det, align 2, !tbaa !338, !range !73, !noundef !74
  %i.dew = trunc nuw i8 %i.dev to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i601, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i680, label %.lr.ph.split.i.i.i.i.i.i.i.i.i602

.lr.ph.split.us.i.i.i.i.i.i.i.i.i680:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i600
  %i.dex = load ptr, ptr %i.des, align 8, !tbaa !487 ; 3 uses
  br i1 %i.dew, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i680
  %i.dey = sext i32 %i.del to i64
  %i.dez = sext i32 %i.dej to i64
  %i.dfa = sext i32 %i.dcb to i64
  %invariant.gep195.i.i.i.i.i.i.i.i.i701 = getelementptr [2 x i8], ptr %i.dex, i64 %i.dfa
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i706, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700
  %indvars.iv157.i.i.i.i.i.i.i.i.i703 = phi i64 [ %i.dey, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700 ], [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i708, %.critedge.us.us.i.i.i.i.i.i.i.i.i706 ] ; 3 uses
  %.03542.us.us.i.i.i.i.i.i.i.i.i704 = phi i64 [ %i.dek, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i707, %.critedge.us.us.i.i.i.i.i.i.i.i.i706 ] ; 2 uses
  %gep196.i.i.i.i.i.i.i.i.i705 = getelementptr [2 x i8], ptr %invariant.gep195.i.i.i.i.i.i.i.i.i701, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i703
  %i.dfb = load i16, ptr %gep196.i.i.i.i.i.i.i.i.i705, align 2, !tbaa !2009
  %i.dfc = icmp eq i16 %i.dfb, %i.dcv
  br i1 %i.dfc, label %bb.ru, label %.critedge.us.us.i.i.i.i.i.i.i.i.i706

bb.ru:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702
  %i.dfd = add nsw i64 %.03542.us.us.i.i.i.i.i.i.i.i.i704, -1 ; 2 uses
  %i.dfe = icmp eq i64 %i.dfd, 0
  br i1 %i.dfe, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i710, label %.critedge.us.us.i.i.i.i.i.i.i.i.i706

.critedge.us.us.i.i.i.i.i.i.i.i.i706:             ; preds = %bb.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702
  %.1.us.us.i.i.i.i.i.i.i.i.i707 = phi i64 [ %.03542.us.us.i.i.i.i.i.i.i.i.i704, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702 ], [ %i.dfd, %bb.ru ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i708 = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i703, %i.dez ; 2 uses
  %i.dff = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i708 to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i709 = icmp eq i32 %i.dem, %i.dff
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i709, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702, !llvm.loop !3023

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i680
  %i.dfg = load i8, ptr %i.deq, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dfh = trunc nuw i8 %i.dfg to i1
  br i1 %i.dfh, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681
  %i.dfi = load i32, ptr %i.deu, align 8, !tbaa !488
  %i.dfj = sext i32 %i.dfi to i64
  %i.dfk = getelementptr inbounds [2 x i8], ptr %i.dex, i64 %i.dfj
  %i.dfl = load i16, ptr %i.dfk, align 2, !tbaa !2009
  %i.dfm = icmp eq i16 %i.dfl, %i.dcv
  br i1 %i.dfm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693
  %i.dfn = trunc i64 %i.dek to i32
  %i.dfo = add i32 %i.dfn, -1
  %i.dfp = mul i32 %i.dfo, %i.dej
  %i.dfq = add i32 %i.del, %i.dfp                 ; 3 uses
  %i.dfr = add nsw i64 %i.dek, -1                 ; 5 uses
  %i.dfs = icmp eq i64 %i.dfr, 0
  br i1 %i.dfs, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694
  %min.iters.check5671 = icmp samesign ult i64 %i.dek, 33
  br i1 %min.iters.check5671, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader, label %vector.ph5672

vector.ph5672:                                    ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph
  %n.vec5674 = and i64 %i.dfr, -32                ; 3 uses
  %i.dft = and i64 %i.dfr, 31
  %i.dfu = trunc i64 %n.vec5674 to i32
  %i.dfv = mul i32 %i.dej, %i.dfu
  %i.dfw = add i32 %i.del, %i.dfv
  %broadcast.splatinsert5675 = insertelement <32 x i32> poison, i32 %i.dej, i64 0
  %broadcast.splat5676 = shufflevector <32 x i32> %broadcast.splatinsert5675, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5677 = insertelement <32 x i32> poison, i32 %i.dem, i64 0
  %broadcast.splat5678 = shufflevector <32 x i32> %broadcast.splatinsert5677, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5679 = insertelement <32 x i32> poison, i32 %i.del, i64 0
  %broadcast.splat5680 = shufflevector <32 x i32> %broadcast.splatinsert5679, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.dfx = mul <32 x i32> %broadcast.splat5676, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5681 = add <32 x i32> %broadcast.splat5680, %i.dfx
  %i.dfy = shl nsw i32 %i.dej, 5
  %broadcast.splatinsert5682 = insertelement <32 x i32> poison, i32 %i.dfy, i64 0
  %broadcast.splat5683 = shufflevector <32 x i32> %broadcast.splatinsert5682, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5684

vector.body5684:                                  ; preds = %vector.body.interim5689, %vector.ph5672
  %index5685 = phi i64 [ 0, %vector.ph5672 ], [ %index.next5687, %vector.body.interim5689 ]
  %vec.ind5686 = phi <32 x i32> [ %induction5681, %vector.ph5672 ], [ %vec.ind.next5688, %vector.body.interim5689 ] ; 2 uses
  %i.dfz = add nsw <32 x i32> %vec.ind5686, %broadcast.splat5676
  %i.dga = icmp eq <32 x i32> %i.dfz, %broadcast.splat5678
  %i.dgb = freeze <32 x i1> %i.dga
  %i.dgc = bitcast <32 x i1> %i.dgb to i32
  %.not5855 = icmp eq i32 %i.dgc, 0
  br i1 %.not5855, label %vector.body.interim5689, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

vector.body.interim5689:                          ; preds = %vector.body5684
  %vec.ind.next5688 = add <32 x i32> %vec.ind5686, %broadcast.splat5683
  %index.next5687 = add nuw i64 %index5685, 32    ; 2 uses
  %i.dgd = icmp eq i64 %index.next5687, %n.vec5674
  br i1 %i.dgd, label %middle.block5690, label %vector.body5684, !llvm.loop !3024

middle.block5690:                                 ; preds = %vector.body.interim5689
  %cmp.n5691 = icmp eq i64 %i.dfr, %n.vec5674
  br i1 %cmp.n5691, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph, %middle.block5690
  %.ph5959 = phi i64 [ %i.dfr, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph ], [ %i.dft, %middle.block5690 ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411.ph = phi i32 [ %i.del, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph ], [ %i.dfw, %middle.block5690 ]
  br label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698
  %i.dge = add nsw i64 %i.dgg, -1                 ; 2 uses
  %i.dgf = icmp eq i64 %i.dge, 0
  br i1 %i.dgf, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698, !llvm.loop !3025

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698:       ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695
  %i.dgg = phi i64 [ %i.dge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695 ], [ %.ph5959, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411 = phi i32 [ %i.dgh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695 ], [ %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411.ph, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader ]
  %i.dgh = add nsw i32 %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411, %i.dej ; 2 uses
  %.not16.us.us102.us.i.i.i.i.i.i.i.i.i699 = icmp eq i32 %i.dgh, %i.dem
  br i1 %.not16.us.us102.us.i.i.i.i.i.i.i.i.i699, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695, !llvm.loop !3023

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681
  %i.dgi = load ptr, ptr %i.der, align 8, !tbaa !331
  %i.dgj = sext i32 %i.del to i64
  %i.dgk = sext i32 %i.dej to i64
  %i.dgl = sext i32 %i.dcb to i64
  %invariant.gep193.i.i.i.i.i.i.i.i.i683 = getelementptr [4 x i8], ptr %i.dgi, i64 %i.dgl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i688, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682
  %indvars.iv154.i.i.i.i.i.i.i.i.i685 = phi i64 [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i690, %.critedge.us.i.i.i.i.i.i.i.i.i688 ], [ %i.dgj, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682 ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i686 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i689, %.critedge.us.i.i.i.i.i.i.i.i.i688 ], [ %i.dek, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682 ] ; 2 uses
  %gep194.i.i.i.i.i.i.i.i.i687 = getelementptr [4 x i8], ptr %invariant.gep193.i.i.i.i.i.i.i.i.i683, i64 %indvars.iv154.i.i.i.i.i.i.i.i.i685
  %i.dgm = load i32, ptr %gep194.i.i.i.i.i.i.i.i.i687, align 4, !tbaa !3
  %i.dgn = sext i32 %i.dgm to i64
  %i.dgo = getelementptr inbounds [2 x i8], ptr %i.dex, i64 %i.dgn
  %i.dgp = load i16, ptr %i.dgo, align 2, !tbaa !2009
  %i.dgq = icmp eq i16 %i.dgp, %i.dcv
  br i1 %i.dgq, label %bb.rv, label %.critedge.us.i.i.i.i.i.i.i.i.i688

bb.rv:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684
  %i.dgr = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i686, -1 ; 2 uses
  %i.dgs = icmp eq i64 %i.dgr, 0
  br i1 %i.dgs, label %.split.us.loopexit112.i.i.i.i.i.i.i.i.i692, label %.critedge.us.i.i.i.i.i.i.i.i.i688

.critedge.us.i.i.i.i.i.i.i.i.i688:                ; preds = %bb.rv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684
  %.1.us.i.i.i.i.i.i.i.i.i689 = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i686, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684 ], [ %i.dgr, %bb.rv ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i690 = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i685, %i.dgk ; 2 uses
  %i.dgt = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i690 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i691 = icmp eq i32 %i.dem, %i.dgt
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i691, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684, !llvm.loop !3023

.lr.ph.split.i.i.i.i.i.i.i.i.i602:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i600
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.den, i64 57
  %i.dgv = load i8, ptr %i.dgu, align 1, !range !73
  %i.dgw = trunc nuw i8 %i.dgv to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i603 = select i1 %i.dew, i1 true, i1 %i.dgw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i603, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i604

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i602
  %i.dgx = sext i32 %i.del to i64
  %i.dgy = sext i32 %i.dej to i64
  %i.dgz = sext i32 %i.dcb to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669:       ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i675, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668
  %indvars.iv151.i.i.i.i.i.i.i.i.i670 = phi i64 [ %i.dgx, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668 ], [ %indvars.iv.next152.i.i.i.i.i.i.i.i.i677, %.critedge.us50.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i671 = phi i64 [ %i.dek, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668 ], [ %.1.us51.i.i.i.i.i.i.i.i.i676, %.critedge.us50.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %i.dha = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i670, %i.dgz ; 4 uses
  %i.dhb = lshr i64 %i.dha, 6
  %i.dhc = and i64 %i.dhb, 67108863
  %i.dhd = getelementptr inbounds nuw [8 x i8], ptr %i.dep, i64 %i.dhc
  %i.dhe = load i64, ptr %i.dhd, align 8, !tbaa !137
  %i.dhf = and i64 %i.dha, 63
  %i.dhg = shl nuw i64 1, %i.dhf
  %i.dhh = and i64 %i.dhg, %i.dhe
  %.not.i.i.us.i.i.i.i.i.i.i.i.i672 = icmp eq i64 %i.dhh, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i672, label %.critedge.us50.i.i.i.i.i.i.i.i.i675, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669
  %i.dhi = trunc nsw i64 %i.dha to i32
  %i.dhj = load ptr, ptr %i.des, align 8, !tbaa !487
  br i1 %i.dew, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.rw

bb.rw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673
  %i.dhk = load i8, ptr %i.deq, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dhl = trunc nuw i8 %i.dhk to i1
  br i1 %i.dhl, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dhm = load ptr, ptr %i.der, align 8, !tbaa !331
  %i.dhn = getelementptr inbounds [4 x i8], ptr %i.dhm, i64 %i.dha
  %i.dho = load i32, ptr %i.dhn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.ry:                                            ; preds = %bb.rw
  %i.dhp = load i32, ptr %i.deu, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.ry, %bb.rx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i674 = phi i32 [ %i.dho, %bb.rx ], [ %i.dhp, %bb.ry ], [ %i.dhi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673 ]
  %i.dhq = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i674 to i64
  %i.dhr = getelementptr inbounds [2 x i8], ptr %i.dhj, i64 %i.dhq
  %i.dhs = load i16, ptr %i.dhr, align 2, !tbaa !2009
  %i.dht = icmp eq i16 %i.dhs, %i.dcv
  br i1 %i.dht, label %bb.rz, label %.critedge.us50.i.i.i.i.i.i.i.i.i675

bb.rz:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.dhu = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i671, -1 ; 2 uses
  %i.dhv = icmp eq i64 %i.dhu, 0
  br i1 %i.dhv, label %.split.us.loopexit114.i.i.i.i.i.i.i.i.i679, label %.critedge.us50.i.i.i.i.i.i.i.i.i675

.critedge.us50.i.i.i.i.i.i.i.i.i675:              ; preds = %bb.rz, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669
  %.1.us51.i.i.i.i.i.i.i.i.i676 = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i671, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.dhu, %bb.rz ], [ %.03542.us46.i.i.i.i.i.i.i.i.i671, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669 ]
  %indvars.iv.next152.i.i.i.i.i.i.i.i.i677 = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i670, %i.dgy ; 2 uses
  %i.dhw = trunc nsw i64 %indvars.iv.next152.i.i.i.i.i.i.i.i.i677 to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i678 = icmp eq i32 %i.dem, %i.dhw
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i678, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669, !llvm.loop !3023

.lr.ph.split.split.i.i.i.i.i.i.i.i.i604:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i602
  %i.dhx = load i8, ptr %i.deq, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dhy = trunc nuw i8 %i.dhx to i1
  br i1 %i.dhy, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i604
  %i.dhz = load i64, ptr %i.dep, align 8, !tbaa !137
  %i.dia = and i64 %i.dhz, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i660 = icmp eq i64 %i.dia, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i660, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659
  %i.dib = load ptr, ptr %i.des, align 8, !tbaa !487
  %i.dic = load i32, ptr %i.deu, align 8, !tbaa !488
  %i.did = sext i32 %i.dic to i64
  %i.die = getelementptr inbounds [2 x i8], ptr %i.dib, i64 %i.did
  %i.dif = load i16, ptr %i.die, align 2, !tbaa !2009
  %i.dig = icmp eq i16 %i.dif, %i.dcv
  br i1 %i.dig, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661
  %i.dih = trunc i64 %i.dek to i32
  %i.dii = add i32 %i.dih, -1
  %i.dij = mul i32 %i.dii, %i.dej
  %i.dik = add i32 %i.del, %i.dij                 ; 3 uses
  %i.dil = add nsw i64 %i.dek, -1                 ; 5 uses
  %i.dim = icmp eq i64 %i.dil, 0
  br i1 %i.dim, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662
  %min.iters.check5696 = icmp samesign ult i64 %i.dek, 33
  br i1 %min.iters.check5696, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader, label %vector.ph5697

vector.ph5697:                                    ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph
  %n.vec5699 = and i64 %i.dil, -32                ; 3 uses
  %i.din = and i64 %i.dil, 31
  %i.dio = trunc i64 %n.vec5699 to i32
  %i.dip = mul i32 %i.dej, %i.dio
  %i.diq = add i32 %i.del, %i.dip
  %broadcast.splatinsert5700 = insertelement <32 x i32> poison, i32 %i.dej, i64 0
  %broadcast.splat5701 = shufflevector <32 x i32> %broadcast.splatinsert5700, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5702 = insertelement <32 x i32> poison, i32 %i.dem, i64 0
  %broadcast.splat5703 = shufflevector <32 x i32> %broadcast.splatinsert5702, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5704 = insertelement <32 x i32> poison, i32 %i.del, i64 0
  %broadcast.splat5705 = shufflevector <32 x i32> %broadcast.splatinsert5704, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.dir = mul <32 x i32> %broadcast.splat5701, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5706 = add <32 x i32> %broadcast.splat5705, %i.dir
  %i.dis = shl nsw i32 %i.dej, 5
  %broadcast.splatinsert5707 = insertelement <32 x i32> poison, i32 %i.dis, i64 0
  %broadcast.splat5708 = shufflevector <32 x i32> %broadcast.splatinsert5707, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5709

vector.body5709:                                  ; preds = %vector.body.interim5714, %vector.ph5697
  %index5710 = phi i64 [ 0, %vector.ph5697 ], [ %index.next5712, %vector.body.interim5714 ]
  %vec.ind5711 = phi <32 x i32> [ %induction5706, %vector.ph5697 ], [ %vec.ind.next5713, %vector.body.interim5714 ] ; 2 uses
  %i.dit = add nsw <32 x i32> %vec.ind5711, %broadcast.splat5701
  %i.diu = icmp eq <32 x i32> %i.dit, %broadcast.splat5703
  %i.div = freeze <32 x i1> %i.diu
  %i.diw = bitcast <32 x i1> %i.div to i32
  %.not5854 = icmp eq i32 %i.diw, 0
  br i1 %.not5854, label %vector.body.interim5714, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

vector.body.interim5714:                          ; preds = %vector.body5709
  %vec.ind.next5713 = add <32 x i32> %vec.ind5711, %broadcast.splat5708
  %index.next5712 = add nuw i64 %index5710, 32    ; 2 uses
  %i.dix = icmp eq i64 %index.next5712, %n.vec5699
  br i1 %i.dix, label %middle.block5715, label %vector.body5709, !llvm.loop !3026

middle.block5715:                                 ; preds = %vector.body.interim5714
  %cmp.n5716 = icmp eq i64 %i.dil, %n.vec5699
  br i1 %cmp.n5716, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph, %middle.block5715
  %.ph5964 = phi i64 [ %i.dil, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph ], [ %i.din, %middle.block5715 ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410.ph = phi i32 [ %i.del, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph ], [ %i.diq, %middle.block5715 ]
  br label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666
  %i.diy = add nsw i64 %i.dja, -1                 ; 2 uses
  %i.diz = icmp eq i64 %i.diy, 0
  br i1 %i.diz, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666, !llvm.loop !3027

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666:      ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663
  %i.dja = phi i64 [ %i.diy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663 ], [ %.ph5964, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410 = phi i32 [ %i.djb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663 ], [ %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410.ph, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader ]
  %i.djb = add nsw i32 %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410, %i.dej ; 2 uses
  %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i667 = icmp eq i32 %i.djb, %i.dem
  br i1 %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i667, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663, !llvm.loop !3023

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i604
  %i.djc = load ptr, ptr %i.der, align 8, !tbaa !331
  %i.djd = sext i32 %i.del to i64
  %i.dje = sext i32 %i.dej to i64
  %i.djf = sext i32 %i.dcb to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i606 = getelementptr [4 x i8], ptr %i.djc, i64 %i.djf
  br label %bb.sa

bb.sa:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i611, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605
  %indvars.iv.i.i.i.i.i.i.i.i.i607 = phi i64 [ %i.djd, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i613, %.critedge.i.i.i.i.i.i.i.i.i611 ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i608 = phi i64 [ %i.dek, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605 ], [ %.1.i.i.i.i.i.i.i.i.i612, %.critedge.i.i.i.i.i.i.i.i.i611 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i609 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i606, i64 %indvars.iv.i.i.i.i.i.i.i.i.i607
  %i.djg = load i32, ptr %gep.i.i.i.i.i.i.i.i.i609, align 4, !tbaa !3 ; 2 uses
  %i.djh = zext i32 %i.djg to i64                 ; 2 uses
  %i.dji = lshr i64 %i.djh, 6
  %i.djj = getelementptr inbounds nuw [8 x i8], ptr %i.dep, i64 %i.dji
  %i.djk = load i64, ptr %i.djj, align 8, !tbaa !137
  %i.djl = and i64 %i.djh, 63
  %i.djm = shl nuw i64 1, %i.djl
  %i.djn = and i64 %i.djm, %i.djk
  %.not.i7.i.i.i.i.i.i.i.i.i.i610 = icmp eq i64 %i.djn, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i610, label %.critedge.i.i.i.i.i.i.i.i.i611, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.sa
  %i.djo = load ptr, ptr %i.des, align 8, !tbaa !487
  %i.djp = sext i32 %i.djg to i64
  %i.djq = getelementptr inbounds [2 x i8], ptr %i.djo, i64 %i.djp
  %i.djr = load i16, ptr %i.djq, align 2, !tbaa !2009
  %i.djs = icmp eq i16 %i.djr, %i.dcv
  br i1 %i.djs, label %bb.sb, label %.critedge.i.i.i.i.i.i.i.i.i611

bb.sb:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.djt = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i608, -1 ; 2 uses
  %i.dju = icmp eq i64 %i.djt, 0
  br i1 %i.dju, label %.split.us.loopexit124.i.i.i.i.i.i.i.i.i649, label %.critedge.i.i.i.i.i.i.i.i.i611

.split.us.loopexit.i.i.i.i.i.i.i.i.i710:          ; preds = %bb.ru
  %i.djv = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i703 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.loopexit112.i.i.i.i.i.i.i.i.i692:       ; preds = %bb.rv
  %i.djw = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i685 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.loopexit114.i.i.i.i.i.i.i.i.i679:       ; preds = %bb.rz
  %i.djx = trunc nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i670 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.loopexit124.i.i.i.i.i.i.i.i.i649:       ; preds = %bb.sb
  %i.djy = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i607 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.i.i.i.i.i.i.i.i.i650:                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662, %middle.block5715, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694, %middle.block5690, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i649, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i679, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i692, %.split.us.loopexit.i.i.i.i.i.i.i.i.i710
  %.us-phi.i.i.i.i.i.i.i.i.i651 = phi i32 [ %i.djx, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i679 ], [ %i.djy, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i649 ], [ %i.djv, %.split.us.loopexit.i.i.i.i.i.i.i.i.i710 ], [ %i.djw, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i692 ], [ %i.dfq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694 ], [ %i.dfq, %middle.block5690 ], [ %i.dik, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662 ], [ %i.dik, %middle.block5715 ], [ %i.dfq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695 ], [ %i.dik, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663 ] ; 3 uses
  %i.djz = load ptr, ptr %.sroa.12.0..sroa_idx.i568, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.dka = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i651, 1
  %i.dkb = sext i32 %i.dka to i64
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.djz, i64 144 ; 2 uses
  %i.dkd = load ptr, ptr %i.dkc, align 8, !tbaa !341 ; 2 uses
  %i.dke = icmp eq ptr %i.dkd, null
  br i1 %i.dke, label %bb.sc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652

bb.sc:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i650
  %i.dkf = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.djz)
          to label %.noexc19.i.i.i.i.i.i.i.i657 unwind label %bb.sh ; 0 uses

.noexc19.i.i.i.i.i.i.i.i657:                      ; preds = %bb.sc
  %.pre.i.i.i.i.i.i.i.i.i.i658 = load ptr, ptr %i.dkc, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652: ; preds = %.noexc19.i.i.i.i.i.i.i.i657, %.split.us.i.i.i.i.i.i.i.i.i650
  %i.dkg = phi ptr [ %i.dkd, %.split.us.i.i.i.i.i.i.i.i.i650 ], [ %.pre.i.i.i.i.i.i.i.i.i.i658, %.noexc19.i.i.i.i.i.i.i.i657 ]
  %i.dkh = getelementptr inbounds [8 x i8], ptr %i.dkg, i64 %i.ddz
  store i64 %i.dkb, ptr %i.dkh, align 8, !tbaa !137
  %i.dki = getelementptr inbounds nuw i8, ptr %i.djz, i64 32 ; 2 uses
  %i.dkj = load ptr, ptr %i.dki, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i653 = icmp eq ptr %i.dkj, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i653, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %bb.sd

bb.sd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.djz, i64 56
  %i.dkl = load i32, ptr %i.dkk, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.djz, i32 noundef %i.dkl, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i654 unwind label %bb.sh

.noexc20.i.i.i.i.i.i.i.i654:                      ; preds = %bb.sd
  %i.dkm = load ptr, ptr %i.dki, align 8, !tbaa !362 ; 2 uses
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 44
  %i.dko = load i8, ptr %i.dkn, align 4, !tbaa !363
  %i.dkp = and i8 %i.dko, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i655 = icmp eq i8 %i.dkp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i655, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656, label %.invoke.i.i.i.i.i.i.i.i644, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656: ; preds = %.noexc20.i.i.i.i.i.i.i.i654
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkm, i64 16
  %i.dkr = load ptr, ptr %i.dkq, align 8, !tbaa !368
  %i.dks = lshr i64 %.074.i.i.i.i.i.i.i.i591, 3
  %i.dkt = and i64 %i.dks, 536870911
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkr, i64 %i.dkt ; 2 uses
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !30
  %i.dkw = trunc i64 %.074.i.i.i.i.i.i.i.i591 to i8
  %i.dkx = and i8 %i.dkw, 7
  %i.dky = shl nuw i8 1, %i.dkx
  %i.dkz = or i8 %i.dkv, %i.dky
  store i8 %i.dkz, ptr %i.dku, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

.critedge.i.i.i.i.i.i.i.i.i611:                   ; preds = %bb.sb, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.sa
  %.1.i.i.i.i.i.i.i.i.i612 = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i608, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.djt, %bb.sb ], [ %.03542.i.i.i.i.i.i.i.i.i608, %bb.sa ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i613 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i607, %i.dje ; 2 uses
  %i.dla = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i613 to i32
  %.not16.i.i.i.i.i.i.i.i.i614 = icmp eq i32 %i.dem, %i.dla
  br i1 %.not16.i.i.i.i.i.i.i.i.i614, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %bb.sa, !llvm.loop !3023

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615: ; preds = %.critedge.i.i.i.i.i.i.i.i.i611, %vector.body5709, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666, %.critedge.us50.i.i.i.i.i.i.i.i.i675, %.critedge.us.i.i.i.i.i.i.i.i.i688, %vector.body5684, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698, %.critedge.us.us.i.i.i.i.i.i.i.i.i706, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693, %bb.rt
  %.040.i.i.i.i.i.i.i.i.i616 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i651, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652 ], [ %.us-phi.i.i.i.i.i.i.i.i.i651, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656 ], [ %i.del, %bb.rt ], [ %i.dem, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666 ], [ %i.dem, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698 ], [ %i.dem, %.critedge.us50.i.i.i.i.i.i.i.i.i675 ], [ %i.dem, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661 ], [ %i.dem, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693 ], [ %i.dem, %vector.body5684 ], [ %i.dem, %.critedge.us.us.i.i.i.i.i.i.i.i.i706 ], [ %i.dem, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659 ], [ %i.dem, %vector.body5709 ], [ %i.dem, %.critedge.us.i.i.i.i.i.i.i.i.i688 ], [ %i.dem, %.critedge.i.i.i.i.i.i.i.i.i611 ]
  %i.dlb = load ptr, ptr %.sroa.952.0..sroa_idx.i565, align 8, !tbaa !3020, !nonnull !74, !align !497
  %i.dlc = load i32, ptr %i.dlb, align 4, !tbaa !3
  %i.dld = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i616, %i.dlc
  br i1 %i.dld, label %bb.se, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.se:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615
  %i.dle = load ptr, ptr %.sroa.12.0..sroa_idx.i568, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 144 ; 2 uses
  %i.dlg = load ptr, ptr %i.dlf, align 8, !tbaa !341 ; 2 uses
  %i.dlh = icmp eq ptr %i.dlg, null
  br i1 %i.dlh, label %bb.sf, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617

bb.sf:                                            ; preds = %bb.se
  %i.dli = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.dle)
          to label %.noexc22.i.i.i.i.i.i.i.i647 unwind label %bb.sh ; 0 uses

.noexc22.i.i.i.i.i.i.i.i647:                      ; preds = %bb.sf
  %.pre.i26.i.i.i.i.i.i.i.i.i648 = load ptr, ptr %i.dlf, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617: ; preds = %.noexc22.i.i.i.i.i.i.i.i647, %bb.se
  %i.dlj = phi ptr [ %i.dlg, %bb.se ], [ %.pre.i26.i.i.i.i.i.i.i.i.i648, %.noexc22.i.i.i.i.i.i.i.i647 ]
  %i.dlk = getelementptr inbounds [8 x i8], ptr %i.dlj, i64 %i.ddz
  store i64 0, ptr %i.dlk, align 8, !tbaa !137
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dle, i64 32 ; 2 uses
  %i.dlm = load ptr, ptr %i.dll, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i618 = icmp eq ptr %i.dlm, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i618, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.sg

bb.sg:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dle, i64 56
  %i.dlo = load i32, ptr %i.dln, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.dle, i32 noundef %i.dlo, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i642 unwind label %bb.sh

.noexc23.i.i.i.i.i.i.i.i642:                      ; preds = %bb.sg
  %i.dlp = load ptr, ptr %i.dll, align 8, !tbaa !362 ; 2 uses
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 44
  %i.dlr = load i8, ptr %i.dlq, align 4, !tbaa !363
  %i.dls = and i8 %i.dlr, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i643 = icmp eq i8 %i.dls, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i643, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i646, label %.invoke.i.i.i.i.i.i.i.i644, !prof !69

.invoke.i.i.i.i.i.i.i.i644:                       ; preds = %.noexc23.i.i.i.i.i.i.i.i642, %.noexc20.i.i.i.i.i.i.i.i654
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i645 unwind label %bb.sh

.cont.i.i.i.i.i.i.i.i645:                         ; preds = %.invoke.i.i.i.i.i.i.i.i644
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i646: ; preds = %.noexc23.i.i.i.i.i.i.i.i642
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dlp, i64 16
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.wn:                                            ; preds = %bb.wm
  %i.eff = getelementptr inbounds nuw i8, ptr %i.eey, i64 59
  %i.efg = load i8, ptr %i.eff, align 1, !tbaa !339, !range !73, !noundef !74
  %i.efh = trunc nuw i8 %i.efg to i1
  br i1 %i.efh, label %bb.wo, label %bb.wp

bb.wo:                                            ; preds = %bb.wn
  %i.efi = getelementptr inbounds nuw i8, ptr %i.eey, i64 64
  %i.efj = load i32, ptr %i.efi, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897

bb.wp:                                            ; preds = %bb.wn
  %i.efk = getelementptr inbounds nuw i8, ptr %i.eey, i64 8
  %i.efl = load ptr, ptr %i.efk, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i896 = shl i64 %.074.i.i.i.i.i.i.i.i895, 32
  %i.efm = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i896, 30
  %i.efn = getelementptr inbounds i8, ptr %i.efl, i64 %i.efm
  %i.efo = load i32, ptr %i.efn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897: ; preds = %bb.wp, %bb.wo, %bb.wm
  %.0.i.i.i.i.i.i.i.i.i.i.i898 = phi i32 [ %i.efo, %bb.wp ], [ %i.efj, %bb.wo ], [ %i.eez, %bb.wm ]
  %i.efp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i898 to i64
  %i.efq = getelementptr inbounds [8 x i8], ptr %i.efb, i64 %i.efp
  %i.efr = load i64, ptr %i.efq, align 8, !tbaa !137 ; 6 uses
  %i.efs = load ptr, ptr %.sroa.650.0..sroa_idx.i, align 8, !tbaa !3049, !nonnull !74, !align !275 ; 5 uses
  %i.eft = getelementptr inbounds nuw i8, ptr %i.efs, i64 16
  %i.efu = load ptr, ptr %i.eft, align 8, !tbaa !487
  %i.efv = getelementptr inbounds nuw i8, ptr %i.efs, i64 58
  %i.efw = load i8, ptr %i.efv, align 2, !tbaa !338, !range !73, !noundef !74
  %i.efx = trunc nuw i8 %i.efw to i1
  br i1 %i.efx, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i, label %bb.wq

bb.wq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897
  %i.efy = getelementptr inbounds nuw i8, ptr %i.efs, i64 59
  %i.efz = load i8, ptr %i.efy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ega = trunc nuw i8 %i.efz to i1
  br i1 %i.ega, label %bb.wr, label %bb.ws

bb.wr:                                            ; preds = %bb.wq
  %i.egb = getelementptr inbounds nuw i8, ptr %i.efs, i64 64
  %i.egc = load i32, ptr %i.egb, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i

bb.ws:                                            ; preds = %bb.wq
  %i.egd = getelementptr inbounds nuw i8, ptr %i.efs, i64 8
  %i.ege = load ptr, ptr %i.egd, align 8, !tbaa !331
  %sext38.i.i.i.i.i.i.i.i.i899 = shl i64 %.074.i.i.i.i.i.i.i.i895, 32
  %i.egf = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i899, 30
  %i.egg = getelementptr inbounds i8, ptr %i.ege, i64 %i.egf
  %i.egh = load i32, ptr %i.egg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i: ; preds = %bb.ws, %bb.wr, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897
  %.0.i.i18.i.i.i.i.i.i.i.i.i900 = phi i32 [ %i.egh, %bb.ws ], [ %i.egc, %bb.wr ], [ %i.eez, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897 ]
  %i.egi = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i900 to i64
  %i.egj = getelementptr inbounds [8 x i8], ptr %i.efu, i64 %i.egi
  %i.egk = load i64, ptr %i.egj, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i901 = icmp eq i64 %i.egk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i901, label %bb.wt, label %bb.ww, !prof !48

bb.wt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #35, !noalias !3050
  store i64 0, ptr %140, align 16, !tbaa !30, !noalias !3050
  store i32 0, ptr %i.eed, align 16, !tbaa !30, !alias.scope !3053, !noalias !3050
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %141, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %140)
          to label %.noexc.i.i.i.i.i.i.i.i972 unwind label %bb.xk

.noexc.i.i.i.i.i.i.i.i972:                        ; preds = %bb.wt
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #35, !noalias !3050
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %141, ptr nonnull @.str.178) #38
          to label %bb.wu unwind label %bb.wv

bb.wu:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i972
  unreachable

bb.wv:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i972
  %i.egl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.egm = load ptr, ptr %141, align 8, !tbaa !49 ; 2 uses
  %i.egn = icmp eq ptr %i.egm, %i.eee
  br i1 %i.egn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i974, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i973

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i973: ; preds = %bb.wv
  %i.ego = load i64, ptr %i.eee, align 8, !tbaa !30
  %i.egp = add i64 %i.ego, 1
  call void @_ZdlPvm(ptr noundef %i.egm, i64 noundef %i.egp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i974

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i974: ; preds = %bb.wv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i973
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #35
  br label %.body.i.i.i.i.i.i.i.i917

bb.ww:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i
  %i.egq = load ptr, ptr %.sroa.751.0..sroa_idx.i, align 8, !tbaa !3056, !nonnull !74, !align !275
  %i.egr = load ptr, ptr %i.egq, align 8, !tbaa !329
  %i.egs = load ptr, ptr %.sroa.852.0..sroa_idx.i, align 8, !tbaa !3057, !nonnull !74, !align !497 ; 2 uses
  %i.egt = load ptr, ptr %.sroa.953.0..sroa_idx.i, align 8, !tbaa !3058, !nonnull !74, !align !497 ; 2 uses
  %i.egu = load ptr, ptr %.sroa.1054.0..sroa_idx.i, align 8, !tbaa !3059, !nonnull !74, !align !497
  %sext39.i.i.i.i.i.i.i.i.i = shl i64 %.074.i.i.i.i.i.i.i.i895, 32
  %i.egv = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.egw = getelementptr inbounds [4 x i8], ptr %i.ees, i64 %i.egv
  %i.egx = load i32, ptr %i.egw, align 4, !tbaa !3
  %i.egy = sext i32 %i.egx to i64
  %i.egz = getelementptr inbounds [4 x i8], ptr %i.egr, i64 %i.egy
  %i.eha = load i32, ptr %i.egz, align 4, !tbaa !3 ; 2 uses
  %i.ehb = icmp sgt i64 %i.egk, 0                 ; 3 uses
  %i.ehc = add nsw i32 %i.eha, -1
  %i.ehd = select i1 %i.ehb, i32 0, i32 %i.ehc
  store i32 %i.ehd, ptr %i.egs, align 4, !tbaa !3
  %i.ehe = select i1 %i.ehb, i32 %i.eha, i32 -1
  store i32 %i.ehe, ptr %i.egt, align 4, !tbaa !3
  %i.ehf = select i1 %i.ehb, i32 1, i32 -1        ; 15 uses
  store i32 %i.ehf, ptr %i.egu, align 4, !tbaa !3
  %i.ehg = call noundef i64 @llvm.abs.i64(i64 %i.egk, i1 true) ; 10 uses
  %i.ehh = load i32, ptr %i.egs, align 4, !tbaa !3 ; 14 uses
  %i.ehi = load i32, ptr %i.egt, align 4, !tbaa !3 ; 20 uses
  %.not1642.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ehh, %i.ehi
  br i1 %.not1642.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %.lr.ph.i.i.i.i.i.i.i.i.i902

.lr.ph.i.i.i.i.i.i.i.i.i902:                      ; preds = %bb.ww
  %i.ehj = load ptr, ptr %.sroa.11.0..sroa_idx.i873, align 8, !tbaa !3060, !nonnull !74, !align !275 ; 7 uses
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.ehj, i64 24
  %i.ehl = load ptr, ptr %i.ehk, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i903 = icmp eq ptr %i.ehl, null
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehj, i64 59 ; 3 uses
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.ehj, i64 8 ; 3 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehj, i64 16 ; 4 uses
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.ehj, i64 58
  %i.ehq = getelementptr inbounds nuw i8, ptr %i.ehj, i64 64 ; 3 uses
  %i.ehr = load i8, ptr %i.ehp, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ehs = trunc nuw i8 %i.ehr to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i903, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i958, label %.lr.ph.split.i.i.i.i.i.i.i.i.i904

.lr.ph.split.us.i.i.i.i.i.i.i.i.i958:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i902
  %i.eht = load ptr, ptr %i.eho, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ehs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i958
  %i.ehu = sext i32 %i.ehh to i64
  %i.ehv = sext i32 %i.ehf to i64
  %i.ehw = sext i32 %i.eex to i64
  %invariant.gep196.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.eht, i64 %i.ehw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i968, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966
  %indvars.iv158.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966 ], [ %indvars.iv.next159.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i968 ] ; 3 uses
  %.03643.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i969, %.critedge.us.us.i.i.i.i.i.i.i.i.i968 ] ; 2 uses
  %gep197.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep196.i.i.i.i.i.i.i.i.i, i64 %indvars.iv158.i.i.i.i.i.i.i.i.i
  %i.ehx = load i64, ptr %gep197.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.ehy = icmp eq i64 %i.ehx, %i.efr
  br i1 %i.ehy, label %bb.wx, label %.critedge.us.us.i.i.i.i.i.i.i.i.i968

bb.wx:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967
  %i.ehz = add nsw i64 %.03643.us.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.eia = icmp eq i64 %i.ehz, 0
  br i1 %i.eia, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i971, label %.critedge.us.us.i.i.i.i.i.i.i.i.i968

.critedge.us.us.i.i.i.i.i.i.i.i.i968:             ; preds = %bb.wx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967
  %.1.us.us.i.i.i.i.i.i.i.i.i969 = phi i64 [ %.03643.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967 ], [ %i.ehz, %bb.wx ]
  %indvars.iv.next159.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv158.i.i.i.i.i.i.i.i.i, %i.ehv ; 2 uses
  %i.eib = trunc nsw i64 %indvars.iv.next159.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i970 = icmp eq i32 %i.ehi, %i.eib
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i970, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967, !llvm.loop !3061

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i958
  %i.eic = load i8, ptr %i.ehm, align 1, !tbaa !339, !range !73, !noundef !74
  %i.eid = trunc nuw i8 %i.eic to i1
  br i1 %i.eid, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959
  %i.eie = load i32, ptr %i.ehq, align 8, !tbaa !488
  %i.eif = sext i32 %i.eie to i64
  %i.eig = getelementptr inbounds [8 x i8], ptr %i.eht, i64 %i.eif
  %i.eih = load i64, ptr %i.eig, align 8, !tbaa !137
  %i.eii = icmp eq i64 %i.eih, %i.efr
  br i1 %i.eii, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965
  %i.eij = trunc i64 %i.ehg to i32
  %i.eik = add i32 %i.eij, -1
  %i.eil = mul i32 %i.eik, %i.ehf
  %i.eim = add i32 %i.ehh, %i.eil                 ; 3 uses
  %i.ein = add nsw i64 %i.ehg, -1                 ; 5 uses
  %i.eio = icmp eq i64 %i.ein, 0
  br i1 %i.eio, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph:    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5621 = icmp samesign ult i64 %i.ehg, 33
  br i1 %min.iters.check5621, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5622

vector.ph5622:                                    ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5624 = and i64 %i.ein, -32                ; 3 uses
  %i.eip = and i64 %i.ein, 31
  %i.eiq = trunc i64 %n.vec5624 to i32
  %i.eir = mul i32 %i.ehf, %i.eiq
  %i.eis = add i32 %i.ehh, %i.eir
  %broadcast.splatinsert5625 = insertelement <32 x i32> poison, i32 %i.ehf, i64 0
  %broadcast.splat5626 = shufflevector <32 x i32> %broadcast.splatinsert5625, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5627 = insertelement <32 x i32> poison, i32 %i.ehi, i64 0
  %broadcast.splat5628 = shufflevector <32 x i32> %broadcast.splatinsert5627, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5629 = insertelement <32 x i32> poison, i32 %i.ehh, i64 0
  %broadcast.splat5630 = shufflevector <32 x i32> %broadcast.splatinsert5629, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.eit = mul <32 x i32> %broadcast.splat5626, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5631 = add <32 x i32> %broadcast.splat5630, %i.eit
  %i.eiu = shl nsw i32 %i.ehf, 5
  %broadcast.splatinsert5632 = insertelement <32 x i32> poison, i32 %i.eiu, i64 0
  %broadcast.splat5633 = shufflevector <32 x i32> %broadcast.splatinsert5632, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5634

vector.body5634:                                  ; preds = %vector.body.interim5639, %vector.ph5622
  %index5635 = phi i64 [ 0, %vector.ph5622 ], [ %index.next5637, %vector.body.interim5639 ]
  %vec.ind5636 = phi <32 x i32> [ %induction5631, %vector.ph5622 ], [ %vec.ind.next5638, %vector.body.interim5639 ] ; 2 uses
  %i.eiv = add nsw <32 x i32> %vec.ind5636, %broadcast.splat5626
  %i.eiw = icmp eq <32 x i32> %i.eiv, %broadcast.splat5628
  %i.eix = freeze <32 x i1> %i.eiw
  %i.eiy = bitcast <32 x i1> %i.eix to i32
  %.not5853 = icmp eq i32 %i.eiy, 0
  br i1 %.not5853, label %vector.body.interim5639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

vector.body.interim5639:                          ; preds = %vector.body5634
  %vec.ind.next5638 = add <32 x i32> %vec.ind5636, %broadcast.splat5633
  %index.next5637 = add nuw i64 %index5635, 32    ; 2 uses
  %i.eiz = icmp eq i64 %index.next5637, %n.vec5624
  br i1 %i.eiz, label %middle.block5640, label %vector.body5634, !llvm.loop !3062

middle.block5640:                                 ; preds = %vector.body.interim5639
  %cmp.n5641 = icmp eq i64 %i.ein, %n.vec5624
  br i1 %cmp.n5641, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5640
  %.ph5991 = phi i64 [ %i.ein, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eip, %middle.block5640 ]
  %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403.ph = phi i32 [ %i.ehh, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eis, %middle.block5640 ]
  br label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i
  %i.eja = add nsw i64 %i.ejc, -1                 ; 2 uses
  %i.ejb = icmp eq i64 %i.eja, 0
  br i1 %i.ejb, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3063

.critedge.us.us101.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i
  %i.ejc = phi i64 [ %i.eja, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %.ph5991, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403 = phi i32 [ %i.ejd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403.ph, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ejd = add nsw i32 %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403, %i.ehf ; 2 uses
  %.not16.us.us103.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ejd, %i.ehi
  br i1 %.not16.us.us103.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3061

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959
  %i.eje = load ptr, ptr %i.ehn, align 8, !tbaa !331
  %i.ejf = sext i32 %i.ehh to i64
  %i.ejg = sext i32 %i.ehf to i64
  %i.ejh = sext i32 %i.eex to i64
  %invariant.gep194.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.eje, i64 %i.ejh
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i962, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960
  %indvars.iv155.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next156.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i962 ], [ %i.ejf, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960 ] ; 3 uses
  %.03643.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i963, %.critedge.us.i.i.i.i.i.i.i.i.i962 ], [ %i.ehg, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960 ] ; 2 uses
  %gep195.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep194.i.i.i.i.i.i.i.i.i, i64 %indvars.iv155.i.i.i.i.i.i.i.i.i
  %i.eji = load i32, ptr %gep195.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ejj = sext i32 %i.eji to i64
  %i.ejk = getelementptr inbounds [8 x i8], ptr %i.eht, i64 %i.ejj
  %i.ejl = load i64, ptr %i.ejk, align 8, !tbaa !137
  %i.ejm = icmp eq i64 %i.ejl, %i.efr
  br i1 %i.ejm, label %bb.wy, label %.critedge.us.i.i.i.i.i.i.i.i.i962

bb.wy:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961
  %i.ejn = add nsw i64 %.03643.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ejo = icmp eq i64 %i.ejn, 0
  br i1 %i.ejo, label %.split.us.loopexit113.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i962

.critedge.us.i.i.i.i.i.i.i.i.i962:                ; preds = %bb.wy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961
  %.1.us.i.i.i.i.i.i.i.i.i963 = phi i64 [ %.03643.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961 ], [ %i.ejn, %bb.wy ]
  %indvars.iv.next156.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i, %i.ejg ; 2 uses
  %i.ejp = trunc nsw i64 %indvars.iv.next156.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i964 = icmp eq i32 %i.ehi, %i.ejp
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i964, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961, !llvm.loop !3061

.lr.ph.split.i.i.i.i.i.i.i.i.i904:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i902
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ehj, i64 57
  %i.ejr = load i8, ptr %i.ejq, align 1, !range !73
  %i.ejs = trunc nuw i8 %i.ejr to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i905 = select i1 %i.ehs, i1 true, i1 %i.ejs
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i905, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i906

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i904
  %i.ejt = sext i32 %i.ehh to i64
  %i.eju = sext i32 %i.ehf to i64
  %i.ejv = sext i32 %i.eex to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956:       ; preds = %.critedge.us51.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955
  %indvars.iv152.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ejt, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955 ], [ %indvars.iv.next153.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03643.us47.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehg, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955 ], [ %.1.us52.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ejw = add nsw i64 %indvars.iv152.i.i.i.i.i.i.i.i.i, %i.ejv ; 4 uses
  %i.ejx = lshr i64 %i.ejw, 6
  %i.ejy = and i64 %i.ejx, 67108863
  %i.ejz = getelementptr inbounds nuw [8 x i8], ptr %i.ehl, i64 %i.ejy
  %i.eka = load i64, ptr %i.ejz, align 8, !tbaa !137
  %i.ekb = and i64 %i.ejw, 63
  %i.ekc = shl nuw i64 1, %i.ekb
  %i.ekd = and i64 %i.ekc, %i.eka
  %.not.i.i.us.i.i.i.i.i.i.i.i.i957 = icmp eq i64 %i.ekd, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i957, label %.critedge.us51.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956
  %i.eke = trunc nsw i64 %i.ejw to i32
  %i.ekf = load ptr, ptr %i.eho, align 8, !tbaa !487
  br i1 %i.ehs, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, label %bb.wz

bb.wz:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i
  %i.ekg = load i8, ptr %i.ehm, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ekh = trunc nuw i8 %i.ekg to i1
  br i1 %i.ekh, label %bb.xb, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.eki = load ptr, ptr %i.ehn, align 8, !tbaa !331
  %i.ekj = getelementptr inbounds [4 x i8], ptr %i.eki, i64 %i.ejw
  %i.ekk = load i32, ptr %i.ekj, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

bb.xb:                                            ; preds = %bb.wz
  %i.ekl = load i32, ptr %i.ehq, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i: ; preds = %bb.xb, %bb.xa, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i
  %.0.i.i20.us50.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ekk, %bb.xa ], [ %i.ekl, %bb.xb ], [ %i.eke, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i ]
  %i.ekm = sext i32 %.0.i.i20.us50.i.i.i.i.i.i.i.i.i to i64
  %i.ekn = getelementptr inbounds [8 x i8], ptr %i.ekf, i64 %i.ekm
  %i.eko = load i64, ptr %i.ekn, align 8, !tbaa !137
  %i.ekp = icmp eq i64 %i.eko, %i.efr
  br i1 %i.ekp, label %bb.xc, label %.critedge.us51.i.i.i.i.i.i.i.i.i

bb.xc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i
  %i.ekq = add nsw i64 %.03643.us47.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ekr = icmp eq i64 %i.ekq, 0
  br i1 %i.ekr, label %.split.us.loopexit115.i.i.i.i.i.i.i.i.i, label %.critedge.us51.i.i.i.i.i.i.i.i.i

.critedge.us51.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.xc, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956
  %.1.us52.i.i.i.i.i.i.i.i.i = phi i64 [ %.03643.us47.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i ], [ %i.ekq, %bb.xc ], [ %.03643.us47.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956 ]
  %indvars.iv.next153.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv152.i.i.i.i.i.i.i.i.i, %i.eju ; 2 uses
  %i.eks = trunc nsw i64 %indvars.iv.next153.i.i.i.i.i.i.i.i.i to i32
  %.not16.us53.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ehi, %i.eks
  br i1 %.not16.us53.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956, !llvm.loop !3061

.lr.ph.split.split.i.i.i.i.i.i.i.i.i906:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i904
  %i.ekt = load i8, ptr %i.ehm, align 1, !tbaa !339, !range !73, !noundef !74
  %i.eku = trunc nuw i8 %i.ekt to i1
  br i1 %i.eku, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i906
  %i.ekv = load i64, ptr %i.ehl, align 8, !tbaa !137
  %i.ekw = and i64 %i.ekv, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i953 = icmp eq i64 %i.ekw, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i953, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952
  %i.ekx = load ptr, ptr %i.eho, align 8, !tbaa !487
  %i.eky = load i32, ptr %i.ehq, align 8, !tbaa !488
  %i.ekz = sext i32 %i.eky to i64
  %i.ela = getelementptr inbounds [8 x i8], ptr %i.ekx, i64 %i.ekz
  %i.elb = load i64, ptr %i.ela, align 8, !tbaa !137
  %i.elc = icmp eq i64 %i.elb, %i.efr
  br i1 %i.elc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954
  %i.eld = trunc i64 %i.ehg to i32
  %i.ele = add i32 %i.eld, -1
  %i.elf = mul i32 %i.ele, %i.ehf
  %i.elg = add i32 %i.ehh, %i.elf                 ; 3 uses
  %i.elh = add nsw i64 %i.ehg, -1                 ; 5 uses
  %i.eli = icmp eq i64 %i.elh, 0
  br i1 %i.eli, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5646 = icmp samesign ult i64 %i.ehg, 33
  br i1 %min.iters.check5646, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5647

vector.ph5647:                                    ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5649 = and i64 %i.elh, -32                ; 3 uses
  %i.elj = and i64 %i.elh, 31
  %i.elk = trunc i64 %n.vec5649 to i32
  %i.ell = mul i32 %i.ehf, %i.elk
  %i.elm = add i32 %i.ehh, %i.ell
  %broadcast.splatinsert5650 = insertelement <32 x i32> poison, i32 %i.ehf, i64 0
  %broadcast.splat5651 = shufflevector <32 x i32> %broadcast.splatinsert5650, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5652 = insertelement <32 x i32> poison, i32 %i.ehi, i64 0
  %broadcast.splat5653 = shufflevector <32 x i32> %broadcast.splatinsert5652, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5654 = insertelement <32 x i32> poison, i32 %i.ehh, i64 0
  %broadcast.splat5655 = shufflevector <32 x i32> %broadcast.splatinsert5654, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.eln = mul <32 x i32> %broadcast.splat5651, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5656 = add <32 x i32> %broadcast.splat5655, %i.eln
  %i.elo = shl nsw i32 %i.ehf, 5
  %broadcast.splatinsert5657 = insertelement <32 x i32> poison, i32 %i.elo, i64 0
  %broadcast.splat5658 = shufflevector <32 x i32> %broadcast.splatinsert5657, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5659

vector.body5659:                                  ; preds = %vector.body.interim5664, %vector.ph5647
  %index5660 = phi i64 [ 0, %vector.ph5647 ], [ %index.next5662, %vector.body.interim5664 ]
  %vec.ind5661 = phi <32 x i32> [ %induction5656, %vector.ph5647 ], [ %vec.ind.next5663, %vector.body.interim5664 ] ; 2 uses
  %i.elp = add nsw <32 x i32> %vec.ind5661, %broadcast.splat5651
  %i.elq = icmp eq <32 x i32> %i.elp, %broadcast.splat5653
  %i.elr = freeze <32 x i1> %i.elq
  %i.els = bitcast <32 x i1> %i.elr to i32
  %.not5852 = icmp eq i32 %i.els, 0
  br i1 %.not5852, label %vector.body.interim5664, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

vector.body.interim5664:                          ; preds = %vector.body5659
  %vec.ind.next5663 = add <32 x i32> %vec.ind5661, %broadcast.splat5658
  %index.next5662 = add nuw i64 %index5660, 32    ; 2 uses
  %i.elt = icmp eq i64 %index.next5662, %n.vec5649
  br i1 %i.elt, label %middle.block5665, label %vector.body5659, !llvm.loop !3064

middle.block5665:                                 ; preds = %vector.body.interim5664
  %cmp.n5666 = icmp eq i64 %i.elh, %n.vec5649
  br i1 %cmp.n5666, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5665
  %.ph5996 = phi i64 [ %i.elh, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.elj, %middle.block5665 ]
  %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402.ph = phi i32 [ %i.ehh, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.elm, %middle.block5665 ]
  br label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i
  %i.elu = add nsw i64 %i.elw, -1                 ; 2 uses
  %i.elv = icmp eq i64 %i.elu, 0
  br i1 %i.elv, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3065

.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i
  %i.elw = phi i64 [ %i.elu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i ], [ %.ph5996, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402 = phi i32 [ %i.elx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i ], [ %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402.ph, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.elx = add nsw i32 %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402, %i.ehf ; 2 uses
  %.not16.us65.us87.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.elx, %i.ehi
  br i1 %.not16.us65.us87.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3061

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i906
  %i.ely = load ptr, ptr %i.ehn, align 8, !tbaa !331
  %i.elz = sext i32 %i.ehh to i64
  %i.ema = sext i32 %i.ehf to i64
  %i.emb = sext i32 %i.eex to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i908 = getelementptr [4 x i8], ptr %i.ely, i64 %i.emb
  br label %bb.xd

bb.xd:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i912, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907
  %indvars.iv.i.i.i.i.i.i.i.i.i909 = phi i64 [ %i.elz, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i914, %.critedge.i.i.i.i.i.i.i.i.i912 ] ; 3 uses
  %.03643.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehg, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907 ], [ %.1.i.i.i.i.i.i.i.i.i913, %.critedge.i.i.i.i.i.i.i.i.i912 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i910 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i908, i64 %indvars.iv.i.i.i.i.i.i.i.i.i909
  %i.emc = load i32, ptr %gep.i.i.i.i.i.i.i.i.i910, align 4, !tbaa !3 ; 2 uses
  %i.emd = zext i32 %i.emc to i64                 ; 2 uses
  %i.eme = lshr i64 %i.emd, 6
  %i.emf = getelementptr inbounds nuw [8 x i8], ptr %i.ehl, i64 %i.eme
  %i.emg = load i64, ptr %i.emf, align 8, !tbaa !137
  %i.emh = and i64 %i.emd, 63
  %i.emi = shl nuw i64 1, %i.emh
  %i.emj = and i64 %i.emi, %i.emg
  %.not.i7.i.i.i.i.i.i.i.i.i.i911 = icmp eq i64 %i.emj, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i911, label %.critedge.i.i.i.i.i.i.i.i.i912, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i: ; preds = %bb.xd
  %i.emk = load ptr, ptr %i.eho, align 8, !tbaa !487
  %i.eml = sext i32 %i.emc to i64
  %i.emm = getelementptr inbounds [8 x i8], ptr %i.emk, i64 %i.eml
  %i.emn = load i64, ptr %i.emm, align 8, !tbaa !137
  %i.emo = icmp eq i64 %i.emn, %i.efr
  br i1 %i.emo, label %bb.xe, label %.critedge.i.i.i.i.i.i.i.i.i912

bb.xe:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i
  %i.emp = add nsw i64 %.03643.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.emq = icmp eq i64 %i.emp, 0
  br i1 %i.emq, label %.split.us.loopexit125.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i912

.split.us.loopexit.i.i.i.i.i.i.i.i.i971:          ; preds = %bb.wx
  %i.emr = trunc nsw i64 %indvars.iv158.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.loopexit113.i.i.i.i.i.i.i.i.i:          ; preds = %bb.wy
  %i.ems = trunc nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.loopexit115.i.i.i.i.i.i.i.i.i:          ; preds = %bb.xc
  %i.emt = trunc nsw i64 %indvars.iv152.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.loopexit125.i.i.i.i.i.i.i.i.i:          ; preds = %bb.xe
  %i.emu = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i909 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.i.i.i.i.i.i.i.i.i944:                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5665, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5640, %.split.us.loopexit125.i.i.i.i.i.i.i.i.i, %.split.us.loopexit115.i.i.i.i.i.i.i.i.i, %.split.us.loopexit113.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i971
  %.us-phi.i.i.i.i.i.i.i.i.i945 = phi i32 [ %i.emt, %.split.us.loopexit115.i.i.i.i.i.i.i.i.i ], [ %i.emu, %.split.us.loopexit125.i.i.i.i.i.i.i.i.i ], [ %i.emr, %.split.us.loopexit.i.i.i.i.i.i.i.i.i971 ], [ %i.ems, %.split.us.loopexit113.i.i.i.i.i.i.i.i.i ], [ %i.eim, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.eim, %middle.block5640 ], [ %i.elg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.elg, %middle.block5665 ], [ %i.eim, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %i.elg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.emv = load ptr, ptr %.sroa.12.0..sroa_idx.i874, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.emw = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i945, 1
  %i.emx = sext i32 %i.emw to i64
  %i.emy = getelementptr inbounds nuw i8, ptr %i.emv, i64 144 ; 2 uses
  %i.emz = load ptr, ptr %i.emy, align 8, !tbaa !341 ; 2 uses
  %i.ena = icmp eq ptr %i.emz, null
  br i1 %i.ena, label %bb.xf, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946

bb.xf:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i944
  %i.enb = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.emv)
          to label %.noexc19.i.i.i.i.i.i.i.i950 unwind label %bb.xk ; 0 uses

.noexc19.i.i.i.i.i.i.i.i950:                      ; preds = %bb.xf
  %.pre.i.i.i.i.i.i.i.i.i.i951 = load ptr, ptr %i.emy, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946: ; preds = %.noexc19.i.i.i.i.i.i.i.i950, %.split.us.i.i.i.i.i.i.i.i.i944
  %i.enc = phi ptr [ %i.emz, %.split.us.i.i.i.i.i.i.i.i.i944 ], [ %.pre.i.i.i.i.i.i.i.i.i.i951, %.noexc19.i.i.i.i.i.i.i.i950 ]
  %i.end = getelementptr inbounds [8 x i8], ptr %i.enc, i64 %i.egv
  store i64 %i.emx, ptr %i.end, align 8, !tbaa !137
  %i.ene = getelementptr inbounds nuw i8, ptr %i.emv, i64 32 ; 2 uses
  %i.enf = load ptr, ptr %i.ene, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.enf, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %bb.xg

bb.xg:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946
  %i.eng = getelementptr inbounds nuw i8, ptr %i.emv, i64 56
  %i.enh = load i32, ptr %i.eng, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.emv, i32 noundef %i.enh, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i947 unwind label %bb.xk

.noexc20.i.i.i.i.i.i.i.i947:                      ; preds = %bb.xg
  %i.eni = load ptr, ptr %i.ene, align 8, !tbaa !362 ; 2 uses
  %i.enj = getelementptr inbounds nuw i8, ptr %i.eni, i64 44
  %i.enk = load i8, ptr %i.enj, align 4, !tbaa !363
  %i.enl = and i8 %i.enk, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i948 = icmp eq i8 %i.enl, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i948, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949, label %.invoke.i.i.i.i.i.i.i.i941, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949: ; preds = %.noexc20.i.i.i.i.i.i.i.i947
  %i.enm = getelementptr inbounds nuw i8, ptr %i.eni, i64 16
  %i.enn = load ptr, ptr %i.enm, align 8, !tbaa !368
  %i.eno = lshr i64 %.074.i.i.i.i.i.i.i.i895, 3
  %i.enp = and i64 %i.eno, 536870911
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enn, i64 %i.enp ; 2 uses
  %i.enr = load i8, ptr %i.enq, align 1, !tbaa !30
  %i.ens = trunc i64 %.074.i.i.i.i.i.i.i.i895 to i8
  %i.ent = and i8 %i.ens, 7
  %i.enu = shl nuw i8 1, %i.ent
  %i.env = or i8 %i.enr, %i.enu
  store i8 %i.env, ptr %i.enq, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

.critedge.i.i.i.i.i.i.i.i.i912:                   ; preds = %bb.xe, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i, %bb.xd
  %.1.i.i.i.i.i.i.i.i.i913 = phi i64 [ %.03643.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i ], [ %i.emp, %bb.xe ], [ %.03643.i.i.i.i.i.i.i.i.i, %bb.xd ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i914 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i909, %i.ema ; 2 uses
  %i.enw = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i914 to i32
  %.not16.i.i.i.i.i.i.i.i.i915 = icmp eq i32 %i.ehi, %i.enw
  br i1 %.not16.i.i.i.i.i.i.i.i.i915, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %bb.xd, !llvm.loop !3061

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916: ; preds = %.critedge.i.i.i.i.i.i.i.i.i912, %vector.body5659, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i962, %vector.body5634, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i968, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965, %bb.ww
  %.041.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i945, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946 ], [ %.us-phi.i.i.i.i.i.i.i.i.i945, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949 ], [ %i.ehh, %bb.ww ], [ %i.ehi, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i ], [ %i.ehi, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i ], [ %i.ehi, %.critedge.us51.i.i.i.i.i.i.i.i.i ], [ %i.ehi, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954 ], [ %i.ehi, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965 ], [ %i.ehi, %vector.body5634 ], [ %i.ehi, %.critedge.us.us.i.i.i.i.i.i.i.i.i968 ], [ %i.ehi, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952 ], [ %i.ehi, %vector.body5659 ], [ %i.ehi, %.critedge.us.i.i.i.i.i.i.i.i.i962 ], [ %i.ehi, %.critedge.i.i.i.i.i.i.i.i.i912 ]
  %i.enx = load ptr, ptr %.sroa.953.0..sroa_idx.i, align 8, !tbaa !3058, !nonnull !74, !align !497
  %i.eny = load i32, ptr %i.enx, align 4, !tbaa !3
  %i.enz = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i, %i.eny
  br i1 %i.enz, label %bb.xh, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.xh:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916
  %i.eoa = load ptr, ptr %.sroa.12.0..sroa_idx.i874, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.eob = getelementptr inbounds nuw i8, ptr %i.eoa, i64 144 ; 2 uses
  %i.eoc = load ptr, ptr %i.eob, align 8, !tbaa !341 ; 2 uses
  %i.eod = icmp eq ptr %i.eoc, null
  br i1 %i.eod, label %bb.xi, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i

bb.xi:                                            ; preds = %bb.xh
  %i.eoe = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.eoa)
          to label %.noexc22.i.i.i.i.i.i.i.i943 unwind label %bb.xk ; 0 uses

.noexc22.i.i.i.i.i.i.i.i943:                      ; preds = %bb.xi
  %.pre.i27.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eob, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i943, %bb.xh
  %i.eof = phi ptr [ %i.eoc, %bb.xh ], [ %.pre.i27.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i943 ]
  %i.eog = getelementptr inbounds [8 x i8], ptr %i.eof, i64 %i.egv
  store i64 0, ptr %i.eog, align 8, !tbaa !137
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eoa, i64 32 ; 2 uses
  %i.eoi = load ptr, ptr %i.eoh, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eoi, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.xj

bb.xj:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoa, i64 56
  %i.eok = load i32, ptr %i.eoj, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.eoa, i32 noundef %i.eok, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i940 unwind label %bb.xk

.noexc23.i.i.i.i.i.i.i.i940:                      ; preds = %bb.xj
  %i.eol = load ptr, ptr %i.eoh, align 8, !tbaa !362 ; 2 uses
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eol, i64 44
  %i.eon = load i8, ptr %i.eom, align 4, !tbaa !363
  %i.eoo = and i8 %i.eon, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eoo, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i941, !prof !69

.invoke.i.i.i.i.i.i.i.i941:                       ; preds = %.noexc23.i.i.i.i.i.i.i.i940, %.noexc20.i.i.i.i.i.i.i.i947
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i942 unwind label %bb.xk

.cont.i.i.i.i.i.i.i.i942:                         ; preds = %.invoke.i.i.i.i.i.i.i.i941
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i.i.i.i940
  %i.eop = getelementptr inbounds nuw i8, ptr %i.eol, i64 16
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a

bb.abz:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154
  %i.fjm = load ptr, ptr %.sroa.750.0..sroa_idx.i1127, align 8, !tbaa !3094, !nonnull !74, !align !275
  %i.fjn = load ptr, ptr %i.fjm, align 8, !tbaa !329
  %i.fjo = load ptr, ptr %.sroa.851.0..sroa_idx.i1128, align 8, !tbaa !3095, !nonnull !74, !align !497 ; 2 uses
  %i.fjp = load ptr, ptr %.sroa.952.0..sroa_idx.i1129, align 8, !tbaa !3096, !nonnull !74, !align !497 ; 2 uses
  %i.fjq = load ptr, ptr %.sroa.1053.0..sroa_idx.i1130, align 8, !tbaa !3097, !nonnull !74, !align !497
  %sext39.i.i.i.i.i.i.i.i.i1157 = shl i64 %.069.i.i.i.i.i.i.i.i, 32
  %i.fjr = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i1157, 32 ; 3 uses
  %i.fjs = getelementptr inbounds [4 x i8], ptr %i.fho, i64 %i.fjr
  %i.fjt = load i32, ptr %i.fjs, align 4, !tbaa !3
  %i.fju = sext i32 %i.fjt to i64
  %i.fjv = getelementptr inbounds [4 x i8], ptr %i.fjn, i64 %i.fju
  %i.fjw = load i32, ptr %i.fjv, align 4, !tbaa !3 ; 2 uses
  %i.fjx = icmp sgt i64 %i.fjg, 0                 ; 3 uses
  %i.fjy = add nsw i32 %i.fjw, -1
  %i.fjz = select i1 %i.fjx, i32 0, i32 %i.fjy
  store i32 %i.fjz, ptr %i.fjo, align 4, !tbaa !3
  %i.fka = select i1 %i.fjx, i32 %i.fjw, i32 -1
  store i32 %i.fka, ptr %i.fjp, align 4, !tbaa !3
  %i.fkb = select i1 %i.fjx, i32 1, i32 -1        ; 9 uses
  store i32 %i.fkb, ptr %i.fjq, align 4, !tbaa !3
  %i.fkc = call noundef i64 @llvm.abs.i64(i64 %i.fjg, i1 true) ; 6 uses
  %i.fkd = load i32, ptr %i.fjo, align 4, !tbaa !3 ; 9 uses
  %i.fke = load i32, ptr %i.fjp, align 4, !tbaa !3 ; 13 uses
  %.not1642.i.i.i.i.i.i.i.i.i1158 = icmp eq i32 %i.fkd, %i.fke
  br i1 %.not1642.i.i.i.i.i.i.i.i.i1158, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %.lr.ph.i.i.i.i.i.i.i.i.i1159

.lr.ph.i.i.i.i.i.i.i.i.i1159:                     ; preds = %bb.abz
  %i.fkf = load ptr, ptr %.sroa.11.0..sroa_idx.i1131, align 8, !tbaa !3098, !nonnull !74, !align !275 ; 7 uses
  %i.fkg = getelementptr inbounds nuw i8, ptr %i.fkf, i64 24
  %i.fkh = load ptr, ptr %i.fkg, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1160 = icmp eq ptr %i.fkh, null
  %i.fki = getelementptr inbounds nuw i8, ptr %i.fkf, i64 59 ; 3 uses
  %i.fkj = getelementptr inbounds nuw i8, ptr %i.fkf, i64 8 ; 3 uses
  %i.fkk = getelementptr inbounds nuw i8, ptr %i.fkf, i64 16 ; 4 uses
  %i.fkl = getelementptr inbounds nuw i8, ptr %i.fkf, i64 58
  %i.fkm = getelementptr inbounds nuw i8, ptr %i.fkf, i64 64 ; 3 uses
  %i.fkn = load i8, ptr %i.fkl, align 2, !tbaa !338, !range !73, !noundef !74
  %i.fko = trunc nuw i8 %i.fkn to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1160, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1161

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1159
  %i.fkp = load ptr, ptr %i.fkk, align 8, !tbaa !487
  %i.fkq = sext i32 %i.fkd to i64
  %i.fkr = sext i32 %i.fkb to i64
  %i.fks = sext i32 %i.fht to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1229, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225
  %indvars.iv132.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next133.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1229 ], [ %i.fkq, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225 ] ; 3 uses
  %.03643.us.i.i.i.i.i.i.i.i.i1227 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1230, %.critedge.us.i.i.i.i.i.i.i.i.i1229 ], [ %i.fkc, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225 ] ; 2 uses
  %i.fkt = add nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i, %i.fks ; 2 uses
  %i.fku = trunc nsw i64 %i.fkt to i32
  br i1 %i.fko, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i, label %bb.aca

bb.aca:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226
  %i.fkv = load i8, ptr %i.fki, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fkw = trunc nuw i8 %i.fkv to i1
  br i1 %i.fkw, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.fkx = load ptr, ptr %i.fkj, align 8, !tbaa !331
  %i.fky = getelementptr inbounds [4 x i8], ptr %i.fkx, i64 %i.fkt
  %i.fkz = load i32, ptr %i.fky, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i

bb.acc:                                           ; preds = %bb.aca
  %i.fla = load i32, ptr %i.fkm, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.acc, %bb.acb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1228 = phi i32 [ %i.fkz, %bb.acb ], [ %i.fla, %bb.acc ], [ %i.fku, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226 ]
  %i.flb = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1228 to i64
  %i.flc = shl nsw i64 %i.flb, 4
  %i.fld = getelementptr inbounds nuw i8, ptr %i.fkp, i64 %i.flc
  %.0.copyload.i.i20.us.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fld, align 1
  %i.fle = icmp eq i128 %.0.copyload.i.i20.us.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fle, label %bb.acd, label %.critedge.us.i.i.i.i.i.i.i.i.i1229

bb.acd:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i
  %i.flf = add nsw i64 %.03643.us.i.i.i.i.i.i.i.i.i1227, -1 ; 2 uses
  %i.flg = icmp eq i64 %i.flf, 0
  br i1 %i.flg, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i1232, label %.critedge.us.i.i.i.i.i.i.i.i.i1229

.critedge.us.i.i.i.i.i.i.i.i.i1229:               ; preds = %bb.acd, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1230 = phi i64 [ %.03643.us.i.i.i.i.i.i.i.i.i1227, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i ], [ %i.flf, %bb.acd ]
  %indvars.iv.next133.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i, %i.fkr ; 2 uses
  %i.flh = trunc nsw i64 %indvars.iv.next133.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1231 = icmp eq i32 %i.fke, %i.flh
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1231, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226, !llvm.loop !3099

.lr.ph.split.i.i.i.i.i.i.i.i.i1161:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1159
  %i.fli = getelementptr inbounds nuw i8, ptr %i.fkf, i64 57
  %i.flj = load i8, ptr %i.fli, align 1, !range !73
  %i.flk = trunc nuw i8 %i.flj to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1162 = select i1 %i.fko, i1 true, i1 %i.flk
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1162, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1161
  %i.fll = sext i32 %i.fkd to i64
  %i.flm = sext i32 %i.fkb to i64
  %i.fln = sext i32 %i.fht to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221:      ; preds = %.critedge.us52.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220
  %indvars.iv129.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fll, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220 ], [ %indvars.iv.next130.i.i.i.i.i.i.i.i.i, %.critedge.us52.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03643.us47.i.i.i.i.i.i.i.i.i1222 = phi i64 [ %i.fkc, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220 ], [ %.1.us53.i.i.i.i.i.i.i.i.i, %.critedge.us52.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.flo = add nsw i64 %indvars.iv129.i.i.i.i.i.i.i.i.i, %i.fln ; 4 uses
  %i.flp = lshr i64 %i.flo, 6
  %i.flq = and i64 %i.flp, 67108863
  %i.flr = getelementptr inbounds nuw [8 x i8], ptr %i.fkh, i64 %i.flq
  %i.fls = load i64, ptr %i.flr, align 8, !tbaa !137
  %i.flt = and i64 %i.flo, 63
  %i.flu = shl nuw i64 1, %i.flt
  %i.flv = and i64 %i.flu, %i.fls
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1223 = icmp eq i64 %i.flv, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1223, label %.critedge.us52.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221
  %i.flw = trunc nsw i64 %i.flo to i32
  %i.flx = load ptr, ptr %i.fkk, align 8, !tbaa !487
  br i1 %i.fko, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, label %bb.ace

bb.ace:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224
  %i.fly = load i8, ptr %i.fki, align 1, !tbaa !339, !range !73, !noundef !74
  %i.flz = trunc nuw i8 %i.fly to i1
  br i1 %i.flz, label %bb.acg, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.fma = load ptr, ptr %i.fkj, align 8, !tbaa !331
  %i.fmb = getelementptr inbounds [4 x i8], ptr %i.fma, i64 %i.flo
  %i.fmc = load i32, ptr %i.fmb, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

bb.acg:                                           ; preds = %bb.ace
  %i.fmd = load i32, ptr %i.fkm, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i: ; preds = %bb.acg, %bb.acf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224
  %.0.i.i19.us50.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fmc, %bb.acf ], [ %i.fmd, %bb.acg ], [ %i.flw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224 ]
  %i.fme = sext i32 %.0.i.i19.us50.i.i.i.i.i.i.i.i.i to i64
  %i.fmf = shl nsw i64 %i.fme, 4
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.flx, i64 %i.fmf
  %.0.copyload.i.i20.us51.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fmg, align 1
  %i.fmh = icmp eq i128 %.0.copyload.i.i20.us51.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fmh, label %bb.ach, label %.critedge.us52.i.i.i.i.i.i.i.i.i

bb.ach:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i
  %i.fmi = add nsw i64 %.03643.us47.i.i.i.i.i.i.i.i.i1222, -1 ; 2 uses
  %i.fmj = icmp eq i64 %i.fmi, 0
  br i1 %i.fmj, label %.split.us.loopexit97.i.i.i.i.i.i.i.i.i, label %.critedge.us52.i.i.i.i.i.i.i.i.i

.critedge.us52.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ach, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221
  %.1.us53.i.i.i.i.i.i.i.i.i = phi i64 [ %.03643.us47.i.i.i.i.i.i.i.i.i1222, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i ], [ %i.fmi, %bb.ach ], [ %.03643.us47.i.i.i.i.i.i.i.i.i1222, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221 ]
  %indvars.iv.next130.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv129.i.i.i.i.i.i.i.i.i, %i.flm ; 2 uses
  %i.fmk = trunc nsw i64 %indvars.iv.next130.i.i.i.i.i.i.i.i.i to i32
  %.not16.us54.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fke, %i.fmk
  br i1 %.not16.us54.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221, !llvm.loop !3099

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1161
  %i.fml = load i8, ptr %i.fki, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fmm = trunc nuw i8 %i.fml to i1
  br i1 %i.fmm, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163
  %i.fmn = load i64, ptr %i.fkh, align 8, !tbaa !137
  %i.fmo = and i64 %i.fmn, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1218 = icmp eq i64 %i.fmo, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1218, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217
  %i.fmp = load ptr, ptr %i.fkk, align 8, !tbaa !487
  %i.fmq = load i32, ptr %i.fkm, align 8, !tbaa !488
  %i.fmr = sext i32 %i.fmq to i64
  %i.fms = shl nsw i64 %i.fmr, 4
  %i.fmt = getelementptr inbounds nuw i8, ptr %i.fmp, i64 %i.fms
  %.0.copyload.i.i20.us64.us87.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fmt, align 1
  %i.fmu = icmp eq i128 %.0.copyload.i.i20.us64.us87.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fmu, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219
  %i.fmv = trunc i64 %i.fkc to i32
  %i.fmw = add i32 %i.fmv, -1
  %i.fmx = mul i32 %i.fmw, %i.fkb
  %i.fmy = add i32 %i.fkd, %i.fmx                 ; 3 uses
  %i.fmz = add nsw i64 %i.fkc, -1                 ; 5 uses
  %i.fna = icmp eq i64 %i.fmz, 0
  br i1 %i.fna, label %.split.us.i.i.i.i.i.i.i.i.i1208, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5596 = icmp samesign ult i64 %i.fkc, 33
  br i1 %min.iters.check5596, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5597

vector.ph5597:                                    ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5599 = and i64 %i.fmz, -32                ; 3 uses
  %i.fnb = and i64 %i.fmz, 31
  %i.fnc = trunc i64 %n.vec5599 to i32
  %i.fnd = mul i32 %i.fkb, %i.fnc
  %i.fne = add i32 %i.fkd, %i.fnd
  %broadcast.splatinsert5600 = insertelement <32 x i32> poison, i32 %i.fkb, i64 0
  %broadcast.splat5601 = shufflevector <32 x i32> %broadcast.splatinsert5600, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5602 = insertelement <32 x i32> poison, i32 %i.fke, i64 0
  %broadcast.splat5603 = shufflevector <32 x i32> %broadcast.splatinsert5602, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5604 = insertelement <32 x i32> poison, i32 %i.fkd, i64 0
  %broadcast.splat5605 = shufflevector <32 x i32> %broadcast.splatinsert5604, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fnf = mul <32 x i32> %broadcast.splat5601, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5606 = add <32 x i32> %broadcast.splat5605, %i.fnf
  %i.fng = shl nsw i32 %i.fkb, 5
  %broadcast.splatinsert5607 = insertelement <32 x i32> poison, i32 %i.fng, i64 0
  %broadcast.splat5608 = shufflevector <32 x i32> %broadcast.splatinsert5607, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5609

vector.body5609:                                  ; preds = %vector.body.interim5614, %vector.ph5597
  %index5610 = phi i64 [ 0, %vector.ph5597 ], [ %index.next5612, %vector.body.interim5614 ]
  %vec.ind5611 = phi <32 x i32> [ %induction5606, %vector.ph5597 ], [ %vec.ind.next5613, %vector.body.interim5614 ] ; 2 uses
  %i.fnh = add nsw <32 x i32> %vec.ind5611, %broadcast.splat5601
  %i.fni = icmp eq <32 x i32> %i.fnh, %broadcast.splat5603
  %i.fnj = freeze <32 x i1> %i.fni
  %i.fnk = bitcast <32 x i1> %i.fnj to i32
  %.not5851 = icmp eq i32 %i.fnk, 0
  br i1 %.not5851, label %vector.body.interim5614, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174

vector.body.interim5614:                          ; preds = %vector.body5609
  %vec.ind.next5613 = add <32 x i32> %vec.ind5611, %broadcast.splat5608
  %index.next5612 = add nuw i64 %index5610, 32    ; 2 uses
  %i.fnl = icmp eq i64 %index.next5612, %n.vec5599
  br i1 %i.fnl, label %middle.block5615, label %vector.body5609, !llvm.loop !3100

middle.block5615:                                 ; preds = %vector.body.interim5614
  %cmp.n5616 = icmp eq i64 %i.fmz, %n.vec5599
  br i1 %cmp.n5616, label %.split.us.i.i.i.i.i.i.i.i.i1208, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5615
  %.ph6024 = phi i64 [ %i.fmz, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.fnb, %middle.block5615 ]
  %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395.ph = phi i32 [ %i.fkd, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.fne, %middle.block5615 ]
  br label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i
  %i.fnm = add nsw i64 %i.fno, -1                 ; 2 uses
  %i.fnn = icmp eq i64 %i.fnm, 0
  br i1 %i.fnn, label %.split.us.i.i.i.i.i.i.i.i.i1208, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3101

.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i
  %i.fno = phi i64 [ %i.fnm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ], [ %.ph6024, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395 = phi i32 [ %i.fnp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ], [ %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395.ph, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.fnp = add nsw i32 %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395, %i.fkb ; 2 uses
  %.not16.us67.us90.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fnp, %i.fke
  br i1 %.not16.us67.us90.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3099

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163
  %i.fnq = load ptr, ptr %i.fkj, align 8, !tbaa !331
  %i.fnr = sext i32 %i.fkd to i64
  %i.fns = sext i32 %i.fkb to i64
  %i.fnt = sext i32 %i.fht to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1165 = getelementptr [4 x i8], ptr %i.fnq, i64 %i.fnt
  br label %bb.aci

bb.aci:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i1170, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164
  %indvars.iv.i.i.i.i.i.i.i.i.i1166 = phi i64 [ %i.fnr, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1172, %.critedge.i.i.i.i.i.i.i.i.i1170 ] ; 3 uses
  %.03643.i.i.i.i.i.i.i.i.i1167 = phi i64 [ %i.fkc, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164 ], [ %.1.i.i.i.i.i.i.i.i.i1171, %.critedge.i.i.i.i.i.i.i.i.i1170 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1168 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1165, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1166
  %i.fnu = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1168, align 4, !tbaa !3 ; 2 uses
  %i.fnv = zext i32 %i.fnu to i64                 ; 2 uses
  %i.fnw = lshr i64 %i.fnv, 6
  %i.fnx = getelementptr inbounds nuw [8 x i8], ptr %i.fkh, i64 %i.fnw
  %i.fny = load i64, ptr %i.fnx, align 8, !tbaa !137
  %i.fnz = and i64 %i.fnv, 63
  %i.foa = shl nuw i64 1, %i.fnz
  %i.fob = and i64 %i.foa, %i.fny
  %.not.i7.i.i.i.i.i.i.i.i.i.i1169 = icmp eq i64 %i.fob, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1169, label %.critedge.i.i.i.i.i.i.i.i.i1170, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i: ; preds = %bb.aci
  %i.foc = load ptr, ptr %i.fkk, align 8, !tbaa !487
  %i.fod = sext i32 %i.fnu to i64
  %i.foe = shl nsw i64 %i.fod, 4
  %i.fof = getelementptr inbounds nuw i8, ptr %i.foc, i64 %i.foe
  %.0.copyload.i.i20.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fof, align 1
  %i.fog = icmp eq i128 %.0.copyload.i.i20.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fog, label %bb.acj, label %.critedge.i.i.i.i.i.i.i.i.i1170

bb.acj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i
  %i.foh = add nsw i64 %.03643.i.i.i.i.i.i.i.i.i1167, -1 ; 2 uses
  %i.foi = icmp eq i64 %i.foh, 0
  br i1 %i.foi, label %.split.us.loopexit107.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i1170

.split.us.loopexit.i.i.i.i.i.i.i.i.i1232:         ; preds = %bb.acd
  %i.foj = trunc nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1208

.split.us.loopexit97.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ach
  %i.fok = trunc nsw i64 %indvars.iv129.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1208

.split.us.loopexit107.i.i.i.i.i.i.i.i.i:          ; preds = %bb.acj
  %i.fol = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1166 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1208

.split.us.i.i.i.i.i.i.i.i.i1208:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5615, %.split.us.loopexit107.i.i.i.i.i.i.i.i.i, %.split.us.loopexit97.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1232
  %.us-phi.i.i.i.i.i.i.i.i.i1209 = phi i32 [ %i.fol, %.split.us.loopexit107.i.i.i.i.i.i.i.i.i ], [ %i.foj, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1232 ], [ %i.fok, %.split.us.loopexit97.i.i.i.i.i.i.i.i.i ], [ %i.fmy, %middle.block5615 ], [ %i.fmy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.fmy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fom = load ptr, ptr %.sroa.12.0..sroa_idx.i1132, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.fon = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1209, 1
  %i.foo = sext i32 %i.fon to i64
  %i.fop = getelementptr inbounds nuw i8, ptr %i.fom, i64 144 ; 2 uses
  %i.foq = load ptr, ptr %i.fop, align 8, !tbaa !341 ; 2 uses
  %i.for = icmp eq ptr %i.foq, null
  br i1 %i.for, label %bb.ack, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210

bb.ack:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i1208
  %i.fos = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fom)
          to label %.noexc19.i.i.i.i.i.i.i.i1215 unwind label %bb.acp ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1215:                     ; preds = %bb.ack
  %.pre.i.i.i.i.i.i.i.i.i.i1216 = load ptr, ptr %i.fop, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210: ; preds = %.noexc19.i.i.i.i.i.i.i.i1215, %.split.us.i.i.i.i.i.i.i.i.i1208
  %i.fot = phi ptr [ %i.foq, %.split.us.i.i.i.i.i.i.i.i.i1208 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1216, %.noexc19.i.i.i.i.i.i.i.i1215 ]
  %i.fou = getelementptr inbounds [8 x i8], ptr %i.fot, i64 %i.fjr
  store i64 %i.foo, ptr %i.fou, align 8, !tbaa !137
  %i.fov = getelementptr inbounds nuw i8, ptr %i.fom, i64 32 ; 2 uses
  %i.fow = load ptr, ptr %i.fov, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i1211 = icmp eq ptr %i.fow, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1211, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %bb.acl

bb.acl:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fom, i64 56
  %i.foy = load i32, ptr %i.fox, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fom, i32 noundef %i.foy, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1212 unwind label %bb.acp

.noexc20.i.i.i.i.i.i.i.i1212:                     ; preds = %bb.acl
  %i.foz = load ptr, ptr %i.fov, align 8, !tbaa !362 ; 2 uses
  %i.fpa = getelementptr inbounds nuw i8, ptr %i.foz, i64 44
  %i.fpb = load i8, ptr %i.fpa, align 4, !tbaa !363
  %i.fpc = and i8 %i.fpb, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1213 = icmp eq i8 %i.fpc, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1213, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214, label %.invoke.i.i.i.i.i.i.i.i1203, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214: ; preds = %.noexc20.i.i.i.i.i.i.i.i1212
  %i.fpd = getelementptr inbounds nuw i8, ptr %i.foz, i64 16
  %i.fpe = load ptr, ptr %i.fpd, align 8, !tbaa !368
  %i.fpf = lshr i64 %.069.i.i.i.i.i.i.i.i, 3
  %i.fpg = and i64 %i.fpf, 536870911
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fpe, i64 %i.fpg ; 2 uses
  %i.fpi = load i8, ptr %i.fph, align 1, !tbaa !30
  %i.fpj = trunc i64 %.069.i.i.i.i.i.i.i.i to i8
  %i.fpk = and i8 %i.fpj, 7
  %i.fpl = shl nuw i8 1, %i.fpk
  %i.fpm = or i8 %i.fpi, %i.fpl
  store i8 %i.fpm, ptr %i.fph, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174

.critedge.i.i.i.i.i.i.i.i.i1170:                  ; preds = %bb.acj, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i, %bb.aci
  %.1.i.i.i.i.i.i.i.i.i1171 = phi i64 [ %.03643.i.i.i.i.i.i.i.i.i1167, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i ], [ %i.foh, %bb.acj ], [ %.03643.i.i.i.i.i.i.i.i.i1167, %bb.aci ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1172 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1166, %i.fns ; 2 uses
  %i.fpn = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1172 to i32
  %.not16.i.i.i.i.i.i.i.i.i1173 = icmp eq i32 %i.fke, %i.fpn
  br i1 %.not16.i.i.i.i.i.i.i.i.i1173, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %bb.aci, !llvm.loop !3099

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1170, %vector.body5609, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i, %.critedge.us52.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1229, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217, %bb.abz
  %.041.i.i.i.i.i.i.i.i.i1175 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1209, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1209, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214 ], [ %i.fkd, %bb.abz ], [ %i.fke, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217 ], [ %i.fke, %vector.body5609 ], [ %i.fke, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i ], [ %i.fke, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219 ], [ %i.fke, %.critedge.us52.i.i.i.i.i.i.i.i.i ], [ %i.fke, %.critedge.us.i.i.i.i.i.i.i.i.i1229 ], [ %i.fke, %.critedge.i.i.i.i.i.i.i.i.i1170 ]
  %i.fpo = load ptr, ptr %.sroa.952.0..sroa_idx.i1129, align 8, !tbaa !3096, !nonnull !74, !align !497
  %i.fpp = load i32, ptr %i.fpo, align 4, !tbaa !3
  %i.fpq = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i1175, %i.fpp
  br i1 %i.fpq, label %bb.acm, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.acm:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174
  %i.fpr = load ptr, ptr %.sroa.12.0..sroa_idx.i1132, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpr, i64 144 ; 2 uses
  %i.fpt = load ptr, ptr %i.fps, align 8, !tbaa !341 ; 2 uses
  %i.fpu = icmp eq ptr %i.fpt, null
  br i1 %i.fpu, label %bb.acn, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176

bb.acn:                                           ; preds = %bb.acm
  %i.fpv = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fpr)
          to label %.noexc22.i.i.i.i.i.i.i.i1206 unwind label %bb.acp ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1206:                     ; preds = %bb.acn
  %.pre.i27.i.i.i.i.i.i.i.i.i1207 = load ptr, ptr %i.fps, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176: ; preds = %.noexc22.i.i.i.i.i.i.i.i1206, %bb.acm
  %i.fpw = phi ptr [ %i.fpt, %bb.acm ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1207, %.noexc22.i.i.i.i.i.i.i.i1206 ]
  %i.fpx = getelementptr inbounds [8 x i8], ptr %i.fpw, i64 %i.fjr
  store i64 0, ptr %i.fpx, align 8, !tbaa !137
  %i.fpy = getelementptr inbounds nuw i8, ptr %i.fpr, i64 32 ; 2 uses
  %i.fpz = load ptr, ptr %i.fpy, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i1177 = icmp eq ptr %i.fpz, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1177, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.aco

bb.aco:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176
  %i.fqa = getelementptr inbounds nuw i8, ptr %i.fpr, i64 56
  %i.fqb = load i32, ptr %i.fqa, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fpr, i32 noundef %i.fqb, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1201 unwind label %bb.acp

.noexc23.i.i.i.i.i.i.i.i1201:                     ; preds = %bb.aco
  %i.fqc = load ptr, ptr %i.fpy, align 8, !tbaa !362 ; 2 uses
  %i.fqd = getelementptr inbounds nuw i8, ptr %i.fqc, i64 44
  %i.fqe = load i8, ptr %i.fqd, align 4, !tbaa !363
  %i.fqf = and i8 %i.fqe, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1202 = icmp eq i8 %i.fqf, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1202, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1205, label %.invoke.i.i.i.i.i.i.i.i1203, !prof !69

.invoke.i.i.i.i.i.i.i.i1203:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1201, %.noexc20.i.i.i.i.i.i.i.i1212
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i1204 unwind label %bb.acp

.cont.i.i.i.i.i.i.i.i1204:                        ; preds = %.invoke.i.i.i.i.i.i.i.i1203
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1205: ; preds = %.noexc23.i.i.i.i.i.i.i.i1201
  %i.fqg = getelementptr inbounds nuw i8, ptr %i.fqc, i64 16
  %i.fqh = load ptr, ptr %i.fqg, align 8, !tbaa !368
  %i.fqi = lshr i64 %.069.i.i.i.i.i.i.i.i, 3
  %i.fqj = and i64 %i.fqi, 536870911
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %sext37.i.i.i.i.i.i.i.i.i1432 = shl i64 %.069.i.i.i.i.i.i.i.i1426, 32
  %i.glk = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i1432, 32 ; 3 uses
  %i.gll = getelementptr inbounds [4 x i8], ptr %i.gjh, i64 %i.glk
  %i.glm = load i32, ptr %i.gll, align 4, !tbaa !3
  %i.gln = sext i32 %i.glm to i64
  %i.glo = getelementptr inbounds [4 x i8], ptr %i.glg, i64 %i.gln
  %i.glp = load i32, ptr %i.glo, align 4, !tbaa !3 ; 2 uses
  %i.glq = icmp sgt i64 %i.gkz, 0                 ; 3 uses
  %i.glr = add nsw i32 %i.glp, -1
  %i.gls = select i1 %i.glq, i32 0, i32 %i.glr
  store i32 %i.gls, ptr %i.glh, align 4, !tbaa !3
  %i.glt = select i1 %i.glq, i32 %i.glp, i32 -1
  store i32 %i.glt, ptr %i.gli, align 4, !tbaa !3
  %i.glu = select i1 %i.glq, i32 1, i32 -1        ; 9 uses
  store i32 %i.glu, ptr %i.glj, align 4, !tbaa !3
  %i.glv = call noundef i64 @llvm.abs.i64(i64 %i.gkz, i1 true) ; 6 uses
  %i.glw = load i32, ptr %i.glh, align 4, !tbaa !3 ; 9 uses
  %i.glx = load i32, ptr %i.gli, align 4, !tbaa !3 ; 13 uses
  %.not1640.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.glw, %i.glx
  br i1 %.not1640.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %.lr.ph.i.i.i.i.i.i.i.i.i1433

.lr.ph.i.i.i.i.i.i.i.i.i1433:                     ; preds = %bb.ahe
  %i.gly = load ptr, ptr %.sroa.11.0..sroa_idx.i1402, align 8, !tbaa !3134, !nonnull !74, !align !275 ; 7 uses
  %i.glz = getelementptr inbounds nuw i8, ptr %i.gly, i64 24
  %i.gma = load ptr, ptr %i.glz, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1434 = icmp eq ptr %i.gma, null
  %i.gmb = getelementptr inbounds nuw i8, ptr %i.gly, i64 59 ; 3 uses
  %i.gmc = getelementptr inbounds nuw i8, ptr %i.gly, i64 8 ; 3 uses
  %i.gmd = getelementptr inbounds nuw i8, ptr %i.gly, i64 16 ; 4 uses
  %i.gme = getelementptr inbounds nuw i8, ptr %i.gly, i64 58
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.gly, i64 64 ; 3 uses
  %i.gmg = fcmp uno float %i.gkg, 0.000000e+00    ; 4 uses
  %i.gmh = load i8, ptr %i.gme, align 2, !tbaa !338, !range !73, !noundef !74
  %i.gmi = trunc nuw i8 %i.gmh to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1434, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1435

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1433
  %i.gmj = load ptr, ptr %i.gmd, align 8, !tbaa !487
  %i.gmk = sext i32 %i.glw to i64
  %i.gml = sext i32 %i.glu to i64
  %i.gmm = sext i32 %i.gjm to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1503, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500
  %indvars.iv133.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next134.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1503 ], [ %i.gmk, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500 ] ; 3 uses
  %.03441.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1504, %.critedge.us.i.i.i.i.i.i.i.i.i1503 ], [ %i.glv, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500 ] ; 2 uses
  %i.gmn = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i, %i.gmm ; 2 uses
  %i.gmo = trunc nsw i64 %i.gmn to i32
  br i1 %i.gmi, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.ahf

bb.ahf:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501
  %i.gmp = load i8, ptr %i.gmb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.gmq = trunc nuw i8 %i.gmp to i1
  br i1 %i.gmq, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.gmr = load ptr, ptr %i.gmc, align 8, !tbaa !331
  %i.gms = getelementptr inbounds [4 x i8], ptr %i.gmr, i64 %i.gmn
  %i.gmt = load i32, ptr %i.gms, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.ahh:                                           ; preds = %bb.ahf
  %i.gmu = load i32, ptr %i.gmf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.ahh, %bb.ahg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1502 = phi i32 [ %i.gmt, %bb.ahg ], [ %i.gmu, %bb.ahh ], [ %i.gmo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501 ]
  %i.gmv = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1502 to i64
  %i.gmw = getelementptr inbounds [4 x i8], ptr %i.gmj, i64 %i.gmv
  %i.gmx = load float, ptr %i.gmw, align 4, !tbaa !2782 ; 2 uses
  %i.gmy = fcmp uno float %i.gmx, 0.000000e+00
  %or.cond.i.i.us.i.i.i.i.i.i.i.i.i = select i1 %i.gmy, i1 %i.gmg, i1 false
  %i.gmz = fcmp oeq float %i.gmx, %i.gkg
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gmz
  br i1 %.0.i.i21.us.i.i.i.i.i.i.i.i.i, label %bb.ahi, label %.critedge.us.i.i.i.i.i.i.i.i.i1503

bb.ahi:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.gna = add nsw i64 %.03441.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gnb = icmp eq i64 %i.gna, 0
  br i1 %i.gnb, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i1506, label %.critedge.us.i.i.i.i.i.i.i.i.i1503

.critedge.us.i.i.i.i.i.i.i.i.i1503:               ; preds = %bb.ahi, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1504 = phi i64 [ %.03441.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.gna, %bb.ahi ]
  %indvars.iv.next134.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i, %i.gml ; 2 uses
  %i.gnc = trunc nsw i64 %indvars.iv.next134.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1505 = icmp eq i32 %i.glx, %i.gnc
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1505, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501, !llvm.loop !3135

.lr.ph.split.i.i.i.i.i.i.i.i.i1435:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1433
  %i.gnd = getelementptr inbounds nuw i8, ptr %i.gly, i64 57
  %i.gne = load i8, ptr %i.gnd, align 1, !range !73
  %i.gnf = trunc nuw i8 %i.gne to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1436 = select i1 %i.gmi, i1 true, i1 %i.gnf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1436, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1435
  %i.gng = sext i32 %i.glw to i64
  %i.gnh = sext i32 %i.glu to i64
  %i.gni = sext i32 %i.gjm to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495:      ; preds = %.critedge.us51.i.i.i.i.i.i.i.i.i1497, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494
  %indvars.iv130.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gng, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494 ], [ %indvars.iv.next131.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i1497 ] ; 3 uses
  %.03441.us45.i.i.i.i.i.i.i.i.i = phi i64 [ %i.glv, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494 ], [ %.1.us52.i.i.i.i.i.i.i.i.i1498, %.critedge.us51.i.i.i.i.i.i.i.i.i1497 ] ; 3 uses
  %i.gnj = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i, %i.gni ; 4 uses
  %i.gnk = lshr i64 %i.gnj, 6
  %i.gnl = and i64 %i.gnk, 67108863
  %i.gnm = getelementptr inbounds nuw [8 x i8], ptr %i.gma, i64 %i.gnl
  %i.gnn = load i64, ptr %i.gnm, align 8, !tbaa !137
  %i.gno = and i64 %i.gnj, 63
  %i.gnp = shl nuw i64 1, %i.gno
  %i.gnq = and i64 %i.gnp, %i.gnn
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1496 = icmp eq i64 %i.gnq, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1496, label %.critedge.us51.i.i.i.i.i.i.i.i.i1497, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495
  %i.gnr = trunc nsw i64 %i.gnj to i32
  %i.gns = load ptr, ptr %i.gmd, align 8, !tbaa !487
  br i1 %i.gmi, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, label %bb.ahj

bb.ahj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i
  %i.gnt = load i8, ptr %i.gmb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.gnu = trunc nuw i8 %i.gnt to i1
  br i1 %i.gnu, label %bb.ahl, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.gnv = load ptr, ptr %i.gmc, align 8, !tbaa !331
  %i.gnw = getelementptr inbounds [4 x i8], ptr %i.gnv, i64 %i.gnj
  %i.gnx = load i32, ptr %i.gnw, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

bb.ahl:                                           ; preds = %bb.ahj
  %i.gny = load i32, ptr %i.gmf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i: ; preds = %bb.ahl, %bb.ahk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us48.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gnx, %bb.ahk ], [ %i.gny, %bb.ahl ], [ %i.gnr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i ]
  %i.gnz = sext i32 %.0.i.i19.us48.i.i.i.i.i.i.i.i.i to i64
  %i.goa = getelementptr inbounds [4 x i8], ptr %i.gns, i64 %i.gnz
  %i.gob = load float, ptr %i.goa, align 4, !tbaa !2782 ; 2 uses
  %i.goc = fcmp uno float %i.gob, 0.000000e+00
  %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i = select i1 %i.goc, i1 %i.gmg, i1 false
  %i.god = fcmp oeq float %i.gob, %i.gkg
  %.0.i.i21.us50.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.god
  br i1 %.0.i.i21.us50.i.i.i.i.i.i.i.i.i, label %bb.ahm, label %.critedge.us51.i.i.i.i.i.i.i.i.i1497

bb.ahm:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i
  %i.goe = add nsw i64 %.03441.us45.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gof = icmp eq i64 %i.goe, 0
  br i1 %i.gof, label %.split.us.loopexit98.i.i.i.i.i.i.i.i.i, label %.critedge.us51.i.i.i.i.i.i.i.i.i1497

.critedge.us51.i.i.i.i.i.i.i.i.i1497:             ; preds = %bb.ahm, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495
  %.1.us52.i.i.i.i.i.i.i.i.i1498 = phi i64 [ %.03441.us45.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i ], [ %i.goe, %bb.ahm ], [ %.03441.us45.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495 ]
  %indvars.iv.next131.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i, %i.gnh ; 2 uses
  %i.gog = trunc nsw i64 %indvars.iv.next131.i.i.i.i.i.i.i.i.i to i32
  %.not16.us53.i.i.i.i.i.i.i.i.i1499 = icmp eq i32 %i.glx, %i.gog
  br i1 %.not16.us53.i.i.i.i.i.i.i.i.i1499, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495, !llvm.loop !3135

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1435
  %i.goh = load i8, ptr %i.gmb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.goi = trunc nuw i8 %i.goh to i1
  br i1 %i.goi, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437
  %i.goj = load i64, ptr %i.gma, align 8, !tbaa !137
  %i.gok = and i64 %i.goj, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1490 = icmp eq i64 %i.gok, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1490, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489
  %i.gol = load ptr, ptr %i.gmd, align 8, !tbaa !487
  %i.gom = load i32, ptr %i.gmf, align 8, !tbaa !488
  %i.gon = sext i32 %i.gom to i64
  %i.goo = getelementptr inbounds [4 x i8], ptr %i.gol, i64 %i.gon
  %i.gop = load float, ptr %i.goo, align 4, !tbaa !2782 ; 2 uses
  %i.goq = fcmp uno float %i.gop, 0.000000e+00
  %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i = select i1 %i.goq, i1 %i.gmg, i1 false
  %i.gor = fcmp oeq float %i.gop, %i.gkg
  %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gor
  br i1 %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491
  %i.gos = trunc i64 %i.glv to i32
  %i.got = add i32 %i.gos, -1
  %i.gou = mul i32 %i.got, %i.glu
  %i.gov = add i32 %i.glw, %i.gou                 ; 3 uses
  %i.gow = add nsw i64 %i.glv, -1                 ; 5 uses
  %i.gox = icmp eq i64 %i.gow, 0
  br i1 %i.gox, label %.split.us.i.i.i.i.i.i.i.i.i1480, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492
  %min.iters.check5571 = icmp samesign ult i64 %i.glv, 33
  br i1 %min.iters.check5571, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5572

vector.ph5572:                                    ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5574 = and i64 %i.gow, -32                ; 3 uses
  %i.goy = and i64 %i.gow, 31
  %i.goz = trunc i64 %n.vec5574 to i32
  %i.gpa = mul i32 %i.glu, %i.goz
  %i.gpb = add i32 %i.glw, %i.gpa
  %broadcast.splatinsert5575 = insertelement <32 x i32> poison, i32 %i.glu, i64 0
  %broadcast.splat5576 = shufflevector <32 x i32> %broadcast.splatinsert5575, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5577 = insertelement <32 x i32> poison, i32 %i.glx, i64 0
  %broadcast.splat5578 = shufflevector <32 x i32> %broadcast.splatinsert5577, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5579 = insertelement <32 x i32> poison, i32 %i.glw, i64 0
  %broadcast.splat5580 = shufflevector <32 x i32> %broadcast.splatinsert5579, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gpc = mul <32 x i32> %broadcast.splat5576, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5581 = add <32 x i32> %broadcast.splat5580, %i.gpc
  %i.gpd = shl nsw i32 %i.glu, 5
  %broadcast.splatinsert5582 = insertelement <32 x i32> poison, i32 %i.gpd, i64 0
  %broadcast.splat5583 = shufflevector <32 x i32> %broadcast.splatinsert5582, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5584

vector.body5584:                                  ; preds = %vector.body.interim5589, %vector.ph5572
  %index5585 = phi i64 [ 0, %vector.ph5572 ], [ %index.next5587, %vector.body.interim5589 ]
  %vec.ind5586 = phi <32 x i32> [ %induction5581, %vector.ph5572 ], [ %vec.ind.next5588, %vector.body.interim5589 ] ; 2 uses
  %i.gpe = add nsw <32 x i32> %vec.ind5586, %broadcast.splat5576
  %i.gpf = icmp eq <32 x i32> %i.gpe, %broadcast.splat5578
  %i.gpg = freeze <32 x i1> %i.gpf
  %i.gph = bitcast <32 x i1> %i.gpg to i32
  %.not5850 = icmp eq i32 %i.gph, 0
  br i1 %.not5850, label %vector.body.interim5589, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447

vector.body.interim5589:                          ; preds = %vector.body5584
  %vec.ind.next5588 = add <32 x i32> %vec.ind5586, %broadcast.splat5583
  %index.next5587 = add nuw i64 %index5585, 32    ; 2 uses
  %i.gpi = icmp eq i64 %index.next5587, %n.vec5574
  br i1 %i.gpi, label %middle.block5590, label %vector.body5584, !llvm.loop !3136

middle.block5590:                                 ; preds = %vector.body.interim5589
  %cmp.n5591 = icmp eq i64 %i.gow, %n.vec5574
  br i1 %cmp.n5591, label %.split.us.i.i.i.i.i.i.i.i.i1480, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5590
  %.ph6050 = phi i64 [ %i.gow, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.goy, %middle.block5590 ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388.ph = phi i32 [ %i.glw, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.gpb, %middle.block5590 ]
  br label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i
  %i.gpj = add nsw i64 %i.gpl, -1                 ; 2 uses
  %i.gpk = icmp eq i64 %i.gpj, 0
  br i1 %i.gpk, label %.split.us.i.i.i.i.i.i.i.i.i1480, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3137

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493
  %i.gpl = phi i64 [ %i.gpj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493 ], [ %.ph6050, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388 = phi i32 [ %i.gpm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493 ], [ %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388.ph, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gpm = add nsw i32 %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388, %i.glu ; 2 uses
  %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gpm, %i.glx
  br i1 %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493, !llvm.loop !3135

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437
  %i.gpn = load ptr, ptr %i.gmc, align 8, !tbaa !331
  %i.gpo = sext i32 %i.glw to i64
  %i.gpp = sext i32 %i.glu to i64
  %i.gpq = sext i32 %i.gjm to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1439 = getelementptr [4 x i8], ptr %i.gpn, i64 %i.gpq
  br label %bb.ahn

bb.ahn:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i1443, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438
  %indvars.iv.i.i.i.i.i.i.i.i.i1440 = phi i64 [ %i.gpo, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1445, %.critedge.i.i.i.i.i.i.i.i.i1443 ] ; 3 uses
  %.03441.i.i.i.i.i.i.i.i.i = phi i64 [ %i.glv, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438 ], [ %.1.i.i.i.i.i.i.i.i.i1444, %.critedge.i.i.i.i.i.i.i.i.i1443 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1441 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1439, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1440
  %i.gpr = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1441, align 4, !tbaa !3 ; 2 uses
  %i.gps = zext i32 %i.gpr to i64                 ; 2 uses
  %i.gpt = lshr i64 %i.gps, 6
  %i.gpu = getelementptr inbounds nuw [8 x i8], ptr %i.gma, i64 %i.gpt
  %i.gpv = load i64, ptr %i.gpu, align 8, !tbaa !137
  %i.gpw = and i64 %i.gps, 63
  %i.gpx = shl nuw i64 1, %i.gpw
  %i.gpy = and i64 %i.gpx, %i.gpv
  %.not.i7.i.i.i.i.i.i.i.i.i.i1442 = icmp eq i64 %i.gpy, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1442, label %.critedge.i.i.i.i.i.i.i.i.i1443, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.ahn
  %i.gpz = load ptr, ptr %i.gmd, align 8, !tbaa !487
  %i.gqa = sext i32 %i.gpr to i64
  %i.gqb = getelementptr inbounds [4 x i8], ptr %i.gpz, i64 %i.gqa
  %i.gqc = load float, ptr %i.gqb, align 4, !tbaa !2782 ; 2 uses
  %i.gqd = fcmp uno float %i.gqc, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gqd, i1 %i.gmg, i1 false
  %i.gqe = fcmp oeq float %i.gqc, %i.gkg
  %.0.i.i21.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gqe
  br i1 %.0.i.i21.i.i.i.i.i.i.i.i.i, label %bb.aho, label %.critedge.i.i.i.i.i.i.i.i.i1443

bb.aho:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.gqf = add nsw i64 %.03441.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gqg = icmp eq i64 %i.gqf, 0
  br i1 %i.gqg, label %.split.us.loopexit108.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i1443

.split.us.loopexit.i.i.i.i.i.i.i.i.i1506:         ; preds = %bb.ahi
  %i.gqh = trunc nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1480

.split.us.loopexit98.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ahm
  %i.gqi = trunc nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1480

.split.us.loopexit108.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aho
  %i.gqj = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1440 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1480

.split.us.i.i.i.i.i.i.i.i.i1480:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492, %middle.block5590, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1506
  %.us-phi.i.i.i.i.i.i.i.i.i1481 = phi i32 [ %i.gqj, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i ], [ %i.gqh, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1506 ], [ %i.gqi, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i ], [ %i.gov, %middle.block5590 ], [ %i.gov, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492 ], [ %i.gov, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493 ] ; 3 uses
  %i.gqk = load ptr, ptr %.sroa.12.0..sroa_idx.i1403, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.gql = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1481, 1
  %i.gqm = sext i32 %i.gql to i64
  %i.gqn = getelementptr inbounds nuw i8, ptr %i.gqk, i64 144 ; 2 uses
  %i.gqo = load ptr, ptr %i.gqn, align 8, !tbaa !341 ; 2 uses
  %i.gqp = icmp eq ptr %i.gqo, null
  br i1 %i.gqp, label %bb.ahp, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482

bb.ahp:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i1480
  %i.gqq = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gqk)
          to label %.noexc19.i.i.i.i.i.i.i.i1487 unwind label %bb.ahu ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1487:                     ; preds = %bb.ahp
  %.pre.i.i.i.i.i.i.i.i.i.i1488 = load ptr, ptr %i.gqn, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482: ; preds = %.noexc19.i.i.i.i.i.i.i.i1487, %.split.us.i.i.i.i.i.i.i.i.i1480
  %i.gqr = phi ptr [ %i.gqo, %.split.us.i.i.i.i.i.i.i.i.i1480 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1488, %.noexc19.i.i.i.i.i.i.i.i1487 ]
  %i.gqs = getelementptr inbounds [8 x i8], ptr %i.gqr, i64 %i.glk
  store i64 %i.gqm, ptr %i.gqs, align 8, !tbaa !137
  %i.gqt = getelementptr inbounds nuw i8, ptr %i.gqk, i64 32 ; 2 uses
  %i.gqu = load ptr, ptr %i.gqt, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i1483 = icmp eq ptr %i.gqu, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1483, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %bb.ahq

bb.ahq:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482
  %i.gqv = getelementptr inbounds nuw i8, ptr %i.gqk, i64 56
  %i.gqw = load i32, ptr %i.gqv, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gqk, i32 noundef %i.gqw, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1484 unwind label %bb.ahu

.noexc20.i.i.i.i.i.i.i.i1484:                     ; preds = %bb.ahq
  %i.gqx = load ptr, ptr %i.gqt, align 8, !tbaa !362 ; 2 uses
  %i.gqy = getelementptr inbounds nuw i8, ptr %i.gqx, i64 44
  %i.gqz = load i8, ptr %i.gqy, align 4, !tbaa !363
  %i.gra = and i8 %i.gqz, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1485 = icmp eq i8 %i.gra, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1485, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486, label %.invoke.i.i.i.i.i.i.i.i1475, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486: ; preds = %.noexc20.i.i.i.i.i.i.i.i1484
  %i.grb = getelementptr inbounds nuw i8, ptr %i.gqx, i64 16
  %i.grc = load ptr, ptr %i.grb, align 8, !tbaa !368
  %i.grd = lshr i64 %.069.i.i.i.i.i.i.i.i1426, 3
  %i.gre = and i64 %i.grd, 536870911
  %i.grf = getelementptr inbounds nuw i8, ptr %i.grc, i64 %i.gre ; 2 uses
  %i.grg = load i8, ptr %i.grf, align 1, !tbaa !30
  %i.grh = trunc i64 %.069.i.i.i.i.i.i.i.i1426 to i8
  %i.gri = and i8 %i.grh, 7
  %i.grj = shl nuw i8 1, %i.gri
  %i.grk = or i8 %i.grg, %i.grj
  store i8 %i.grk, ptr %i.grf, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447

.critedge.i.i.i.i.i.i.i.i.i1443:                  ; preds = %bb.aho, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.ahn
  %.1.i.i.i.i.i.i.i.i.i1444 = phi i64 [ %.03441.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.gqf, %bb.aho ], [ %.03441.i.i.i.i.i.i.i.i.i, %bb.ahn ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1445 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1440, %i.gpp ; 2 uses
  %i.grl = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1445 to i32
  %.not16.i.i.i.i.i.i.i.i.i1446 = icmp eq i32 %i.glx, %i.grl
  br i1 %.not16.i.i.i.i.i.i.i.i.i1446, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %bb.ahn, !llvm.loop !3135

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1443, %vector.body5584, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i1497, %.critedge.us.i.i.i.i.i.i.i.i.i1503, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489, %bb.ahe
  %.039.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1481, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1481, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486 ], [ %i.glw, %bb.ahe ], [ %i.glx, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489 ], [ %i.glx, %vector.body5584 ], [ %i.glx, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i ], [ %i.glx, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491 ], [ %i.glx, %.critedge.us51.i.i.i.i.i.i.i.i.i1497 ], [ %i.glx, %.critedge.us.i.i.i.i.i.i.i.i.i1503 ], [ %i.glx, %.critedge.i.i.i.i.i.i.i.i.i1443 ]
  %i.grm = load ptr, ptr %.sroa.952.0..sroa_idx.i1400, align 8, !tbaa !3132, !nonnull !74, !align !497
  %i.grn = load i32, ptr %i.grm, align 4, !tbaa !3
  %i.gro = icmp eq i32 %.039.i.i.i.i.i.i.i.i.i, %i.grn
  br i1 %i.gro, label %bb.ahr, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.ahr:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447
  %i.grp = load ptr, ptr %.sroa.12.0..sroa_idx.i1403, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.grq = getelementptr inbounds nuw i8, ptr %i.grp, i64 144 ; 2 uses
  %i.grr = load ptr, ptr %i.grq, align 8, !tbaa !341 ; 2 uses
  %i.grs = icmp eq ptr %i.grr, null
  br i1 %i.grs, label %bb.ahs, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448

bb.ahs:                                           ; preds = %bb.ahr
  %i.grt = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.grp)
          to label %.noexc22.i.i.i.i.i.i.i.i1478 unwind label %bb.ahu ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1478:                     ; preds = %bb.ahs
  %.pre.i27.i.i.i.i.i.i.i.i.i1479 = load ptr, ptr %i.grq, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448: ; preds = %.noexc22.i.i.i.i.i.i.i.i1478, %bb.ahr
  %i.gru = phi ptr [ %i.grr, %bb.ahr ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1479, %.noexc22.i.i.i.i.i.i.i.i1478 ]
  %i.grv = getelementptr inbounds [8 x i8], ptr %i.gru, i64 %i.glk
  store i64 0, ptr %i.grv, align 8, !tbaa !137
  %i.grw = getelementptr inbounds nuw i8, ptr %i.grp, i64 32 ; 2 uses
  %i.grx = load ptr, ptr %i.grw, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i1449 = icmp eq ptr %i.grx, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1449, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.aht

bb.aht:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448
  %i.gry = getelementptr inbounds nuw i8, ptr %i.grp, i64 56
  %i.grz = load i32, ptr %i.gry, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.grp, i32 noundef %i.grz, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1473 unwind label %bb.ahu

.noexc23.i.i.i.i.i.i.i.i1473:                     ; preds = %bb.aht
  %i.gsa = load ptr, ptr %i.grw, align 8, !tbaa !362 ; 2 uses
  %i.gsb = getelementptr inbounds nuw i8, ptr %i.gsa, i64 44
  %i.gsc = load i8, ptr %i.gsb, align 4, !tbaa !363
  %i.gsd = and i8 %i.gsc, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1474 = icmp eq i8 %i.gsd, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1474, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1477, label %.invoke.i.i.i.i.i.i.i.i1475, !prof !69

.invoke.i.i.i.i.i.i.i.i1475:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1473, %.noexc20.i.i.i.i.i.i.i.i1484
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i1476 unwind label %bb.ahu

.cont.i.i.i.i.i.i.i.i1476:                        ; preds = %.invoke.i.i.i.i.i.i.i.i1475
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1477: ; preds = %.noexc23.i.i.i.i.i.i.i.i1473
  %i.gse = getelementptr inbounds nuw i8, ptr %i.gsa, i64 16
  %i.gsf = load ptr, ptr %i.gse, align 8, !tbaa !368
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %sext37.i.i.i.i.i.i.i.i.i1710 = shl i64 %.069.i.i.i.i.i.i.i.i1703, 32
  %i.hni = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i1710, 32 ; 3 uses
  %i.hnj = getelementptr inbounds [4 x i8], ptr %i.hlf, i64 %i.hni
  %i.hnk = load i32, ptr %i.hnj, align 4, !tbaa !3
  %i.hnl = sext i32 %i.hnk to i64
  %i.hnm = getelementptr inbounds [4 x i8], ptr %i.hne, i64 %i.hnl
  %i.hnn = load i32, ptr %i.hnm, align 4, !tbaa !3 ; 2 uses
  %i.hno = icmp sgt i64 %i.hmx, 0                 ; 3 uses
  %i.hnp = add nsw i32 %i.hnn, -1
  %i.hnq = select i1 %i.hno, i32 0, i32 %i.hnp
  store i32 %i.hnq, ptr %i.hnf, align 4, !tbaa !3
  %i.hnr = select i1 %i.hno, i32 %i.hnn, i32 -1
  store i32 %i.hnr, ptr %i.hng, align 4, !tbaa !3
  %i.hns = select i1 %i.hno, i32 1, i32 -1        ; 9 uses
  store i32 %i.hns, ptr %i.hnh, align 4, !tbaa !3
  %i.hnt = call noundef i64 @llvm.abs.i64(i64 %i.hmx, i1 true) ; 6 uses
  %i.hnu = load i32, ptr %i.hnf, align 4, !tbaa !3 ; 9 uses
  %i.hnv = load i32, ptr %i.hng, align 4, !tbaa !3 ; 13 uses
  %.not1640.i.i.i.i.i.i.i.i.i1711 = icmp eq i32 %i.hnu, %i.hnv
  br i1 %.not1640.i.i.i.i.i.i.i.i.i1711, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %.lr.ph.i.i.i.i.i.i.i.i.i1712

.lr.ph.i.i.i.i.i.i.i.i.i1712:                     ; preds = %bb.amj
  %i.hnw = load ptr, ptr %.sroa.11.0..sroa_idx.i1679, align 8, !tbaa !3170, !nonnull !74, !align !275 ; 7 uses
  %i.hnx = getelementptr inbounds nuw i8, ptr %i.hnw, i64 24
  %i.hny = load ptr, ptr %i.hnx, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1713 = icmp eq ptr %i.hny, null
  %i.hnz = getelementptr inbounds nuw i8, ptr %i.hnw, i64 59 ; 3 uses
  %i.hoa = getelementptr inbounds nuw i8, ptr %i.hnw, i64 8 ; 3 uses
  %i.hob = getelementptr inbounds nuw i8, ptr %i.hnw, i64 16 ; 4 uses
  %i.hoc = getelementptr inbounds nuw i8, ptr %i.hnw, i64 58
  %i.hod = getelementptr inbounds nuw i8, ptr %i.hnw, i64 64 ; 3 uses
  %i.hoe = fcmp uno double %i.hme, 0.000000e+00   ; 4 uses
  %i.hof = load i8, ptr %i.hoc, align 2, !tbaa !338, !range !73, !noundef !74
  %i.hog = trunc nuw i8 %i.hof to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1713, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1714

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1712
  %i.hoh = load ptr, ptr %i.hob, align 8, !tbaa !487
  %i.hoi = sext i32 %i.hnu to i64
  %i.hoj = sext i32 %i.hns to i64
  %i.hok = sext i32 %i.hlk to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1805, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798
  %indvars.iv133.i.i.i.i.i.i.i.i.i1800 = phi i64 [ %indvars.iv.next134.i.i.i.i.i.i.i.i.i1807, %.critedge.us.i.i.i.i.i.i.i.i.i1805 ], [ %i.hoi, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798 ] ; 3 uses
  %.03441.us.i.i.i.i.i.i.i.i.i1801 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1806, %.critedge.us.i.i.i.i.i.i.i.i.i1805 ], [ %i.hnt, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798 ] ; 2 uses
  %i.hol = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1800, %i.hok ; 2 uses
  %i.hom = trunc nsw i64 %i.hol to i32
  br i1 %i.hog, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.amk

bb.amk:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799
  %i.hon = load i8, ptr %i.hnz, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hoo = trunc nuw i8 %i.hon to i1
  br i1 %i.hoo, label %bb.amm, label %bb.aml

bb.aml:                                           ; preds = %bb.amk
  %i.hop = load ptr, ptr %i.hoa, align 8, !tbaa !331
  %i.hoq = getelementptr inbounds [4 x i8], ptr %i.hop, i64 %i.hol
  %i.hor = load i32, ptr %i.hoq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.amm:                                           ; preds = %bb.amk
  %i.hos = load i32, ptr %i.hod, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.amm, %bb.aml, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1802 = phi i32 [ %i.hor, %bb.aml ], [ %i.hos, %bb.amm ], [ %i.hom, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799 ]
  %i.hot = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1802 to i64
  %i.hou = getelementptr inbounds [8 x i8], ptr %i.hoh, i64 %i.hot
  %i.hov = load double, ptr %i.hou, align 8, !tbaa !2797 ; 2 uses
  %i.how = fcmp uno double %i.hov, 0.000000e+00
  %or.cond.i.i.us.i.i.i.i.i.i.i.i.i1803 = select i1 %i.how, i1 %i.hoe, i1 false
  %i.hox = fcmp oeq double %i.hov, %i.hme
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i1804 = select i1 %or.cond.i.i.us.i.i.i.i.i.i.i.i.i1803, i1 true, i1 %i.hox
  br i1 %.0.i.i21.us.i.i.i.i.i.i.i.i.i1804, label %bb.amn, label %.critedge.us.i.i.i.i.i.i.i.i.i1805

bb.amn:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.hoy = add nsw i64 %.03441.us.i.i.i.i.i.i.i.i.i1801, -1 ; 2 uses
  %i.hoz = icmp eq i64 %i.hoy, 0
  br i1 %i.hoz, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i1809, label %.critedge.us.i.i.i.i.i.i.i.i.i1805

.critedge.us.i.i.i.i.i.i.i.i.i1805:               ; preds = %bb.amn, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1806 = phi i64 [ %.03441.us.i.i.i.i.i.i.i.i.i1801, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.hoy, %bb.amn ]
  %indvars.iv.next134.i.i.i.i.i.i.i.i.i1807 = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1800, %i.hoj ; 2 uses
  %i.hpa = trunc nsw i64 %indvars.iv.next134.i.i.i.i.i.i.i.i.i1807 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1808 = icmp eq i32 %i.hnv, %i.hpa
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1808, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799, !llvm.loop !3171

.lr.ph.split.i.i.i.i.i.i.i.i.i1714:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1712
  %i.hpb = getelementptr inbounds nuw i8, ptr %i.hnw, i64 57
  %i.hpc = load i8, ptr %i.hpb, align 1, !range !73
  %i.hpd = trunc nuw i8 %i.hpc to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1715 = select i1 %i.hog, i1 true, i1 %i.hpd
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1715, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1714
  %i.hpe = sext i32 %i.hnu to i64
  %i.hpf = sext i32 %i.hns to i64
  %i.hpg = sext i32 %i.hlk to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785:      ; preds = %.critedge.us51.i.i.i.i.i.i.i.i.i1793, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784
  %indvars.iv130.i.i.i.i.i.i.i.i.i1786 = phi i64 [ %i.hpe, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784 ], [ %indvars.iv.next131.i.i.i.i.i.i.i.i.i1795, %.critedge.us51.i.i.i.i.i.i.i.i.i1793 ] ; 3 uses
  %.03441.us45.i.i.i.i.i.i.i.i.i1787 = phi i64 [ %i.hnt, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784 ], [ %.1.us52.i.i.i.i.i.i.i.i.i1794, %.critedge.us51.i.i.i.i.i.i.i.i.i1793 ] ; 3 uses
  %i.hph = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i1786, %i.hpg ; 4 uses
  %i.hpi = lshr i64 %i.hph, 6
  %i.hpj = and i64 %i.hpi, 67108863
  %i.hpk = getelementptr inbounds nuw [8 x i8], ptr %i.hny, i64 %i.hpj
  %i.hpl = load i64, ptr %i.hpk, align 8, !tbaa !137
  %i.hpm = and i64 %i.hph, 63
  %i.hpn = shl nuw i64 1, %i.hpm
  %i.hpo = and i64 %i.hpn, %i.hpl
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1788 = icmp eq i64 %i.hpo, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1788, label %.critedge.us51.i.i.i.i.i.i.i.i.i1793, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785
  %i.hpp = trunc nsw i64 %i.hph to i32
  %i.hpq = load ptr, ptr %i.hob, align 8, !tbaa !487
  br i1 %i.hog, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, label %bb.amo

bb.amo:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789
  %i.hpr = load i8, ptr %i.hnz, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hps = trunc nuw i8 %i.hpr to i1
  br i1 %i.hps, label %bb.amq, label %bb.amp

bb.amp:                                           ; preds = %bb.amo
  %i.hpt = load ptr, ptr %i.hoa, align 8, !tbaa !331
  %i.hpu = getelementptr inbounds [4 x i8], ptr %i.hpt, i64 %i.hph
  %i.hpv = load i32, ptr %i.hpu, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

bb.amq:                                           ; preds = %bb.amo
  %i.hpw = load i32, ptr %i.hod, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i: ; preds = %bb.amq, %bb.amp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789
  %.0.i.i19.us48.i.i.i.i.i.i.i.i.i1790 = phi i32 [ %i.hpv, %bb.amp ], [ %i.hpw, %bb.amq ], [ %i.hpp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789 ]
  %i.hpx = sext i32 %.0.i.i19.us48.i.i.i.i.i.i.i.i.i1790 to i64
  %i.hpy = getelementptr inbounds [8 x i8], ptr %i.hpq, i64 %i.hpx
  %i.hpz = load double, ptr %i.hpy, align 8, !tbaa !2797 ; 2 uses
  %i.hqa = fcmp uno double %i.hpz, 0.000000e+00
  %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i1791 = select i1 %i.hqa, i1 %i.hoe, i1 false
  %i.hqb = fcmp oeq double %i.hpz, %i.hme
  %.0.i.i21.us50.i.i.i.i.i.i.i.i.i1792 = select i1 %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i1791, i1 true, i1 %i.hqb
  br i1 %.0.i.i21.us50.i.i.i.i.i.i.i.i.i1792, label %bb.amr, label %.critedge.us51.i.i.i.i.i.i.i.i.i1793

bb.amr:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i
  %i.hqc = add nsw i64 %.03441.us45.i.i.i.i.i.i.i.i.i1787, -1 ; 2 uses
  %i.hqd = icmp eq i64 %i.hqc, 0
  br i1 %i.hqd, label %.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797, label %.critedge.us51.i.i.i.i.i.i.i.i.i1793

.critedge.us51.i.i.i.i.i.i.i.i.i1793:             ; preds = %bb.amr, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785
  %.1.us52.i.i.i.i.i.i.i.i.i1794 = phi i64 [ %.03441.us45.i.i.i.i.i.i.i.i.i1787, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i ], [ %i.hqc, %bb.amr ], [ %.03441.us45.i.i.i.i.i.i.i.i.i1787, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785 ]
  %indvars.iv.next131.i.i.i.i.i.i.i.i.i1795 = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i1786, %i.hpf ; 2 uses
  %i.hqe = trunc nsw i64 %indvars.iv.next131.i.i.i.i.i.i.i.i.i1795 to i32
  %.not16.us53.i.i.i.i.i.i.i.i.i1796 = icmp eq i32 %i.hnv, %i.hqe
  br i1 %.not16.us53.i.i.i.i.i.i.i.i.i1796, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785, !llvm.loop !3171

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1714
  %i.hqf = load i8, ptr %i.hnz, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hqg = trunc nuw i8 %i.hqf to i1
  br i1 %i.hqg, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716
  %i.hqh = load i64, ptr %i.hny, align 8, !tbaa !137
  %i.hqi = and i64 %i.hqh, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1774 = icmp eq i64 %i.hqi, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1774, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773
  %i.hqj = load ptr, ptr %i.hob, align 8, !tbaa !487
  %i.hqk = load i32, ptr %i.hod, align 8, !tbaa !488
  %i.hql = sext i32 %i.hqk to i64
  %i.hqm = getelementptr inbounds [8 x i8], ptr %i.hqj, i64 %i.hql
  %i.hqn = load double, ptr %i.hqm, align 8, !tbaa !2797 ; 2 uses
  %i.hqo = fcmp uno double %i.hqn, 0.000000e+00
  %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i1776 = select i1 %i.hqo, i1 %i.hoe, i1 false
  %i.hqp = fcmp oeq double %i.hqn, %i.hme
  %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i1777 = select i1 %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i1776, i1 true, i1 %i.hqp
  br i1 %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i1777, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775
  %i.hqq = trunc i64 %i.hnt to i32
  %i.hqr = add i32 %i.hqq, -1
  %i.hqs = mul i32 %i.hqr, %i.hns
  %i.hqt = add i32 %i.hnu, %i.hqs                 ; 3 uses
  %i.hqu = add nsw i64 %i.hnt, -1                 ; 5 uses
  %i.hqv = icmp eq i64 %i.hqu, 0
  br i1 %i.hqv, label %.split.us.i.i.i.i.i.i.i.i.i1764, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778
  %min.iters.check5546 = icmp samesign ult i64 %i.hnt, 33
  br i1 %min.iters.check5546, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader, label %vector.ph5547

vector.ph5547:                                    ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph
  %n.vec5549 = and i64 %i.hqu, -32                ; 3 uses
  %i.hqw = and i64 %i.hqu, 31
  %i.hqx = trunc i64 %n.vec5549 to i32
  %i.hqy = mul i32 %i.hns, %i.hqx
  %i.hqz = add i32 %i.hnu, %i.hqy
  %broadcast.splatinsert5550 = insertelement <32 x i32> poison, i32 %i.hns, i64 0
  %broadcast.splat5551 = shufflevector <32 x i32> %broadcast.splatinsert5550, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5552 = insertelement <32 x i32> poison, i32 %i.hnv, i64 0
  %broadcast.splat5553 = shufflevector <32 x i32> %broadcast.splatinsert5552, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5554 = insertelement <32 x i32> poison, i32 %i.hnu, i64 0
  %broadcast.splat5555 = shufflevector <32 x i32> %broadcast.splatinsert5554, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.hra = mul <32 x i32> %broadcast.splat5551, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5556 = add <32 x i32> %broadcast.splat5555, %i.hra
  %i.hrb = shl nsw i32 %i.hns, 5
  %broadcast.splatinsert5557 = insertelement <32 x i32> poison, i32 %i.hrb, i64 0
  %broadcast.splat5558 = shufflevector <32 x i32> %broadcast.splatinsert5557, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5559

vector.body5559:                                  ; preds = %vector.body.interim5564, %vector.ph5547
  %index5560 = phi i64 [ 0, %vector.ph5547 ], [ %index.next5562, %vector.body.interim5564 ]
  %vec.ind5561 = phi <32 x i32> [ %induction5556, %vector.ph5547 ], [ %vec.ind.next5563, %vector.body.interim5564 ] ; 2 uses
  %i.hrc = add nsw <32 x i32> %vec.ind5561, %broadcast.splat5551
  %i.hrd = icmp eq <32 x i32> %i.hrc, %broadcast.splat5553
  %i.hre = freeze <32 x i1> %i.hrd
  %i.hrf = bitcast <32 x i1> %i.hre to i32
  %.not5849 = icmp eq i32 %i.hrf, 0
  br i1 %.not5849, label %vector.body.interim5564, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729

vector.body.interim5564:                          ; preds = %vector.body5559
  %vec.ind.next5563 = add <32 x i32> %vec.ind5561, %broadcast.splat5558
  %index.next5562 = add nuw i64 %index5560, 32    ; 2 uses
  %i.hrg = icmp eq i64 %index.next5562, %n.vec5549
  br i1 %i.hrg, label %middle.block5565, label %vector.body5559, !llvm.loop !3172

middle.block5565:                                 ; preds = %vector.body.interim5564
  %cmp.n5566 = icmp eq i64 %i.hqu, %n.vec5549
  br i1 %cmp.n5566, label %.split.us.i.i.i.i.i.i.i.i.i1764, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph, %middle.block5565
  %.ph6076 = phi i64 [ %i.hqu, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph ], [ %i.hqw, %middle.block5565 ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381.ph = phi i32 [ %i.hnu, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph ], [ %i.hqz, %middle.block5565 ]
  br label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782
  %i.hrh = add nsw i64 %i.hrj, -1                 ; 2 uses
  %i.hri = icmp eq i64 %i.hrh, 0
  br i1 %i.hri, label %.split.us.i.i.i.i.i.i.i.i.i1764, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782, !llvm.loop !3173

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782:     ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779
  %i.hrj = phi i64 [ %i.hrh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779 ], [ %.ph6076, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381 = phi i32 [ %i.hrk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779 ], [ %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381.ph, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader ]
  %i.hrk = add nsw i32 %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381, %i.hns ; 2 uses
  %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i1783 = icmp eq i32 %i.hrk, %i.hnv
  br i1 %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i1783, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779, !llvm.loop !3171

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716
  %i.hrl = load ptr, ptr %i.hoa, align 8, !tbaa !331
  %i.hrm = sext i32 %i.hnu to i64
  %i.hrn = sext i32 %i.hns to i64
  %i.hro = sext i32 %i.hlk to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1718 = getelementptr [4 x i8], ptr %i.hrl, i64 %i.hro
  br label %bb.ams

bb.ams:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i1725, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717
  %indvars.iv.i.i.i.i.i.i.i.i.i1719 = phi i64 [ %i.hrm, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1727, %.critedge.i.i.i.i.i.i.i.i.i1725 ] ; 3 uses
  %.03441.i.i.i.i.i.i.i.i.i1720 = phi i64 [ %i.hnt, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717 ], [ %.1.i.i.i.i.i.i.i.i.i1726, %.critedge.i.i.i.i.i.i.i.i.i1725 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1721 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1718, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1719
  %i.hrp = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1721, align 4, !tbaa !3 ; 2 uses
  %i.hrq = zext i32 %i.hrp to i64                 ; 2 uses
  %i.hrr = lshr i64 %i.hrq, 6
  %i.hrs = getelementptr inbounds nuw [8 x i8], ptr %i.hny, i64 %i.hrr
  %i.hrt = load i64, ptr %i.hrs, align 8, !tbaa !137
  %i.hru = and i64 %i.hrq, 63
  %i.hrv = shl nuw i64 1, %i.hru
  %i.hrw = and i64 %i.hrv, %i.hrt
  %.not.i7.i.i.i.i.i.i.i.i.i.i1722 = icmp eq i64 %i.hrw, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1722, label %.critedge.i.i.i.i.i.i.i.i.i1725, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.ams
  %i.hrx = load ptr, ptr %i.hob, align 8, !tbaa !487
  %i.hry = sext i32 %i.hrp to i64
  %i.hrz = getelementptr inbounds [8 x i8], ptr %i.hrx, i64 %i.hry
  %i.hsa = load double, ptr %i.hrz, align 8, !tbaa !2797 ; 2 uses
  %i.hsb = fcmp uno double %i.hsa, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i1723 = select i1 %i.hsb, i1 %i.hoe, i1 false
  %i.hsc = fcmp oeq double %i.hsa, %i.hme
  %.0.i.i21.i.i.i.i.i.i.i.i.i1724 = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i1723, i1 true, i1 %i.hsc
  br i1 %.0.i.i21.i.i.i.i.i.i.i.i.i1724, label %bb.amt, label %.critedge.i.i.i.i.i.i.i.i.i1725

bb.amt:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.hsd = add nsw i64 %.03441.i.i.i.i.i.i.i.i.i1720, -1 ; 2 uses
  %i.hse = icmp eq i64 %i.hsd, 0
  br i1 %i.hse, label %.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763, label %.critedge.i.i.i.i.i.i.i.i.i1725

.split.us.loopexit.i.i.i.i.i.i.i.i.i1809:         ; preds = %bb.amn
  %i.hsf = trunc nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1800 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1764

.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797:       ; preds = %bb.amr
  %i.hsg = trunc nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i1786 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1764

.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763:      ; preds = %bb.amt
  %i.hsh = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1719 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1764

.split.us.i.i.i.i.i.i.i.i.i1764:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778, %middle.block5565, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1809
  %.us-phi.i.i.i.i.i.i.i.i.i1765 = phi i32 [ %i.hsh, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763 ], [ %i.hsf, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1809 ], [ %i.hsg, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797 ], [ %i.hqt, %middle.block5565 ], [ %i.hqt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778 ], [ %i.hqt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779 ] ; 3 uses
  %i.hsi = load ptr, ptr %.sroa.12.0..sroa_idx.i1680, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.hsj = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1765, 1
  %i.hsk = sext i32 %i.hsj to i64
  %i.hsl = getelementptr inbounds nuw i8, ptr %i.hsi, i64 144 ; 2 uses
  %i.hsm = load ptr, ptr %i.hsl, align 8, !tbaa !341 ; 2 uses
  %i.hsn = icmp eq ptr %i.hsm, null
  br i1 %i.hsn, label %bb.amu, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766

bb.amu:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i1764
  %i.hso = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hsi)
          to label %.noexc19.i.i.i.i.i.i.i.i1771 unwind label %bb.amz ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1771:                     ; preds = %bb.amu
  %.pre.i.i.i.i.i.i.i.i.i.i1772 = load ptr, ptr %i.hsl, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766: ; preds = %.noexc19.i.i.i.i.i.i.i.i1771, %.split.us.i.i.i.i.i.i.i.i.i1764
  %i.hsp = phi ptr [ %i.hsm, %.split.us.i.i.i.i.i.i.i.i.i1764 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1772, %.noexc19.i.i.i.i.i.i.i.i1771 ]
  %i.hsq = getelementptr inbounds [8 x i8], ptr %i.hsp, i64 %i.hni
  store i64 %i.hsk, ptr %i.hsq, align 8, !tbaa !137
  %i.hsr = getelementptr inbounds nuw i8, ptr %i.hsi, i64 32 ; 2 uses
  %i.hss = load ptr, ptr %i.hsr, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i1767 = icmp eq ptr %i.hss, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1767, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %bb.amv

bb.amv:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766
  %i.hst = getelementptr inbounds nuw i8, ptr %i.hsi, i64 56
  %i.hsu = load i32, ptr %i.hst, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hsi, i32 noundef %i.hsu, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1768 unwind label %bb.amz

.noexc20.i.i.i.i.i.i.i.i1768:                     ; preds = %bb.amv
  %i.hsv = load ptr, ptr %i.hsr, align 8, !tbaa !362 ; 2 uses
  %i.hsw = getelementptr inbounds nuw i8, ptr %i.hsv, i64 44
  %i.hsx = load i8, ptr %i.hsw, align 4, !tbaa !363
  %i.hsy = and i8 %i.hsx, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1769 = icmp eq i8 %i.hsy, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1769, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770, label %.invoke.i.i.i.i.i.i.i.i1758, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770: ; preds = %.noexc20.i.i.i.i.i.i.i.i1768
  %i.hsz = getelementptr inbounds nuw i8, ptr %i.hsv, i64 16
  %i.hta = load ptr, ptr %i.hsz, align 8, !tbaa !368
  %i.htb = lshr i64 %.069.i.i.i.i.i.i.i.i1703, 3
  %i.htc = and i64 %i.htb, 536870911
  %i.htd = getelementptr inbounds nuw i8, ptr %i.hta, i64 %i.htc ; 2 uses
  %i.hte = load i8, ptr %i.htd, align 1, !tbaa !30
  %i.htf = trunc i64 %.069.i.i.i.i.i.i.i.i1703 to i8
  %i.htg = and i8 %i.htf, 7
  %i.hth = shl nuw i8 1, %i.htg
  %i.hti = or i8 %i.hte, %i.hth
  store i8 %i.hti, ptr %i.htd, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729

.critedge.i.i.i.i.i.i.i.i.i1725:                  ; preds = %bb.amt, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.ams
  %.1.i.i.i.i.i.i.i.i.i1726 = phi i64 [ %.03441.i.i.i.i.i.i.i.i.i1720, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.hsd, %bb.amt ], [ %.03441.i.i.i.i.i.i.i.i.i1720, %bb.ams ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1727 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1719, %i.hrn ; 2 uses
  %i.htj = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1727 to i32
  %.not16.i.i.i.i.i.i.i.i.i1728 = icmp eq i32 %i.hnv, %i.htj
  br i1 %.not16.i.i.i.i.i.i.i.i.i1728, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %bb.ams, !llvm.loop !3171

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1725, %vector.body5559, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782, %.critedge.us51.i.i.i.i.i.i.i.i.i1793, %.critedge.us.i.i.i.i.i.i.i.i.i1805, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773, %bb.amj
  %.039.i.i.i.i.i.i.i.i.i1730 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1765, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1765, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770 ], [ %i.hnu, %bb.amj ], [ %i.hnv, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773 ], [ %i.hnv, %vector.body5559 ], [ %i.hnv, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782 ], [ %i.hnv, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775 ], [ %i.hnv, %.critedge.us51.i.i.i.i.i.i.i.i.i1793 ], [ %i.hnv, %.critedge.us.i.i.i.i.i.i.i.i.i1805 ], [ %i.hnv, %.critedge.i.i.i.i.i.i.i.i.i1725 ]
  %i.htk = load ptr, ptr %.sroa.952.0..sroa_idx.i1677, align 8, !tbaa !3168, !nonnull !74, !align !497
  %i.htl = load i32, ptr %i.htk, align 4, !tbaa !3
  %i.htm = icmp eq i32 %.039.i.i.i.i.i.i.i.i.i1730, %i.htl
  br i1 %i.htm, label %bb.amw, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.amw:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729
  %i.htn = load ptr, ptr %.sroa.12.0..sroa_idx.i1680, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.hto = getelementptr inbounds nuw i8, ptr %i.htn, i64 144 ; 2 uses
  %i.htp = load ptr, ptr %i.hto, align 8, !tbaa !341 ; 2 uses
  %i.htq = icmp eq ptr %i.htp, null
  br i1 %i.htq, label %bb.amx, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731

bb.amx:                                           ; preds = %bb.amw
  %i.htr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.htn)
          to label %.noexc22.i.i.i.i.i.i.i.i1761 unwind label %bb.amz ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1761:                     ; preds = %bb.amx
  %.pre.i27.i.i.i.i.i.i.i.i.i1762 = load ptr, ptr %i.hto, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731: ; preds = %.noexc22.i.i.i.i.i.i.i.i1761, %bb.amw
  %i.hts = phi ptr [ %i.htp, %bb.amw ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1762, %.noexc22.i.i.i.i.i.i.i.i1761 ]
  %i.htt = getelementptr inbounds [8 x i8], ptr %i.hts, i64 %i.hni
  store i64 0, ptr %i.htt, align 8, !tbaa !137
  %i.htu = getelementptr inbounds nuw i8, ptr %i.htn, i64 32 ; 2 uses
  %i.htv = load ptr, ptr %i.htu, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i1732 = icmp eq ptr %i.htv, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1732, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.amy

bb.amy:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731
  %i.htw = getelementptr inbounds nuw i8, ptr %i.htn, i64 56
  %i.htx = load i32, ptr %i.htw, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.htn, i32 noundef %i.htx, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1756 unwind label %bb.amz

.noexc23.i.i.i.i.i.i.i.i1756:                     ; preds = %bb.amy
  %i.hty = load ptr, ptr %i.htu, align 8, !tbaa !362 ; 2 uses
  %i.htz = getelementptr inbounds nuw i8, ptr %i.hty, i64 44
  %i.hua = load i8, ptr %i.htz, align 4, !tbaa !363
  %i.hub = and i8 %i.hua, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1757 = icmp eq i8 %i.hub, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1757, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1760, label %.invoke.i.i.i.i.i.i.i.i1758, !prof !69

.invoke.i.i.i.i.i.i.i.i1758:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1756, %.noexc20.i.i.i.i.i.i.i.i1768
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i1759 unwind label %bb.amz

.cont.i.i.i.i.i.i.i.i1759:                        ; preds = %.invoke.i.i.i.i.i.i.i.i1758
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1760: ; preds = %.noexc23.i.i.i.i.i.i.i.i1756
  %i.huc = getelementptr inbounds nuw i8, ptr %i.hty, i64 16
  %i.hud = load ptr, ptr %i.huc, align 8, !tbaa !368
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  br i1 %i.iqs, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i, label %bb.arq

bb.arq:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065
  %i.irb = load i8, ptr %i.iql, align 1, !tbaa !339, !range !73, !noundef !74
  %i.irc = trunc nuw i8 %i.irb to i1
  br i1 %i.irc, label %bb.ars, label %bb.arr

bb.arr:                                           ; preds = %bb.arq
  %i.ird = load ptr, ptr %i.iqm, align 8, !tbaa !331
  %i.ire = getelementptr inbounds [4 x i8], ptr %i.ird, i64 %i.iqz
  %i.irf = load i32, ptr %i.ire, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i

bb.ars:                                           ; preds = %bb.arq
  %i.irg = load i32, ptr %i.iqp, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.ars, %bb.arr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065
  %.0.i.i18.us.i.i.i.i.i.i.i.i.i = phi i32 [ %i.irf, %bb.arr ], [ %i.irg, %bb.ars ], [ %i.ira, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065 ]
  %i.irh = sext i32 %.0.i.i18.us.i.i.i.i.i.i.i.i.i to i64
  %i.iri = getelementptr inbounds [16 x i8], ptr %i.iqt, i64 %i.irh ; 2 uses
  %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iri, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iri, i64 8
  %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.irj = trunc i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i25.us.i.i.i.i.i.i.i.i.i, label %bb.art, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

bb.art:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i
  %i.irk = icmp ult i32 %i.irj, 13
  br i1 %i.irk, label %bb.arv, label %bb.aru

bb.aru:                                           ; preds = %bb.art
  %i.irl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i, i64 4
  %bcmp.i.i.us.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.irl, ptr nonnull %i.iqq, i64 %i.iqy)
  %i.irm = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.irm, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

bb.arv:                                           ; preds = %bb.art
  %i.irn = icmp samesign ult i32 %i.irj, 5
  %i.iro = icmp eq ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.us.i.i.i.i.i.i.i.i.i = select i1 %i.irn, i1 true, i1 %i.iro
  br i1 %or.cond.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.arv, %bb.aru
  %i.irp = add nsw i64 %.04254.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.irq = icmp eq i64 %i.irp, 0
  br i1 %i.irq, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

.critedge.us.i.i.i.i.i.i.i.i.i2066:               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, %bb.arv, %bb.aru, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i2067 = phi i64 [ %.04254.us.i.i.i.i.i.i.i.i.i, %bb.aru ], [ %i.irp, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i ], [ %.04254.us.i.i.i.i.i.i.i.i.i, %bb.arv ], [ %.04254.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next119.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i.i.i.i.i.i, %i.iqv ; 2 uses
  %i.irr = trunc nsw i64 %indvars.iv.next119.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2068 = icmp eq i32 %i.iqh, %i.irr
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2068, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065, !llvm.loop !3207

.lr.ph.split.i.i.i.i.i.i.i.i.i2009:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2007
  %i.irs = getelementptr inbounds nuw i8, ptr %i.iqi, i64 57
  %i.irt = load i8, ptr %i.irs, align 1, !range !73
  %i.iru = trunc nuw i8 %i.irt to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2010 = select i1 %i.iqs, i1 true, i1 %i.iru
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2010, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2009
  %i.irv = sext i32 %i.iqg to i64
  %i.irw = sext i32 %i.iqe to i64
  %i.irx = sext i32 %i.inx to i64
  %i.iry = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.irz = add nsw i64 %i.iry, -4
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062:      ; preds = %.critedge.us69.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061
  %indvars.iv115.i.i.i.i.i.i.i.i.i = phi i64 [ %i.irv, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061 ], [ %indvars.iv.next116.i.i.i.i.i.i.i.i.i, %.critedge.us69.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.04254.us58.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iqf, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061 ], [ %.1.us70.i.i.i.i.i.i.i.i.i, %.critedge.us69.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.isa = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i, %i.irx ; 4 uses
  %i.isb = lshr i64 %i.isa, 6
  %i.isc = and i64 %i.isb, 67108863
  %i.isd = getelementptr inbounds nuw [8 x i8], ptr %i.iqk, i64 %i.isc
  %i.ise = load i64, ptr %i.isd, align 8, !tbaa !137
  %i.isf = and i64 %i.isa, 63
  %i.isg = shl nuw i64 1, %i.isf
  %i.ish = and i64 %i.isg, %i.ise
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2063 = icmp eq i64 %i.ish, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2063, label %.critedge.us69.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062
  %i.isi = trunc nsw i64 %i.isa to i32
  %i.isj = load ptr, ptr %i.iqn, align 8, !tbaa !487
  br i1 %i.iqs, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i, label %bb.arw

bb.arw:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i
  %i.isk = load i8, ptr %i.iql, align 1, !tbaa !339, !range !73, !noundef !74
  %i.isl = trunc nuw i8 %i.isk to i1
  br i1 %i.isl, label %bb.ary, label %bb.arx

bb.arx:                                           ; preds = %bb.arw
  %i.ism = load ptr, ptr %i.iqm, align 8, !tbaa !331
  %i.isn = getelementptr inbounds [4 x i8], ptr %i.ism, i64 %i.isa
  %i.iso = load i32, ptr %i.isn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i

bb.ary:                                           ; preds = %bb.arw
  %i.isp = load i32, ptr %i.iqp, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i: ; preds = %bb.ary, %bb.arx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i
  %.0.i.i18.us61.i.i.i.i.i.i.i.i.i = phi i32 [ %i.iso, %bb.arx ], [ %i.isp, %bb.ary ], [ %i.isi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i ]
  %i.isq = sext i32 %.0.i.i18.us61.i.i.i.i.i.i.i.i.i to i64
  %i.isr = getelementptr inbounds [16 x i8], ptr %i.isj, i64 %i.isq ; 2 uses
  %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i = load i64, ptr %i.isr, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.isr, i64 8
  %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us65.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.iss = trunc i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i25.us65.i.i.i.i.i.i.i.i.i, label %bb.arz, label %.critedge.us69.i.i.i.i.i.i.i.i.i

bb.arz:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i
  %i.ist = icmp ult i32 %i.iss, 13
  br i1 %i.ist, label %bb.asb, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  %i.isu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i, i64 4
  %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.isu, ptr nonnull %i.iqq, i64 %i.irz)
  %i.isv = icmp eq i32 %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.isv, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, label %.critedge.us69.i.i.i.i.i.i.i.i.i

bb.asb:                                           ; preds = %bb.arz
  %i.isw = icmp samesign ult i32 %i.iss, 5
  %i.isx = icmp eq ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.us67.i.i.i.i.i.i.i.i.i = select i1 %i.isw, i1 true, i1 %i.isx
  br i1 %or.cond.us67.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, label %.critedge.us69.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i: ; preds = %bb.asb, %bb.asa
  %i.isy = add nsw i64 %.04254.us58.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.isz = icmp eq i64 %i.isy, 0
  br i1 %i.isz, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us69.i.i.i.i.i.i.i.i.i

.critedge.us69.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, %bb.asb, %bb.asa, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062
  %.1.us70.i.i.i.i.i.i.i.i.i = phi i64 [ %.04254.us58.i.i.i.i.i.i.i.i.i, %bb.asa ], [ %i.isy, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i ], [ %.04254.us58.i.i.i.i.i.i.i.i.i, %bb.asb ], [ %.04254.us58.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062 ], [ %.04254.us58.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next116.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i, %i.irw ; 2 uses
  %i.ita = trunc nsw i64 %indvars.iv.next116.i.i.i.i.i.i.i.i.i to i32
  %.not16.us71.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqh, %i.ita
  br i1 %.not16.us71.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062, !llvm.loop !3207

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2009
  %i.itb = load i8, ptr %i.iql, align 1, !tbaa !339, !range !73, !noundef !74
  %i.itc = trunc nuw i8 %i.itb to i1
  br i1 %i.itc, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011
  %i.itd = load i64, ptr %i.iqk, align 8, !tbaa !137
  %i.ite = and i64 %i.itd, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2060 = icmp eq i64 %i.ite, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2060, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059
  %i.itf = load ptr, ptr %i.iqn, align 8, !tbaa !487
  %i.itg = zext i32 %i.iqg to i64                 ; 2 uses
  %i.ith = zext i32 %i.iqe to i64                 ; 2 uses
  %i.iti = load i32, ptr %i.iqp, align 8, !tbaa !488
  %i.itj = sext i32 %i.iti to i64
  %i.itk = getelementptr inbounds [16 x i8], ptr %i.itf, i64 %i.itj ; 2 uses
  %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i = load i64, ptr %i.itk, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.itk, i64 8
  %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us84.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.itl = trunc i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.itm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i, i64 4
  %i.itn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.ito = add nsw i64 %i.itn, -4
  %i.itp = icmp samesign ult i32 %i.itl, 5
  %i.itq = icmp eq ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.us86.i.i.i.i.i.i.i.i.i = select i1 %i.itp, i1 true, i1 %i.itq
  br i1 %.not.i.i25.us84.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i
  %i.itr = icmp ult i32 %i.itl, 13
  br i1 %i.itr, label %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i
  br i1 %or.cond.us86.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i
  %i.its = add nsw i64 %i.iqf, -1
  %i.itt = mul i64 %i.its, %i.ith
  %i.itu = add i64 %i.itt, %i.itg                 ; 3 uses
  %i.itv = add nsw i64 %i.iqf, -1                 ; 5 uses
  %i.itw = icmp eq i64 %i.itv, 0
  br i1 %i.itw, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph:  ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check5496 = icmp samesign ult i64 %i.iqf, 33
  br i1 %min.iters.check5496, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader, label %vector.ph5497

vector.ph5497:                                    ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5499 = and i64 %i.itv, -32                ; 3 uses
  %i.itx = and i64 %i.itv, 31
  %i.ity = trunc i64 %n.vec5499 to i32
  %i.itz = mul i32 %i.iqe, %i.ity
  %i.iua = add i32 %i.iqg, %i.itz
  %broadcast.splatinsert5500 = insertelement <32 x i32> poison, i32 %i.iqe, i64 0
  %broadcast.splat5501 = shufflevector <32 x i32> %broadcast.splatinsert5500, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5502 = insertelement <32 x i32> poison, i32 %i.iqh, i64 0
  %broadcast.splat5503 = shufflevector <32 x i32> %broadcast.splatinsert5502, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5504 = insertelement <32 x i32> poison, i32 %i.iqg, i64 0
  %broadcast.splat5505 = shufflevector <32 x i32> %broadcast.splatinsert5504, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.iub = mul <32 x i32> %broadcast.splat5501, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5506 = add <32 x i32> %broadcast.splat5505, %i.iub
  %i.iuc = shl nsw i32 %i.iqe, 5
  %broadcast.splatinsert5507 = insertelement <32 x i32> poison, i32 %i.iuc, i64 0
  %broadcast.splat5508 = shufflevector <32 x i32> %broadcast.splatinsert5507, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5509

vector.body5509:                                  ; preds = %vector.body.interim5514, %vector.ph5497
  %index5510 = phi i64 [ 0, %vector.ph5497 ], [ %index.next5512, %vector.body.interim5514 ]
  %vec.ind5511 = phi <32 x i32> [ %induction5506, %vector.ph5497 ], [ %vec.ind.next5513, %vector.body.interim5514 ] ; 2 uses
  %i.iud = add <32 x i32> %vec.ind5511, %broadcast.splat5501
  %i.iue = icmp eq <32 x i32> %broadcast.splat5503, %i.iud
  %i.iuf = freeze <32 x i1> %i.iue
  %i.iug = bitcast <32 x i1> %i.iuf to i32
  %.not5848 = icmp eq i32 %i.iug, 0
  br i1 %.not5848, label %vector.body.interim5514, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

vector.body.interim5514:                          ; preds = %vector.body5509
  %vec.ind.next5513 = add <32 x i32> %vec.ind5511, %broadcast.splat5508
  %index.next5512 = add nuw i64 %index5510, 32    ; 2 uses
  %i.iuh = icmp eq i64 %index.next5512, %n.vec5499
  br i1 %i.iuh, label %middle.block5515, label %vector.body5509, !llvm.loop !3208

middle.block5515:                                 ; preds = %vector.body.interim5514
  %cmp.n5516 = icmp eq i64 %i.itv, %n.vec5499
  br i1 %cmp.n5516, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph, %middle.block5515
  %.ph6103 = phi i64 [ %i.itv, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.itx, %middle.block5515 ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374.ph = phi i32 [ %i.iqg, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.iua, %middle.block5515 ]
  br label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i
  %i.iui = add nsw i64 %i.iuk, -1                 ; 2 uses
  %i.iuj = icmp eq i64 %i.iui, 0
  br i1 %i.iuj, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i, !llvm.loop !3209

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i:        ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i
  %i.iuk = phi i64 [ %i.iui, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i ], [ %.ph6103, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374 = phi i32 [ %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i ], [ %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374.ph, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i = add i32 %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374, %i.iqe ; 2 uses
  %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqh, %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i
  br i1 %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i, !llvm.loop !3207

.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i
  %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.itm, ptr nonnull %i.iqq, i64 %i.ito)
  %i.iul = icmp eq i32 %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.iul, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i
  %i.ium = add nsw i64 %i.iqf, -1
  %i.iun = mul i64 %i.ium, %i.ith
  %i.iuo = add i64 %i.iun, %i.itg                 ; 3 uses
  %i.iup = add nsw i64 %i.iqf, -1                 ; 5 uses
  %i.iuq = icmp eq i64 %i.iup, 0
  br i1 %i.iuq, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i
  %min.iters.check5521 = icmp samesign ult i64 %i.iqf, 33
  br i1 %min.iters.check5521, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader, label %vector.ph5522

vector.ph5522:                                    ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5524 = and i64 %i.iup, -32                ; 3 uses
  %i.iur = and i64 %i.iup, 31
  %i.ius = trunc i64 %n.vec5524 to i32
  %i.iut = mul i32 %i.iqe, %i.ius
  %i.iuu = add i32 %i.iqg, %i.iut
  %broadcast.splatinsert5525 = insertelement <32 x i32> poison, i32 %i.iqe, i64 0
  %broadcast.splat5526 = shufflevector <32 x i32> %broadcast.splatinsert5525, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5527 = insertelement <32 x i32> poison, i32 %i.iqh, i64 0
  %broadcast.splat5528 = shufflevector <32 x i32> %broadcast.splatinsert5527, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5529 = insertelement <32 x i32> poison, i32 %i.iqg, i64 0
  %broadcast.splat5530 = shufflevector <32 x i32> %broadcast.splatinsert5529, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.iuv = mul <32 x i32> %broadcast.splat5526, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5531 = add <32 x i32> %broadcast.splat5530, %i.iuv
  %i.iuw = shl nsw i32 %i.iqe, 5
  %broadcast.splatinsert5532 = insertelement <32 x i32> poison, i32 %i.iuw, i64 0
  %broadcast.splat5533 = shufflevector <32 x i32> %broadcast.splatinsert5532, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5534

vector.body5534:                                  ; preds = %vector.body.interim5539, %vector.ph5522
  %index5535 = phi i64 [ 0, %vector.ph5522 ], [ %index.next5537, %vector.body.interim5539 ]
  %vec.ind5536 = phi <32 x i32> [ %induction5531, %vector.ph5522 ], [ %vec.ind.next5538, %vector.body.interim5539 ] ; 2 uses
  %i.iux = add <32 x i32> %vec.ind5536, %broadcast.splat5526
  %i.iuy = icmp eq <32 x i32> %broadcast.splat5528, %i.iux
  %i.iuz = freeze <32 x i1> %i.iuy
  %i.iva = bitcast <32 x i1> %i.iuz to i32
  %.not5847 = icmp eq i32 %i.iva, 0
  br i1 %.not5847, label %vector.body.interim5539, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

vector.body.interim5539:                          ; preds = %vector.body5534
  %vec.ind.next5538 = add <32 x i32> %vec.ind5536, %broadcast.splat5533
  %index.next5537 = add nuw i64 %index5535, 32    ; 2 uses
  %i.ivb = icmp eq i64 %index.next5537, %n.vec5524
  br i1 %i.ivb, label %middle.block5540, label %vector.body5534, !llvm.loop !3210

middle.block5540:                                 ; preds = %vector.body.interim5539
  %cmp.n5541 = icmp eq i64 %i.iup, %n.vec5524
  br i1 %cmp.n5541, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph, %middle.block5540
  %.ph6107 = phi i64 [ %i.iup, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph ], [ %i.iur, %middle.block5540 ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373.ph = phi i32 [ %i.iqg, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph ], [ %i.iuu, %middle.block5540 ]
  br label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i
  %i.ivc = add nsw i64 %i.ive, -1                 ; 2 uses
  %i.ivd = icmp eq i64 %i.ivc, 0
  br i1 %i.ivd, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i, !llvm.loop !3211

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i
  %i.ive = phi i64 [ %i.ivc, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i ], [ %.ph6107, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373 = phi i32 [ %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i ], [ %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373.ph, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i = add i32 %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373, %i.iqe ; 2 uses
  %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqh, %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i
  br i1 %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i, !llvm.loop !3207

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011
  %i.ivf = load ptr, ptr %i.iqm, align 8, !tbaa !331
  %i.ivg = sext i32 %i.iqg to i64
  %i.ivh = sext i32 %i.iqe to i64
  %i.ivi = sext i32 %i.inx to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2013 = getelementptr [4 x i8], ptr %i.ivf, i64 %i.ivi
  %i.ivj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.ivk = add nsw i64 %i.ivj, -4
  br label %bb.asc

bb.asc:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i2017, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012
  %indvars.iv.i.i.i.i.i.i.i.i.i2014 = phi i64 [ %i.ivg, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2019, %.critedge.i.i.i.i.i.i.i.i.i2017 ] ; 3 uses
  %.04254.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iqf, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012 ], [ %.1.i.i.i.i.i.i.i.i.i2018, %.critedge.i.i.i.i.i.i.i.i.i2017 ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i.i2015 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2013, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2014
  %i.ivl = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2015, align 4, !tbaa !3 ; 2 uses
  %i.ivm = zext i32 %i.ivl to i64                 ; 2 uses
  %i.ivn = lshr i64 %i.ivm, 6
  %i.ivo = getelementptr inbounds nuw [8 x i8], ptr %i.iqk, i64 %i.ivn
  %i.ivp = load i64, ptr %i.ivo, align 8, !tbaa !137
  %i.ivq = and i64 %i.ivm, 63
  %i.ivr = shl nuw i64 1, %i.ivq
  %i.ivs = and i64 %i.ivr, %i.ivp
  %.not.i7.i.i.i.i.i.i.i.i.i.i2016 = icmp eq i64 %i.ivs, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2016, label %.critedge.i.i.i.i.i.i.i.i.i2017, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i: ; preds = %bb.asc
  %i.ivt = load ptr, ptr %i.iqn, align 8, !tbaa !487
  %i.ivu = sext i32 %i.ivl to i64
  %i.ivv = getelementptr inbounds [16 x i8], ptr %i.ivt, i64 %i.ivu ; 2 uses
  %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ivv, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ivv, i64 8
  %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.ivw = trunc i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i25.i.i.i.i.i.i.i.i.i, label %bb.asd, label %.critedge.i.i.i.i.i.i.i.i.i2017

bb.asd:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i
  %i.ivx = icmp ult i32 %i.ivw, 13
  br i1 %i.ivx, label %bb.ase, label %bb.asf

bb.ase:                                           ; preds = %bb.asd
  %i.ivy = icmp samesign ult i32 %i.ivw, 5
  %i.ivz = icmp eq ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i2058 = select i1 %i.ivy, i1 true, i1 %i.ivz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i2058, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2017

bb.asf:                                           ; preds = %bb.asd
  %i.iwa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i, i64 4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.iwa, ptr nonnull %i.iqq, i64 %i.ivk)
  %i.iwb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iwb, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2017

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.asf, %bb.ase
  %i.iwc = add nsw i64 %.04254.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.iwd = icmp eq i64 %i.iwc, 0
  br i1 %i.iwd, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.i.i.i.i.i.i.i.i.i2017

.split.us.i.i.i.i.i.i.i.i.i2049:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i, %middle.block5540, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i, %middle.block5515
  %.us-phi.in.i.i.i.i.i.i.i.i.i2050 = phi i64 [ %i.itu, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i ], [ %i.iuo, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i ], [ %i.iuo, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i ], [ %i.itu, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i ], [ %i.itu, %middle.block5515 ], [ %indvars.iv118.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i ], [ %i.iuo, %middle.block5540 ], [ %indvars.iv115.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i2014, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.us-phi.i.i.i.i.i.i.i.i.i2051 = trunc i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2050 to i32 ; 2 uses
  %i.iwe = load ptr, ptr %.sroa.12.0..sroa_idx.i1985, align 8, !tbaa !3212, !nonnull !74, !align !275 ; 5 uses
  %i.iwf = shl i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2050, 32
  %sext137.i.i.i.i.i.i.i.i.i = add i64 %i.iwf, 4294967296
  %i.iwg = ashr exact i64 %sext137.i.i.i.i.i.i.i.i.i, 32
  %i.iwh = getelementptr inbounds nuw i8, ptr %i.iwe, i64 144 ; 2 uses
  %i.iwi = load ptr, ptr %i.iwh, align 8, !tbaa !341 ; 2 uses
  %i.iwj = icmp eq ptr %i.iwi, null
  br i1 %i.iwj, label %bb.asg, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052

bb.asg:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i2049
  %i.iwk = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.iwe)
          to label %.noexc19.i.i.i.i.i.i.i.i2056 unwind label %bb.asl ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2056:                     ; preds = %bb.asg
  %.pre.i.i.i.i.i.i.i.i.i.i2057 = load ptr, ptr %i.iwh, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052: ; preds = %.noexc19.i.i.i.i.i.i.i.i2056, %.split.us.i.i.i.i.i.i.i.i.i2049
  %i.iwl = phi ptr [ %i.iwi, %.split.us.i.i.i.i.i.i.i.i.i2049 ], [ %.pre.i.i.i.i.i.i.i.i.i.i2057, %.noexc19.i.i.i.i.i.i.i.i2056 ]
  %i.iwm = getelementptr inbounds [8 x i8], ptr %i.iwl, i64 %i.ipu
  store i64 %i.iwg, ptr %i.iwm, align 8, !tbaa !137
  %i.iwn = getelementptr inbounds nuw i8, ptr %i.iwe, i64 32 ; 2 uses
  %i.iwo = load ptr, ptr %i.iwn, align 8, !tbaa !362
  %.not.i27.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iwo, null
  br i1 %.not.i27.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %bb.ash

bb.ash:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052
  %i.iwp = getelementptr inbounds nuw i8, ptr %i.iwe, i64 56
  %i.iwq = load i32, ptr %i.iwp, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.iwe, i32 noundef %i.iwq, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2053 unwind label %bb.asl

.noexc20.i.i.i.i.i.i.i.i2053:                     ; preds = %bb.ash
  %i.iwr = load ptr, ptr %i.iwn, align 8, !tbaa !362 ; 2 uses
  %i.iws = getelementptr inbounds nuw i8, ptr %i.iwr, i64 44
  %i.iwt = load i8, ptr %i.iws, align 4, !tbaa !363
  %i.iwu = and i8 %i.iwt, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2054 = icmp eq i8 %i.iwu, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2054, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055, label %.invoke.i.i.i.i.i.i.i.i2046, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055: ; preds = %.noexc20.i.i.i.i.i.i.i.i2053
  %i.iwv = getelementptr inbounds nuw i8, ptr %i.iwr, i64 16
  %i.iww = load ptr, ptr %i.iwv, align 8, !tbaa !368
  %i.iwx = lshr i64 %.083.i.i.i.i.i.i.i.i, 3
  %i.iwy = and i64 %i.iwx, 536870911
  %i.iwz = getelementptr inbounds nuw i8, ptr %i.iww, i64 %i.iwy ; 2 uses
  %i.ixa = load i8, ptr %i.iwz, align 1, !tbaa !30
  %i.ixb = trunc i64 %.083.i.i.i.i.i.i.i.i to i8
  %i.ixc = and i8 %i.ixb, 7
  %i.ixd = shl nuw i8 1, %i.ixc
  %i.ixe = or i8 %i.ixa, %i.ixd
  store i8 %i.ixe, ptr %i.iwz, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

.critedge.i.i.i.i.i.i.i.i.i2017:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, %bb.asf, %bb.ase, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i, %bb.asc
  %.1.i.i.i.i.i.i.i.i.i2018 = phi i64 [ %.04254.i.i.i.i.i.i.i.i.i, %bb.asf ], [ %i.iwc, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.04254.i.i.i.i.i.i.i.i.i, %bb.ase ], [ %.04254.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i ], [ %.04254.i.i.i.i.i.i.i.i.i, %bb.asc ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2019 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2014, %i.ivh ; 2 uses
  %i.ixf = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2019 to i32
  %.not16.i.i.i.i.i.i.i.i.i2020 = icmp eq i32 %i.iqh, %i.ixf
  br i1 %.not16.i.i.i.i.i.i.i.i.i2020, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %bb.asc, !llvm.loop !3207

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2017, %vector.body5534, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i, %vector.body5509, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i, %.critedge.us69.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2066, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059, %bb.arp
  %.052.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2051, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2051, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055 ], [ %i.iqg, %bb.arp ], [ %i.iqh, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i ], [ %i.iqh, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i ], [ %i.iqh, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i ], [ %i.iqh, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059 ], [ %i.iqh, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i ], [ %i.iqh, %vector.body5534 ], [ %i.iqh, %vector.body5509 ], [ %i.iqh, %.critedge.us69.i.i.i.i.i.i.i.i.i ], [ %i.iqh, %.critedge.us.i.i.i.i.i.i.i.i.i2066 ], [ %i.iqh, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i ], [ %i.iqh, %.critedge.i.i.i.i.i.i.i.i.i2017 ]
  %i.ixg = load ptr, ptr %.sroa.953.0..sroa_idx.i1982, align 8, !tbaa !3204, !nonnull !74, !align !497
  %i.ixh = load i32, ptr %i.ixg, align 4, !tbaa !3
  %i.ixi = icmp eq i32 %.052.i.i.i.i.i.i.i.i.i, %i.ixh
  br i1 %i.ixi, label %bb.asi, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.asi:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021
  %i.ixj = load ptr, ptr %.sroa.12.0..sroa_idx.i1985, align 8, !tbaa !3212, !nonnull !74, !align !275 ; 5 uses
  %i.ixk = getelementptr inbounds nuw i8, ptr %i.ixj, i64 144 ; 2 uses
  %i.ixl = load ptr, ptr %i.ixk, align 8, !tbaa !341 ; 2 uses
  %i.ixm = icmp eq ptr %i.ixl, null
  br i1 %i.ixm, label %bb.asj, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i

bb.asj:                                           ; preds = %bb.asi
  %i.ixn = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ixj)
          to label %.noexc22.i.i.i.i.i.i.i.i2048 unwind label %bb.asl ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2048:                     ; preds = %bb.asj
  %.pre.i32.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ixk, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i2048, %bb.asi
  %i.ixo = phi ptr [ %i.ixl, %bb.asi ], [ %.pre.i32.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i2048 ]
  %i.ixp = getelementptr inbounds [8 x i8], ptr %i.ixo, i64 %i.ipu
  store i64 0, ptr %i.ixp, align 8, !tbaa !137
  %i.ixq = getelementptr inbounds nuw i8, ptr %i.ixj, i64 32 ; 2 uses
  %i.ixr = load ptr, ptr %i.ixq, align 8, !tbaa !362
  %.not.i29.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ixr, null
  br i1 %.not.i29.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.ask

bb.ask:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i
  %i.ixs = getelementptr inbounds nuw i8, ptr %i.ixj, i64 56
  %i.ixt = load i32, ptr %i.ixs, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ixj, i32 noundef %i.ixt, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2045 unwind label %bb.asl

.noexc23.i.i.i.i.i.i.i.i2045:                     ; preds = %bb.ask
  %i.ixu = load ptr, ptr %i.ixq, align 8, !tbaa !362 ; 2 uses
  %i.ixv = getelementptr inbounds nuw i8, ptr %i.ixu, i64 44
  %i.ixw = load i8, ptr %i.ixv, align 4, !tbaa !363
  %i.ixx = and i8 %i.ixw, 2
  %.not.i3.i30.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ixx, 0
  br i1 %.not.i3.i30.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i31.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i2046, !prof !69

.invoke.i.i.i.i.i.i.i.i2046:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i2045, %.noexc20.i.i.i.i.i.i.i.i2053
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  br i1 %i.juo, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389, label %bb.axc

bb.axc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386
  %i.jux = load i8, ptr %i.juh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.juy = trunc nuw i8 %i.jux to i1
  br i1 %i.juy, label %bb.axe, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %i.juz = load ptr, ptr %i.jui, align 8, !tbaa !331
  %i.jva = getelementptr inbounds [4 x i8], ptr %i.juz, i64 %i.juv
  %i.jvb = load i32, ptr %i.jva, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389

bb.axe:                                           ; preds = %bb.axc
  %i.jvc = load i32, ptr %i.jul, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389: ; preds = %bb.axe, %bb.axd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386
  %.0.i.i18.us.i.i.i.i.i.i.i.i.i2390 = phi i32 [ %i.jvb, %bb.axd ], [ %i.jvc, %bb.axe ], [ %i.juw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386 ]
  %i.jvd = sext i32 %.0.i.i18.us.i.i.i.i.i.i.i.i.i2390 to i64
  %i.jve = getelementptr inbounds [16 x i8], ptr %i.jup, i64 %i.jvd ; 2 uses
  %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i2391 = load i64, ptr %i.jve, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i2392 = getelementptr inbounds nuw i8, ptr %i.jve, i64 8
  %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i2393 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i2392, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us.i.i.i.i.i.i.i.i.i2394 = icmp eq i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i2391, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jvf = trunc i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i2391 to i32 ; 2 uses
  br i1 %.not.i.i25.us.i.i.i.i.i.i.i.i.i2394, label %bb.axf, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

bb.axf:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389
  %i.jvg = icmp ult i32 %i.jvf, 13
  br i1 %i.jvg, label %bb.axh, label %bb.axg

bb.axg:                                           ; preds = %bb.axf
  %i.jvh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i2393, i64 4
  %bcmp.i.i.us.i.i.i.i.i.i.i.i.i2399 = call i32 @bcmp(ptr nonnull %i.jvh, ptr nonnull %i.jum, i64 %i.juu)
  %i.jvi = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i.i2399, 0
  br i1 %i.jvi, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

bb.axh:                                           ; preds = %bb.axf
  %i.jvj = icmp samesign ult i32 %i.jvf, 5
  %i.jvk = icmp eq ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i2393, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.us.i.i.i.i.i.i.i.i.i2401 = select i1 %i.jvj, i1 true, i1 %i.jvk
  br i1 %or.cond.us.i.i.i.i.i.i.i.i.i2401, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400: ; preds = %bb.axh, %bb.axg
  %i.jvl = add nsw i64 %.04254.us.i.i.i.i.i.i.i.i.i2388, -1 ; 2 uses
  %i.jvm = icmp eq i64 %i.jvl, 0
  br i1 %i.jvm, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

.critedge.us.i.i.i.i.i.i.i.i.i2395:               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, %bb.axh, %bb.axg, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389
  %.1.us.i.i.i.i.i.i.i.i.i2396 = phi i64 [ %.04254.us.i.i.i.i.i.i.i.i.i2388, %bb.axg ], [ %i.jvl, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400 ], [ %.04254.us.i.i.i.i.i.i.i.i.i2388, %bb.axh ], [ %.04254.us.i.i.i.i.i.i.i.i.i2388, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389 ]
  %indvars.iv.next119.i.i.i.i.i.i.i.i.i2397 = add nsw i64 %indvars.iv118.i.i.i.i.i.i.i.i.i2387, %i.jur ; 2 uses
  %i.jvn = trunc nsw i64 %indvars.iv.next119.i.i.i.i.i.i.i.i.i2397 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2398 = icmp eq i32 %i.jud, %i.jvn
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2398, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386, !llvm.loop !3245

.lr.ph.split.i.i.i.i.i.i.i.i.i2274:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2272
  %i.jvo = getelementptr inbounds nuw i8, ptr %i.jue, i64 57
  %i.jvp = load i8, ptr %i.jvo, align 1, !range !73
  %i.jvq = trunc nuw i8 %i.jvp to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2275 = select i1 %i.juo, i1 true, i1 %i.jvq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2275, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2274
  %i.jvr = sext i32 %i.juc to i64
  %i.jvs = sext i32 %i.jua to i64
  %i.jvt = sext i32 %i.jrt to i64
  %i.jvu = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.jvv = add nsw i64 %i.jvu, -4
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367:      ; preds = %.critedge.us69.i.i.i.i.i.i.i.i.i2378, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366
  %indvars.iv115.i.i.i.i.i.i.i.i.i2368 = phi i64 [ %i.jvr, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366 ], [ %indvars.iv.next116.i.i.i.i.i.i.i.i.i2380, %.critedge.us69.i.i.i.i.i.i.i.i.i2378 ] ; 3 uses
  %.04254.us58.i.i.i.i.i.i.i.i.i2369 = phi i64 [ %i.jub, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366 ], [ %.1.us70.i.i.i.i.i.i.i.i.i2379, %.critedge.us69.i.i.i.i.i.i.i.i.i2378 ] ; 5 uses
  %i.jvw = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i2368, %i.jvt ; 4 uses
  %i.jvx = lshr i64 %i.jvw, 6
  %i.jvy = and i64 %i.jvx, 67108863
  %i.jvz = getelementptr inbounds nuw [8 x i8], ptr %i.jug, i64 %i.jvy
  %i.jwa = load i64, ptr %i.jvz, align 8, !tbaa !137
  %i.jwb = and i64 %i.jvw, 63
  %i.jwc = shl nuw i64 1, %i.jwb
  %i.jwd = and i64 %i.jwc, %i.jwa
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2370 = icmp eq i64 %i.jwd, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2370, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367
  %i.jwe = trunc nsw i64 %i.jvw to i32
  %i.jwf = load ptr, ptr %i.juj, align 8, !tbaa !487
  br i1 %i.juo, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372, label %bb.axi

bb.axi:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371
  %i.jwg = load i8, ptr %i.juh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.jwh = trunc nuw i8 %i.jwg to i1
  br i1 %i.jwh, label %bb.axk, label %bb.axj

bb.axj:                                           ; preds = %bb.axi
  %i.jwi = load ptr, ptr %i.jui, align 8, !tbaa !331
  %i.jwj = getelementptr inbounds [4 x i8], ptr %i.jwi, i64 %i.jvw
  %i.jwk = load i32, ptr %i.jwj, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372

bb.axk:                                           ; preds = %bb.axi
  %i.jwl = load i32, ptr %i.jul, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372: ; preds = %bb.axk, %bb.axj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371
  %.0.i.i18.us61.i.i.i.i.i.i.i.i.i2373 = phi i32 [ %i.jwk, %bb.axj ], [ %i.jwl, %bb.axk ], [ %i.jwe, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371 ]
  %i.jwm = sext i32 %.0.i.i18.us61.i.i.i.i.i.i.i.i.i2373 to i64
  %i.jwn = getelementptr inbounds [16 x i8], ptr %i.jwf, i64 %i.jwm ; 2 uses
  %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i2374 = load i64, ptr %i.jwn, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i2375 = getelementptr inbounds nuw i8, ptr %i.jwn, i64 8
  %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i2376 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i2375, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us65.i.i.i.i.i.i.i.i.i2377 = icmp eq i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i2374, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jwo = trunc i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i2374 to i32 ; 2 uses
  br i1 %.not.i.i25.us65.i.i.i.i.i.i.i.i.i2377, label %bb.axl, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

bb.axl:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372
  %i.jwp = icmp ult i32 %i.jwo, 13
  br i1 %i.jwp, label %bb.axn, label %bb.axm

bb.axm:                                           ; preds = %bb.axl
  %i.jwq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i2376, i64 4
  %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i2382 = call i32 @bcmp(ptr nonnull %i.jwq, ptr nonnull %i.jum, i64 %i.jvv)
  %i.jwr = icmp eq i32 %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i2382, 0
  br i1 %i.jwr, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

bb.axn:                                           ; preds = %bb.axl
  %i.jws = icmp samesign ult i32 %i.jwo, 5
  %i.jwt = icmp eq ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i2376, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.us67.i.i.i.i.i.i.i.i.i2384 = select i1 %i.jws, i1 true, i1 %i.jwt
  br i1 %or.cond.us67.i.i.i.i.i.i.i.i.i2384, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383: ; preds = %bb.axn, %bb.axm
  %i.jwu = add nsw i64 %.04254.us58.i.i.i.i.i.i.i.i.i2369, -1 ; 2 uses
  %i.jwv = icmp eq i64 %i.jwu, 0
  br i1 %i.jwv, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

.critedge.us69.i.i.i.i.i.i.i.i.i2378:             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, %bb.axn, %bb.axm, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367
  %.1.us70.i.i.i.i.i.i.i.i.i2379 = phi i64 [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %bb.axm ], [ %i.jwu, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383 ], [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %bb.axn ], [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367 ], [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372 ]
  %indvars.iv.next116.i.i.i.i.i.i.i.i.i2380 = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i2368, %i.jvs ; 2 uses
  %i.jww = trunc nsw i64 %indvars.iv.next116.i.i.i.i.i.i.i.i.i2380 to i32
  %.not16.us71.i.i.i.i.i.i.i.i.i2381 = icmp eq i32 %i.jud, %i.jww
  br i1 %.not16.us71.i.i.i.i.i.i.i.i.i2381, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367, !llvm.loop !3245

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2274
  %i.jwx = load i8, ptr %i.juh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.jwy = trunc nuw i8 %i.jwx to i1
  br i1 %i.jwy, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276
  %i.jwz = load i64, ptr %i.jug, align 8, !tbaa !137
  %i.jxa = and i64 %i.jwz, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2341 = icmp eq i64 %i.jxa, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2341, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342

.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340
  %i.jxb = load ptr, ptr %i.juj, align 8, !tbaa !487
  %i.jxc = zext i32 %i.juc to i64                 ; 2 uses
  %i.jxd = zext i32 %i.jua to i64                 ; 2 uses
  %i.jxe = load i32, ptr %i.jul, align 8, !tbaa !488
  %i.jxf = sext i32 %i.jxe to i64
  %i.jxg = getelementptr inbounds [16 x i8], ptr %i.jxb, i64 %i.jxf ; 2 uses
  %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i2343 = load i64, ptr %i.jxg, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i2344 = getelementptr inbounds nuw i8, ptr %i.jxg, i64 8
  %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i2345 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i2344, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us84.i.i.i.i.i.i.i.i.i2346 = icmp eq i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i2343, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jxh = trunc i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i2343 to i32 ; 2 uses
  %i.jxi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i2345, i64 4
  %i.jxj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.jxk = add nsw i64 %i.jxj, -4
  %i.jxl = icmp samesign ult i32 %i.jxh, 5
  %i.jxm = icmp eq ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i2345, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.us86.i.i.i.i.i.i.i.i.i2347 = select i1 %i.jxl, i1 true, i1 %i.jxm
  br i1 %.not.i.i25.us84.i.i.i.i.i.i.i.i.i2346, label %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348: ; preds = %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342
  %i.jxn = icmp ult i32 %i.jxh, 13
  br i1 %i.jxn, label %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358, label %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349

.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348
  br i1 %or.cond.us86.i.i.i.i.i.i.i.i.i2347, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358
  %i.jxo = add nsw i64 %i.jub, -1
  %i.jxp = mul i64 %i.jxo, %i.jxd
  %i.jxq = add i64 %i.jxp, %i.jxc                 ; 3 uses
  %i.jxr = add nsw i64 %i.jub, -1                 ; 5 uses
  %i.jxs = icmp eq i64 %i.jxr, 0
  br i1 %i.jxs, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359
  %min.iters.check5446 = icmp samesign ult i64 %i.jub, 33
  br i1 %min.iters.check5446, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader, label %vector.ph5447

vector.ph5447:                                    ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph
  %n.vec5449 = and i64 %i.jxr, -32                ; 3 uses
  %i.jxt = and i64 %i.jxr, 31
  %i.jxu = trunc i64 %n.vec5449 to i32
  %i.jxv = mul i32 %i.jua, %i.jxu
  %i.jxw = add i32 %i.juc, %i.jxv
  %broadcast.splatinsert5450 = insertelement <32 x i32> poison, i32 %i.jua, i64 0
  %broadcast.splat5451 = shufflevector <32 x i32> %broadcast.splatinsert5450, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5452 = insertelement <32 x i32> poison, i32 %i.jud, i64 0
  %broadcast.splat5453 = shufflevector <32 x i32> %broadcast.splatinsert5452, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5454 = insertelement <32 x i32> poison, i32 %i.juc, i64 0
  %broadcast.splat5455 = shufflevector <32 x i32> %broadcast.splatinsert5454, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.jxx = mul <32 x i32> %broadcast.splat5451, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5456 = add <32 x i32> %broadcast.splat5455, %i.jxx
  %i.jxy = shl nsw i32 %i.jua, 5
  %broadcast.splatinsert5457 = insertelement <32 x i32> poison, i32 %i.jxy, i64 0
  %broadcast.splat5458 = shufflevector <32 x i32> %broadcast.splatinsert5457, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5459

vector.body5459:                                  ; preds = %vector.body.interim5464, %vector.ph5447
  %index5460 = phi i64 [ 0, %vector.ph5447 ], [ %index.next5462, %vector.body.interim5464 ]
  %vec.ind5461 = phi <32 x i32> [ %induction5456, %vector.ph5447 ], [ %vec.ind.next5463, %vector.body.interim5464 ] ; 2 uses
  %i.jxz = add <32 x i32> %vec.ind5461, %broadcast.splat5451
  %i.jya = icmp eq <32 x i32> %broadcast.splat5453, %i.jxz
  %i.jyb = freeze <32 x i1> %i.jya
  %i.jyc = bitcast <32 x i1> %i.jyb to i32
  %.not5846 = icmp eq i32 %i.jyc, 0
  br i1 %.not5846, label %vector.body.interim5464, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

vector.body.interim5464:                          ; preds = %vector.body5459
  %vec.ind.next5463 = add <32 x i32> %vec.ind5461, %broadcast.splat5458
  %index.next5462 = add nuw i64 %index5460, 32    ; 2 uses
  %i.jyd = icmp eq i64 %index.next5462, %n.vec5449
  br i1 %i.jyd, label %middle.block5465, label %vector.body5459, !llvm.loop !3246

middle.block5465:                                 ; preds = %vector.body.interim5464
  %cmp.n5466 = icmp eq i64 %i.jxr, %n.vec5449
  br i1 %cmp.n5466, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph, %middle.block5465
  %.ph6136 = phi i64 [ %i.jxr, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph ], [ %i.jxt, %middle.block5465 ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366.ph = phi i32 [ %i.juc, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph ], [ %i.jxw, %middle.block5465 ]
  br label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363
  %i.jye = add nsw i64 %i.jyg, -1                 ; 2 uses
  %i.jyf = icmp eq i64 %i.jye, 0
  br i1 %i.jyf, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363, !llvm.loop !3247

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363:    ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360
  %i.jyg = phi i64 [ %i.jye, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360 ], [ %.ph6136, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366 = phi i32 [ %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i2364, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360 ], [ %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366.ph, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader ]
  %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i2364 = add i32 %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366, %i.jua ; 2 uses
  %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i2365 = icmp eq i32 %i.jud, %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i2364
  br i1 %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i2365, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360, !llvm.loop !3245

.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348
  %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i2350 = call i32 @bcmp(ptr nonnull %i.jxi, ptr nonnull %i.jum, i64 %i.jxk)
  %i.jyh = icmp eq i32 %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i2350, 0
  br i1 %i.jyh, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349
  %i.jyi = add nsw i64 %i.jub, -1
  %i.jyj = mul i64 %i.jyi, %i.jxd
  %i.jyk = add i64 %i.jyj, %i.jxc                 ; 3 uses
  %i.jyl = add nsw i64 %i.jub, -1                 ; 5 uses
  %i.jym = icmp eq i64 %i.jyl, 0
  br i1 %i.jym, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351
  %min.iters.check5471 = icmp samesign ult i64 %i.jub, 33
  br i1 %min.iters.check5471, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader, label %vector.ph5472

vector.ph5472:                                    ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph
  %n.vec5474 = and i64 %i.jyl, -32                ; 3 uses
  %i.jyn = and i64 %i.jyl, 31
  %i.jyo = trunc i64 %n.vec5474 to i32
  %i.jyp = mul i32 %i.jua, %i.jyo
  %i.jyq = add i32 %i.juc, %i.jyp
  %broadcast.splatinsert5475 = insertelement <32 x i32> poison, i32 %i.jua, i64 0
  %broadcast.splat5476 = shufflevector <32 x i32> %broadcast.splatinsert5475, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5477 = insertelement <32 x i32> poison, i32 %i.jud, i64 0
  %broadcast.splat5478 = shufflevector <32 x i32> %broadcast.splatinsert5477, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5479 = insertelement <32 x i32> poison, i32 %i.juc, i64 0
  %broadcast.splat5480 = shufflevector <32 x i32> %broadcast.splatinsert5479, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.jyr = mul <32 x i32> %broadcast.splat5476, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5481 = add <32 x i32> %broadcast.splat5480, %i.jyr
  %i.jys = shl nsw i32 %i.jua, 5
  %broadcast.splatinsert5482 = insertelement <32 x i32> poison, i32 %i.jys, i64 0
  %broadcast.splat5483 = shufflevector <32 x i32> %broadcast.splatinsert5482, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5484

vector.body5484:                                  ; preds = %vector.body.interim5489, %vector.ph5472
  %index5485 = phi i64 [ 0, %vector.ph5472 ], [ %index.next5487, %vector.body.interim5489 ]
  %vec.ind5486 = phi <32 x i32> [ %induction5481, %vector.ph5472 ], [ %vec.ind.next5488, %vector.body.interim5489 ] ; 2 uses
  %i.jyt = add <32 x i32> %vec.ind5486, %broadcast.splat5476
  %i.jyu = icmp eq <32 x i32> %broadcast.splat5478, %i.jyt
  %i.jyv = freeze <32 x i1> %i.jyu
  %i.jyw = bitcast <32 x i1> %i.jyv to i32
  %.not5845 = icmp eq i32 %i.jyw, 0
  br i1 %.not5845, label %vector.body.interim5489, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

vector.body.interim5489:                          ; preds = %vector.body5484
  %vec.ind.next5488 = add <32 x i32> %vec.ind5486, %broadcast.splat5483
  %index.next5487 = add nuw i64 %index5485, 32    ; 2 uses
  %i.jyx = icmp eq i64 %index.next5487, %n.vec5474
  br i1 %i.jyx, label %middle.block5490, label %vector.body5484, !llvm.loop !3248

middle.block5490:                                 ; preds = %vector.body.interim5489
  %cmp.n5491 = icmp eq i64 %i.jyl, %n.vec5474
  br i1 %cmp.n5491, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph, %middle.block5490
  %.ph6140 = phi i64 [ %i.jyl, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph ], [ %i.jyn, %middle.block5490 ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365.ph = phi i32 [ %i.juc, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph ], [ %i.jyq, %middle.block5490 ]
  br label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355
  %i.jyy = add nsw i64 %i.jza, -1                 ; 2 uses
  %i.jyz = icmp eq i64 %i.jyy, 0
  br i1 %i.jyz, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355, !llvm.loop !3249

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355:     ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352
  %i.jza = phi i64 [ %i.jyy, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352 ], [ %.ph6140, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365 = phi i32 [ %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i2356, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352 ], [ %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365.ph, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader ]
  %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i2356 = add i32 %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365, %i.jua ; 2 uses
  %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i2357 = icmp eq i32 %i.jud, %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i2356
  br i1 %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i2357, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352, !llvm.loop !3245

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276
  %i.jzb = load ptr, ptr %i.jui, align 8, !tbaa !331
  %i.jzc = sext i32 %i.juc to i64
  %i.jzd = sext i32 %i.jua to i64
  %i.jze = sext i32 %i.jrt to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2278 = getelementptr [4 x i8], ptr %i.jzb, i64 %i.jze
  %i.jzf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.jzg = add nsw i64 %i.jzf, -4
  br label %bb.axo

bb.axo:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i2288, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277
  %indvars.iv.i.i.i.i.i.i.i.i.i2279 = phi i64 [ %i.jzc, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2290, %.critedge.i.i.i.i.i.i.i.i.i2288 ] ; 3 uses
  %.04254.i.i.i.i.i.i.i.i.i2280 = phi i64 [ %i.jub, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277 ], [ %.1.i.i.i.i.i.i.i.i.i2289, %.critedge.i.i.i.i.i.i.i.i.i2288 ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i.i2281 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2278, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2279
  %i.jzh = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2281, align 4, !tbaa !3 ; 2 uses
  %i.jzi = zext i32 %i.jzh to i64                 ; 2 uses
  %i.jzj = lshr i64 %i.jzi, 6
  %i.jzk = getelementptr inbounds nuw [8 x i8], ptr %i.jug, i64 %i.jzj
  %i.jzl = load i64, ptr %i.jzk, align 8, !tbaa !137
  %i.jzm = and i64 %i.jzi, 63
  %i.jzn = shl nuw i64 1, %i.jzm
  %i.jzo = and i64 %i.jzn, %i.jzl
  %.not.i7.i.i.i.i.i.i.i.i.i.i2282 = icmp eq i64 %i.jzo, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2282, label %.critedge.i.i.i.i.i.i.i.i.i2288, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283: ; preds = %bb.axo
  %i.jzp = load ptr, ptr %i.juj, align 8, !tbaa !487
  %i.jzq = sext i32 %i.jzh to i64
  %i.jzr = getelementptr inbounds [16 x i8], ptr %i.jzp, i64 %i.jzq ; 2 uses
  %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i2284 = load i64, ptr %i.jzr, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i2285 = getelementptr inbounds nuw i8, ptr %i.jzr, i64 8
  %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i2286 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i2285, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.i.i.i.i.i.i.i.i.i2287 = icmp eq i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i2284, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jzs = trunc i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i2284 to i32 ; 2 uses
  br i1 %.not.i.i25.i.i.i.i.i.i.i.i.i2287, label %bb.axp, label %.critedge.i.i.i.i.i.i.i.i.i2288

bb.axp:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283
  %i.jzt = icmp ult i32 %i.jzs, 13
  br i1 %i.jzt, label %bb.axq, label %bb.axr

bb.axq:                                           ; preds = %bb.axp
  %i.jzu = icmp samesign ult i32 %i.jzs, 5
  %i.jzv = icmp eq ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i2286, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.i.i.i.i.i.i.i.i.i2339 = select i1 %i.jzu, i1 true, i1 %i.jzv
  br i1 %or.cond.i.i.i.i.i.i.i.i.i2339, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, label %.critedge.i.i.i.i.i.i.i.i.i2288

bb.axr:                                           ; preds = %bb.axp
  %i.jzw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i2286, i64 4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i2326 = call i32 @bcmp(ptr nonnull %i.jzw, ptr nonnull %i.jum, i64 %i.jzg)
  %i.jzx = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i2326, 0
  br i1 %i.jzx, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, label %.critedge.i.i.i.i.i.i.i.i.i2288

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327: ; preds = %bb.axr, %bb.axq
  %i.jzy = add nsw i64 %.04254.i.i.i.i.i.i.i.i.i2280, -1 ; 2 uses
  %i.jzz = icmp eq i64 %i.jzy, 0
  br i1 %i.jzz, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.i.i.i.i.i.i.i.i.i2288

.split.us.i.i.i.i.i.i.i.i.i2328:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351, %middle.block5490, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359, %middle.block5465
  %.us-phi.in.i.i.i.i.i.i.i.i.i2329 = phi i64 [ %i.jxq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359 ], [ %i.jyk, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351 ], [ %i.jyk, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352 ], [ %i.jxq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360 ], [ %i.jxq, %middle.block5465 ], [ %indvars.iv118.i.i.i.i.i.i.i.i.i2387, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400 ], [ %i.jyk, %middle.block5490 ], [ %indvars.iv115.i.i.i.i.i.i.i.i.i2368, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383 ], [ %indvars.iv.i.i.i.i.i.i.i.i.i2279, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327 ] ; 2 uses
  %.us-phi.i.i.i.i.i.i.i.i.i2330 = trunc i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2329 to i32 ; 2 uses
  %i.kaa = load ptr, ptr %.sroa.12.0..sroa_idx.i2236, align 8, !tbaa !3250, !nonnull !74, !align !275 ; 5 uses
  %i.kab = shl i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2329, 32
  %sext137.i.i.i.i.i.i.i.i.i2331 = add i64 %i.kab, 4294967296
  %i.kac = ashr exact i64 %sext137.i.i.i.i.i.i.i.i.i2331, 32
  %i.kad = getelementptr inbounds nuw i8, ptr %i.kaa, i64 144 ; 2 uses
  %i.kae = load ptr, ptr %i.kad, align 8, !tbaa !341 ; 2 uses
  %i.kaf = icmp eq ptr %i.kae, null
  br i1 %i.kaf, label %bb.axs, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332

bb.axs:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i2328
  %i.kag = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.kaa)
          to label %.noexc19.i.i.i.i.i.i.i.i2337 unwind label %bb.axx ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2337:                     ; preds = %bb.axs
  %.pre.i.i.i.i.i.i.i.i.i.i2338 = load ptr, ptr %i.kad, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332: ; preds = %.noexc19.i.i.i.i.i.i.i.i2337, %.split.us.i.i.i.i.i.i.i.i.i2328
  %i.kah = phi ptr [ %i.kae, %.split.us.i.i.i.i.i.i.i.i.i2328 ], [ %.pre.i.i.i.i.i.i.i.i.i.i2338, %.noexc19.i.i.i.i.i.i.i.i2337 ]
  %i.kai = getelementptr inbounds [8 x i8], ptr %i.kah, i64 %i.jtq
  store i64 %i.kac, ptr %i.kai, align 8, !tbaa !137
  %i.kaj = getelementptr inbounds nuw i8, ptr %i.kaa, i64 32 ; 2 uses
  %i.kak = load ptr, ptr %i.kaj, align 8, !tbaa !362
  %.not.i27.i.i.i.i.i.i.i.i.i2333 = icmp eq ptr %i.kak, null
  br i1 %.not.i27.i.i.i.i.i.i.i.i.i2333, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %bb.axt

bb.axt:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332
  %i.kal = getelementptr inbounds nuw i8, ptr %i.kaa, i64 56
  %i.kam = load i32, ptr %i.kal, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.kaa, i32 noundef %i.kam, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2334 unwind label %bb.axx

.noexc20.i.i.i.i.i.i.i.i2334:                     ; preds = %bb.axt
  %i.kan = load ptr, ptr %i.kaj, align 8, !tbaa !362 ; 2 uses
  %i.kao = getelementptr inbounds nuw i8, ptr %i.kan, i64 44
  %i.kap = load i8, ptr %i.kao, align 4, !tbaa !363
  %i.kaq = and i8 %i.kap, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2335 = icmp eq i8 %i.kaq, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2335, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336, label %.invoke.i.i.i.i.i.i.i.i2321, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336: ; preds = %.noexc20.i.i.i.i.i.i.i.i2334
  %i.kar = getelementptr inbounds nuw i8, ptr %i.kan, i64 16
  %i.kas = load ptr, ptr %i.kar, align 8, !tbaa !368
  %i.kat = lshr i64 %.083.i.i.i.i.i.i.i.i2259, 3
  %i.kau = and i64 %i.kat, 536870911
  %i.kav = getelementptr inbounds nuw i8, ptr %i.kas, i64 %i.kau ; 2 uses
  %i.kaw = load i8, ptr %i.kav, align 1, !tbaa !30
  %i.kax = trunc i64 %.083.i.i.i.i.i.i.i.i2259 to i8
  %i.kay = and i8 %i.kax, 7
  %i.kaz = shl nuw i8 1, %i.kay
  %i.kba = or i8 %i.kaw, %i.kaz
  store i8 %i.kba, ptr %i.kav, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

.critedge.i.i.i.i.i.i.i.i.i2288:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, %bb.axr, %bb.axq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283, %bb.axo
  %.1.i.i.i.i.i.i.i.i.i2289 = phi i64 [ %.04254.i.i.i.i.i.i.i.i.i2280, %bb.axr ], [ %i.jzy, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327 ], [ %.04254.i.i.i.i.i.i.i.i.i2280, %bb.axq ], [ %.04254.i.i.i.i.i.i.i.i.i2280, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283 ], [ %.04254.i.i.i.i.i.i.i.i.i2280, %bb.axo ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2290 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2279, %i.jzd ; 2 uses
  %i.kbb = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2290 to i32
  %.not16.i.i.i.i.i.i.i.i.i2291 = icmp eq i32 %i.jud, %i.kbb
  br i1 %.not16.i.i.i.i.i.i.i.i.i2291, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %bb.axo, !llvm.loop !3245

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2288, %vector.body5484, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355, %vector.body5459, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363, %.critedge.us69.i.i.i.i.i.i.i.i.i2378, %.critedge.us.i.i.i.i.i.i.i.i.i2395, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340, %bb.axb
  %.052.i.i.i.i.i.i.i.i.i2293 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2330, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2330, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336 ], [ %i.juc, %bb.axb ], [ %i.jud, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355 ], [ %i.jud, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342 ], [ %i.jud, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349 ], [ %i.jud, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340 ], [ %i.jud, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358 ], [ %i.jud, %vector.body5484 ], [ %i.jud, %vector.body5459 ], [ %i.jud, %.critedge.us69.i.i.i.i.i.i.i.i.i2378 ], [ %i.jud, %.critedge.us.i.i.i.i.i.i.i.i.i2395 ], [ %i.jud, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363 ], [ %i.jud, %.critedge.i.i.i.i.i.i.i.i.i2288 ]
  %i.kbc = load ptr, ptr %.sroa.953.0..sroa_idx.i2233, align 8, !tbaa !3242, !nonnull !74, !align !497
  %i.kbd = load i32, ptr %i.kbc, align 4, !tbaa !3
  %i.kbe = icmp eq i32 %.052.i.i.i.i.i.i.i.i.i2293, %i.kbd
  br i1 %i.kbe, label %bb.axu, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.axu:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292
  %i.kbf = load ptr, ptr %.sroa.12.0..sroa_idx.i2236, align 8, !tbaa !3250, !nonnull !74, !align !275 ; 5 uses
  %i.kbg = getelementptr inbounds nuw i8, ptr %i.kbf, i64 144 ; 2 uses
  %i.kbh = load ptr, ptr %i.kbg, align 8, !tbaa !341 ; 2 uses
  %i.kbi = icmp eq ptr %i.kbh, null
  br i1 %i.kbi, label %bb.axv, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294

bb.axv:                                           ; preds = %bb.axu
  %i.kbj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.kbf)
          to label %.noexc22.i.i.i.i.i.i.i.i2324 unwind label %bb.axx ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2324:                     ; preds = %bb.axv
  %.pre.i32.i.i.i.i.i.i.i.i.i2325 = load ptr, ptr %i.kbg, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294: ; preds = %.noexc22.i.i.i.i.i.i.i.i2324, %bb.axu
  %i.kbk = phi ptr [ %i.kbh, %bb.axu ], [ %.pre.i32.i.i.i.i.i.i.i.i.i2325, %.noexc22.i.i.i.i.i.i.i.i2324 ]
  %i.kbl = getelementptr inbounds [8 x i8], ptr %i.kbk, i64 %i.jtq
  store i64 0, ptr %i.kbl, align 8, !tbaa !137
  %i.kbm = getelementptr inbounds nuw i8, ptr %i.kbf, i64 32 ; 2 uses
  %i.kbn = load ptr, ptr %i.kbm, align 8, !tbaa !362
  %.not.i29.i.i.i.i.i.i.i.i.i2295 = icmp eq ptr %i.kbn, null
  br i1 %.not.i29.i.i.i.i.i.i.i.i.i2295, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.axw

bb.axw:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294
  %i.kbo = getelementptr inbounds nuw i8, ptr %i.kbf, i64 56
  %i.kbp = load i32, ptr %i.kbo, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.kbf, i32 noundef %i.kbp, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2319 unwind label %bb.axx

.noexc23.i.i.i.i.i.i.i.i2319:                     ; preds = %bb.axw
  %i.kbq = load ptr, ptr %i.kbm, align 8, !tbaa !362 ; 2 uses
  %i.kbr = getelementptr inbounds nuw i8, ptr %i.kbq, i64 44
  %i.kbs = load i8, ptr %i.kbr, align 4, !tbaa !363
  %i.kbt = and i8 %i.kbs, 2
  %.not.i3.i30.i.i.i.i.i.i.i.i.i2320 = icmp eq i8 %i.kbt, 0
  br i1 %.not.i3.i30.i.i.i.i.i.i.i.i.i2320, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i31.i.i.i.i.i.i.i.i.i2323, label %.invoke.i.i.i.i.i.i.i.i2321, !prof !69

.invoke.i.i.i.i.i.i.i.i2321:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i2319, %.noexc20.i.i.i.i.i.i.i.i2334
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.kxb = getelementptr inbounds [4 x i8], ptr %i.kuy, i64 %i.kxa
  %i.kxc = load i32, ptr %i.kxb, align 4, !tbaa !3
  %i.kxd = sext i32 %i.kxc to i64
  %i.kxe = getelementptr inbounds [4 x i8], ptr %i.kww, i64 %i.kxd
  %i.kxf = load i32, ptr %i.kxe, align 4, !tbaa !3 ; 2 uses
  %i.kxg = icmp sgt i64 %i.kwp, 0                 ; 3 uses
  %i.kxh = add nsw i32 %i.kxf, -1
  %i.kxi = select i1 %i.kxg, i32 0, i32 %i.kxh
  store i32 %i.kxi, ptr %i.kwx, align 4, !tbaa !3
  %i.kxj = select i1 %i.kxg, i32 %i.kxf, i32 -1
  store i32 %i.kxj, ptr %i.kwy, align 4, !tbaa !3
  %i.kxk = select i1 %i.kxg, i32 1, i32 -1        ; 9 uses
  store i32 %i.kxk, ptr %i.kwz, align 4, !tbaa !3
  %i.kxl = call noundef i64 @llvm.abs.i64(i64 %i.kwp, i1 true) ; 6 uses
  %i.kxm = load i32, ptr %i.kwx, align 4, !tbaa !3 ; 9 uses
  %i.kxn = load i32, ptr %i.kwy, align 4, !tbaa !3 ; 13 uses
  %.not1649.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kxm, %i.kxn
  br i1 %.not1649.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %.lr.ph.i.i.i.i.i.i.i.i.i2613

.lr.ph.i.i.i.i.i.i.i.i.i2613:                     ; preds = %bb.bcm
  %i.kxo = load ptr, ptr %.sroa.11.0..sroa_idx.i2581, align 8, !tbaa !3282, !nonnull !74, !align !275 ; 7 uses
  %i.kxp = getelementptr inbounds nuw i8, ptr %i.kxo, i64 24
  %i.kxq = load ptr, ptr %i.kxp, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2614 = icmp eq ptr %i.kxq, null
  %i.kxr = getelementptr inbounds nuw i8, ptr %i.kxo, i64 59 ; 3 uses
  %i.kxs = getelementptr inbounds nuw i8, ptr %i.kxo, i64 8 ; 3 uses
  %i.kxt = getelementptr inbounds nuw i8, ptr %i.kxo, i64 16 ; 4 uses
  %i.kxu = getelementptr inbounds nuw i8, ptr %i.kxo, i64 58
  %i.kxv = getelementptr inbounds nuw i8, ptr %i.kxo, i64 64 ; 3 uses
  %i.kxw = load i8, ptr %i.kxu, align 2, !tbaa !338, !range !73, !noundef !74
  %i.kxx = trunc nuw i8 %i.kxw to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2614, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669, label %.lr.ph.split.i.i.i.i.i.i.i.i.i2615

.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2613
  %i.kxy = load ptr, ptr %i.kxt, align 8, !tbaa !487
  %i.kxz = sext i32 %i.kxm to i64
  %i.kya = sext i32 %i.kxk to i64
  %i.kyb = sext i32 %i.kvd to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i2672, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669
  %indvars.iv145.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next146.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2672 ], [ %i.kxz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669 ] ; 3 uses
  %.04350.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i2673, %.critedge.us.i.i.i.i.i.i.i.i.i2672 ], [ %i.kxl, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669 ] ; 2 uses
  %i.kyc = add nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i, %i.kyb ; 2 uses
  %i.kyd = trunc nsw i64 %i.kyc to i32
  br i1 %i.kxx, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i, label %bb.bcn

bb.bcn:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670
  %i.kye = load i8, ptr %i.kxr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kyf = trunc nuw i8 %i.kye to i1
  br i1 %i.kyf, label %bb.bcp, label %bb.bco

bb.bco:                                           ; preds = %bb.bcn
  %i.kyg = load ptr, ptr %i.kxs, align 8, !tbaa !331
  %i.kyh = getelementptr inbounds [4 x i8], ptr %i.kyg, i64 %i.kyc
  %i.kyi = load i32, ptr %i.kyh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i

bb.bcp:                                           ; preds = %bb.bcn
  %i.kyj = load i32, ptr %i.kxv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.bcp, %bb.bco, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i2671 = phi i32 [ %i.kyi, %bb.bco ], [ %i.kyj, %bb.bcp ], [ %i.kyd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670 ]
  %i.kyk = sext i32 %.0.i.i21.us.i.i.i.i.i.i.i.i.i2671 to i64
  %i.kyl = getelementptr inbounds [16 x i8], ptr %i.kxy, i64 %i.kyk ; 2 uses
  %.sroa.0.0.copyload.i22.us.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kyl, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kyl, i64 8
  %.sroa.2.0.copyload.i24.us.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.kym = icmp eq i64 %.sroa.0.0.copyload.i22.us.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.kyn = icmp eq i64 %.sroa.2.0.copyload.i24.us.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.kyo = select i1 %i.kym, i1 %i.kyn, i1 false
  br i1 %i.kyo, label %bb.bcq, label %.critedge.us.i.i.i.i.i.i.i.i.i2672

bb.bcq:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i
  %i.kyp = add nsw i64 %.04350.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kyq = icmp eq i64 %i.kyp, 0
  br i1 %i.kyq, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i2675, label %.critedge.us.i.i.i.i.i.i.i.i.i2672

.critedge.us.i.i.i.i.i.i.i.i.i2672:               ; preds = %bb.bcq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i2673 = phi i64 [ %.04350.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i ], [ %i.kyp, %bb.bcq ]
  %indvars.iv.next146.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i, %i.kya ; 2 uses
  %i.kyr = trunc nsw i64 %indvars.iv.next146.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2674 = icmp eq i32 %i.kxn, %i.kyr
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2674, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670, !llvm.loop !3283

.lr.ph.split.i.i.i.i.i.i.i.i.i2615:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2613
  %i.kys = getelementptr inbounds nuw i8, ptr %i.kxo, i64 57
  %i.kyt = load i8, ptr %i.kys, align 1, !range !73
  %i.kyu = trunc nuw i8 %i.kyt to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2616 = select i1 %i.kxx, i1 true, i1 %i.kyu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2616, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2615
  %i.kyv = sext i32 %i.kxm to i64
  %i.kyw = sext i32 %i.kxk to i64
  %i.kyx = sext i32 %i.kvd to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667:      ; preds = %.critedge.us61.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666
  %indvars.iv142.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kyv, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666 ], [ %indvars.iv.next143.i.i.i.i.i.i.i.i.i, %.critedge.us61.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.04350.us54.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kxl, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666 ], [ %.1.us62.i.i.i.i.i.i.i.i.i, %.critedge.us61.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kyy = add nsw i64 %indvars.iv142.i.i.i.i.i.i.i.i.i, %i.kyx ; 4 uses
  %i.kyz = lshr i64 %i.kyy, 6
  %i.kza = and i64 %i.kyz, 67108863
  %i.kzb = getelementptr inbounds nuw [8 x i8], ptr %i.kxq, i64 %i.kza
  %i.kzc = load i64, ptr %i.kzb, align 8, !tbaa !137
  %i.kzd = and i64 %i.kyy, 63
  %i.kze = shl nuw i64 1, %i.kzd
  %i.kzf = and i64 %i.kze, %i.kzc
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2668 = icmp eq i64 %i.kzf, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2668, label %.critedge.us61.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667
  %i.kzg = trunc nsw i64 %i.kyy to i32
  %i.kzh = load ptr, ptr %i.kxt, align 8, !tbaa !487
  br i1 %i.kxx, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i, label %bb.bcr

bb.bcr:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i
  %i.kzi = load i8, ptr %i.kxr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kzj = trunc nuw i8 %i.kzi to i1
  br i1 %i.kzj, label %bb.bct, label %bb.bcs

bb.bcs:                                           ; preds = %bb.bcr
  %i.kzk = load ptr, ptr %i.kxs, align 8, !tbaa !331
  %i.kzl = getelementptr inbounds [4 x i8], ptr %i.kzk, i64 %i.kyy
  %i.kzm = load i32, ptr %i.kzl, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i

bb.bct:                                           ; preds = %bb.bcr
  %i.kzn = load i32, ptr %i.kxv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i: ; preds = %bb.bct, %bb.bcs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i
  %.0.i.i21.us57.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kzm, %bb.bcs ], [ %i.kzn, %bb.bct ], [ %i.kzg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i ]
  %i.kzo = sext i32 %.0.i.i21.us57.i.i.i.i.i.i.i.i.i to i64
  %i.kzp = getelementptr inbounds [16 x i8], ptr %i.kzh, i64 %i.kzo ; 2 uses
  %.sroa.0.0.copyload.i22.us58.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kzp, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us59.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kzp, i64 8
  %.sroa.2.0.copyload.i24.us60.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us59.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.kzq = icmp eq i64 %.sroa.0.0.copyload.i22.us58.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.kzr = icmp eq i64 %.sroa.2.0.copyload.i24.us60.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.kzs = select i1 %i.kzq, i1 %i.kzr, i1 false
  br i1 %i.kzs, label %bb.bcu, label %.critedge.us61.i.i.i.i.i.i.i.i.i

bb.bcu:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i
  %i.kzt = add nsw i64 %.04350.us54.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kzu = icmp eq i64 %i.kzt, 0
  br i1 %i.kzu, label %.split.us.loopexit110.i.i.i.i.i.i.i.i.i, label %.critedge.us61.i.i.i.i.i.i.i.i.i

.critedge.us61.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bcu, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667
  %.1.us62.i.i.i.i.i.i.i.i.i = phi i64 [ %.04350.us54.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i ], [ %i.kzt, %bb.bcu ], [ %.04350.us54.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667 ]
  %indvars.iv.next143.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv142.i.i.i.i.i.i.i.i.i, %i.kyw ; 2 uses
  %i.kzv = trunc nsw i64 %indvars.iv.next143.i.i.i.i.i.i.i.i.i to i32
  %.not16.us63.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kxn, %i.kzv
  br i1 %.not16.us63.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667, !llvm.loop !3283

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2615
  %i.kzw = load i8, ptr %i.kxr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kzx = trunc nuw i8 %i.kzw to i1
  br i1 %i.kzx, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617
  %i.kzy = load i64, ptr %i.kxq, align 8, !tbaa !137
  %i.kzz = and i64 %i.kzy, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2664 = icmp eq i64 %i.kzz, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2664, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663
  %i.laa = load ptr, ptr %i.kxt, align 8, !tbaa !487
  %i.lab = load i32, ptr %i.kxv, align 8, !tbaa !488
  %i.lac = sext i32 %i.lab to i64
  %i.lad = getelementptr inbounds [16 x i8], ptr %i.laa, i64 %i.lac ; 2 uses
  %.sroa.0.0.copyload.i22.us73.us98.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lad, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us74.us99.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lad, i64 8
  %.sroa.2.0.copyload.i24.us75.us100.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us74.us99.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.lae = icmp eq i64 %.sroa.0.0.copyload.i22.us73.us98.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.laf = icmp eq i64 %.sroa.2.0.copyload.i24.us75.us100.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.lag = select i1 %i.lae, i1 %i.laf, i1 false
  br i1 %i.lag, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665
  %i.lah = trunc i64 %i.kxl to i32
  %i.lai = add i32 %i.lah, -1
  %i.laj = mul i32 %i.lai, %i.kxk
  %i.lak = add i32 %i.kxm, %i.laj                 ; 3 uses
  %i.lal = add nsw i64 %i.kxl, -1                 ; 5 uses
  %i.lam = icmp eq i64 %i.lal, 0
  br i1 %i.lam, label %.split.us.i.i.i.i.i.i.i.i.i2655, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp samesign ult i64 %i.kxl, 33
  br i1 %min.iters.check, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec = and i64 %i.lal, -32                    ; 3 uses
  %i.lan = and i64 %i.lal, 31
  %i.lao = trunc i64 %n.vec to i32
  %i.lap = mul i32 %i.kxk, %i.lao
  %i.laq = add i32 %i.kxm, %i.lap
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.kxk, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5438 = insertelement <32 x i32> poison, i32 %i.kxn, i64 0
  %broadcast.splat5439 = shufflevector <32 x i32> %broadcast.splatinsert5438, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5440 = insertelement <32 x i32> poison, i32 %i.kxm, i64 0
  %broadcast.splat5441 = shufflevector <32 x i32> %broadcast.splatinsert5440, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.lar = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat5441, %i.lar
  %i.las = shl nsw i32 %i.kxk, 5
  %broadcast.splatinsert5442 = insertelement <32 x i32> poison, i32 %i.las, i64 0
  %broadcast.splat5443 = shufflevector <32 x i32> %broadcast.splatinsert5442, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.lat = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.lau = icmp eq <32 x i32> %i.lat, %broadcast.splat5439
  %i.lav = freeze <32 x i1> %i.lau
  %i.law = bitcast <32 x i1> %i.lav to i32
  %.not = icmp eq i32 %i.law, 0
  br i1 %.not, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat5443
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lax = icmp eq i64 %index.next, %n.vec
  br i1 %i.lax, label %middle.block, label %vector.body, !llvm.loop !3284

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.lal, %n.vec
  br i1 %cmp.n, label %.split.us.i.i.i.i.i.i.i.i.i2655, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block
  %.ph6168 = phi i64 [ %i.lal, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.lan, %middle.block ]
  %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358.ph = phi i32 [ %i.kxm, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.laq, %middle.block ]
  br label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i
  %i.lay = add nsw i64 %i.lba, -1                 ; 2 uses
  %i.laz = icmp eq i64 %i.lay, 0
  br i1 %i.laz, label %.split.us.i.i.i.i.i.i.i.i.i2655, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3285

.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i:        ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i
  %i.lba = phi i64 [ %i.lay, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i ], [ %.ph6168, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358 = phi i32 [ %i.lbb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i ], [ %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358.ph, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.lbb = add nsw i32 %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358, %i.kxk ; 2 uses
  %.not16.us78.us103.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.lbb, %i.kxn
  br i1 %.not16.us78.us103.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3283

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617
  %i.lbc = load ptr, ptr %i.kxs, align 8, !tbaa !331
  %i.lbd = sext i32 %i.kxm to i64
  %i.lbe = sext i32 %i.kxk to i64
  %i.lbf = sext i32 %i.kvd to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2619 = getelementptr [4 x i8], ptr %i.lbc, i64 %i.lbf
  br label %bb.bcv

bb.bcv:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i2623, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618
  %indvars.iv.i.i.i.i.i.i.i.i.i2620 = phi i64 [ %i.lbd, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2625, %.critedge.i.i.i.i.i.i.i.i.i2623 ] ; 3 uses
  %.04350.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kxl, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618 ], [ %.1.i.i.i.i.i.i.i.i.i2624, %.critedge.i.i.i.i.i.i.i.i.i2623 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i2621 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2619, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2620
  %i.lbg = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2621, align 4, !tbaa !3 ; 2 uses
  %i.lbh = zext i32 %i.lbg to i64                 ; 2 uses
  %i.lbi = lshr i64 %i.lbh, 6
  %i.lbj = getelementptr inbounds nuw [8 x i8], ptr %i.kxq, i64 %i.lbi
  %i.lbk = load i64, ptr %i.lbj, align 8, !tbaa !137
  %i.lbl = and i64 %i.lbh, 63
  %i.lbm = shl nuw i64 1, %i.lbl
  %i.lbn = and i64 %i.lbm, %i.lbk
  %.not.i7.i.i.i.i.i.i.i.i.i.i2622 = icmp eq i64 %i.lbn, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2622, label %.critedge.i.i.i.i.i.i.i.i.i2623, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i: ; preds = %bb.bcv
  %i.lbo = load ptr, ptr %i.kxt, align 8, !tbaa !487
  %i.lbp = sext i32 %i.lbg to i64
  %i.lbq = getelementptr inbounds [16 x i8], ptr %i.lbo, i64 %i.lbp ; 2 uses
  %.sroa.0.0.copyload.i22.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lbq, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lbq, i64 8
  %.sroa.2.0.copyload.i24.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.lbr = icmp eq i64 %.sroa.0.0.copyload.i22.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.lbs = icmp eq i64 %.sroa.2.0.copyload.i24.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.lbt = select i1 %i.lbr, i1 %i.lbs, i1 false
  br i1 %i.lbt, label %bb.bcw, label %.critedge.i.i.i.i.i.i.i.i.i2623

bb.bcw:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i
  %i.lbu = add nsw i64 %.04350.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.lbv = icmp eq i64 %i.lbu, 0
  br i1 %i.lbv, label %.split.us.loopexit120.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2623

.split.us.loopexit.i.i.i.i.i.i.i.i.i2675:         ; preds = %bb.bcq
  %i.lbw = trunc nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.loopexit110.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bcu
  %i.lbx = trunc nsw i64 %indvars.iv142.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.loopexit120.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bcw
  %i.lby = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2620 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.i.i.i.i.i.i.i.i.i2655:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block, %.split.us.loopexit120.i.i.i.i.i.i.i.i.i, %.split.us.loopexit110.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i2675
  %.us-phi.i.i.i.i.i.i.i.i.i2656 = phi i32 [ %i.lby, %.split.us.loopexit120.i.i.i.i.i.i.i.i.i ], [ %i.lbw, %.split.us.loopexit.i.i.i.i.i.i.i.i.i2675 ], [ %i.lbx, %.split.us.loopexit110.i.i.i.i.i.i.i.i.i ], [ %i.lak, %middle.block ], [ %i.lak, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.lak, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lbz = load ptr, ptr %.sroa.12.0..sroa_idx.i2582, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.lca = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i2656, 1
  %i.lcb = sext i32 %i.lca to i64
  %i.lcc = getelementptr inbounds nuw i8, ptr %i.lbz, i64 144 ; 2 uses
  %i.lcd = load ptr, ptr %i.lcc, align 8, !tbaa !341 ; 2 uses
  %i.lce = icmp eq ptr %i.lcd, null
  br i1 %i.lce, label %bb.bcx, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657

bb.bcx:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i2655
  %i.lcf = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lbz)
          to label %.noexc19.i.i.i.i.i.i.i.i2661 unwind label %bb.bdc ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2661:                     ; preds = %bb.bcx
  %.pre.i.i.i.i.i.i.i.i.i.i2662 = load ptr, ptr %i.lcc, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657: ; preds = %.noexc19.i.i.i.i.i.i.i.i2661, %.split.us.i.i.i.i.i.i.i.i.i2655
  %i.lcg = phi ptr [ %i.lcd, %.split.us.i.i.i.i.i.i.i.i.i2655 ], [ %.pre.i.i.i.i.i.i.i.i.i.i2662, %.noexc19.i.i.i.i.i.i.i.i2661 ]
  %i.lch = getelementptr inbounds [8 x i8], ptr %i.lcg, i64 %i.kxa
  store i64 %i.lcb, ptr %i.lch, align 8, !tbaa !137
  %i.lci = getelementptr inbounds nuw i8, ptr %i.lbz, i64 32 ; 2 uses
  %i.lcj = load ptr, ptr %i.lci, align 8, !tbaa !362
  %.not.i28.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lcj, null
  br i1 %.not.i28.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %bb.bcy

bb.bcy:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657
  %i.lck = getelementptr inbounds nuw i8, ptr %i.lbz, i64 56
  %i.lcl = load i32, ptr %i.lck, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.lbz, i32 noundef %i.lcl, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2658 unwind label %bb.bdc

.noexc20.i.i.i.i.i.i.i.i2658:                     ; preds = %bb.bcy
  %i.lcm = load ptr, ptr %i.lci, align 8, !tbaa !362 ; 2 uses
  %i.lcn = getelementptr inbounds nuw i8, ptr %i.lcm, i64 44
  %i.lco = load i8, ptr %i.lcn, align 4, !tbaa !363
  %i.lcp = and i8 %i.lco, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2659 = icmp eq i8 %i.lcp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2659, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660, label %.invoke.i.i.i.i.i.i.i.i2652, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660: ; preds = %.noexc20.i.i.i.i.i.i.i.i2658
  %i.lcq = getelementptr inbounds nuw i8, ptr %i.lcm, i64 16
  %i.lcr = load ptr, ptr %i.lcq, align 8, !tbaa !368
  %i.lcs = lshr i64 %.069.i.i.i.i.i.i.i.i2605, 3
  %i.lct = and i64 %i.lcs, 536870911
  %i.lcu = getelementptr inbounds nuw i8, ptr %i.lcr, i64 %i.lct ; 2 uses
  %i.lcv = load i8, ptr %i.lcu, align 1, !tbaa !30
  %i.lcw = trunc i64 %.069.i.i.i.i.i.i.i.i2605 to i8
  %i.lcx = and i8 %i.lcw, 7
  %i.lcy = shl nuw i8 1, %i.lcx
  %i.lcz = or i8 %i.lcv, %i.lcy
  store i8 %i.lcz, ptr %i.lcu, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627

.critedge.i.i.i.i.i.i.i.i.i2623:                  ; preds = %bb.bcw, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i, %bb.bcv
  %.1.i.i.i.i.i.i.i.i.i2624 = phi i64 [ %.04350.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i ], [ %i.lbu, %bb.bcw ], [ %.04350.i.i.i.i.i.i.i.i.i, %bb.bcv ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2625 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2620, %i.lbe ; 2 uses
  %i.lda = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2625 to i32
  %.not16.i.i.i.i.i.i.i.i.i2626 = icmp eq i32 %i.kxn, %i.lda
  br i1 %.not16.i.i.i.i.i.i.i.i.i2626, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %bb.bcv, !llvm.loop !3283

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2623, %vector.body, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i, %.critedge.us61.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2672, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663, %bb.bcm
  %.048.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2656, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2656, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660 ], [ %i.kxm, %bb.bcm ], [ %i.kxn, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663 ], [ %i.kxn, %vector.body ], [ %i.kxn, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i ], [ %i.kxn, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665 ], [ %i.kxn, %.critedge.us61.i.i.i.i.i.i.i.i.i ], [ %i.kxn, %.critedge.us.i.i.i.i.i.i.i.i.i2672 ], [ %i.kxn, %.critedge.i.i.i.i.i.i.i.i.i2623 ]
  %i.ldb = load ptr, ptr %.sroa.952.0..sroa_idx.i2579, align 8, !tbaa !3280, !nonnull !74, !align !497
  %i.ldc = load i32, ptr %i.ldb, align 4, !tbaa !3
  %i.ldd = icmp eq i32 %.048.i.i.i.i.i.i.i.i.i, %i.ldc
  br i1 %i.ldd, label %bb.bcz, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.bcz:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627
  %i.lde = load ptr, ptr %.sroa.12.0..sroa_idx.i2582, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.ldf = getelementptr inbounds nuw i8, ptr %i.lde, i64 144 ; 2 uses
  %i.ldg = load ptr, ptr %i.ldf, align 8, !tbaa !341 ; 2 uses
  %i.ldh = icmp eq ptr %i.ldg, null
  br i1 %i.ldh, label %bb.bda, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i

bb.bda:                                           ; preds = %bb.bcz
  %i.ldi = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lde)
          to label %.noexc22.i.i.i.i.i.i.i.i2654 unwind label %bb.bdc ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2654:                     ; preds = %bb.bda
  %.pre.i33.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ldf, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i2654, %bb.bcz
  %i.ldj = phi ptr [ %i.ldg, %bb.bcz ], [ %.pre.i33.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i2654 ]
  %i.ldk = getelementptr inbounds [8 x i8], ptr %i.ldj, i64 %i.kxa
  store i64 0, ptr %i.ldk, align 8, !tbaa !137
  %i.ldl = getelementptr inbounds nuw i8, ptr %i.lde, i64 32 ; 2 uses
  %i.ldm = load ptr, ptr %i.ldl, align 8, !tbaa !362
  %.not.i30.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ldm, null
  br i1 %.not.i30.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.bdb

bb.bdb:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i
  %i.ldn = getelementptr inbounds nuw i8, ptr %i.lde, i64 56
  %i.ldo = load i32, ptr %i.ldn, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.lde, i32 noundef %i.ldo, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2651 unwind label %bb.bdc

.noexc23.i.i.i.i.i.i.i.i2651:                     ; preds = %bb.bdb
  %i.ldp = load ptr, ptr %i.ldl, align 8, !tbaa !362 ; 2 uses
  %i.ldq = getelementptr inbounds nuw i8, ptr %i.ldp, i64 44
  %i.ldr = load i8, ptr %i.ldq, align 4, !tbaa !363
  %i.lds = and i8 %i.ldr, 2
  %.not.i3.i31.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lds, 0
  br i1 %.not.i3.i31.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i2652, !prof !69

.invoke.i.i.i.i.i.i.i.i2652:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i2651, %.noexc20.i.i.i.i.i.i.i.i2658
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i2653 unwind label %bb.bdc

.cont.i.i.i.i.i.i.i.i2653:                        ; preds = %.invoke.i.i.i.i.i.i.i.i2652
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i32.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i.i.i.i2651
  %i.ldt = getelementptr inbounds nuw i8, ptr %i.ldp, i64 16
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2935, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3624
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3624
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3627, !noalias !3624
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3624
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2942, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2943, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2944, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2945, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2946, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep193 = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv155 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next156, %.critedge.us.us ] ; 3 uses
  %.03540.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep194 = getelementptr [4 x i8], ptr %invariant.gep193, i64 %indvars.iv155
  %i.cm = load i32, ptr %gep194, align 4, !tbaa !3
  %i.cn = icmp eq i32 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03540.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03540.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3630

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = icmp eq i32 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us98.us.lr.ph

.critedge.us.us98.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader
  %min.iters.check219 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check219, label %.critedge.us.us98.us.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %.critedge.us.us98.us.lr.ph
  %n.vec222 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec222 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert223 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat224 = shufflevector <32 x i32> %broadcast.splatinsert223, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert225 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat226 = shufflevector <32 x i32> %broadcast.splatinsert225, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat228 = shufflevector <32 x i32> %broadcast.splatinsert227, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat224, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction229 = add <32 x i32> %broadcast.splat228, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert230 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat231 = shufflevector <32 x i32> %broadcast.splatinsert230, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body.interim237, %vector.ph220
  %index233 = phi i64 [ 0, %vector.ph220 ], [ %index.next235, %vector.body.interim237 ]
  %vec.ind234 = phi <32 x i32> [ %induction229, %vector.ph220 ], [ %vec.ind.next236, %vector.body.interim237 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind234, %broadcast.splat224
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat226
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not244 = icmp eq i32 %i.dn, 0
  br i1 %.not244, label %vector.body.interim237, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim237:                           ; preds = %vector.body232
  %vec.ind.next236 = add <32 x i32> %vec.ind234, %broadcast.splat231
  %index.next235 = add nuw i64 %index233, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next235, %n.vec222
  br i1 %i.do, label %middle.block238, label %vector.body232, !llvm.loop !3631

middle.block238:                                  ; preds = %vector.body.interim237
  %cmp.n239 = icmp eq i64 %i.dc, %n.vec222
  br i1 %cmp.n239, label %.split.us, label %.critedge.us.us98.us.preheader

.critedge.us.us98.us.preheader:                   ; preds = %.critedge.us.us98.us.lr.ph, %middle.block238
  %.ph = phi i64 [ %i.dc, %.critedge.us.us98.us.lr.ph ], [ %i.de, %middle.block238 ]
  %.041.us.us94.us210.ph = phi i32 [ %i.bv, %.critedge.us.us98.us.lr.ph ], [ %i.dh, %middle.block238 ]
  br label %.critedge.us.us98.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us: ; preds = %.critedge.us.us98.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us98.us, !llvm.loop !3632

.critedge.us.us98.us:                             ; preds = %.critedge.us.us98.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.ph, %.critedge.us.us98.us.preheader ]
  %.041.us.us94.us210 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.041.us.us94.us210.ph, %.critedge.us.us98.us.preheader ]
  %i.ds = add nsw i32 %.041.us.us94.us210, %i.bt  ; 2 uses
  %.not16.us.us100.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us100.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, !llvm.loop !3630

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03540.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep192 = getelementptr [4 x i8], ptr %invariant.gep191, i64 %indvars.iv152
  %i.dx = load i32, ptr %gep192, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = icmp eq i32 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03540.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit110, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03540.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3630

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us48
  %indvars.iv149 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next150, %.critedge.us48 ] ; 3 uses
  %.03540.us44 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us49, %.critedge.us48 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv149, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i19.us47 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.fb = sext i32 %.0.i.i19.us47 to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = icmp eq i32 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us48

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46
  %i.ff = add nsw i64 %.03540.us44, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit112, label %.critedge.us48

.critedge.us48:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46, %.lr.ph.split.split.us
  %.1.us49 = phi i64 [ %.03540.us44, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46 ], [ %i.ff, %bb.q ], [ %.03540.us44, %.lr.ph.split.split.us ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next150 to i32
  %.not16.us50 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us50, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3630

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = icmp eq i32 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us60.us82.us.lr.ph

.critedge.us60.us82.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us60.us82.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us60.us82.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat212 = shufflevector <32 x i32> %broadcast.splatinsert211, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat214 = shufflevector <32 x i32> %broadcast.splatinsert213, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat214, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat216 = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat212
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not243 = icmp eq i32 %i.gh, 0
  br i1 %.not243, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat216
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3633

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us60.us82.us.preheader

.critedge.us60.us82.us.preheader:                 ; preds = %.critedge.us60.us82.us.lr.ph, %middle.block
  %.ph253 = phi i64 [ %i.fw, %.critedge.us60.us82.us.lr.ph ], [ %i.fy, %middle.block ]
  %.041.us55.us78.us209.ph = phi i32 [ %i.bv, %.critedge.us60.us82.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us60.us82.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us: ; preds = %.critedge.us60.us82.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us60.us82.us, !llvm.loop !3634

.critedge.us60.us82.us:                           ; preds = %.critedge.us60.us82.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.ph253, %.critedge.us60.us82.us.preheader ]
  %.041.us55.us78.us209 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.041.us55.us78.us209.ph, %.critedge.us60.us82.us.preheader ]
  %i.gm = add nsw i32 %.041.us55.us78.us209, %i.bt ; 2 uses
  %.not16.us62.us84.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us62.us84.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, !llvm.loop !3630

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03540 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = icmp eq i32 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20
  %i.he = add nsw i64 %.03540, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit122, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv155 to i32
  br label %.split.us

.split.us.loopexit110:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv152 to i32
  br label %.split.us

.split.us.loopexit112:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv149 to i32
  br label %.split.us

.split.us.loopexit122:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, %middle.block238, %.split.us.loopexit122, %.split.us.loopexit112, %.split.us.loopexit110, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit112 ], [ %i.hj, %.split.us.loopexit122 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit110 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader ], [ %i.db, %middle.block238 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20, %bb.s
  %.1 = phi i64 [ %.03540, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20 ], [ %i.he, %bb.s ], [ %.03540, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3630

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us60.us82.us, %.critedge.us48, %.critedge.us, %vector.body232, %.critedge.us.us98.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us98.us ], [ %i.bw, %vector.body232 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us48 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us60.us82.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !2944, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.038, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i26, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.y
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !368
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2973, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3654
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3654
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3657, !noalias !3654
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3654
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2980, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2981, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2982, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2983, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2984, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep193 = getelementptr i8, ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv155 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next156, %.critedge.us.us ] ; 3 uses
  %.03540.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep194 = getelementptr i8, ptr %invariant.gep193, i64 %indvars.iv155
  %i.cm = load i8, ptr %gep194, align 1, !tbaa !30
  %i.cn = icmp eq i8 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03540.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03540.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3660

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ci, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cx = icmp eq i8 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us98.us.lr.ph

.critedge.us.us98.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader
  %min.iters.check219 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check219, label %.critedge.us.us98.us.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %.critedge.us.us98.us.lr.ph
  %n.vec222 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec222 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert223 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat224 = shufflevector <32 x i32> %broadcast.splatinsert223, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert225 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat226 = shufflevector <32 x i32> %broadcast.splatinsert225, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat228 = shufflevector <32 x i32> %broadcast.splatinsert227, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat224, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction229 = add <32 x i32> %broadcast.splat228, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert230 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat231 = shufflevector <32 x i32> %broadcast.splatinsert230, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body.interim237, %vector.ph220
  %index233 = phi i64 [ 0, %vector.ph220 ], [ %index.next235, %vector.body.interim237 ]
  %vec.ind234 = phi <32 x i32> [ %induction229, %vector.ph220 ], [ %vec.ind.next236, %vector.body.interim237 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind234, %broadcast.splat224
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat226
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not244 = icmp eq i32 %i.dn, 0
  br i1 %.not244, label %vector.body.interim237, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim237:                           ; preds = %vector.body232
  %vec.ind.next236 = add <32 x i32> %vec.ind234, %broadcast.splat231
  %index.next235 = add nuw i64 %index233, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next235, %n.vec222
  br i1 %i.do, label %middle.block238, label %vector.body232, !llvm.loop !3661

middle.block238:                                  ; preds = %vector.body.interim237
  %cmp.n239 = icmp eq i64 %i.dc, %n.vec222
  br i1 %cmp.n239, label %.split.us, label %.critedge.us.us98.us.preheader

.critedge.us.us98.us.preheader:                   ; preds = %.critedge.us.us98.us.lr.ph, %middle.block238
  %.ph = phi i64 [ %i.dc, %.critedge.us.us98.us.lr.ph ], [ %i.de, %middle.block238 ]
  %.041.us.us94.us210.ph = phi i32 [ %i.bv, %.critedge.us.us98.us.lr.ph ], [ %i.dh, %middle.block238 ]
  br label %.critedge.us.us98.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us: ; preds = %.critedge.us.us98.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us98.us, !llvm.loop !3662

.critedge.us.us98.us:                             ; preds = %.critedge.us.us98.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.ph, %.critedge.us.us98.us.preheader ]
  %.041.us.us94.us210 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.041.us.us94.us210.ph, %.critedge.us.us98.us.preheader ]
  %i.ds = add nsw i32 %.041.us.us94.us210, %i.bt  ; 2 uses
  %.not16.us.us100.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us100.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, !llvm.loop !3660

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03540.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep192 = getelementptr [4 x i8], ptr %invariant.gep191, i64 %indvars.iv152
  %i.dx = load i32, ptr %gep192, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.ci, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !30
  %i.eb = icmp eq i8 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03540.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit110, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03540.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3660

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us48
  %indvars.iv149 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next150, %.critedge.us48 ] ; 3 uses
  %.03540.us44 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us49, %.critedge.us48 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv149, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i19.us47 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.fb = sext i32 %.0.i.i19.us47 to i64
  %i.fc = getelementptr inbounds i8, ptr %i.eu, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !30
  %i.fe = icmp eq i8 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us48

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46
  %i.ff = add nsw i64 %.03540.us44, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit112, label %.critedge.us48

.critedge.us48:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46, %.lr.ph.split.split.us
  %.1.us49 = phi i64 [ %.03540.us44, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46 ], [ %i.ff, %bb.q ], [ %.03540.us44, %.lr.ph.split.split.us ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next150 to i32
  %.not16.us50 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us50, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3660

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fm, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !30
  %i.fr = icmp eq i8 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us60.us82.us.lr.ph

.critedge.us60.us82.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us60.us82.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us60.us82.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat212 = shufflevector <32 x i32> %broadcast.splatinsert211, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat214 = shufflevector <32 x i32> %broadcast.splatinsert213, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat214, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat216 = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat212
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not243 = icmp eq i32 %i.gh, 0
  br i1 %.not243, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat216
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3663

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us60.us82.us.preheader

.critedge.us60.us82.us.preheader:                 ; preds = %.critedge.us60.us82.us.lr.ph, %middle.block
  %.ph253 = phi i64 [ %i.fw, %.critedge.us60.us82.us.lr.ph ], [ %i.fy, %middle.block ]
  %.041.us55.us78.us209.ph = phi i32 [ %i.bv, %.critedge.us60.us82.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us60.us82.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us: ; preds = %.critedge.us60.us82.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us60.us82.us, !llvm.loop !3664

.critedge.us60.us82.us:                           ; preds = %.critedge.us60.us82.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.ph253, %.critedge.us60.us82.us.preheader ]
  %.041.us55.us78.us209 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.041.us55.us78.us209.ph, %.critedge.us60.us82.us.preheader ]
  %i.gm = add nsw i32 %.041.us55.us78.us209, %i.bt ; 2 uses
  %.not16.us62.us84.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us62.us84.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, !llvm.loop !3660

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03540 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !30
  %i.hd = icmp eq i8 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20
  %i.he = add nsw i64 %.03540, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit122, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv155 to i32
  br label %.split.us

.split.us.loopexit110:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv152 to i32
  br label %.split.us

.split.us.loopexit112:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv149 to i32
  br label %.split.us

.split.us.loopexit122:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, %middle.block238, %.split.us.loopexit122, %.split.us.loopexit112, %.split.us.loopexit110, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit112 ], [ %i.hj, %.split.us.loopexit122 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit110 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader ], [ %i.db, %middle.block238 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20, %bb.s
  %.1 = phi i64 [ %.03540, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20 ], [ %i.he, %bb.s ], [ %.03540, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3660

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us60.us82.us, %.critedge.us48, %.critedge.us, %vector.body232, %.critedge.us.us98.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us98.us ], [ %i.bw, %vector.body232 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us48 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us60.us82.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !2982, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.038, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i26, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.y
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !368
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !2009 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3011, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3684
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3684
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3687, !noalias !3684
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3684
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3018, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3019, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3020, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3021, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3022, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep193 = getelementptr [2 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv155 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next156, %.critedge.us.us ] ; 3 uses
  %.03540.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep194 = getelementptr [2 x i8], ptr %invariant.gep193, i64 %indvars.iv155
  %i.cm = load i16, ptr %gep194, align 2, !tbaa !2009
  %i.cn = icmp eq i16 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03540.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03540.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3690

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !2009
  %i.cx = icmp eq i16 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us98.us.lr.ph

.critedge.us.us98.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader
  %min.iters.check219 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check219, label %.critedge.us.us98.us.preheader, label %vector.ph220

vector.ph220:                                     ; preds = %.critedge.us.us98.us.lr.ph
  %n.vec222 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec222 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert223 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat224 = shufflevector <32 x i32> %broadcast.splatinsert223, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert225 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat226 = shufflevector <32 x i32> %broadcast.splatinsert225, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat228 = shufflevector <32 x i32> %broadcast.splatinsert227, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat224, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction229 = add <32 x i32> %broadcast.splat228, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert230 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat231 = shufflevector <32 x i32> %broadcast.splatinsert230, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body.interim237, %vector.ph220
  %index233 = phi i64 [ 0, %vector.ph220 ], [ %index.next235, %vector.body.interim237 ]
  %vec.ind234 = phi <32 x i32> [ %induction229, %vector.ph220 ], [ %vec.ind.next236, %vector.body.interim237 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind234, %broadcast.splat224
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat226
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not244 = icmp eq i32 %i.dn, 0
  br i1 %.not244, label %vector.body.interim237, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim237:                           ; preds = %vector.body232
  %vec.ind.next236 = add <32 x i32> %vec.ind234, %broadcast.splat231
  %index.next235 = add nuw i64 %index233, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next235, %n.vec222
  br i1 %i.do, label %middle.block238, label %vector.body232, !llvm.loop !3691

middle.block238:                                  ; preds = %vector.body.interim237
  %cmp.n239 = icmp eq i64 %i.dc, %n.vec222
  br i1 %cmp.n239, label %.split.us, label %.critedge.us.us98.us.preheader

.critedge.us.us98.us.preheader:                   ; preds = %.critedge.us.us98.us.lr.ph, %middle.block238
  %.ph = phi i64 [ %i.dc, %.critedge.us.us98.us.lr.ph ], [ %i.de, %middle.block238 ]
  %.041.us.us94.us210.ph = phi i32 [ %i.bv, %.critedge.us.us98.us.lr.ph ], [ %i.dh, %middle.block238 ]
  br label %.critedge.us.us98.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us: ; preds = %.critedge.us.us98.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us98.us, !llvm.loop !3692

.critedge.us.us98.us:                             ; preds = %.critedge.us.us98.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.ph, %.critedge.us.us98.us.preheader ]
  %.041.us.us94.us210 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.041.us.us94.us210.ph, %.critedge.us.us98.us.preheader ]
  %i.ds = add nsw i32 %.041.us.us94.us210, %i.bt  ; 2 uses
  %.not16.us.us100.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us100.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, !llvm.loop !3690

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03540.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep192 = getelementptr [4 x i8], ptr %invariant.gep191, i64 %indvars.iv152
  %i.dx = load i32, ptr %gep192, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !2009
  %i.eb = icmp eq i16 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03540.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit110, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03540.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3690

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us48
  %indvars.iv149 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next150, %.critedge.us48 ] ; 3 uses
  %.03540.us44 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us49, %.critedge.us48 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv149, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i19.us47 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.fb = sext i32 %.0.i.i19.us47 to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !2009
  %i.fe = icmp eq i16 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us48

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46
  %i.ff = add nsw i64 %.03540.us44, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit112, label %.critedge.us48

.critedge.us48:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46, %.lr.ph.split.split.us
  %.1.us49 = phi i64 [ %.03540.us44, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46 ], [ %i.ff, %bb.q ], [ %.03540.us44, %.lr.ph.split.split.us ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next150 to i32
  %.not16.us50 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us50, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3690

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !2009
  %i.fr = icmp eq i16 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us60.us82.us.lr.ph

.critedge.us60.us82.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us60.us82.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us60.us82.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat212 = shufflevector <32 x i32> %broadcast.splatinsert211, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat214 = shufflevector <32 x i32> %broadcast.splatinsert213, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat214, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat216 = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat212
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not243 = icmp eq i32 %i.gh, 0
  br i1 %.not243, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat216
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3693

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us60.us82.us.preheader

.critedge.us60.us82.us.preheader:                 ; preds = %.critedge.us60.us82.us.lr.ph, %middle.block
  %.ph253 = phi i64 [ %i.fw, %.critedge.us60.us82.us.lr.ph ], [ %i.fy, %middle.block ]
  %.041.us55.us78.us209.ph = phi i32 [ %i.bv, %.critedge.us60.us82.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us60.us82.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us: ; preds = %.critedge.us60.us82.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us60.us82.us, !llvm.loop !3694

.critedge.us60.us82.us:                           ; preds = %.critedge.us60.us82.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.ph253, %.critedge.us60.us82.us.preheader ]
  %.041.us55.us78.us209 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.041.us55.us78.us209.ph, %.critedge.us60.us82.us.preheader ]
  %i.gm = add nsw i32 %.041.us55.us78.us209, %i.bt ; 2 uses
  %.not16.us62.us84.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us62.us84.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, !llvm.loop !3690

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03540 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !2009
  %i.hd = icmp eq i16 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20
  %i.he = add nsw i64 %.03540, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit122, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv155 to i32
  br label %.split.us

.split.us.loopexit110:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv152 to i32
  br label %.split.us

.split.us.loopexit112:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv149 to i32
  br label %.split.us

.split.us.loopexit122:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, %middle.block238, %.split.us.loopexit122, %.split.us.loopexit112, %.split.us.loopexit110, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit112 ], [ %i.hj, %.split.us.loopexit122 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit110 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader ], [ %i.db, %middle.block238 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20, %bb.s
  %.1 = phi i64 [ %.03540, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20 ], [ %i.he, %bb.s ], [ %.03540, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3690

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us60.us82.us, %.critedge.us48, %.critedge.us, %vector.body232, %.critedge.us.us98.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us98.us ], [ %i.bw, %vector.body232 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us48 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us60.us82.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !3020, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.038, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i26, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.y
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !368
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !137 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3049, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3714
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3714
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3717, !noalias !3714
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3714
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3056, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3057, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3058, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3059, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3060, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep194 = getelementptr [8 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv156 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next157, %.critedge.us.us ] ; 3 uses
  %.03641.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep195 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %indvars.iv156
  %i.cm = load i64, ptr %gep195, align 8, !tbaa !137
  %i.cn = icmp eq i64 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03641.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03641.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next157 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3720

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !137
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us99.us.lr.ph

.critedge.us.us99.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader
  %min.iters.check220 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check220, label %.critedge.us.us99.us.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %.critedge.us.us99.us.lr.ph
  %n.vec223 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec223 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert224 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat225 = shufflevector <32 x i32> %broadcast.splatinsert224, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert226 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat227 = shufflevector <32 x i32> %broadcast.splatinsert226, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat229 = shufflevector <32 x i32> %broadcast.splatinsert228, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat225, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction230 = add <32 x i32> %broadcast.splat229, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert231 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat232 = shufflevector <32 x i32> %broadcast.splatinsert231, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body.interim238, %vector.ph221
  %index234 = phi i64 [ 0, %vector.ph221 ], [ %index.next236, %vector.body.interim238 ]
  %vec.ind235 = phi <32 x i32> [ %induction230, %vector.ph221 ], [ %vec.ind.next237, %vector.body.interim238 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind235, %broadcast.splat225
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat227
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not245 = icmp eq i32 %i.dn, 0
  br i1 %.not245, label %vector.body.interim238, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim238:                           ; preds = %vector.body233
  %vec.ind.next237 = add <32 x i32> %vec.ind235, %broadcast.splat232
  %index.next236 = add nuw i64 %index234, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next236, %n.vec223
  br i1 %i.do, label %middle.block239, label %vector.body233, !llvm.loop !3721

middle.block239:                                  ; preds = %vector.body.interim238
  %cmp.n240 = icmp eq i64 %i.dc, %n.vec223
  br i1 %cmp.n240, label %.split.us, label %.critedge.us.us99.us.preheader

.critedge.us.us99.us.preheader:                   ; preds = %.critedge.us.us99.us.lr.ph, %middle.block239
  %.ph = phi i64 [ %i.dc, %.critedge.us.us99.us.lr.ph ], [ %i.de, %middle.block239 ]
  %.042.us.us95.us211.ph = phi i32 [ %i.bv, %.critedge.us.us99.us.lr.ph ], [ %i.dh, %middle.block239 ]
  br label %.critedge.us.us99.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us: ; preds = %.critedge.us.us99.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us99.us, !llvm.loop !3722

.critedge.us.us99.us:                             ; preds = %.critedge.us.us99.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us ], [ %.ph, %.critedge.us.us99.us.preheader ]
  %.042.us.us95.us211 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us ], [ %.042.us.us95.us211.ph, %.critedge.us.us99.us.preheader ]
  %i.ds = add nsw i32 %.042.us.us95.us211, %i.bt  ; 2 uses
  %.not16.us.us101.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us101.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us, !llvm.loop !3720

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep192 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03641.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep193 = getelementptr [4 x i8], ptr %invariant.gep192, i64 %indvars.iv153
  %i.dx = load i32, ptr %gep193, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !137
  %i.eb = icmp eq i64 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03641.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit111, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03641.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next154 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3720

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us49
  %indvars.iv150 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next151, %.critedge.us49 ] ; 3 uses
  %.03641.us45 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us50, %.critedge.us49 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv150, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us49, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %.0.i.i20.us48 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46 ]
  %i.fb = sext i32 %.0.i.i20.us48 to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !137
  %i.fe = icmp eq i64 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us49

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47
  %i.ff = add nsw i64 %.03641.us45, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit113, label %.critedge.us49

.critedge.us49:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47, %.lr.ph.split.split.us
  %.1.us50 = phi i64 [ %.03641.us45, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47 ], [ %i.ff, %bb.q ], [ %.03641.us45, %.lr.ph.split.split.us ]
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next151 to i32
  %.not16.us51 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us51, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3720

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !137
  %i.fr = icmp eq i64 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us61.us83.us.lr.ph

.critedge.us61.us83.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us61.us83.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us61.us83.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert212 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat213 = shufflevector <32 x i32> %broadcast.splatinsert212, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat215 = shufflevector <32 x i32> %broadcast.splatinsert214, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat215, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert216 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat217 = shufflevector <32 x i32> %broadcast.splatinsert216, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat213
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not244 = icmp eq i32 %i.gh, 0
  br i1 %.not244, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat217
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3723

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us61.us83.us.preheader

.critedge.us61.us83.us.preheader:                 ; preds = %.critedge.us61.us83.us.lr.ph, %middle.block
  %.ph254 = phi i64 [ %i.fw, %.critedge.us61.us83.us.lr.ph ], [ %i.fy, %middle.block ]
  %.042.us56.us79.us210.ph = phi i32 [ %i.bv, %.critedge.us61.us83.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us61.us83.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us: ; preds = %.critedge.us61.us83.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us61.us83.us, !llvm.loop !3724

.critedge.us61.us83.us:                           ; preds = %.critedge.us61.us83.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us ], [ %.ph254, %.critedge.us61.us83.us.preheader ]
  %.042.us56.us79.us210 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us ], [ %.042.us56.us79.us210.ph, %.critedge.us61.us83.us.preheader ]
  %i.gm = add nsw i32 %.042.us56.us79.us210, %i.bt ; 2 uses
  %.not16.us63.us85.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us63.us85.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us, !llvm.loop !3720

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03641 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !137
  %i.hd = icmp eq i64 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21
  %i.he = add nsw i64 %.03641, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit123, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv156 to i32
  br label %.split.us

.split.us.loopexit111:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv153 to i32
  br label %.split.us

.split.us.loopexit113:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv150 to i32
  br label %.split.us

.split.us.loopexit123:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader, %middle.block239, %.split.us.loopexit123, %.split.us.loopexit113, %.split.us.loopexit111, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit113 ], [ %i.hj, %.split.us.loopexit123 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit111 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader ], [ %i.db, %middle.block239 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.hv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21, %bb.s
  %.1 = phi i64 [ %.03641, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21 ], [ %i.he, %bb.s ], [ %.03641, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3720

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us61.us83.us, %.critedge.us49, %.critedge.us, %vector.body233, %.critedge.us.us99.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us99.us ], [ %i.bw, %vector.body233 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us49 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us61.us83.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !3058, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.039, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i27, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.iz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i25 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.y
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !368
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3094, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3095, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3096, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3097, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 9 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 13 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3098, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.critedge.us ], [ %i.cj, %.lr.ph.split.us ] ; 3 uses
  %.03641.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cm = add nsw i64 %indvars.iv130, %i.cl       ; 2 uses
  %i.cn = trunc nsw i64 %i.cm to i32
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.co = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cm
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us

bb.n:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.cs, %bb.m ], [ %i.ct, %bb.n ], [ %i.cn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cu = sext i32 %.0.i.i19.us to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cv
  %.0.copyload.i.i20.us = load i128, ptr %i.cw, align 1
  %i.cx = icmp eq i128 %.0.copyload.i.i20.us, %.0.copyload.i.i
  br i1 %i.cx, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us
  %i.cy = add nsw i64 %.03641.us, -1              ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us
  %.1.us = phi i64 [ %.03641.us, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us ], [ %i.cy, %bb.o ]
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, %i.ck ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next131 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.da
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3750

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !73
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.de = sext i32 %i.bv to i64
  %i.df = sext i32 %i.bt to i64
  %i.dg = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us50
  %indvars.iv127 = phi i64 [ %i.de, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next128, %.critedge.us50 ] ; 3 uses
  %.03641.us45 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us51, %.critedge.us50 ] ; 3 uses
  %i.dh = add nsw i64 %indvars.iv127, %i.dg       ; 4 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !137
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not.i.i.us = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.us, label %.critedge.us50, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46: ; preds = %.lr.ph.split.split.us
  %i.dp = trunc nsw i64 %i.dh to i32
  %i.dq = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %i.dr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47

bb.r:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %.0.i.i19.us48 = phi i32 [ %i.dv, %bb.q ], [ %i.dw, %bb.r ], [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46 ]
  %i.dx = sext i32 %.0.i.i19.us48 to i64
  %i.dy = shl nsw i64 %i.dx, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dy
  %.0.copyload.i.i20.us49 = load i128, ptr %i.dz, align 1
  %i.ea = icmp eq i128 %.0.copyload.i.i20.us49, %.0.copyload.i.i
  br i1 %i.ea, label %bb.s, label %.critedge.us50

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47
  %i.eb = add nsw i64 %.03641.us45, -1            ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.split.us.loopexit95, label %.critedge.us50

.critedge.us50:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47, %.lr.ph.split.split.us
  %.1.us51 = phi i64 [ %.03641.us45, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47 ], [ %i.eb, %bb.s ], [ %.03641.us45, %.lr.ph.split.split.us ]
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, %i.df ; 2 uses
  %i.ed = trunc nsw i64 %indvars.iv.next128 to i32
  %.not16.us52 = icmp eq i32 %i.bw, %i.ed
  br i1 %.not16.us52, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3750

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ee = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.eg = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.eh = and i64 %i.eg, 1
  %.not.i6.i.us = icmp eq i64 %i.eh, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.ei = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ej = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  %.0.copyload.i.i20.us62.us85 = load i128, ptr %i.em, align 1
  %i.en = icmp eq i128 %.0.copyload.i.i20.us62.us85, %.0.copyload.i.i
  br i1 %i.en, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.eo = trunc i64 %i.bu to i32
  %i.ep = add i32 %i.eo, -1
  %i.eq = mul i32 %i.bt, %i.ep
  %i.er = add i32 %i.bv, %i.eq                    ; 3 uses
  %i.es = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.split.us, label %.critedge.us63.us86.us.lr.ph

.critedge.us63.us86.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us86.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us86.us.lr.ph
  %n.vec = and i64 %i.es, -32                     ; 3 uses
  %i.eu = and i64 %i.es, 31
  %i.ev = trunc i64 %n.vec to i32
  %i.ew = mul i32 %i.bt, %i.ev
  %i.ex = add i32 %i.bv, %i.ew
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat169 = shufflevector <32 x i32> %broadcast.splatinsert168, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat171 = shufflevector <32 x i32> %broadcast.splatinsert170, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ey = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat171, %i.ey
  %i.ez = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert172 = insertelement <32 x i32> poison, i32 %i.ez, i64 0
  %broadcast.splat173 = shufflevector <32 x i32> %broadcast.splatinsert172, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fa = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.fb = icmp eq <32 x i32> %i.fa, %broadcast.splat169
  %i.fc = freeze <32 x i1> %i.fb
  %i.fd = bitcast <32 x i1> %i.fc to i32
  %.not175 = icmp eq i32 %i.fd, 0
  br i1 %.not175, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat173
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !3751

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us63.us86.us.preheader

.critedge.us63.us86.us.preheader:                 ; preds = %.critedge.us63.us86.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.es, %.critedge.us63.us86.us.lr.ph ], [ %i.eu, %middle.block ]
  %.042.us57.us81.us167.ph = phi i32 [ %i.bv, %.critedge.us63.us86.us.lr.ph ], [ %i.ex, %middle.block ]
  br label %.critedge.us63.us86.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us86.us
  %i.ff = add nsw i64 %i.fh, -1                   ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us, label %.critedge.us63.us86.us, !llvm.loop !3752

.critedge.us63.us86.us:                           ; preds = %.critedge.us63.us86.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.fh = phi i64 [ %i.ff, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph, %.critedge.us63.us86.us.preheader ]
  %.042.us57.us81.us167 = phi i32 [ %i.fi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.042.us57.us81.us167.ph, %.critedge.us63.us86.us.preheader ]
  %i.fi = add nsw i32 %.042.us57.us81.us167, %i.bt ; 2 uses
  %.not16.us65.us88.us = icmp eq i32 %i.fi, %i.bw
  br i1 %.not16.us65.us88.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3750

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fj = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.fk = sext i32 %i.bv to i64
  %i.fl = sext i32 %i.bt to i64
  %i.fm = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fj, i64 %i.fm
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fk, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03641 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fn = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !137
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  %.not.i7.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21: ; preds = %bb.t
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fw = sext i32 %i.fn to i64
  %i.fx = shl nsw i64 %i.fw, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx
  %.0.copyload.i.i20 = load i128, ptr %i.fy, align 1
  %i.fz = icmp eq i128 %.0.copyload.i.i20, %.0.copyload.i.i
  br i1 %i.fz, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21
  %i.ga = add nsw i64 %.03641, -1                 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.split.us.loopexit105, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gc = trunc nsw i64 %indvars.iv130 to i32
  br label %.split.us

.split.us.loopexit95:                             ; preds = %bb.s
  %i.gd = trunc nsw i64 %indvars.iv127 to i32
  br label %.split.us

.split.us.loopexit105:                            ; preds = %bb.u
  %i.ge = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %.split.us.loopexit105, %.split.us.loopexit95, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.ge, %.split.us.loopexit105 ], [ %i.gc, %.split.us.loopexit ], [ %i.gd, %.split.us.loopexit95 ], [ %i.er, %middle.block ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.gh = add nsw i32 %.us-phi, 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 144 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !341 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gg) ; 0 uses
  %.pre.i = load ptr, ptr %i.gj, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gn = phi ptr [ %i.gk, %.split.us ], [ %.pre.i, %bb.v ]
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.f
  store i64 %i.gi, ptr %i.go, align 8, !tbaa !137
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.gq, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gg, i32 noundef %i.gs, i1 noundef zeroext true)
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !362 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 44
  %i.gv = load i8, ptr %i.gu, align 4, !tbaa !363
  %i.gw = and i8 %i.gv, 2
  %.not.i3.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !368
  %i.gz = lshr i32 %1, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !30
  %i.hd = trunc i32 %1 to i8
  %i.he = and i8 %i.hd, 7
  %i.hf = shl nuw i8 1, %i.he
  %i.hg = or i8 %i.hc, %i.hf
  store i8 %i.hg, ptr %i.hb, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21, %bb.u
  %.1 = phi i64 [ %.03641, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21 ], [ %i.ga, %bb.u ], [ %.03641, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fl ; 2 uses
  %i.hh = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hh
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3750

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us86.us, %.critedge.us50, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us63.us86.us ], [ %i.bw, %.critedge.us50 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hi = load ptr, ptr %i.bj, align 8, !tbaa !3096, !nonnull !74, !align !497
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = icmp eq i32 %.039, %i.hj
  br i1 %i.hk, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 144 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !341 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.z:                                             ; preds = %bb.y
  %i.hq = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hm) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hn, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.z, %bb.y
  %i.hr = phi ptr [ %i.ho, %bb.y ], [ %.pre.i27, %bb.z ]
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.f
  store i64 0, ptr %i.hs, align 8, !tbaa !137
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.hu, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hm, i32 noundef %i.hw, i1 noundef zeroext true)
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !362 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 44
  %i.hz = load i8, ptr %i.hy, align 4, !tbaa !363
  %i.ia = and i8 %i.hz, 2
  %.not.i3.i25 = icmp eq i8 %i.ia, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.aa
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !368
  %i.id = lshr i32 %1, 3
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !30
  %i.ih = trunc i32 %1 to i8
  %i.ii = and i8 %i.ih, 7
  %i.ij = shl nuw i8 1, %i.ii
  %i.ik = or i8 %i.ig, %i.ij
  store i8 %i.ik, ptr %i.if, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3132, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3133, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 9 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 13 uses
  %.not1638 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1638, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3134, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = fcmp uno float %i.ad, 0.000000e+00      ; 4 uses
  %i.ch = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ci = trunc nuw i8 %i.ch to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ck = sext i32 %i.bv to i64
  %i.cl = sext i32 %i.bt to i64
  %i.cm = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.critedge.us ], [ %i.ck, %.lr.ph.split.us ] ; 3 uses
  %.03439.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv131, %i.cm       ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.ct, %bb.m ], [ %i.cu, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cv = sext i32 %.0.i.i19.us to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !2782 ; 2 uses
  %i.cy = fcmp uno float %i.cx, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cg, i1 false
  %i.cz = fcmp oeq float %i.cx, %i.ad
  %.0.i.i21.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cz
  br i1 %.0.i.i21.us, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us
  %i.da = add nsw i64 %.03439.us, -1              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us
  %.1.us = phi i64 [ %.03439.us, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us ], [ %i.da, %bb.o ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, %i.cl ; 2 uses
  %i.dc = trunc nsw i64 %indvars.iv.next132 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.dc
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3778

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.de = load i8, ptr %i.dd, align 1, !range !73
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.dg = sext i32 %i.bv to i64
  %i.dh = sext i32 %i.bt to i64
  %i.di = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us49
  %indvars.iv128 = phi i64 [ %i.dg, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next129, %.critedge.us49 ] ; 3 uses
  %.03439.us43 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us50, %.critedge.us49 ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv128, %i.di       ; 4 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !137
  %i.do = and i64 %i.dj, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.us, label %.critedge.us49, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44: ; preds = %.lr.ph.split.split.us
  %i.dr = trunc nsw i64 %i.dj to i32
  %i.ds = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %i.dt = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45

bb.r:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %.0.i.i19.us46 = phi i32 [ %i.dx, %bb.q ], [ %i.dy, %bb.r ], [ %i.dr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44 ]
  %i.dz = sext i32 %.0.i.i19.us46 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !2782 ; 2 uses
  %i.ec = fcmp uno float %i.eb, 0.000000e+00
  %or.cond.i.i.us47 = select i1 %i.ec, i1 %i.cg, i1 false
  %i.ed = fcmp oeq float %i.eb, %i.ad
  %.0.i.i21.us48 = select i1 %or.cond.i.i.us47, i1 true, i1 %i.ed
  br i1 %.0.i.i21.us48, label %bb.s, label %.critedge.us49

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45
  %i.ee = add nsw i64 %.03439.us43, -1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split.us.loopexit96, label %.critedge.us49

.critedge.us49:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45, %.lr.ph.split.split.us
  %.1.us50 = phi i64 [ %.03439.us43, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45 ], [ %i.ee, %bb.s ], [ %.03439.us43, %.lr.ph.split.split.us ]
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, %i.dh ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next129 to i32
  %.not16.us51 = icmp eq i32 %i.bw, %i.eg
  br i1 %.not16.us51, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3778

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.ek = and i64 %i.ej, 1
  %.not.i6.i.us = icmp eq i64 %i.ek, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !2782 ; 2 uses
  %i.eq = fcmp uno float %i.ep, 0.000000e+00
  %or.cond.i.i.us61.us85 = select i1 %i.eq, i1 %i.cg, i1 false
  %i.er = fcmp oeq float %i.ep, %i.ad
  %.0.i.i21.us62.us86 = select i1 %or.cond.i.i.us61.us85, i1 true, i1 %i.er
  br i1 %.0.i.i21.us62.us86, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.es = trunc i64 %i.bu to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.bt, %i.et
  %i.ev = add i32 %i.bv, %i.eu                    ; 3 uses
  %i.ew = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.split.us, label %.critedge.us63.us87.us.lr.ph

.critedge.us63.us87.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us87.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us87.us.lr.ph
  %n.vec = and i64 %i.ew, -32                     ; 3 uses
  %i.ey = and i64 %i.ew, 31
  %i.ez = trunc i64 %n.vec to i32
  %i.fa = mul i32 %i.bt, %i.ez
  %i.fb = add i32 %i.bv, %i.fa
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert169 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat170 = shufflevector <32 x i32> %broadcast.splatinsert169, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat172 = shufflevector <32 x i32> %broadcast.splatinsert171, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fc = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat172, %i.fc
  %i.fd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert173 = insertelement <32 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat174 = shufflevector <32 x i32> %broadcast.splatinsert173, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fe = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.ff = icmp eq <32 x i32> %i.fe, %broadcast.splat170
  %i.fg = freeze <32 x i1> %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not176 = icmp eq i32 %i.fh, 0
  br i1 %.not176, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3779

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us63.us87.us.preheader

.critedge.us63.us87.us.preheader:                 ; preds = %.critedge.us63.us87.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.ew, %.critedge.us63.us87.us.lr.ph ], [ %i.ey, %middle.block ]
  %.040.us56.us81.us168.ph = phi i32 [ %i.bv, %.critedge.us63.us87.us.lr.ph ], [ %i.fb, %middle.block ]
  br label %.critedge.us63.us87.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us87.us
  %i.fj = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split.us, label %.critedge.us63.us87.us, !llvm.loop !3780

.critedge.us63.us87.us:                           ; preds = %.critedge.us63.us87.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.fl = phi i64 [ %i.fj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph, %.critedge.us63.us87.us.preheader ]
  %.040.us56.us81.us168 = phi i32 [ %i.fm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.040.us56.us81.us168.ph, %.critedge.us63.us87.us.preheader ]
  %i.fm = add nsw i32 %.040.us56.us81.us168, %i.bt ; 2 uses
  %.not16.us65.us89.us = icmp eq i32 %i.fm, %i.bw
  br i1 %.not16.us65.us89.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3778

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.fo = sext i32 %i.bv to i64
  %i.fp = sext i32 %i.bt to i64
  %i.fq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03439 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !137
  %i.fw = and i64 %i.fs, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fv
  %.not.i7.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20: ; preds = %bb.t
  %i.fz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !2782 ; 2 uses
  %i.gd = fcmp uno float %i.gc, 0.000000e+00
  %or.cond.i.i = select i1 %i.gd, i1 %i.cg, i1 false
  %i.ge = fcmp oeq float %i.gc, %i.ad
  %.0.i.i21 = select i1 %or.cond.i.i, i1 true, i1 %i.ge
  br i1 %.0.i.i21, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20
  %i.gf = add nsw i64 %.03439, -1                 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.split.us.loopexit106, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gh = trunc nsw i64 %indvars.iv131 to i32
  br label %.split.us

.split.us.loopexit96:                             ; preds = %bb.s
  %i.gi = trunc nsw i64 %indvars.iv128 to i32
  br label %.split.us

.split.us.loopexit106:                            ; preds = %bb.u
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %.split.us.loopexit106, %.split.us.loopexit96, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.gj, %.split.us.loopexit106 ], [ %i.gh, %.split.us.loopexit ], [ %i.gi, %.split.us.loopexit96 ], [ %i.ev, %middle.block ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.gm = add nsw i32 %.us-phi, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !341 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gl) ; 0 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gs = phi ptr [ %i.gp, %.split.us ], [ %.pre.i, %bb.v ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.f
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.gv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, i32 noundef %i.gx, i1 noundef zeroext true)
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !362 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !363
  %i.hb = and i8 %i.ha, 2
  %.not.i3.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !368
  %i.he = lshr i32 %1, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !30
  %i.hi = trunc i32 %1 to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = shl nuw i8 1, %i.hj
  %i.hl = or i8 %i.hh, %i.hk
  store i8 %i.hl, ptr %i.hg, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20, %bb.u
  %.1 = phi i64 [ %.03439, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20 ], [ %i.gf, %bb.u ], [ %.03439, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fp ; 2 uses
  %i.hm = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hm
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3778

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us87.us, %.critedge.us49, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.037 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us63.us87.us ], [ %i.bw, %.critedge.us49 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hn = load ptr, ptr %i.bj, align 8, !tbaa !3132, !nonnull !74, !align !497
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = icmp eq i32 %.037, %i.ho
  br i1 %i.hp, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !341 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.z:                                             ; preds = %bb.y
  %i.hv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hr) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hs, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.z, %bb.y
  %i.hw = phi ptr [ %i.ht, %bb.y ], [ %.pre.i27, %bb.z ]
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.f
  store i64 0, ptr %i.hx, align 8, !tbaa !137
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.hz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hr, i32 noundef %i.ib, i1 noundef zeroext true)
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !362 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !363
  %i.if = and i8 %i.ie, 2
  %.not.i3.i25 = icmp eq i8 %i.if, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.aa
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !368
  %i.ii = lshr i32 %1, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !30
  %i.im = trunc i32 %1 to i8
  %i.in = and i8 %i.im, 7
  %i.io = shl nuw i8 1, %i.in
  %i.ip = or i8 %i.il, %i.io
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !30
end_hunk_16
begin_hunk_17_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3168, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3169, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 9 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 13 uses
  %.not1638 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1638, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3170, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = fcmp uno double %i.ad, 0.000000e+00     ; 4 uses
  %i.ch = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ci = trunc nuw i8 %i.ch to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ck = sext i32 %i.bv to i64
  %i.cl = sext i32 %i.bt to i64
  %i.cm = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.critedge.us ], [ %i.ck, %.lr.ph.split.us ] ; 3 uses
  %.03439.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv131, %i.cm       ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.ct, %bb.m ], [ %i.cu, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cv = sext i32 %.0.i.i19.us to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !2797 ; 2 uses
  %i.cy = fcmp uno double %i.cx, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cg, i1 false
  %i.cz = fcmp oeq double %i.cx, %i.ad
  %.0.i.i21.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cz
  br i1 %.0.i.i21.us, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us
  %i.da = add nsw i64 %.03439.us, -1              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us
  %.1.us = phi i64 [ %.03439.us, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us ], [ %i.da, %bb.o ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, %i.cl ; 2 uses
  %i.dc = trunc nsw i64 %indvars.iv.next132 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.dc
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3806

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.de = load i8, ptr %i.dd, align 1, !range !73
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.dg = sext i32 %i.bv to i64
  %i.dh = sext i32 %i.bt to i64
  %i.di = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us49
  %indvars.iv128 = phi i64 [ %i.dg, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next129, %.critedge.us49 ] ; 3 uses
  %.03439.us43 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us50, %.critedge.us49 ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv128, %i.di       ; 4 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !137
  %i.do = and i64 %i.dj, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.us, label %.critedge.us49, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44: ; preds = %.lr.ph.split.split.us
  %i.dr = trunc nsw i64 %i.dj to i32
  %i.ds = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %i.dt = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45

bb.r:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %.0.i.i19.us46 = phi i32 [ %i.dx, %bb.q ], [ %i.dy, %bb.r ], [ %i.dr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44 ]
  %i.dz = sext i32 %.0.i.i19.us46 to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !2797 ; 2 uses
  %i.ec = fcmp uno double %i.eb, 0.000000e+00
  %or.cond.i.i.us47 = select i1 %i.ec, i1 %i.cg, i1 false
  %i.ed = fcmp oeq double %i.eb, %i.ad
  %.0.i.i21.us48 = select i1 %or.cond.i.i.us47, i1 true, i1 %i.ed
  br i1 %.0.i.i21.us48, label %bb.s, label %.critedge.us49

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45
  %i.ee = add nsw i64 %.03439.us43, -1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split.us.loopexit96, label %.critedge.us49

.critedge.us49:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45, %.lr.ph.split.split.us
  %.1.us50 = phi i64 [ %.03439.us43, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45 ], [ %i.ee, %bb.s ], [ %.03439.us43, %.lr.ph.split.split.us ]
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, %i.dh ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next129 to i32
  %.not16.us51 = icmp eq i32 %i.bw, %i.eg
  br i1 %.not16.us51, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3806

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.ek = and i64 %i.ej, 1
  %.not.i6.i.us = icmp eq i64 %i.ek, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !2797 ; 2 uses
  %i.eq = fcmp uno double %i.ep, 0.000000e+00
  %or.cond.i.i.us61.us85 = select i1 %i.eq, i1 %i.cg, i1 false
  %i.er = fcmp oeq double %i.ep, %i.ad
  %.0.i.i21.us62.us86 = select i1 %or.cond.i.i.us61.us85, i1 true, i1 %i.er
  br i1 %.0.i.i21.us62.us86, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.es = trunc i64 %i.bu to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.bt, %i.et
  %i.ev = add i32 %i.bv, %i.eu                    ; 3 uses
  %i.ew = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.split.us, label %.critedge.us63.us87.us.lr.ph

.critedge.us63.us87.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us87.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us87.us.lr.ph
  %n.vec = and i64 %i.ew, -32                     ; 3 uses
  %i.ey = and i64 %i.ew, 31
  %i.ez = trunc i64 %n.vec to i32
  %i.fa = mul i32 %i.bt, %i.ez
  %i.fb = add i32 %i.bv, %i.fa
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert169 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat170 = shufflevector <32 x i32> %broadcast.splatinsert169, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat172 = shufflevector <32 x i32> %broadcast.splatinsert171, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fc = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat172, %i.fc
  %i.fd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert173 = insertelement <32 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat174 = shufflevector <32 x i32> %broadcast.splatinsert173, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fe = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.ff = icmp eq <32 x i32> %i.fe, %broadcast.splat170
  %i.fg = freeze <32 x i1> %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not176 = icmp eq i32 %i.fh, 0
  br i1 %.not176, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3807

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us63.us87.us.preheader

.critedge.us63.us87.us.preheader:                 ; preds = %.critedge.us63.us87.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.ew, %.critedge.us63.us87.us.lr.ph ], [ %i.ey, %middle.block ]
  %.040.us56.us81.us168.ph = phi i32 [ %i.bv, %.critedge.us63.us87.us.lr.ph ], [ %i.fb, %middle.block ]
  br label %.critedge.us63.us87.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us87.us
  %i.fj = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split.us, label %.critedge.us63.us87.us, !llvm.loop !3808

.critedge.us63.us87.us:                           ; preds = %.critedge.us63.us87.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.fl = phi i64 [ %i.fj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph, %.critedge.us63.us87.us.preheader ]
  %.040.us56.us81.us168 = phi i32 [ %i.fm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.040.us56.us81.us168.ph, %.critedge.us63.us87.us.preheader ]
  %i.fm = add nsw i32 %.040.us56.us81.us168, %i.bt ; 2 uses
  %.not16.us65.us89.us = icmp eq i32 %i.fm, %i.bw
  br i1 %.not16.us65.us89.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3806

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.fo = sext i32 %i.bv to i64
  %i.fp = sext i32 %i.bt to i64
  %i.fq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03439 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !137
  %i.fw = and i64 %i.fs, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fv
  %.not.i7.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20: ; preds = %bb.t
  %i.fz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !2797 ; 2 uses
  %i.gd = fcmp uno double %i.gc, 0.000000e+00
  %or.cond.i.i = select i1 %i.gd, i1 %i.cg, i1 false
  %i.ge = fcmp oeq double %i.gc, %i.ad
  %.0.i.i21 = select i1 %or.cond.i.i, i1 true, i1 %i.ge
  br i1 %.0.i.i21, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20
  %i.gf = add nsw i64 %.03439, -1                 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.split.us.loopexit106, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gh = trunc nsw i64 %indvars.iv131 to i32
  br label %.split.us

.split.us.loopexit96:                             ; preds = %bb.s
  %i.gi = trunc nsw i64 %indvars.iv128 to i32
  br label %.split.us

.split.us.loopexit106:                            ; preds = %bb.u
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %.split.us.loopexit106, %.split.us.loopexit96, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.gj, %.split.us.loopexit106 ], [ %i.gh, %.split.us.loopexit ], [ %i.gi, %.split.us.loopexit96 ], [ %i.ev, %middle.block ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.gm = add nsw i32 %.us-phi, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !341 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gl) ; 0 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gs = phi ptr [ %i.gp, %.split.us ], [ %.pre.i, %bb.v ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.f
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.gv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, i32 noundef %i.gx, i1 noundef zeroext true)
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !362 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !363
  %i.hb = and i8 %i.ha, 2
  %.not.i3.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !368
  %i.he = lshr i32 %1, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !30
  %i.hi = trunc i32 %1 to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = shl nuw i8 1, %i.hj
  %i.hl = or i8 %i.hh, %i.hk
  store i8 %i.hl, ptr %i.hg, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20, %bb.u
  %.1 = phi i64 [ %.03439, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20 ], [ %i.gf, %bb.u ], [ %.03439, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fp ; 2 uses
  %i.hm = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hm
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3806

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us87.us, %.critedge.us49, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.037 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us63.us87.us ], [ %i.bw, %.critedge.us49 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hn = load ptr, ptr %i.bj, align 8, !tbaa !3168, !nonnull !74, !align !497
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = icmp eq i32 %.037, %i.ho
  br i1 %i.hp, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !341 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.z:                                             ; preds = %bb.y
  %i.hv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hr) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hs, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.z, %bb.y
  %i.hw = phi ptr [ %i.ht, %bb.y ], [ %.pre.i27, %bb.z ]
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.f
  store i64 0, ptr %i.hx, align 8, !tbaa !137
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.hz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hr, i32 noundef %i.ib, i1 noundef zeroext true)
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !362 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !363
  %i.if = and i8 %i.ie, 2
  %.not.i3.i25 = icmp eq i8 %i.if, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.aa
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !368
  %i.ii = lshr i32 %1, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !30
  %i.im = trunc i32 %1 to i8
  %i.in = and i8 %i.im, 7
  %i.io = shl nuw i8 1, %i.in
  %i.ip = or i8 %i.il, %i.io
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !30
end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3281, !nonnull !74, !align !497
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 2 uses
  %i.bo = icmp sgt i64 %i.av, 0                   ; 3 uses
  %i.bp = add nsw i32 %i.bn, -1
  %i.bq = select i1 %i.bo, i32 0, i32 %i.bp
  store i32 %i.bq, ptr %i.bh, align 4, !tbaa !3
  %i.br = select i1 %i.bo, i32 %i.bn, i32 -1
  store i32 %i.br, ptr %i.bj, align 4, !tbaa !3
  %i.bs = select i1 %i.bo, i32 1, i32 -1          ; 9 uses
  store i32 %i.bs, ptr %i.bl, align 4, !tbaa !3
  %i.bt = tail call noundef i64 @llvm.abs.i64(i64 %i.av, i1 true) ; 6 uses
  %i.bu = load i32, ptr %i.bh, align 4, !tbaa !3  ; 9 uses
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !3  ; 13 uses
  %.not1647 = icmp eq i32 %i.bu, %i.bv
  br i1 %.not1647, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !3282, !nonnull !74, !align !275 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 59 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 2, !tbaa !338, !range !73, !noundef !74
  %i.cg = trunc nuw i8 %i.cf to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !487
  %i.ci = sext i32 %i.bu to i64
  %i.cj = sext i32 %i.bs to i64
  %i.ck = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.critedge.us ], [ %i.ci, %.lr.ph.split.us ] ; 3 uses
  %.04348.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bt, %.lr.ph.split.us ] ; 2 uses
  %i.cl = add nsw i64 %indvars.iv143, %i.ck       ; 2 uses
  %i.cm = trunc nsw i64 %i.cl to i32
  br i1 %i.cg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !339, !range !73, !noundef !74
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !331
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cl
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us

bb.n:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.ce, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i21.us = phi i32 [ %i.cr, %bb.m ], [ %i.cs, %bb.n ], [ %i.cm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.ct = sext i32 %.0.i.i21.us to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i22.us = load i64, ptr %i.cu, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.2.0.copyload.i24.us = load i64, ptr %.sroa.2.0..sroa_idx.i23.us, align 8, !tbaa !137
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i22.us, %.sroa.0.0.copyload.i
  %i.cw = icmp eq i64 %.sroa.2.0.copyload.i24.us, %.sroa.2.0.copyload.i
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us
  %i.cy = add nsw i64 %.04348.us, -1              ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us
  %.1.us = phi i64 [ %.04348.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us ], [ %i.cy, %bb.o ]
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, %i.cj ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next144 to i32
  %.not16.us = icmp eq i32 %i.bv, %i.da
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3886

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !73
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.de = sext i32 %i.bu to i64
  %i.df = sext i32 %i.bs to i64
  %i.dg = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us59
  %indvars.iv140 = phi i64 [ %i.de, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next141, %.critedge.us59 ] ; 3 uses
  %.04348.us52 = phi i64 [ %i.bt, %.lr.ph.split.split.us.preheader ], [ %.1.us60, %.critedge.us59 ] ; 3 uses
  %i.dh = add nsw i64 %indvars.iv140, %i.dg       ; 4 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !137
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not.i.i.us = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.us, label %.critedge.us59, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53: ; preds = %.lr.ph.split.split.us
  %i.dp = trunc nsw i64 %i.dh to i32
  %i.dq = load ptr, ptr %i.cc, align 8, !tbaa !487
  br i1 %i.cg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53
  %i.dr = load i8, ptr %i.ca, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cb, align 8, !tbaa !331
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54

bb.r:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.ce, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53
  %.0.i.i21.us55 = phi i32 [ %i.dv, %bb.q ], [ %i.dw, %bb.r ], [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53 ]
  %i.dx = sext i32 %.0.i.i21.us55 to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dx ; 2 uses
  %.sroa.0.0.copyload.i22.us56 = load i64, ptr %i.dy, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us57 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.2.0.copyload.i24.us58 = load i64, ptr %.sroa.2.0..sroa_idx.i23.us57, align 8, !tbaa !137
  %i.dz = icmp eq i64 %.sroa.0.0.copyload.i22.us56, %.sroa.0.0.copyload.i
  %i.ea = icmp eq i64 %.sroa.2.0.copyload.i24.us58, %.sroa.2.0.copyload.i
  %i.eb = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %i.eb, label %bb.s, label %.critedge.us59

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54
  %i.ec = add nsw i64 %.04348.us52, -1            ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit108, label %.critedge.us59

.critedge.us59:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54, %.lr.ph.split.split.us
  %.1.us60 = phi i64 [ %.04348.us52, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54 ], [ %i.ec, %bb.s ], [ %.04348.us52, %.lr.ph.split.split.us ]
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, %i.df ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next141 to i32
  %.not16.us61 = icmp eq i32 %i.bv, %i.ee
  br i1 %.not16.us61, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3886

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ef = load i8, ptr %i.ca, align 1, !tbaa !339, !range !73, !noundef !74
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.eh = load i64, ptr %i.bz, align 8, !tbaa !137
  %i.ei = and i64 %i.eh, 1
  %.not.i6.i.us = icmp eq i64 %i.ei, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.ej = load ptr, ptr %i.cc, align 8, !tbaa !487
  %i.ek = load i32, ptr %i.ce, align 8, !tbaa !488
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.el ; 2 uses
  %.sroa.0.0.copyload.i22.us71.us96 = load i64, ptr %i.em, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us72.us97 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.2.0.copyload.i24.us73.us98 = load i64, ptr %.sroa.2.0..sroa_idx.i23.us72.us97, align 8, !tbaa !137
  %i.en = icmp eq i64 %.sroa.0.0.copyload.i22.us71.us96, %.sroa.0.0.copyload.i
  %i.eo = icmp eq i64 %.sroa.2.0.copyload.i24.us73.us98, %.sroa.2.0.copyload.i
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.eq = trunc i64 %i.bt to i32
  %i.er = add i32 %i.eq, -1
  %i.es = mul i32 %i.bs, %i.er
  %i.et = add i32 %i.bu, %i.es                    ; 3 uses
  %i.eu = add nsw i64 %i.bt, -1                   ; 5 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.split.us, label %.critedge.us74.us99.us.lr.ph

.critedge.us74.us99.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bt, 33
  br i1 %min.iters.check, label %.critedge.us74.us99.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us74.us99.us.lr.ph
  %n.vec = and i64 %i.eu, -32                     ; 3 uses
  %i.ew = and i64 %i.eu, 31
  %i.ex = trunc i64 %n.vec to i32
  %i.ey = mul i32 %i.bs, %i.ex
  %i.ez = add i32 %i.bu, %i.ey
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert181 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat182 = shufflevector <32 x i32> %broadcast.splatinsert181, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <32 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat184 = shufflevector <32 x i32> %broadcast.splatinsert183, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fa = mul <32 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat184, %i.fa
  %i.fb = shl nsw i32 %i.bs, 5
  %broadcast.splatinsert185 = insertelement <32 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat186 = shufflevector <32 x i32> %broadcast.splatinsert185, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fc = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.fd = icmp eq <32 x i32> %i.fc, %broadcast.splat182
  %i.fe = freeze <32 x i1> %i.fd
  %i.ff = bitcast <32 x i1> %i.fe to i32
  %.not188 = icmp eq i32 %i.ff, 0
  br i1 %.not188, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat186
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !3887

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us74.us99.us.preheader

.critedge.us74.us99.us.preheader:                 ; preds = %.critedge.us74.us99.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.eu, %.critedge.us74.us99.us.lr.ph ], [ %i.ew, %middle.block ]
  %.049.us66.us92.us180.ph = phi i32 [ %i.bu, %.critedge.us74.us99.us.lr.ph ], [ %i.ez, %middle.block ]
  br label %.critedge.us74.us99.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us: ; preds = %.critedge.us74.us99.us
  %i.fh = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.split.us, label %.critedge.us74.us99.us, !llvm.loop !3888

.critedge.us74.us99.us:                           ; preds = %.critedge.us74.us99.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us
  %i.fj = phi i64 [ %i.fh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us ], [ %.ph, %.critedge.us74.us99.us.preheader ]
  %.049.us66.us92.us180 = phi i32 [ %i.fk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us ], [ %.049.us66.us92.us180.ph, %.critedge.us74.us99.us.preheader ]
  %i.fk = add nsw i32 %.049.us66.us92.us180, %i.bs ; 2 uses
  %.not16.us76.us101.us = icmp eq i32 %i.fk, %i.bv
  br i1 %.not16.us76.us101.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us, !llvm.loop !3886

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fl = load ptr, ptr %i.cb, align 8, !tbaa !331
  %i.fm = sext i32 %i.bu to i64
  %i.fn = sext i32 %i.bs to i64
  %i.fo = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fl, i64 %i.fo
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fm, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.04348 = phi i64 [ %i.bt, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fp = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !137
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  %.not.i7.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27: ; preds = %bb.t
  %i.fx = load ptr, ptr %i.cc, align 8, !tbaa !487
  %i.fy = sext i32 %i.fp to i64
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.fz, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !137
  %i.ga = icmp eq i64 %.sroa.0.0.copyload.i22, %.sroa.0.0.copyload.i
  %i.gb = icmp eq i64 %.sroa.2.0.copyload.i24, %.sroa.2.0.copyload.i
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %i.gc, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27
  %i.gd = add nsw i64 %.04348, -1                 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.split.us.loopexit118, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gf = trunc nsw i64 %indvars.iv143 to i32
  br label %.split.us

.split.us.loopexit108:                            ; preds = %bb.s
  %i.gg = trunc nsw i64 %indvars.iv140 to i32
  br label %.split.us

.split.us.loopexit118:                            ; preds = %bb.u
  %i.gh = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader, %middle.block, %.split.us.loopexit118, %.split.us.loopexit108, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.gh, %.split.us.loopexit118 ], [ %i.gf, %.split.us.loopexit ], [ %i.gg, %.split.us.loopexit108 ], [ %i.et, %middle.block ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.gk = add nsw i32 %.us-phi, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 144 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !341 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gp = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gj) ; 0 uses
  %.pre.i = load ptr, ptr %i.gm, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gq = phi ptr [ %i.gn, %.split.us ], [ %.pre.i, %bb.v ]
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.f
  store i64 %i.gl, ptr %i.gr, align 8, !tbaa !137
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !362
  %.not.i28 = icmp eq ptr %i.gt, null
  br i1 %.not.i28, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gj, i32 noundef %i.gv, i1 noundef zeroext true)
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !362 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !363
  %i.gz = and i8 %i.gy, 2
  %.not.i3.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !368
  %i.hc = lshr i32 %1, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !30
  %i.hg = trunc i32 %1 to i8
  %i.hh = and i8 %i.hg, 7
  %i.hi = shl nuw i8 1, %i.hh
  %i.hj = or i8 %i.hf, %i.hi
  store i8 %i.hj, ptr %i.he, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27, %bb.u
  %.1 = phi i64 [ %.04348, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27 ], [ %i.gd, %bb.u ], [ %.04348, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fn ; 2 uses
  %i.hk = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bv, %i.hk
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3886

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us74.us99.us, %.critedge.us59, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.046 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bu, %bb.k ], [ %i.bv, %.critedge.us74.us99.us ], [ %i.bv, %.critedge.us59 ], [ %i.bv, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bv, %vector.body ], [ %i.bv, %.lr.ph.split.split.split.us ], [ %i.bv, %.critedge.us ], [ %i.bv, %.critedge ]
  %i.hl = load ptr, ptr %i.bi, align 8, !tbaa !3280, !nonnull !74, !align !497
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = icmp eq i32 %.046, %i.hm
  br i1 %i.hn, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 144 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !341 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29

bb.z:                                             ; preds = %bb.y
  %i.ht = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hp) ; 0 uses
  %.pre.i33 = load ptr, ptr %i.hq, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29: ; preds = %bb.z, %bb.y
  %i.hu = phi ptr [ %i.hr, %bb.y ], [ %.pre.i33, %bb.z ]
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.f
  store i64 0, ptr %i.hv, align 8, !tbaa !137
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !362
  %.not.i30 = icmp eq ptr %i.hx, null
  br i1 %.not.i30, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hp, i32 noundef %i.hz, i1 noundef zeroext true)
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !362 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 44
  %i.ic = load i8, ptr %i.ib, align 4, !tbaa !363
  %i.id = and i8 %i.ic, 2
  %.not.i3.i31 = icmp eq i8 %i.id, 0
  br i1 %.not.i3.i31, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i32: ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !368
  %i.ig = lshr i32 %1, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !30
  %i.ik = trunc i32 %1 to i8
  %i.il = and i8 %i.ik, 7
  %i.im = shl nuw i8 1, %i.il
  %i.in = or i8 %i.ij, %i.im
end_hunk_18
