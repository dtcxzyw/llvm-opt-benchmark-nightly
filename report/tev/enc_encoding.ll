Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_encoding?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm:bb.a
  %i.uj = add nsw i64 %i.ug, %i.ui
  %i.uk = zext i32 %i.tx to i64
  %i.ul = mul nsw i64 %i.sn, %i.uk
  %i.um = add nsw i64 %i.uj, %i.ul
  %i.un = zext i32 %i.tz to i64
  %i.uo = mul nsw i64 %i.to, %i.un
  %i.up = add nsw i64 %i.um, %i.uo
  %i.uq = call noundef i64 @llvm.abs.i64(i64 %i.rq, i1 true)
  %i.ur = call noundef i64 @llvm.abs.i64(i64 %i.rn, i1 true)
  %i.us = icmp samesign ugt i64 %i.uq, %i.ur
  %spec.select.i.i = select i1 %i.us, i64 %i.rq, i64 %i.rn ; 2 uses
  %i.ut = call noundef i64 @llvm.abs.i64(i64 %i.rt, i1 true)
  %i.uu = call noundef i64 @llvm.abs.i64(i64 %spec.select.i.i, i1 true)
  %i.uv = icmp samesign ugt i64 %i.ut, %i.uu
  %.1.i.i = select i1 %i.uv, i64 %i.rt, i64 %spec.select.i.i ; 2 uses
  %i.uw = call noundef i64 @llvm.abs.i64(i64 %i.rx, i1 true)
  %i.ux = call noundef i64 @llvm.abs.i64(i64 %.1.i.i, i1 true)
  %i.uy = icmp samesign ugt i64 %i.uw, %i.ux
  %i.uz = trunc nsw i64 %.1.i.i to i32
  %i.va = select i1 %i.uy, i32 %i.rw, i32 %i.uz
  %i.vb = add i32 %i.ua, -1
  %i.vc = zext i32 %i.vb to i64
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !27, !noalias !634
  %i.vf = zext i32 %i.ve to i64
  %i.vg = mul nsw i64 %i.up, %i.vf
  %i.vh = ashr i64 %i.vg, 24                      ; 2 uses
  %i.vi = xor i64 %i.rn, %i.rq
  %i.vj = xor i64 %i.rt, %i.rq
  %i.vk = or i64 %i.vj, %i.vi
  %i.vl = icmp sgt i64 %i.vk, 0
  br i1 %i.vl, label %_ZN3jxl8weighted5State7PredictILb1EEElmmmlllllPNSt3__16vectorIiNS3_9allocatorIiEEEEm.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK3jxl8weighted5State15WeightedAverageEPKlNSt3__15arrayIjLm4EEE.exit.i
  %.sroa.speculated548.i = call i64 @llvm.smax.i64(i64 %i.rg, i64 %i.re)
  %.sroa.speculated530.i = call i64 @llvm.smax.i64(i64 %i.rf, i64 %.sroa.speculated548.i)
  %.sroa.speculated545.i = call i64 @llvm.smin.i64(i64 %i.re, i64 %i.rg)
  %.sroa.speculated527.i = call i64 @llvm.smin.i64(i64 %.sroa.speculated545.i, i64 %i.rf)
  %.sroa.speculated513.i = call i64 @llvm.smin.i64(i64 %i.vh, i64 %.sroa.speculated530.i)
  %.sroa.speculated510.i = call i64 @llvm.smax.i64(i64 %.sroa.speculated527.i, i64 %.sroa.speculated513.i)
  br label %_ZN3jxl8weighted5State7PredictILb1EEElmmmlllllPNSt3__16vectorIiNS3_9allocatorIiEEEEm.exit.i

_ZN3jxl8weighted5State7PredictILb1EEElmmmlllllPNSt3__16vectorIiNS3_9allocatorIiEEEEm.exit.i: ; preds = %bb.aw, %_ZNK3jxl8weighted5State15WeightedAverageEPKlNSt3__15arrayIjLm4EEE.exit.i
  %.0.in.in.i.i = phi i64 [ %.sroa.speculated510.i, %bb.aw ], [ %i.vh, %_ZNK3jxl8weighted5State15WeightedAverageEPKlNSt3__15arrayIjLm4EEE.exit.i ] ; 2 uses
  store i64 %.0.in.in.i.i, ptr %i.ee, align 8, !tbaa !149
  %.0.in.i.i = add nsw i64 %.0.in.in.i.i, 3
  %.0.i356.i = lshr i64 %.0.in.i.i, 3
  %i.vm = trunc i64 %.0.i356.i to i32
  %i.vn = call i32 @llvm.smax.i32(i32 %i.va, i32 -8192)
  %i.vo = call i32 @llvm.smin.i32(i32 %i.vn, i32 8191)
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr [2 x i8], ptr %i.hn, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 16384
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !29
  %i.vt = zext i16 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.0339627.i ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !27
  %i.vw = sub nsw i32 %i.vv, %i.vm                ; 2 uses
  %i.vx = shl i32 %i.vw, 1
  %.lobit.i.i = ashr i32 %i.vw, 31
  %i.vy = xor i32 %i.vx, %.lobit.i.i
  %.sroa.0457.0.insert.ext.i = shl nuw nsw i64 %i.vt, 1
  %.sroa.4458.0.insert.ext.i = zext i32 %i.vy to i64
  %.sroa.4458.0.insert.shift.i = shl nuw i64 %.sroa.4458.0.insert.ext.i, 32
  %.sroa.0457.0.insert.insert.i = or disjoint i64 %.sroa.4458.0.insert.shift.i, %.sroa.0457.0.insert.ext.i
  store i64 %.sroa.0457.0.insert.insert.i, ptr %.1628.i, align 4
  %i.vz = load i32, ptr %i.vu, align 4, !tbaa !27
  %i.wa = sext i32 %i.vz to i64
  %i.wb = load i64, ptr %i.gs, align 8, !tbaa !97 ; 4 uses
  %i.wc = add i64 %i.wb, 2                        ; 2 uses
  %i.wd = select i1 %.not.i355.i, i64 %i.wc, i64 0
  %i.we = select i1 %.not.i355.i, i64 0, i64 %i.wc ; 4 uses
  %i.wf = shl nsw i64 %i.wa, 3                    ; 5 uses
  %i.wg = load i64, ptr %i.ee, align 8, !tbaa !149
  %i.wh = sub nsw i64 %i.wg, %i.wf
  %i.wi = trunc i64 %i.wh to i32
  %i.wj = add i64 %i.wd, %.0339627.i              ; 5 uses
  %i.wk = load ptr, ptr %i.ea, align 8, !tbaa !40
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wj
  store i32 %i.wi, ptr %i.wl, align 4, !tbaa !27
  %i.wm = load i64, ptr %13, align 8, !tbaa !33
  %i.wn = sub nsw i64 %i.wm, %i.wf
  %i.wo = call noundef i64 @llvm.abs.i64(i64 %i.wn, i1 true)
  %i.wp = add nuw nsw i64 %i.wo, 3
  %i.wq = lshr i64 %i.wp, 3
  %i.wr = trunc i64 %i.wq to i32                  ; 2 uses
  %i.ws = load ptr, ptr %i.dx, align 8, !tbaa !139 ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.wj
  store i32 %i.wr, ptr %i.wt, align 4, !tbaa !27
  %i.wu = getelementptr [4 x i8], ptr %i.ws, i64 %i.we
  %i.wv = getelementptr [4 x i8], ptr %i.wu, i64 %.0339627.i
  %i.ww = getelementptr i8, ptr %i.wv, i64 4      ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !27
  %i.wy = add i32 %i.wx, %i.wr
  store i32 %i.wy, ptr %i.ww, align 4, !tbaa !27
  %i.wz = load i64, ptr %i.eb, align 8, !tbaa !33
  %i.xa = sub nsw i64 %i.wz, %i.wf
  %i.xb = call noundef i64 @llvm.abs.i64(i64 %i.xa, i1 true)
  %i.xc = add nuw nsw i64 %i.xb, 3
  %i.xd = lshr i64 %i.xc, 3
  %i.xe = trunc i64 %i.xd to i32                  ; 2 uses
  %i.xf = load ptr, ptr %i.ef, align 8, !tbaa !139 ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.wj
  store i32 %i.xe, ptr %i.xg, align 4, !tbaa !27
  %i.xh = getelementptr [4 x i8], ptr %i.xf, i64 %i.we
  %i.xi = getelementptr [4 x i8], ptr %i.xh, i64 %.0339627.i
  %i.xj = getelementptr i8, ptr %i.xi, i64 4      ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !27
  %i.xl = add i32 %i.xk, %i.xe
  store i32 %i.xl, ptr %i.xj, align 4, !tbaa !27
  %i.xm = load i64, ptr %i.ec, align 8, !tbaa !33
  %i.xn = sub nsw i64 %i.xm, %i.wf
  %i.xo = call noundef i64 @llvm.abs.i64(i64 %i.xn, i1 true)
  %i.xp = add nuw nsw i64 %i.xo, 3
  %i.xq = lshr i64 %i.xp, 3
  %i.xr = trunc i64 %i.xq to i32                  ; 2 uses
  %i.xs = load ptr, ptr %i.eg, align 8, !tbaa !139 ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.wj
  store i32 %i.xr, ptr %i.xt, align 4, !tbaa !27
  %i.xu = getelementptr [4 x i8], ptr %i.xs, i64 %i.we
  %i.xv = getelementptr [4 x i8], ptr %i.xu, i64 %.0339627.i
  %i.xw = getelementptr i8, ptr %i.xv, i64 4      ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !27
  %i.xy = add i32 %i.xx, %i.xr
  store i32 %i.xy, ptr %i.xw, align 4, !tbaa !27
  %i.xz = load i64, ptr %i.ed, align 8, !tbaa !33
  %i.ya = sub nsw i64 %i.xz, %i.wf
  %i.yb = call noundef i64 @llvm.abs.i64(i64 %i.ya, i1 true)
  %i.yc = add nuw nsw i64 %i.yb, 3
  %i.yd = lshr i64 %i.yc, 3
  %i.ye = trunc i64 %i.yd to i32                  ; 2 uses
  %i.yf = load ptr, ptr %i.eh, align 8, !tbaa !139 ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.wj
  store i32 %i.ye, ptr %i.yg, align 4, !tbaa !27
  %i.yh = getelementptr [4 x i8], ptr %i.yf, i64 %i.we
  %i.yi = getelementptr [4 x i8], ptr %i.yh, i64 %.0339627.i
  %i.yj = getelementptr i8, ptr %i.yi, i64 4      ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !27
  %i.yl = add i32 %i.yk, %i.ye
  store i32 %i.yl, ptr %i.yj, align 4, !tbaa !27
  %i.ym = getelementptr inbounds nuw i8, ptr %.1628.i, i64 8 ; 2 uses
  %i.yn = icmp ult i64 %i.ni, %i.wb
  br i1 %i.yn, label %bb.am, label %_ZN3jxl8weighted5State12UpdateErrorsElmmm.exit354._crit_edge.loopexit.i, !llvm.loop !587

bb.ax:                                            ; preds = %bb.af
  %i.yo = load ptr, ptr %i.es, align 8, !tbaa !635
  %i.yp = load ptr, ptr %11, align 8, !tbaa !211  ; 9 uses
  %i.yq = ptrtoint ptr %i.yo to i64
  %i.yr = ptrtoint ptr %i.yp to i64
  %i.ys = sub i64 %i.yq, %i.yr
  %i.yt = icmp eq i64 %i.ys, 24
  br i1 %i.yt, label %bb.ay, label %.thread588.i

bb.ay:                                            ; preds = %bb.ax
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !79 ; 6 uses
  %i.yw = icmp eq i32 %i.yv, 5
  br i1 %i.yw, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !79
  %i.yz = icmp eq i32 %i.yy, 1
  br i1 %i.yz, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.za = getelementptr inbounds nuw i8, ptr %i.yp, i64 20
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !79
  %i.zc = icmp ne i32 %i.zb, 0
  %or.cond9.i = or i1 %i.zc, %i.gn
  br i1 %or.cond9.i, label %bb.bc, label %.preheader616.preheader.i

.preheader616.preheader.i:                        ; preds = %bb.ba
  %i.zd = load i32, ptr %i.do, align 4, !tbaa !200 ; 2 uses
  %i.ze = zext i32 %i.zd to i64
  %.not.i360.i = icmp eq i32 %i.zd, 0
  br i1 %.not.i360.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.i, label %.lr.ph14.i361.i

.lr.ph651.i:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.2.i
  %i.zf = load i64, ptr %i.abr, align 8, !tbaa !122
  %i.zg = lshr i64 %i.zf, 2
  %i.zh = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.zi = sub nsw i64 0, %i.zg                    ; 2 uses
  %.pre853.i = load i64, ptr %i.gs, align 8, !tbaa !97
  br label %bb.bb

.lr.ph14.i361.i:                                  ; preds = %.preheader616.preheader.i
  %i.zj = load ptr, ptr %i.dp, align 8, !tbaa !141
  %i.zk = load i64, ptr %i.dq, align 8, !tbaa !122
  %i.zl = load i32, ptr %7, align 8, !tbaa !201   ; 3 uses
  %i.zm = zext i32 %i.zl to i64                   ; 3 uses
  %.not16.i362.i = icmp eq i32 %i.zl, 0
  br i1 %.not16.i362.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.i, label %.lr.ph.us.i363.i.preheader

.lr.ph.us.i363.i.preheader:                       ; preds = %.lr.ph14.i361.i
  %min.iters.check337 = icmp ult i32 %i.zl, 8
  %n.vec339 = and i64 %i.zm, 4294967288           ; 3 uses
  %cmp.n344 = icmp eq i64 %n.vec339, %i.zm
  br label %.lr.ph.us.i363.i

.lr.ph.us.i363.i:                                 ; preds = %.lr.ph.us.i363.i.preheader, %._crit_edge.us.i367.i
  %.01012.us.i364.i = phi i64 [ %i.zt, %._crit_edge.us.i367.i ], [ 0, %.lr.ph.us.i363.i.preheader ] ; 2 uses
  %i.zn = mul i64 %.01012.us.i364.i, %i.zk
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zn ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zo, i64 64) ]
  br i1 %min.iters.check337, label %scalar.ph336.preheader, label %vector.body340

vector.body340:                                   ; preds = %.lr.ph.us.i363.i, %vector.body340
  %index341 = phi i64 [ %index.next342, %vector.body340 ], [ 0, %.lr.ph.us.i363.i ] ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %index341 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store <4 x float> splat (float 2.550000e+02), ptr %i.zp, align 32, !tbaa !121
  store <4 x float> splat (float 2.550000e+02), ptr %i.zq, align 16, !tbaa !121
  %index.next342 = add nuw i64 %index341, 8       ; 2 uses
  %i.zr = icmp eq i64 %index.next342, %n.vec339
  br i1 %i.zr, label %middle.block343, label %vector.body340, !llvm.loop !588

middle.block343:                                  ; preds = %vector.body340
  br i1 %cmp.n344, label %._crit_edge.us.i367.i, label %scalar.ph336.preheader

scalar.ph336.preheader:                           ; preds = %.lr.ph.us.i363.i, %middle.block343
  %.011.us.i365.i.ph = phi i64 [ 0, %.lr.ph.us.i363.i ], [ %n.vec339, %middle.block343 ]
  br label %scalar.ph336.a

scalar.ph336.a:                                   ; preds = %scalar.ph336.preheader, %scalar.ph336.a
  %.011.us.i365.i = phi i64 [ %i.zs, %scalar.ph336.a ], [ %.011.us.i365.i.ph, %scalar.ph336.preheader ] ; 2 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %.011.us.i365.i
  store float 2.550000e+02, ptr %25, align 4, !tbaa !121
  %i.zs = add nuw nsw i64 %.011.us.i365.i, 1      ; 2 uses
  %exitcond.not.i366.i.a = icmp eq i64 %i.zs, %i.zm
  br i1 %exitcond.not.i366.i.a, label %._crit_edge.us.i367.i, label %scalar.ph336.a, !llvm.loop !589

._crit_edge.us.i367.i:                            ; preds = %scalar.ph336.a, %middle.block343
  %i.zt = add nuw nsw i64 %.01012.us.i364.i, 1    ; 2 uses
  %exitcond18.not.i368.i = icmp eq i64 %i.zt, %i.ze
  br i1 %exitcond18.not.i368.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.i, label %.lr.ph.us.i363.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.i: ; preds = %._crit_edge.us.i367.i, %.lr.ph14.i361.i, %.preheader616.preheader.i
  %i.zu = load i32, ptr %i.dr, align 4, !tbaa !200 ; 3 uses
  %i.zv = zext i32 %i.zu to i64                   ; 2 uses
  %.not.i360.1.i = icmp eq i32 %i.zu, 0
  br i1 %.not.i360.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i, label %.lr.ph14.i361.1.i

.lr.ph14.i361.1.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.i
  %i.zw = load ptr, ptr %i.ds, align 8, !tbaa !141 ; 9 uses
  %i.zx = load i64, ptr %i.dt, align 8, !tbaa !122 ; 9 uses
  %i.zy = load i32, ptr %i.dg, align 8, !tbaa !201 ; 2 uses
  %.not16.i362.1.i = icmp eq i32 %i.zy, 0
  br i1 %.not16.i362.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i, label %.lr.ph.us.i363.1.i.preheader

.lr.ph.us.i363.1.i.preheader:                     ; preds = %.lr.ph14.i361.1.i
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = shl nuw nsw i64 %i.zz, 2               ; 9 uses
  %xtraiter429 = and i64 %i.zv, 7                 ; 3 uses
  %i.aab = icmp ult i32 %i.zu, 8
  br i1 %i.aab, label %.lr.ph.us.i363.1.i.epil.preheader, label %.lr.ph.us.i363.1.i.preheader.new

.lr.ph.us.i363.1.i.preheader.new:                 ; preds = %.lr.ph.us.i363.1.i.preheader
  %unroll_iter433 = and i64 %i.zv, 4294967288
  br label %.lr.ph.us.i363.1.i

.lr.ph.us.i363.1.i:                               ; preds = %.lr.ph.us.i363.1.i, %.lr.ph.us.i363.1.i.preheader.new
  %.01012.us.i364.1.i = phi i64 [ 0, %.lr.ph.us.i363.1.i.preheader.new ], [ %i.aaz, %.lr.ph.us.i363.1.i ] ; 9 uses
  %niter434 = phi i64 [ 0, %.lr.ph.us.i363.1.i.preheader.new ], [ %niter434.next.7, %.lr.ph.us.i363.1.i ]
  %i.aac = mul i64 %.01012.us.i364.1.i, %i.zx
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aac ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aad, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aad, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aae = or disjoint i64 %.01012.us.i364.1.i, 1
  %i.aaf = mul i64 %i.aae, %i.zx
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aaf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aag, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aag, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aah = or disjoint i64 %.01012.us.i364.1.i, 2
  %i.aai = mul i64 %i.aah, %i.zx
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aai ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aaj, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aaj, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aak = or disjoint i64 %.01012.us.i364.1.i, 3
  %i.aal = mul i64 %i.aak, %i.zx
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aal ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aam, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aam, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aan = or disjoint i64 %.01012.us.i364.1.i, 4
  %i.aao = mul i64 %i.aan, %i.zx
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aao ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aap, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aap, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aaq = or disjoint i64 %.01012.us.i364.1.i, 5
  %i.aar = mul i64 %i.aaq, %i.zx
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aar ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aas, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aas, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aat = or disjoint i64 %.01012.us.i364.1.i, 6
  %i.aau = mul i64 %i.aat, %i.zx
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aau ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aav, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aav, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aaw = or disjoint i64 %.01012.us.i364.1.i, 7
  %i.aax = mul i64 %i.aaw, %i.zx
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aax ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aay, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aay, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.aaz = add nuw nsw i64 %.01012.us.i364.1.i, 8 ; 2 uses
  %niter434.next.7 = add i64 %niter434, 8         ; 2 uses
  %niter434.ncmp.7 = icmp eq i64 %niter434.next.7, %unroll_iter433
  br i1 %niter434.ncmp.7, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i.loopexit.unr-lcssa, label %.lr.ph.us.i363.1.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i363.1.i
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i, label %.lr.ph.us.i363.1.i.epil.preheader

.lr.ph.us.i363.1.i.epil.preheader:                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i.loopexit.unr-lcssa, %.lr.ph.us.i363.1.i.preheader
  %.01012.us.i364.1.i.epil.init = phi i64 [ 0, %.lr.ph.us.i363.1.i.preheader ], [ %i.aaz, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i.loopexit.unr-lcssa ]
  %lcmp.mod432 = icmp ne i64 %xtraiter429, 0
  call void @llvm.assume(i1 %lcmp.mod432)
  br label %.lr.ph.us.i363.1.i.epil

.lr.ph.us.i363.1.i.epil:                          ; preds = %.lr.ph.us.i363.1.i.epil, %.lr.ph.us.i363.1.i.epil.preheader
  %.01012.us.i364.1.i.epil = phi i64 [ %i.abc, %.lr.ph.us.i363.1.i.epil ], [ %.01012.us.i364.1.i.epil.init, %.lr.ph.us.i363.1.i.epil.preheader ] ; 2 uses
  %epil.iter430 = phi i64 [ %epil.iter430.next, %.lr.ph.us.i363.1.i.epil ], [ 0, %.lr.ph.us.i363.1.i.epil.preheader ]
  %i.aba = mul i64 %.01012.us.i364.1.i.epil, %i.zx
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.aba ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abb, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.abb, i8 0, i64 %i.aaa, i1 false), !tbaa !121
  %i.abc = add nuw nsw i64 %.01012.us.i364.1.i.epil, 1
  %epil.iter430.next = add i64 %epil.iter430, 1   ; 2 uses
  %epil.iter430.cmp.not = icmp eq i64 %epil.iter430.next, %xtraiter429
  br i1 %epil.iter430.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i, label %.lr.ph.us.i363.1.i.epil, !llvm.loop !590

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i.loopexit.unr-lcssa, %.lr.ph.us.i363.1.i.epil, %.lr.ph14.i361.1.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.i
  %i.abd = load i32, ptr %i.du, align 4, !tbaa !200 ; 2 uses
  %i.abe = zext i32 %i.abd to i64
  %.not.i360.2.i = icmp eq i32 %i.abd, 0
  br i1 %.not.i360.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.2.i, label %.lr.ph14.i361.2.i

.lr.ph14.i361.2.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i
  %i.abf = load ptr, ptr %i.dv, align 8, !tbaa !141
  %i.abg = load i64, ptr %i.dw, align 8, !tbaa !122
  %i.abh = load i32, ptr %i.dj, align 8, !tbaa !201 ; 3 uses
  %i.abi = zext i32 %i.abh to i64                 ; 3 uses
  %.not16.i362.2.i = icmp eq i32 %i.abh, 0
  br i1 %.not16.i362.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.2.i, label %.lr.ph.us.i363.2.i.preheader

.lr.ph.us.i363.2.i.preheader:                     ; preds = %.lr.ph14.i361.2.i
  %min.iters.check327 = icmp ult i32 %i.abh, 8
  %n.vec329 = and i64 %i.abi, 4294967288          ; 3 uses
  %cmp.n334 = icmp eq i64 %n.vec329, %i.abi
  br label %.lr.ph.us.i363.2.i

.lr.ph.us.i363.2.i:                               ; preds = %.lr.ph.us.i363.2.i.preheader, %._crit_edge.us.i367.2.i
  %.01012.us.i364.2.i = phi i64 [ %i.abq, %._crit_edge.us.i367.2.i ], [ 0, %.lr.ph.us.i363.2.i.preheader ] ; 2 uses
  %i.abj = mul i64 %.01012.us.i364.2.i, %i.abg
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abj ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abk, i64 64) ]
  br i1 %min.iters.check327, label %scalar.ph326.preheader, label %vector.body330

vector.body330:                                   ; preds = %.lr.ph.us.i363.2.i, %vector.body330
  %index331 = phi i64 [ %index.next332, %vector.body330 ], [ 0, %.lr.ph.us.i363.2.i ] ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %index331 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  store <4 x float> splat (float 2.550000e+02), ptr %i.abl, align 32, !tbaa !121
  store <4 x float> splat (float 2.550000e+02), ptr %i.abm, align 16, !tbaa !121
  %index.next332 = add nuw i64 %index331, 8       ; 2 uses
  %i.abn = icmp eq i64 %index.next332, %n.vec329
  br i1 %i.abn, label %middle.block333, label %vector.body330, !llvm.loop !591

middle.block333:                                  ; preds = %vector.body330
  br i1 %cmp.n334, label %._crit_edge.us.i367.2.i, label %scalar.ph326.preheader

scalar.ph326.preheader:                           ; preds = %.lr.ph.us.i363.2.i, %middle.block333
  %.011.us.i365.2.i.ph = phi i64 [ 0, %.lr.ph.us.i363.2.i ], [ %n.vec329, %middle.block333 ]
  br label %scalar.ph326

scalar.ph326:                                     ; preds = %scalar.ph326.preheader, %scalar.ph326
  %.011.us.i365.2.i = phi i64 [ %i.abp, %scalar.ph326 ], [ %.011.us.i365.2.i.ph, %scalar.ph326.preheader ] ; 2 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abk, i64 %.011.us.i365.2.i
  store float 2.550000e+02, ptr %i.abo, align 4, !tbaa !121
  %i.abp = add nuw nsw i64 %.011.us.i365.2.i, 1   ; 2 uses
  %exitcond.not.i366.2.i = icmp eq i64 %i.abp, %i.abi
  br i1 %exitcond.not.i366.2.i, label %._crit_edge.us.i367.2.i, label %scalar.ph326, !llvm.loop !592

._crit_edge.us.i367.2.i:                          ; preds = %scalar.ph326, %middle.block333
  %i.abq = add nuw nsw i64 %.01012.us.i364.2.i, 1 ; 2 uses
  %exitcond18.not.i368.2.i = icmp eq i64 %i.abq, %i.abe
  br i1 %exitcond18.not.i368.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.2.i, label %.lr.ph.us.i363.2.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.2.i: ; preds = %._crit_edge.us.i367.2.i, %.lr.ph14.i361.2.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit369.1.i
  %i.abr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.abs = load i64, ptr %i.gu, align 8, !tbaa !98
  %.not725.i = icmp eq i64 %i.abs, 0
  br i1 %.not725.i, label %.loopexit.i, label %.lr.ph651.i

bb.bb:                                            ; preds = %._crit_edge.i, %.lr.ph651.i
  %i.abt = phi i64 [ %.pre853.i, %.lr.ph651.i ], [ %i.adj, %._crit_edge.i ]
  %.2649.i = phi ptr [ %.0131, %.lr.ph651.i ], [ %.3.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.0344648.i = phi i64 [ 0, %.lr.ph651.i ], [ %i.adk, %._crit_edge.i ] ; 3 uses
  %i.abu = load ptr, ptr %i.zh, align 8, !tbaa !141
  %i.abv = load i64, ptr %i.abr, align 8, !tbaa !122
  %i.abw = mul i64 %i.abv, %.0344648.i
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.abw ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abx, i64 64) ]
  %.not726.i = icmp eq i64 %i.abt, 0
  br i1 %.not726.i, label %._crit_edge.i, label %.lr.ph642.i

.lr.ph642.i:                                      ; preds = %bb.bb
  %.not605.i = icmp eq i64 %.0344648.i, 0
  %invariant.gep644.i = getelementptr [4 x i8], ptr %i.abx, i64 %i.zi ; 2 uses
  br i1 %.not605.i, label %.thread574.us.peel.i, label %.thread574.peel.i

.thread574.peel.i:                                ; preds = %.lr.ph642.i
  %i.aby = load i32, ptr %invariant.gep644.i, align 4, !tbaa !27
  %i.abz = load i32, ptr %i.abx, align 64, !tbaa !27
  %i.aca = sub nsw i32 %i.abz, %i.aby             ; 2 uses
  %i.acb = load ptr, ptr %11, align 8, !tbaa !211
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !213
  %i.ace = shl i32 %i.aca, 1
  %.lobit.i370.peel.i = ashr i32 %i.aca, 31
  %i.acf = xor i32 %i.ace, %.lobit.i370.peel.i
  %i.acg = shl i32 %i.acd, 1
  %i.ach = getelementptr inbounds nuw i8, ptr %.2649.i, i64 8 ; 2 uses
  %.sroa.4456.0.insert.ext.peel.i = zext i32 %i.acf to i64
  %.sroa.4456.0.insert.shift.peel.i = shl nuw i64 %.sroa.4456.0.insert.ext.peel.i, 32
  %.sroa.0455.0.insert.ext.peel.i = zext i32 %i.acg to i64
  %.sroa.0455.0.insert.insert.peel.i = or disjoint i64 %.sroa.4456.0.insert.shift.peel.i, %.sroa.0455.0.insert.ext.peel.i
  store i64 %.sroa.0455.0.insert.insert.peel.i, ptr %.2649.i, align 4
  %i.aci = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.acj = icmp ugt i64 %i.aci, 1
  br i1 %i.acj, label %.thread574.i, label %._crit_edge.i

.thread574.us.peel.i:                             ; preds = %.lr.ph642.i
  %i.ack = load i32, ptr %i.abx, align 64, !tbaa !27 ; 2 uses
  %i.acl = load ptr, ptr %11, align 8, !tbaa !211
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !213
  %i.aco = shl i32 %i.ack, 1
  %.lobit.i370.us.peel.i = ashr i32 %i.ack, 31
  %i.acp = xor i32 %i.aco, %.lobit.i370.us.peel.i
  %i.acq = shl i32 %i.acn, 1
  %i.acr = getelementptr inbounds nuw i8, ptr %.2649.i, i64 8 ; 2 uses
  %.sroa.4456.0.insert.ext.us.peel.i = zext i32 %i.acp to i64
  %.sroa.4456.0.insert.shift.us.peel.i = shl nuw i64 %.sroa.4456.0.insert.ext.us.peel.i, 32
  %.sroa.0455.0.insert.ext.us.peel.i = zext i32 %i.acq to i64
  %.sroa.0455.0.insert.insert.us.peel.i = or disjoint i64 %.sroa.4456.0.insert.shift.us.peel.i, %.sroa.0455.0.insert.ext.us.peel.i
  store i64 %.sroa.0455.0.insert.insert.us.peel.i, ptr %.2649.i, align 4
  %i.acs = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.act = icmp ugt i64 %i.acs, 1
  br i1 %i.act, label %.thread574.us.i, label %._crit_edge.i

.thread574.us.i:                                  ; preds = %.thread574.us.peel.i, %.thread574.us.i
  %.3641.us.i = phi ptr [ %i.adf, %.thread574.us.i ], [ %i.acr, %.thread574.us.peel.i ] ; 2 uses
  %.0343640.us.i = phi i64 [ %i.adg, %.thread574.us.i ], [ 1, %.thread574.us.peel.i ] ; 2 uses
  %i.acu = getelementptr [4 x i8], ptr %i.abx, i64 %.0343640.us.i ; 2 uses
  %i.acv = getelementptr i8, ptr %i.acu, i64 -4
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !27
  %i.acx = load i32, ptr %i.acu, align 4, !tbaa !27
  %i.acy = sub nsw i32 %i.acx, %i.acw             ; 2 uses
  %i.acz = load ptr, ptr %11, align 8, !tbaa !211
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !213
  %i.adc = shl i32 %i.acy, 1
  %.lobit.i370.us.i = ashr i32 %i.acy, 31
  %i.add = xor i32 %i.adc, %.lobit.i370.us.i
  %i.ade = shl i32 %i.adb, 1
  %i.adf = getelementptr inbounds nuw i8, ptr %.3641.us.i, i64 8 ; 2 uses
  %.sroa.4456.0.insert.ext.us.i = zext i32 %i.add to i64
  %.sroa.4456.0.insert.shift.us.i = shl nuw i64 %.sroa.4456.0.insert.ext.us.i, 32
  %.sroa.0455.0.insert.ext.us.i = zext i32 %i.ade to i64
  %.sroa.0455.0.insert.insert.us.i = or disjoint i64 %.sroa.4456.0.insert.shift.us.i, %.sroa.0455.0.insert.ext.us.i
  store i64 %.sroa.0455.0.insert.insert.us.i, ptr %.3641.us.i, align 4
  %i.adg = add nuw i64 %.0343640.us.i, 1          ; 2 uses
  %i.adh = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.adi = icmp ult i64 %i.adg, %i.adh
  br i1 %i.adi, label %.thread574.us.i, label %._crit_edge.i, !llvm.loop !593

._crit_edge.i:                                    ; preds = %.thread574.i, %.thread574.us.i, %.thread574.us.peel.i, %.thread574.peel.i, %bb.bb
  %i.adj = phi i64 [ 0, %bb.bb ], [ %i.adh, %.thread574.us.i ], [ %i.acs, %.thread574.us.peel.i ], [ %i.aci, %.thread574.peel.i ], [ %i.aej, %.thread574.i ]
  %.3.lcssa.i = phi ptr [ %.2649.i, %bb.bb ], [ %i.adf, %.thread574.us.i ], [ %i.acr, %.thread574.us.peel.i ], [ %i.ach, %.thread574.peel.i ], [ %i.aeh, %.thread574.i ] ; 2 uses
  %i.adk = add nuw i64 %.0344648.i, 1             ; 2 uses
  %i.adl = load i64, ptr %i.gu, align 8, !tbaa !98
  %i.adm = icmp ult i64 %i.adk, %i.adl
  br i1 %i.adm, label %bb.bb, label %.loopexit.i, !llvm.loop !594

.thread574.i:                                     ; preds = %.thread574.peel.i, %.thread574.i
  %.3641.i = phi ptr [ %i.aeh, %.thread574.i ], [ %i.ach, %.thread574.peel.i ] ; 2 uses
  %.0343640.i = phi i64 [ %i.aei, %.thread574.i ], [ 1, %.thread574.peel.i ] ; 3 uses
  %i.adn = getelementptr [4 x i8], ptr %i.abx, i64 %.0343640.i ; 2 uses
  %i.ado = getelementptr i8, ptr %i.adn, i64 -4   ; 2 uses
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.ado, i64 %i.zi
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !27 ; 3 uses
  %gep645.i = getelementptr [4 x i8], ptr %invariant.gep644.i, i64 %.0343640.i
  %i.adr = load i32, ptr %gep645.i, align 4, !tbaa !27 ; 3 uses
  %i.ads = load i32, ptr %i.ado, align 4, !tbaa !27 ; 3 uses
  %.sroa.speculated499.i = call i32 @llvm.smin.i32(i32 %i.ads, i32 %i.adr) ; 2 uses
  %.sroa.speculated496.i = call i32 @llvm.smax.i32(i32 %i.adr, i32 %i.ads) ; 2 uses
  %i.adt = sub i32 %i.adr, %i.adq
  %i.adu = add i32 %i.adt, %i.ads
  %i.adv = icmp slt i32 %i.adq, %.sroa.speculated499.i
  %i.adw = select i1 %i.adv, i32 %.sroa.speculated496.i, i32 %i.adu
  %i.adx = icmp sgt i32 %i.adq, %.sroa.speculated496.i
  %i.ady = select i1 %i.adx, i32 %.sroa.speculated499.i, i32 %i.adw
  %i.adz = load i32, ptr %i.adn, align 4, !tbaa !27
  %i.aea = sub nsw i32 %i.adz, %i.ady             ; 2 uses
  %i.aeb = load ptr, ptr %11, align 8, !tbaa !211
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !213
  %i.aee = shl i32 %i.aea, 1
  %.lobit.i370.i = ashr i32 %i.aea, 31
  %i.aef = xor i32 %i.aee, %.lobit.i370.i
  %i.aeg = shl i32 %i.aed, 1
  %i.aeh = getelementptr inbounds nuw i8, ptr %.3641.i, i64 8 ; 2 uses
  %.sroa.4456.0.insert.ext.i = zext i32 %i.aef to i64
  %.sroa.4456.0.insert.shift.i = shl nuw i64 %.sroa.4456.0.insert.ext.i, 32
  %.sroa.0455.0.insert.ext.i = zext i32 %i.aeg to i64
  %.sroa.0455.0.insert.insert.i = or disjoint i64 %.sroa.4456.0.insert.shift.i, %.sroa.0455.0.insert.ext.i
  store i64 %.sroa.0455.0.insert.insert.i, ptr %.3641.i, align 4
  %i.aei = add nuw i64 %.0343640.i, 1             ; 2 uses
  %i.aej = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.aek = icmp ult i64 %i.aei, %i.aej
  br i1 %i.aek, label %.thread574.i, label %._crit_edge.i, !llvm.loop !595

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  br i1 %.not12.i, label %bb.be, label %.preheader614.i

.thread588.i:                                     ; preds = %bb.ax
  br i1 %.not12.i, label %.thread591.i, label %.preheader614.i

.preheader614.i:                                  ; preds = %.thread588.i, %bb.bc
  %i.ael = load i32, ptr %i.do, align 4, !tbaa !200 ; 2 uses
  %i.aem = zext i32 %i.ael to i64
  %.not.i371.i = icmp eq i32 %i.ael, 0
  br i1 %.not.i371.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.i, label %.lr.ph14.i372.i

.lr.ph668.i:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i
  %i.aen = load i64, ptr %i.aha, align 8, !tbaa !122
  %i.aeo = lshr i64 %i.aen, 2
  %i.aep = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.aeq = sub nsw i64 0, %i.aeo                  ; 2 uses
  %.pre854.i = load i64, ptr %i.gs, align 8, !tbaa !97
  %i.aer = getelementptr inbounds nuw i8, ptr %i.hn, i64 16384
  br label %bb.bd

.lr.ph14.i372.i:                                  ; preds = %.preheader614.i
  %i.aes = load ptr, ptr %i.dp, align 8, !tbaa !141
  %i.aet = load i64, ptr %i.dq, align 8, !tbaa !122
  %i.aeu = load i32, ptr %7, align 8, !tbaa !201  ; 3 uses
  %i.aev = zext i32 %i.aeu to i64                 ; 3 uses
  %.not16.i373.i = icmp eq i32 %i.aeu, 0
  br i1 %.not16.i373.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.i, label %.lr.ph.us.i374.i.preheader

.lr.ph.us.i374.i.preheader:                       ; preds = %.lr.ph14.i372.i
  %min.iters.check317 = icmp ult i32 %i.aeu, 8
  %n.vec319 = and i64 %i.aev, 4294967288          ; 3 uses
  %cmp.n324 = icmp eq i64 %n.vec319, %i.aev
  br label %.lr.ph.us.i374.i

.lr.ph.us.i374.i:                                 ; preds = %.lr.ph.us.i374.i.preheader, %._crit_edge.us.i378.i
  %.01012.us.i375.i = phi i64 [ %i.afc, %._crit_edge.us.i378.i ], [ 0, %.lr.ph.us.i374.i.preheader ] ; 2 uses
  %i.aew = mul i64 %.01012.us.i375.i, %i.aet
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.aew ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aex, i64 64) ]
  br i1 %min.iters.check317, label %scalar.ph316.preheader, label %vector.body320

vector.body320:                                   ; preds = %.lr.ph.us.i374.i, %vector.body320
  %index321 = phi i64 [ %index.next322, %vector.body320 ], [ 0, %.lr.ph.us.i374.i ] ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %index321 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store <4 x float> splat (float 2.550000e+02), ptr %i.aey, align 32, !tbaa !121
  store <4 x float> splat (float 2.550000e+02), ptr %i.aez, align 16, !tbaa !121
  %index.next322 = add nuw i64 %index321, 8       ; 2 uses
  %i.afa = icmp eq i64 %index.next322, %n.vec319
  br i1 %i.afa, label %middle.block323, label %vector.body320, !llvm.loop !596

middle.block323:                                  ; preds = %vector.body320
  br i1 %cmp.n324, label %._crit_edge.us.i378.i, label %scalar.ph316.preheader

scalar.ph316.preheader:                           ; preds = %.lr.ph.us.i374.i, %middle.block323
  %.011.us.i376.i.ph = phi i64 [ 0, %.lr.ph.us.i374.i ], [ %n.vec319, %middle.block323 ]
  br label %scalar.ph316.a

scalar.ph316.a:                                   ; preds = %scalar.ph316.preheader, %scalar.ph316.a
  %.011.us.i376.i = phi i64 [ %i.afb, %scalar.ph316.a ], [ %.011.us.i376.i.ph, %scalar.ph316.preheader ] ; 2 uses
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %.011.us.i376.i
  store float 2.550000e+02, ptr %26, align 4, !tbaa !121
  %i.afb = add nuw nsw i64 %.011.us.i376.i, 1     ; 2 uses
  %exitcond.not.i377.i.a = icmp eq i64 %i.afb, %i.aev
  br i1 %exitcond.not.i377.i.a, label %._crit_edge.us.i378.i, label %scalar.ph316.a, !llvm.loop !597

._crit_edge.us.i378.i:                            ; preds = %scalar.ph316.a, %middle.block323
  %i.afc = add nuw nsw i64 %.01012.us.i375.i, 1   ; 2 uses
  %exitcond18.not.i379.i = icmp eq i64 %i.afc, %i.aem
  br i1 %exitcond18.not.i379.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.i, label %.lr.ph.us.i374.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.i: ; preds = %._crit_edge.us.i378.i, %.lr.ph14.i372.i, %.preheader614.i
  %i.afd = load i32, ptr %i.dr, align 4, !tbaa !200 ; 3 uses
  %i.afe = zext i32 %i.afd to i64                 ; 2 uses
  %.not.i371.1.i = icmp eq i32 %i.afd, 0
  br i1 %.not.i371.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i, label %.lr.ph14.i372.1.i

.lr.ph14.i372.1.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.i
  %i.aff = load ptr, ptr %i.ds, align 8, !tbaa !141 ; 9 uses
  %i.afg = load i64, ptr %i.dt, align 8, !tbaa !122 ; 9 uses
  %i.afh = load i32, ptr %i.dg, align 8, !tbaa !201 ; 2 uses
  %.not16.i373.1.i = icmp eq i32 %i.afh, 0
  br i1 %.not16.i373.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i, label %.lr.ph.us.i374.1.i.preheader

.lr.ph.us.i374.1.i.preheader:                     ; preds = %.lr.ph14.i372.1.i
  %i.afi = zext i32 %i.afh to i64
  %i.afj = shl nuw nsw i64 %i.afi, 2              ; 9 uses
  %xtraiter435 = and i64 %i.afe, 7                ; 3 uses
  %i.afk = icmp ult i32 %i.afd, 8
  br i1 %i.afk, label %.lr.ph.us.i374.1.i.epil.preheader, label %.lr.ph.us.i374.1.i.preheader.new

.lr.ph.us.i374.1.i.preheader.new:                 ; preds = %.lr.ph.us.i374.1.i.preheader
  %unroll_iter439 = and i64 %i.afe, 4294967288
  br label %.lr.ph.us.i374.1.i

.lr.ph.us.i374.1.i:                               ; preds = %.lr.ph.us.i374.1.i, %.lr.ph.us.i374.1.i.preheader.new
  %.01012.us.i375.1.i = phi i64 [ 0, %.lr.ph.us.i374.1.i.preheader.new ], [ %i.agi, %.lr.ph.us.i374.1.i ] ; 9 uses
  %niter440 = phi i64 [ 0, %.lr.ph.us.i374.1.i.preheader.new ], [ %niter440.next.7, %.lr.ph.us.i374.1.i ]
  %i.afl = mul i64 %.01012.us.i375.1.i, %i.afg
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afm, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.afm, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.afn = or disjoint i64 %.01012.us.i375.1.i, 1
  %i.afo = mul i64 %i.afn, %i.afg
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afp, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.afp, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.afq = or disjoint i64 %.01012.us.i375.1.i, 2
  %i.afr = mul i64 %i.afq, %i.afg
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afs, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.afs, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.aft = or disjoint i64 %.01012.us.i375.1.i, 3
  %i.afu = mul i64 %i.aft, %i.afg
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afv, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.afv, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.afw = or disjoint i64 %.01012.us.i375.1.i, 4
  %i.afx = mul i64 %i.afw, %i.afg
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afy, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.afy, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.afz = or disjoint i64 %.01012.us.i375.1.i, 5
  %i.aga = mul i64 %i.afz, %i.afg
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.aga ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.agb, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.agb, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.agc = or disjoint i64 %.01012.us.i375.1.i, 6
  %i.agd = mul i64 %i.agc, %i.afg
  %i.age = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.agd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.age, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.age, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.agf = or disjoint i64 %.01012.us.i375.1.i, 7
  %i.agg = mul i64 %i.agf, %i.afg
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.agg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.agh, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.agh, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.agi = add nuw nsw i64 %.01012.us.i375.1.i, 8 ; 2 uses
  %niter440.next.7 = add i64 %niter440, 8         ; 2 uses
  %niter440.ncmp.7 = icmp eq i64 %niter440.next.7, %unroll_iter439
  br i1 %niter440.ncmp.7, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i.loopexit.unr-lcssa, label %.lr.ph.us.i374.1.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i374.1.i
  %lcmp.mod437.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod437.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i, label %.lr.ph.us.i374.1.i.epil.preheader

.lr.ph.us.i374.1.i.epil.preheader:                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i.loopexit.unr-lcssa, %.lr.ph.us.i374.1.i.preheader
  %.01012.us.i375.1.i.epil.init = phi i64 [ 0, %.lr.ph.us.i374.1.i.preheader ], [ %i.agi, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i.loopexit.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter435, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %.lr.ph.us.i374.1.i.epil

.lr.ph.us.i374.1.i.epil:                          ; preds = %.lr.ph.us.i374.1.i.epil, %.lr.ph.us.i374.1.i.epil.preheader
  %.01012.us.i375.1.i.epil = phi i64 [ %i.agl, %.lr.ph.us.i374.1.i.epil ], [ %.01012.us.i375.1.i.epil.init, %.lr.ph.us.i374.1.i.epil.preheader ] ; 2 uses
  %epil.iter436 = phi i64 [ %epil.iter436.next, %.lr.ph.us.i374.1.i.epil ], [ 0, %.lr.ph.us.i374.1.i.epil.preheader ]
  %i.agj = mul i64 %.01012.us.i375.1.i.epil, %i.afg
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.agj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.agk, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.agk, i8 0, i64 %i.afj, i1 false), !tbaa !121
  %i.agl = add nuw nsw i64 %.01012.us.i375.1.i.epil, 1
  %epil.iter436.next = add i64 %epil.iter436, 1   ; 2 uses
  %epil.iter436.cmp.not = icmp eq i64 %epil.iter436.next, %xtraiter435
  br i1 %epil.iter436.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i, label %.lr.ph.us.i374.1.i.epil, !llvm.loop !598

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i.loopexit.unr-lcssa, %.lr.ph.us.i374.1.i.epil, %.lr.ph14.i372.1.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.i
  %i.agm = load i32, ptr %i.du, align 4, !tbaa !200 ; 2 uses
  %i.agn = zext i32 %i.agm to i64
  %.not.i371.2.i = icmp eq i32 %i.agm, 0
  br i1 %.not.i371.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i, label %.lr.ph14.i372.2.i

.lr.ph14.i372.2.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i
  %i.ago = load ptr, ptr %i.dv, align 8, !tbaa !141
  %i.agp = load i64, ptr %i.dw, align 8, !tbaa !122
  %i.agq = load i32, ptr %i.dj, align 8, !tbaa !201 ; 3 uses
  %i.agr = zext i32 %i.agq to i64                 ; 3 uses
  %.not16.i373.2.i = icmp eq i32 %i.agq, 0
  br i1 %.not16.i373.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i, label %.lr.ph.us.i374.2.i.preheader

.lr.ph.us.i374.2.i.preheader:                     ; preds = %.lr.ph14.i372.2.i
  %min.iters.check307 = icmp ult i32 %i.agq, 8
  %n.vec309 = and i64 %i.agr, 4294967288          ; 3 uses
  %cmp.n314 = icmp eq i64 %n.vec309, %i.agr
  br label %.lr.ph.us.i374.2.i

.lr.ph.us.i374.2.i:                               ; preds = %.lr.ph.us.i374.2.i.preheader, %._crit_edge.us.i378.2.i
  %.01012.us.i375.2.i = phi i64 [ %i.agz, %._crit_edge.us.i378.2.i ], [ 0, %.lr.ph.us.i374.2.i.preheader ] ; 2 uses
  %i.ags = mul i64 %.01012.us.i375.2.i, %i.agp
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ago, i64 %i.ags ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.agt, i64 64) ]
  br i1 %min.iters.check307, label %scalar.ph306.preheader, label %vector.body310

vector.body310:                                   ; preds = %.lr.ph.us.i374.2.i, %vector.body310
  %index311 = phi i64 [ %index.next312, %vector.body310 ], [ 0, %.lr.ph.us.i374.2.i ] ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %index311 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  store <4 x float> splat (float 2.550000e+02), ptr %i.agu, align 32, !tbaa !121
  store <4 x float> splat (float 2.550000e+02), ptr %i.agv, align 16, !tbaa !121
  %index.next312 = add nuw i64 %index311, 8       ; 2 uses
  %i.agw = icmp eq i64 %index.next312, %n.vec309
  br i1 %i.agw, label %middle.block313, label %vector.body310, !llvm.loop !599

middle.block313:                                  ; preds = %vector.body310
  br i1 %cmp.n314, label %._crit_edge.us.i378.2.i, label %scalar.ph306.preheader

scalar.ph306.preheader:                           ; preds = %.lr.ph.us.i374.2.i, %middle.block313
  %.011.us.i376.2.i.ph = phi i64 [ 0, %.lr.ph.us.i374.2.i ], [ %n.vec309, %middle.block313 ]
  br label %scalar.ph306

scalar.ph306:                                     ; preds = %scalar.ph306.preheader, %scalar.ph306
  %.011.us.i376.2.i = phi i64 [ %i.agy, %scalar.ph306 ], [ %.011.us.i376.2.i.ph, %scalar.ph306.preheader ] ; 2 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %.011.us.i376.2.i
  store float 2.550000e+02, ptr %i.agx, align 4, !tbaa !121
  %i.agy = add nuw nsw i64 %.011.us.i376.2.i, 1   ; 2 uses
  %exitcond.not.i377.2.i = icmp eq i64 %i.agy, %i.agr
  br i1 %exitcond.not.i377.2.i, label %._crit_edge.us.i378.2.i, label %scalar.ph306, !llvm.loop !600

._crit_edge.us.i378.2.i:                          ; preds = %scalar.ph306, %middle.block313
  %i.agz = add nuw nsw i64 %.01012.us.i375.2.i, 1 ; 2 uses
  %exitcond18.not.i379.2.i = icmp eq i64 %i.agz, %i.agn
  br i1 %exitcond18.not.i379.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i, label %.lr.ph.us.i374.2.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.2.i: ; preds = %._crit_edge.us.i378.2.i, %.lr.ph14.i372.2.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit380.1.i
  %i.aha = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.ahb = load i64, ptr %i.gu, align 8, !tbaa !98
  %.not727.i = icmp eq i64 %i.ahb, 0
  br i1 %.not727.i, label %.loopexit.i, label %.lr.ph668.i

bb.bd:                                            ; preds = %._crit_edge658.i, %.lr.ph668.i
  %i.ahc = phi i64 [ %.pre854.i, %.lr.ph668.i ], [ %i.aiu, %._crit_edge658.i ]
  %.4666.i = phi ptr [ %.0131, %.lr.ph668.i ], [ %.5.lcssa.i, %._crit_edge658.i ] ; 5 uses
  %.0341665.i = phi i64 [ 0, %.lr.ph668.i ], [ %i.aiv, %._crit_edge658.i ] ; 3 uses
  %i.ahd = load ptr, ptr %i.aep, align 8, !tbaa !141
  %i.ahe = load i64, ptr %i.aha, align 8, !tbaa !122
  %i.ahf = mul i64 %i.ahe, %.0341665.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %i.ahf ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahg, i64 64) ]
  %.not728.i = icmp eq i64 %i.ahc, 0
  br i1 %.not728.i, label %._crit_edge658.i, label %.lr.ph657.i

.lr.ph657.i:                                      ; preds = %bb.bd
  %.not607.i = icmp eq i64 %.0341665.i, 0
  %invariant.gep660.i = getelementptr [4 x i8], ptr %i.ahg, i64 %i.aeq ; 2 uses
  br i1 %.not607.i, label %.thread584.us.peel.i, label %.thread584.peel.i

.thread584.peel.i:                                ; preds = %.lr.ph657.i
  %i.ahh = load i32, ptr %invariant.gep660.i, align 4, !tbaa !27 ; 2 uses
  %i.ahi = call i32 @llvm.smax.i32(i32 %i.ahh, i32 -8192)
  %i.ahj = call i32 @llvm.smin.i32(i32 %i.ahi, i32 8191)
  %.sroa.speculated.peel.i = sext i32 %i.ahj to i64
  %i.ahk = getelementptr [2 x i8], ptr %i.hn, i64 %.sroa.speculated.peel.i
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 16384
  %i.ahm = load i16, ptr %i.ahl, align 2, !tbaa !29
  %i.ahn = zext i16 %i.ahm to i64
  %i.aho = load i32, ptr %i.ahg, align 64, !tbaa !27
  %i.ahp = sub nsw i32 %i.aho, %i.ahh             ; 2 uses
  %i.ahq = shl i32 %i.ahp, 1
  %.lobit.i381.peel.i = ashr i32 %i.ahp, 31
  %i.ahr = xor i32 %i.ahq, %.lobit.i381.peel.i
  %.sroa.0445.0.insert.ext.peel.i = shl nuw nsw i64 %i.ahn, 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %.4666.i, i64 8 ; 2 uses
  %.sroa.4446.0.insert.ext.peel.i = zext i32 %i.ahr to i64
  %.sroa.4446.0.insert.shift.peel.i = shl nuw i64 %.sroa.4446.0.insert.ext.peel.i, 32
  %.sroa.0445.0.insert.insert.peel.i = or disjoint i64 %.sroa.4446.0.insert.shift.peel.i, %.sroa.0445.0.insert.ext.peel.i
  store i64 %.sroa.0445.0.insert.insert.peel.i, ptr %.4666.i, align 4
  %i.aht = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.ahu = icmp ugt i64 %i.aht, 1
  br i1 %i.ahu, label %.thread584.i, label %._crit_edge658.i

.thread584.us.peel.i:                             ; preds = %.lr.ph657.i
  %i.ahv = load i16, ptr %i.aer, align 8, !tbaa !29
  %i.ahw = zext i16 %i.ahv to i64
  %i.ahx = load i32, ptr %i.ahg, align 64, !tbaa !27 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm:bb.a
  br i1 %epil.iter448.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i, label %.lr.ph.us.i385.1.i.epil, !llvm.loop !605

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i.loopexit.unr-lcssa, %.lr.ph.us.i385.1.i.epil, %.lr.ph14.i383.1.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.i
  %i.anb = load i32, ptr %i.du, align 4, !tbaa !200 ; 3 uses
  %i.anc = zext i32 %i.anb to i64                 ; 2 uses
  %.not.i382.2.i = icmp eq i32 %i.anb, 0
  br i1 %.not.i382.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph14.i383.2.i

.lr.ph14.i383.2.i:                                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i
  %i.and = load ptr, ptr %i.dv, align 8, !tbaa !141 ; 9 uses
  %i.ane = load i64, ptr %i.dw, align 8, !tbaa !122 ; 9 uses
  %i.anf = load i32, ptr %i.dj, align 8, !tbaa !201 ; 2 uses
  %.not16.i384.2.i = icmp eq i32 %i.anf, 0
  br i1 %.not16.i384.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph.us.i385.2.i.preheader

.lr.ph.us.i385.2.i.preheader:                     ; preds = %.lr.ph14.i383.2.i
  %i.ang = zext i32 %i.anf to i64
  %i.anh = shl nuw nsw i64 %i.ang, 2              ; 9 uses
  %xtraiter453 = and i64 %i.anc, 7                ; 3 uses
  %i.ani = icmp ult i32 %i.anb, 8
  br i1 %i.ani, label %.lr.ph.us.i385.2.i.epil.preheader, label %.lr.ph.us.i385.2.i.preheader.new

.lr.ph.us.i385.2.i.preheader.new:                 ; preds = %.lr.ph.us.i385.2.i.preheader
  %unroll_iter457 = and i64 %i.anc, 4294967288
  br label %.lr.ph.us.i385.2.i

.lr.ph.us.i385.2.i:                               ; preds = %.lr.ph.us.i385.2.i, %.lr.ph.us.i385.2.i.preheader.new
  %.01012.us.i386.2.i = phi i64 [ 0, %.lr.ph.us.i385.2.i.preheader.new ], [ %i.aog, %.lr.ph.us.i385.2.i ] ; 9 uses
  %niter458 = phi i64 [ 0, %.lr.ph.us.i385.2.i.preheader.new ], [ %niter458.next.7, %.lr.ph.us.i385.2.i ]
  %i.anj = mul i64 %.01012.us.i386.2.i, %i.ane
  %i.ank = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ank, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ank, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.anl = or disjoint i64 %.01012.us.i386.2.i, 1
  %i.anm = mul i64 %i.anl, %i.ane
  %i.ann = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ann, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ann, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.ano = or disjoint i64 %.01012.us.i386.2.i, 2
  %i.anp = mul i64 %i.ano, %i.ane
  %i.anq = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anq, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anq, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.anr = or disjoint i64 %.01012.us.i386.2.i, 3
  %i.ans = mul i64 %i.anr, %i.ane
  %i.ant = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.ans ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ant, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.ant, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.anu = or disjoint i64 %.01012.us.i386.2.i, 4
  %i.anv = mul i64 %i.anu, %i.ane
  %i.anw = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anw, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anw, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.anx = or disjoint i64 %.01012.us.i386.2.i, 5
  %i.any = mul i64 %i.anx, %i.ane
  %i.anz = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.any ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anz, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.anz, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.aoa = or disjoint i64 %.01012.us.i386.2.i, 6
  %i.aob = mul i64 %i.aoa, %i.ane
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aob ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoc, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aoc, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.aod = or disjoint i64 %.01012.us.i386.2.i, 7
  %i.aoe = mul i64 %i.aod, %i.ane
  %i.aof = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aoe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aof, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aof, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.aog = add nuw nsw i64 %.01012.us.i386.2.i, 8 ; 2 uses
  %niter458.next.7 = add i64 %niter458, 8         ; 2 uses
  %niter458.ncmp.7 = icmp eq i64 %niter458.next.7, %unroll_iter457
  br i1 %niter458.ncmp.7, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa, label %.lr.ph.us.i385.2.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa: ; preds = %.lr.ph.us.i385.2.i
  %lcmp.mod455.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod455.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph.us.i385.2.i.epil.preheader

.lr.ph.us.i385.2.i.epil.preheader:                ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa, %.lr.ph.us.i385.2.i.preheader
  %.01012.us.i386.2.i.epil.init = phi i64 [ 0, %.lr.ph.us.i385.2.i.preheader ], [ %i.aog, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa ]
  %lcmp.mod456 = icmp ne i64 %xtraiter453, 0
  call void @llvm.assume(i1 %lcmp.mod456)
  br label %.lr.ph.us.i385.2.i.epil

.lr.ph.us.i385.2.i.epil:                          ; preds = %.lr.ph.us.i385.2.i.epil, %.lr.ph.us.i385.2.i.epil.preheader
  %.01012.us.i386.2.i.epil = phi i64 [ %i.aoj, %.lr.ph.us.i385.2.i.epil ], [ %.01012.us.i386.2.i.epil.init, %.lr.ph.us.i385.2.i.epil.preheader ] ; 2 uses
  %epil.iter454 = phi i64 [ %epil.iter454.next, %.lr.ph.us.i385.2.i.epil ], [ 0, %.lr.ph.us.i385.2.i.epil.preheader ]
  %i.aoh = mul i64 %.01012.us.i386.2.i.epil, %i.ane
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.aoh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoi, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.aoi, i8 0, i64 %i.anh, i1 false), !tbaa !121
  %i.aoj = add nuw nsw i64 %.01012.us.i386.2.i.epil, 1
  %epil.iter454.next = add i64 %epil.iter454, 1   ; 2 uses
  %epil.iter454.cmp.not = icmp eq i64 %epil.iter454.next, %xtraiter453
  br i1 %epil.iter454.cmp.not, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i, label %.lr.ph.us.i385.2.i.epil, !llvm.loop !606

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.2.i.loopexit.unr-lcssa, %.lr.ph.us.i385.2.i.epil, %.lr.ph14.i383.2.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit391.1.i
  %i.aok = load i64, ptr %i.gu, align 8, !tbaa !98 ; 2 uses
  %.not729.i = icmp eq i64 %i.aok, 0
  br i1 %.not729.i, label %.loopexit.i, label %.lr.ph679.i

bb.bh:                                            ; preds = %._crit_edge675.i, %.lr.ph679.i
  %i.aol = phi i64 [ %i.aok, %.lr.ph679.i ], [ %i.aor, %._crit_edge675.i ]
  %i.aom = phi i64 [ %.pre855.i, %.lr.ph679.i ], [ %i.aos, %._crit_edge675.i ]
  %.6678.i = phi ptr [ %.0131, %.lr.ph679.i ], [ %.7.lcssa.i, %._crit_edge675.i ] ; 2 uses
  %.0337677.i = phi i64 [ 0, %.lr.ph679.i ], [ %i.aot, %._crit_edge675.i ] ; 2 uses
  %i.aon = load ptr, ptr %i.akj, align 8, !tbaa !141
  %i.aoo = load i64, ptr %i.akk, align 8, !tbaa !122
  %i.aop = mul i64 %i.aoo, %.0337677.i
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aon, i64 %i.aop ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoq, i64 64) ]
  %.not730.i = icmp eq i64 %i.aom, 0
  br i1 %.not730.i, label %._crit_edge675.i, label %.lr.ph674.i

._crit_edge675.loopexit.i:                        ; preds = %.lr.ph674.i
  %.pre856.i = load i64, ptr %i.gu, align 8, !tbaa !98
  br label %._crit_edge675.i

._crit_edge675.i:                                 ; preds = %._crit_edge675.loopexit.i, %bb.bh
  %i.aor = phi i64 [ %i.aol, %bb.bh ], [ %.pre856.i, %._crit_edge675.loopexit.i ] ; 2 uses
  %i.aos = phi i64 [ 0, %bb.bh ], [ %i.apf, %._crit_edge675.loopexit.i ]
  %.7.lcssa.i = phi ptr [ %.6678.i, %bb.bh ], [ %i.apd, %._crit_edge675.loopexit.i ] ; 2 uses
  %i.aot = add nuw i64 %.0337677.i, 1             ; 2 uses
  %i.aou = icmp ult i64 %i.aot, %i.aor
  br i1 %i.aou, label %bb.bh, label %.loopexit.i, !llvm.loop !607

.lr.ph674.i:                                      ; preds = %bb.bh, %.lr.ph674.i
  %.7672.i = phi ptr [ %i.apd, %.lr.ph674.i ], [ %.6678.i, %bb.bh ] ; 2 uses
  %.0336671.i = phi i64 [ %i.ape, %.lr.ph674.i ], [ 0, %bb.bh ] ; 2 uses
  %i.aov = load ptr, ptr %11, align 8, !tbaa !211
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !213
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %.0336671.i
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !27 ; 2 uses
  %i.apa = shl i32 %i.aoz, 1
  %.lobit.i392.i = ashr i32 %i.aoz, 31
  %i.apb = xor i32 %i.apa, %.lobit.i392.i
  %i.apc = shl i32 %i.aox, 1
  %i.apd = getelementptr inbounds nuw i8, ptr %.7672.i, i64 8 ; 2 uses
  %.sroa.4444.0.insert.ext.i = zext i32 %i.apb to i64
  %.sroa.4444.0.insert.shift.i = shl nuw i64 %.sroa.4444.0.insert.ext.i, 32
  %.sroa.0443.0.insert.ext.i = zext i32 %i.apc to i64
  %.sroa.0443.0.insert.insert.i = or disjoint i64 %.sroa.4444.0.insert.shift.i, %.sroa.0443.0.insert.ext.i
  store i64 %.sroa.0443.0.insert.insert.i, ptr %.7672.i, align 4
  %i.ape = add nuw i64 %.0336671.i, 1             ; 2 uses
  %i.apf = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.apg = icmp ult i64 %i.ape, %i.apf
  br i1 %i.apg, label %.lr.ph674.i, label %._crit_edge675.loopexit.i, !llvm.loop !608

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.bg, %bb.bf
  %i.aph = phi i32 [ %.pre173, %..thread.i_crit_edge ], [ 1, %bb.bg ], [ %i.akc, %bb.bf ]
  %i.api = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.apj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aph)
  %i.apk = icmp samesign ult i32 %i.apj, 2
  br i1 %i.apk, label %bb.bi, label %.thread591.i

bb.bi:                                            ; preds = %.thread.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.yp, i64 20
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !79
  %i.apn = icmp ne i32 %i.apm, 0
  %or.cond20.i = or i1 %i.apn, %i.gn
  br i1 %or.cond20.i, label %.thread591.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.bi
  %i.apo = icmp ult i32 %i.yv, 14
  br i1 %i.apo, label %switch.lookup393, label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i

.lr.ph691.i:                                      ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.2.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %.pre859.i = load i64, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  br label %bb.bj

switch.lookup393:                                 ; preds = %.preheader.preheader.i
  %i.apq = zext nneg i32 %i.yv to i64
  %switch.gep394 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm.100, i64 %i.apq
  %switch.load395 = load float, ptr %switch.gep394, align 4
  br label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i

_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i: ; preds = %.preheader.preheader.i, %switch.lookup393
  %.sroa.0.0.i.i = phi float [ %switch.load395, %switch.lookup393 ], [ 2.550000e+02, %.preheader.preheader.i ] ; 2 uses
  %i.apr = load i32, ptr %i.do, align 4, !tbaa !200 ; 2 uses
  %i.aps = zext i32 %i.apr to i64
  %.not.i393.i = icmp eq i32 %i.apr, 0
  br i1 %.not.i393.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i, label %.lr.ph14.i394.i

.lr.ph14.i394.i:                                  ; preds = %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i
  %i.apt = load ptr, ptr %i.dp, align 8, !tbaa !141
  %i.apu = load i64, ptr %i.dq, align 8, !tbaa !122
  %i.apv = load i32, ptr %7, align 8, !tbaa !201  ; 3 uses
  %i.apw = zext i32 %i.apv to i64                 ; 3 uses
  %.not16.i395.i = icmp eq i32 %i.apv, 0
  br i1 %.not16.i395.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i, label %.lr.ph.us.i396.i.preheader

.lr.ph.us.i396.i.preheader:                       ; preds = %.lr.ph14.i394.i
  %min.iters.check295 = icmp ult i32 %i.apv, 8
  %n.vec297 = and i64 %i.apw, 4294967288          ; 3 uses
  %broadcast.splatinsert298 = insertelement <4 x float> poison, float %.sroa.0.0.i.i, i64 0
  %broadcast.splat299 = shufflevector <4 x float> %broadcast.splatinsert298, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n304 = icmp eq i64 %n.vec297, %i.apw
  br label %.lr.ph.us.i396.i

.lr.ph.us.i396.i:                                 ; preds = %.lr.ph.us.i396.i.preheader, %._crit_edge.us.i400.i
  %.01012.us.i397.i = phi i64 [ %i.aqd, %._crit_edge.us.i400.i ], [ 0, %.lr.ph.us.i396.i.preheader ] ; 2 uses
  %i.apx = mul i64 %.01012.us.i397.i, %i.apu
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apt, i64 %i.apx ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.apy, i64 64) ]
  br i1 %min.iters.check295, label %scalar.ph294.preheader, label %vector.body300

vector.body300:                                   ; preds = %.lr.ph.us.i396.i, %vector.body300
  %index301 = phi i64 [ %index.next302, %vector.body300 ], [ 0, %.lr.ph.us.i396.i ] ; 2 uses
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %index301 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 16
  store <4 x float> %broadcast.splat299, ptr %i.apz, align 32, !tbaa !121
  store <4 x float> %broadcast.splat299, ptr %i.aqa, align 16, !tbaa !121
  %index.next302 = add nuw i64 %index301, 8       ; 2 uses
  %i.aqb = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.aqb, label %middle.block303, label %vector.body300, !llvm.loop !609

middle.block303:                                  ; preds = %vector.body300
  br i1 %cmp.n304, label %._crit_edge.us.i400.i, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %.lr.ph.us.i396.i, %middle.block303
  %.011.us.i398.i.ph = phi i64 [ 0, %.lr.ph.us.i396.i ], [ %n.vec297, %middle.block303 ]
  br label %scalar.ph294.a

scalar.ph294.a:                                   ; preds = %scalar.ph294.preheader, %scalar.ph294.a
  %.011.us.i398.i = phi i64 [ %i.aqc, %scalar.ph294.a ], [ %.011.us.i398.i.ph, %scalar.ph294.preheader ] ; 2 uses
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %.011.us.i398.i
  store float %.sroa.0.0.i.i, ptr %27, align 4, !tbaa !121
  %i.aqc = add nuw nsw i64 %.011.us.i398.i, 1     ; 2 uses
  %exitcond.not.i399.i.a = icmp eq i64 %i.aqc, %i.apw
  br i1 %exitcond.not.i399.i.a, label %._crit_edge.us.i400.i, label %scalar.ph294.a, !llvm.loop !610

._crit_edge.us.i400.i:                            ; preds = %scalar.ph294.a, %middle.block303
  %i.aqd = add nuw nsw i64 %.01012.us.i397.i, 1   ; 2 uses
  %exitcond18.not.i401.i = icmp eq i64 %i.aqd, %i.aps
  br i1 %exitcond18.not.i401.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i, label %.lr.ph.us.i396.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i: ; preds = %._crit_edge.us.i400.i
  %.pre857.i = load i32, ptr %i.yu, align 4, !tbaa !79
  br label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i, %.lr.ph14.i394.i, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i
  %i.aqe = phi i32 [ %.pre857.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.i ], [ %i.yv, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.i ], [ %i.yv, %.lr.ph14.i394.i ] ; 4 uses
  %i.aqf = icmp ult i32 %i.aqe, 14
  br i1 %i.aqf, label %switch.lookup396, label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i

switch.lookup396:                                 ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i
  %i.aqg = zext nneg i32 %i.aqe to i64
  %switch.gep397 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm.101, i64 %i.aqg
  %switch.load398 = load float, ptr %switch.gep397, align 4
  br label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i

_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i, %switch.lookup396
  %.sroa.10.0.i.1.i = phi float [ %switch.load398, %switch.lookup396 ], [ 2.550000e+02, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.i ] ; 2 uses
  %i.aqh = load i32, ptr %i.dr, align 4, !tbaa !200 ; 2 uses
  %i.aqi = zext i32 %i.aqh to i64
  %.not.i393.1.i = icmp eq i32 %i.aqh, 0
  br i1 %.not.i393.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i, label %.lr.ph14.i394.1.i

.lr.ph14.i394.1.i:                                ; preds = %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i
  %i.aqj = load ptr, ptr %i.ds, align 8, !tbaa !141
  %i.aqk = load i64, ptr %i.dt, align 8, !tbaa !122
  %i.aql = load i32, ptr %i.dg, align 8, !tbaa !201 ; 3 uses
  %i.aqm = zext i32 %i.aql to i64                 ; 3 uses
  %.not16.i395.1.i = icmp eq i32 %i.aql, 0
  br i1 %.not16.i395.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i, label %.lr.ph.us.i396.1.i.preheader

.lr.ph.us.i396.1.i.preheader:                     ; preds = %.lr.ph14.i394.1.i
  %min.iters.check283 = icmp ult i32 %i.aql, 8
  %n.vec285 = and i64 %i.aqm, 4294967288          ; 3 uses
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %.sroa.10.0.i.1.i, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n292 = icmp eq i64 %n.vec285, %i.aqm
  br label %.lr.ph.us.i396.1.i

.lr.ph.us.i396.1.i:                               ; preds = %.lr.ph.us.i396.1.i.preheader, %._crit_edge.us.i400.1.i
  %.01012.us.i397.1.i = phi i64 [ %i.aqu, %._crit_edge.us.i400.1.i ], [ 0, %.lr.ph.us.i396.1.i.preheader ] ; 2 uses
  %i.aqn = mul i64 %.01012.us.i397.1.i, %i.aqk
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %i.aqn ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqo, i64 64) ]
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.body288

vector.body288:                                   ; preds = %.lr.ph.us.i396.1.i, %vector.body288
  %index289 = phi i64 [ %index.next290, %vector.body288 ], [ 0, %.lr.ph.us.i396.1.i ] ; 2 uses
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %index289 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  store <4 x float> %broadcast.splat287, ptr %i.aqp, align 32, !tbaa !121
  store <4 x float> %broadcast.splat287, ptr %i.aqq, align 16, !tbaa !121
  %index.next290 = add nuw i64 %index289, 8       ; 2 uses
  %i.aqr = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.aqr, label %middle.block291, label %vector.body288, !llvm.loop !611

middle.block291:                                  ; preds = %vector.body288
  br i1 %cmp.n292, label %._crit_edge.us.i400.1.i, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %.lr.ph.us.i396.1.i, %middle.block291
  %.011.us.i398.1.i.ph = phi i64 [ 0, %.lr.ph.us.i396.1.i ], [ %n.vec285, %middle.block291 ]
  br label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %.011.us.i398.1.i = phi i64 [ %i.aqt, %scalar.ph282 ], [ %.011.us.i398.1.i.ph, %scalar.ph282.preheader ] ; 2 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %.011.us.i398.1.i
  store float %.sroa.10.0.i.1.i, ptr %i.aqs, align 4, !tbaa !121
  %i.aqt = add nuw nsw i64 %.011.us.i398.1.i, 1   ; 2 uses
  %exitcond.not.i399.1.i = icmp eq i64 %i.aqt, %i.aqm
  br i1 %exitcond.not.i399.1.i, label %._crit_edge.us.i400.1.i, label %scalar.ph282, !llvm.loop !612

._crit_edge.us.i400.1.i:                          ; preds = %scalar.ph282, %middle.block291
  %i.aqu = add nuw nsw i64 %.01012.us.i397.1.i, 1 ; 2 uses
  %exitcond18.not.i401.1.i = icmp eq i64 %i.aqu, %i.aqi
  br i1 %exitcond18.not.i401.1.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i, label %.lr.ph.us.i396.1.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i: ; preds = %._crit_edge.us.i400.1.i
  %.pre858.i = load i32, ptr %i.yu, align 4, !tbaa !79
  br label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i, %.lr.ph14.i394.1.i, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i
  %i.aqv = phi i32 [ %.pre858.i, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.loopexit.1.i ], [ %i.aqe, %.lr.ph14.i394.1.i ], [ %i.aqe, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.1.i ] ; 2 uses
  %i.aqw = icmp ult i32 %i.aqv, 14
  br i1 %i.aqw, label %switch.lookup399, label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.2.i

switch.lookup399:                                 ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i
  %i.aqx = zext nneg i32 %i.aqv to i64
  %switch.gep400 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN3jxl15ModularCompressERKNS_5ImageERKNS_14ModularOptionsEmRKNSt3__16vectorINS_20PropertyDecisionNodeENS6_9allocatorIS8_EEEERNS_11GroupHeaderERNS7_INS_5TokenENS9_ISG_EEEEPm.104, i64 %i.aqx
  %switch.load401 = load float, ptr %switch.gep400, align 4
  br label %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.2.i

_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.2.i: ; preds = %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i, %switch.lookup399
  %.sroa.19.0.i.2.i = phi float [ %switch.load401, %switch.lookup399 ], [ 2.550000e+02, %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.1.i ] ; 2 uses
  %i.aqy = load i32, ptr %i.du, align 4, !tbaa !200 ; 2 uses
  %i.aqz = zext i32 %i.aqy to i64
  %.not.i393.2.i = icmp eq i32 %i.aqy, 0
  br i1 %.not.i393.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.2.i, label %.lr.ph14.i394.2.i

.lr.ph14.i394.2.i:                                ; preds = %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.2.i
  %i.ara = load ptr, ptr %i.dv, align 8, !tbaa !141
  %i.arb = load i64, ptr %i.dw, align 8, !tbaa !122
  %i.arc = load i32, ptr %i.dj, align 8, !tbaa !201 ; 3 uses
  %i.ard = zext i32 %i.arc to i64                 ; 3 uses
  %.not16.i395.2.i = icmp eq i32 %i.arc, 0
  br i1 %.not16.i395.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.2.i, label %.lr.ph.us.i396.2.i.preheader

.lr.ph.us.i396.2.i.preheader:                     ; preds = %.lr.ph14.i394.2.i
  %min.iters.check = icmp ult i32 %i.arc, 8
  %n.vec = and i64 %i.ard, 4294967288             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.19.0.i.2.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ard
  br label %.lr.ph.us.i396.2.i

.lr.ph.us.i396.2.i:                               ; preds = %.lr.ph.us.i396.2.i.preheader, %._crit_edge.us.i400.2.i
  %.01012.us.i397.2.i = phi i64 [ %i.arl, %._crit_edge.us.i400.2.i ], [ 0, %.lr.ph.us.i396.2.i.preheader ] ; 2 uses
  %i.are = mul i64 %.01012.us.i397.2.i, %i.arb
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.are ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.arf, i64 64) ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.i396.2.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.i396.2.i ] ; 2 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %index ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 16
  store <4 x float> %broadcast.splat, ptr %i.arg, align 32, !tbaa !121
  store <4 x float> %broadcast.splat, ptr %i.arh, align 16, !tbaa !121
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ari = icmp eq i64 %index.next, %n.vec
  br i1 %i.ari, label %middle.block, label %vector.body, !llvm.loop !613

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i400.2.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i396.2.i, %middle.block
  %.011.us.i398.2.i.ph = phi i64 [ 0, %.lr.ph.us.i396.2.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.us.i398.2.i = phi i64 [ %i.ark, %scalar.ph ], [ %.011.us.i398.2.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %.011.us.i398.2.i
  store float %.sroa.19.0.i.2.i, ptr %i.arj, align 4, !tbaa !121
  %i.ark = add nuw nsw i64 %.011.us.i398.2.i, 1   ; 2 uses
  %exitcond.not.i399.2.i = icmp eq i64 %i.ark, %i.ard
  br i1 %exitcond.not.i399.2.i, label %._crit_edge.us.i400.2.i, label %scalar.ph, !llvm.loop !614

._crit_edge.us.i400.2.i:                          ; preds = %scalar.ph, %middle.block
  %i.arl = add nuw nsw i64 %.01012.us.i397.2.i, 1 ; 2 uses
  %exitcond18.not.i401.2.i = icmp eq i64 %i.arl, %i.aqz
  br i1 %exitcond18.not.i401.2.i, label %_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.2.i, label %.lr.ph.us.i396.2.i, !llvm.loop !578

_ZN3jxl9FillImageIfEEvT_PNS_5PlaneIS1_EE.exit402.2.i: ; preds = %._crit_edge.us.i400.2.i, %.lr.ph14.i394.2.i, %_ZN3jxl12_GLOBAL__N_114PredictorColorENS_9PredictorE.exit.2.i
  %i.arm = load i32, ptr %i.api, align 4, !tbaa !79
  %i.arn = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.arm, i1 true)
  %i.aro = xor i32 %i.arn, 31
  %i.arp = zext nneg i32 %i.aro to i64
  %i.arq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !122
  %i.ars = lshr i64 %i.arr, 2
  %i.art = load i64, ptr %i.gu, align 8, !tbaa !98 ; 2 uses
  %.not731.i = icmp eq i64 %i.art, 0
  br i1 %.not731.i, label %.loopexit.i, label %.lr.ph691.i

bb.bj:                                            ; preds = %._crit_edge686.i, %.lr.ph691.i
  %i.aru = phi i64 [ %i.art, %.lr.ph691.i ], [ %i.asc, %._crit_edge686.i ]
  %i.arv = phi i64 [ %.pre859.i, %.lr.ph691.i ], [ %i.asd, %._crit_edge686.i ] ; 2 uses
  %i.arw = phi i64 [ %.pre859.i, %.lr.ph691.i ], [ %i.ase, %._crit_edge686.i ]
  %.8689.i = phi ptr [ %.0131, %.lr.ph691.i ], [ %.9.lcssa.i, %._crit_edge686.i ] ; 2 uses
  %.0334688.i = phi i64 [ 0, %.lr.ph691.i ], [ %i.asf, %._crit_edge686.i ] ; 3 uses
  %i.arx = load ptr, ptr %i.app, align 8, !tbaa !141
  %i.ary = load i64, ptr %i.arq, align 8, !tbaa !122
  %i.arz = mul i64 %i.ary, %.0334688.i
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 %i.arz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.asa, i64 64) ]
  %.not732.i = icmp eq i64 %i.arw, 0
  br i1 %.not732.i, label %._crit_edge686.i, label %.lr.ph685.i

.lr.ph685.i:                                      ; preds = %bb.bj
  %i.asb = trunc i64 %.0334688.i to i32
  br label %bb.bk

._crit_edge686.loopexit.i:                        ; preds = %bb.bk
  %.pre860.i = load i64, ptr %i.gu, align 8, !tbaa !98
  br label %._crit_edge686.i

._crit_edge686.i:                                 ; preds = %._crit_edge686.loopexit.i, %bb.bj
  %i.asc = phi i64 [ %i.aru, %bb.bj ], [ %.pre860.i, %._crit_edge686.loopexit.i ] ; 2 uses
  %i.asd = phi i64 [ %i.arv, %bb.bj ], [ %i.atb, %._crit_edge686.loopexit.i ]
  %i.ase = phi i64 [ 0, %bb.bj ], [ %i.atb, %._crit_edge686.loopexit.i ]
  %.9.lcssa.i = phi ptr [ %.8689.i, %bb.bj ], [ %i.asz, %._crit_edge686.loopexit.i ] ; 2 uses
  %i.asf = add nuw i64 %.0334688.i, 1             ; 2 uses
  %i.asg = icmp ult i64 %i.asf, %i.asc
  br i1 %i.asg, label %bb.bj, label %.loopexit.i, !llvm.loop !615

bb.bk:                                            ; preds = %bb.bk, %.lr.ph685.i
  %i.ash = phi i64 [ %i.arv, %.lr.ph685.i ], [ %i.atb, %bb.bk ]
  %.9683.i = phi ptr [ %.8689.i, %.lr.ph685.i ], [ %i.asz, %bb.bk ] ; 2 uses
  %.0333682.i = phi i64 [ 0, %.lr.ph685.i ], [ %i.ata, %bb.bk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %.0333682.i ; 2 uses
  %i.asj = trunc i64 %.0333682.i to i32
  %i.ask = load ptr, ptr %11, align 8, !tbaa !211
end_hunk_1
