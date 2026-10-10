Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarrv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dlarrv_:bb.a
  br i1 %i.uw, label %.lr.ph969.preheader1323, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ux = add i32 %i.im, %i.uo
  %i.uy = sext i32 %i.ux to i64                   ; 2 uses
  %i.uz = shl nsw i64 %i.uy, 3                    ; 2 uses
  %scevgep1197 = getelementptr i8, ptr %scevgep1196, i64 %i.uz
  %i.va = sub i32 %i.un, %i.uo
  %i.vb = zext i32 %i.va to i64
  %i.vc = add nsw i64 %i.uy, %i.vb
  %i.vd = shl nsw i64 %i.vc, 3                    ; 2 uses
  %scevgep1198 = getelementptr i8, ptr %22, i64 %i.vd
  %scevgep1200 = getelementptr i8, ptr %scevgep1199, i64 %i.uz
  %scevgep1201 = getelementptr i8, ptr %14, i64 %i.vd
  %bound0 = icmp ult ptr %scevgep1197, %scevgep1201
  %bound1 = icmp ult ptr %scevgep1200, %scevgep1198
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph969.preheader1323, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ut, 8589934584              ; 3 uses
  %i.ve = add nuw nsw i64 %n.vec, %i.up
  %broadcast.splatinsert1202 = insertelement <4 x double> poison, double %i.ui, i64 0
  %broadcast.splat1203 = shufflevector <4 x double> %broadcast.splatinsert1202, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1378 = add i32 %i.uo, %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vf = trunc i64 %index to i32
  %.reass1379 = add i32 %i.vf, %invariant.op1378
  %i.vg = sext i32 %.reass1379 to i64             ; 2 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.vg ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.vh, align 8, !tbaa !35, !alias.scope !47, !noalias !48 ; 4 uses
  %wide.load1206 = load <4 x double>, ptr %i.vi, align 8, !tbaa !35, !alias.scope !47, !noalias !48 ; 4 uses
  %i.vj = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.vk = fcmp oge <4 x double> %wide.load1206, zeroinitializer
  %i.vl = fneg <4 x double> %wide.load
  %i.vm = fneg <4 x double> %wide.load1206
  %i.vn = select <4 x i1> %i.vj, <4 x double> %wide.load, <4 x double> %i.vl
  %i.vo = select <4 x i1> %i.vk, <4 x double> %wide.load1206, <4 x double> %i.vm
  %i.vp = fmul <4 x double> %broadcast.splat, %i.vn
  %i.vq = fmul <4 x double> %broadcast.splat, %i.vo
  %i.vr = fsub <4 x double> %wide.load, %broadcast.splat1203 ; 4 uses
  %i.vs = fsub <4 x double> %wide.load1206, %broadcast.splat1203 ; 5 uses
  store <4 x double> %i.vr, ptr %i.vh, align 8, !tbaa !35, !alias.scope !47, !noalias !48
  store <4 x double> %i.vs, ptr %i.vi, align 8, !tbaa !35, !alias.scope !47, !noalias !48
  %i.vt = fcmp oge <4 x double> %i.vr, zeroinitializer
  %i.vu = fcmp oge <4 x double> %i.vs, zeroinitializer
  %i.vv = fneg <4 x double> %i.vr
  %i.vw = fneg <4 x double> %i.vs
  %i.vx = select <4 x i1> %i.vt, <4 x double> %i.vr, <4 x double> %i.vv
  %i.vy = select <4 x i1> %i.vu, <4 x double> %i.vs, <4 x double> %i.vw
  %i.vz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1205, <4 x double> %i.vx, <4 x double> %i.vp)
  %i.wa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1205, <4 x double> %i.vy, <4 x double> %i.vq)
  %i.wb = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.vg ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 32 ; 2 uses
  %wide.load1207 = load <4 x double>, ptr %i.wb, align 8, !tbaa !35, !alias.scope !48
  %wide.load1208 = load <4 x double>, ptr %i.wc, align 8, !tbaa !35, !alias.scope !48
  %i.wd = fadd <4 x double> %wide.load1207, %i.vz
  %i.we = fadd <4 x double> %wide.load1208, %i.wa
  store <4 x double> %i.wd, ptr %i.wb, align 8, !tbaa !35, !alias.scope !48
  store <4 x double> %i.we, ptr %i.wc, align 8, !tbaa !35, !alias.scope !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wf = icmp eq i64 %index.next, %n.vec
  br i1 %i.wf, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %i.wg = extractelement <4 x double> %i.vs, i64 3
  %cmp.n = icmp eq i64 %i.ut, %n.vec
  br i1 %cmp.n, label %._crit_edge970, label %.lr.ph969.preheader1323

.lr.ph969.preheader1323:                          ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph969.preheader, %middle.block
  %indvars.iv1086.ph = phi i64 [ %i.up, %vector.memcheck ], [ %i.up, %vector.scevcheck ], [ %i.up, %.lr.ph969.preheader ], [ %i.ve, %middle.block ] ; 4 uses
  %i.wh = trunc i64 %indvars.iv1086.ph to i32     ; 2 uses
  %i.wi = add i32 %i.un, %i.wh
  %i.wj = and i32 %i.wi, 1
  %lcmp.mod1351.not.not = icmp eq i32 %i.wj, 0
  br i1 %lcmp.mod1351.not.not, label %.lr.ph969.prol, label %.lr.ph969.prol.loopexit

.lr.ph969.prol:                                   ; preds = %.lr.ph969.preheader1323
  %i.wk = trunc i64 %indvars.iv1086.ph to i32
  %i.wl = add i32 %i.cz, %i.wk
  %i.wm = sext i32 %i.wl to i64                   ; 2 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.wm ; 2 uses
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !35 ; 4 uses
  %i.wp = fcmp oge double %i.wo, 0.000000e+00
  %i.wq = fneg double %i.wo
  %i.wr = select i1 %i.wp, double %i.wo, double %i.wq
  %i.ws = fmul double %i.cj, %i.wr
  %i.wt = fsub double %i.wo, %i.ui                ; 5 uses
  store double %i.wt, ptr %i.wn, align 8, !tbaa !35
  %i.wu = fcmp oge double %i.wt, 0.000000e+00
  %i.wv = fneg double %i.wt
  %i.ww = select i1 %i.wu, double %i.wt, double %i.wv
  %i.wx = call double @llvm.fmuladd.f64(double %i.ck, double %i.ww, double %i.ws)
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.wm ; 2 uses
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !35
  %i.xa = fadd double %i.wz, %i.wx
  store double %i.xa, ptr %i.wy, align 8, !tbaa !35
  %indvars.iv.next1087.prol = add nsw i64 %indvars.iv1086.ph, 1
  br label %.lr.ph969.prol.loopexit

.lr.ph969.prol.loopexit:                          ; preds = %.lr.ph969.prol, %.lr.ph969.preheader1323
  %.lcssa1340.unr = phi double [ poison, %.lr.ph969.preheader1323 ], [ %i.wt, %.lr.ph969.prol ]
  %indvars.iv1086.unr = phi i64 [ %indvars.iv1086.ph, %.lr.ph969.preheader1323 ], [ %indvars.iv.next1087.prol, %.lr.ph969.prol ]
  %i.xb = icmp eq i32 %i.un, %i.wh
  br i1 %i.xb, label %._crit_edge970, label %.lr.ph969

.lr.ph969:                                        ; preds = %.lr.ph969.prol.loopexit, %.lr.ph969
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087.1, %.lr.ph969 ], [ %indvars.iv1086.unr, %.lr.ph969.prol.loopexit ] ; 3 uses
  %i.xc = trunc i64 %indvars.iv1086 to i32
  %i.xd = add i32 %i.cz, %i.xc
  %i.xe = sext i32 %i.xd to i64                   ; 2 uses
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.xe ; 2 uses
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !35 ; 4 uses
  %i.xh = fcmp oge double %i.xg, 0.000000e+00
  %i.xi = fneg double %i.xg
  %i.xj = select i1 %i.xh, double %i.xg, double %i.xi
  %i.xk = fmul double %i.cj, %i.xj
  %i.xl = fsub double %i.xg, %i.ui                ; 4 uses
  store double %i.xl, ptr %i.xf, align 8, !tbaa !35
  %i.xm = fcmp oge double %i.xl, 0.000000e+00
  %i.xn = fneg double %i.xl
  %i.xo = select i1 %i.xm, double %i.xl, double %i.xn
  %i.xp = call double @llvm.fmuladd.f64(double %i.ck, double %i.xo, double %i.xk)
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.xe ; 2 uses
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !35
  %i.xs = fadd double %i.xr, %i.xp
  store double %i.xs, ptr %i.xq, align 8, !tbaa !35
  %i.xt = trunc i64 %indvars.iv1086 to i32
  %i.xu = add i32 %.07051023, %i.xt
  %i.xv = sext i32 %i.xu to i64                   ; 2 uses
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.xv ; 2 uses
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !35 ; 4 uses
  %i.xy = fcmp oge double %i.xx, 0.000000e+00
  %i.xz = fneg double %i.xx
  %i.ya = select i1 %i.xy, double %i.xx, double %i.xz
  %i.yb = fmul double %i.cj, %i.ya
  %i.yc = fsub double %i.xx, %i.ui                ; 5 uses
  store double %i.yc, ptr %i.xw, align 8, !tbaa !35
  %i.yd = fcmp oge double %i.yc, 0.000000e+00
  %i.ye = fneg double %i.yc
  %i.yf = select i1 %i.yd, double %i.yc, double %i.ye
  %i.yg = call double @llvm.fmuladd.f64(double %i.ck, double %i.yf, double %i.yb)
  %i.yh = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.xv ; 2 uses
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !35
  %i.yj = fadd double %i.yi, %i.yg
  store double %i.yj, ptr %i.yh, align 8, !tbaa !35
  %indvars.iv.next1087.1 = add nsw i64 %indvars.iv1086, 2 ; 2 uses
  %lftr.wideiv1089.1 = trunc i64 %indvars.iv.next1087.1 to i32
  %exitcond1090.not.1 = icmp eq i32 %i.uq, %lftr.wideiv1089.1
  br i1 %exitcond1090.not.1, label %._crit_edge970, label %.lr.ph969, !llvm.loop !29

._crit_edge970:                                   ; preds = %.lr.ph969.prol.loopexit, %.lr.ph969, %middle.block
  %.lcssa1188 = phi double [ %i.wg, %middle.block ], [ %.lcssa1340.unr, %.lr.ph969.prol.loopexit ], [ %i.yc, %.lr.ph969 ]
  store double %.lcssa1188, ptr %i.e, align 8, !tbaa !35
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge970, %bb.au
  %i.yk = add nsw i32 %.2719977, 1                ; 2 uses
  %i.yl = shl i32 %i.yk, 1
  %i.ym = add nsw i32 %i.yl, %.825
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr [4 x i8], ptr %i.as, i64 %i.yn ; 2 uses
  %i.yp = getelementptr i8, ptr %i.yo, i64 -4
  store i32 %i.uo, ptr %i.yp, align 4, !tbaa !33
  store i32 %i.un, ptr %i.yo, align 4, !tbaa !33
  br label %bb.bz

bb.aw:                                            ; preds = %bb.am
  %i.yq = load i32, ptr %i.q, align 4, !tbaa !33  ; 2 uses
  %i.yr = sitofp i32 %i.yq to double
  %i.ys = call double @log(double noundef %i.yr) #6
  %i.yt = fmul double %i.ys, 4.000000e+00
  %i.yu = fmul double %i.bs, %i.yt
  %i.yv = add nsw i32 %.val, %.07051023           ; 6 uses
  %i.yw = add nsw i32 %i.yv, -1                   ; 4 uses
  %i.yx = call i32 @llvm.smax.i32(i32 %i.yv, i32 3)
  %i.yy = add nsw i32 %i.yx, -2                   ; 2 uses
  store i32 %i.yv, ptr %i.d, align 4, !tbaa !33
  %i.yz = load i32, ptr %7, align 4, !tbaa !33
  %.828 = call i32 @llvm.smin.i32(i32 %i.yv, i32 %i.yz)
  %i.za = sext i32 %i.yw to i64                   ; 9 uses
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.za ; 4 uses
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !35 ; 4 uses
  store double %i.zc, ptr %i.o, align 8, !tbaa !35
  %i.zd = load i32, ptr %8, align 4, !tbaa !33
  %.not808 = icmp sgt i32 %i.yv, %i.zd
  br i1 %.not808, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ze = load i32, ptr %9, align 4, !tbaa !33
  %i.zf = icmp sgt i32 %i.yw, %i.ze
  br i1 %i.zf, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.zg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.za ; 4 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !35 ; 2 uses
  %25 = fsub double %i.zc, %i.zh                  ; 7 uses
  %26 = fadd double %i.zc, %i.zh                  ; 7 uses
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.za
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !33
  store i32 %i.zj, ptr %i.r, align 4, !tbaa !33
  %i.zk = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.zk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %27 = fcmp oge double %25, 0.000000e+00
  %28 = fneg double %25
  %29 = select i1 %27, double %25, double %28     ; 3 uses
  store double %29, ptr %i.e, align 8, !tbaa !35
  %30 = fcmp oge double %26, 0.000000e+00
  %31 = fneg double %26
  %32 = select i1 %30, double %26, double %31     ; 2 uses
  %i.zl = fcmp oge double %29, %32
  %i.zm = select i1 %i.zl, double %29, double %32
  %i.zn = fmul double %i.bs, %i.zm
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.zo = zext nneg i32 %i.yy to i64
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.zo
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !35
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %storemerge = phi double [ %i.zq, %bb.ba ], [ %i.zn, %bb.az ] ; 3 uses
  store double %storemerge, ptr %i.g, align 8, !tbaa !35
  %i.zr = load i32, ptr %i.p, align 4, !tbaa !33
  %i.zs = icmp eq i32 %.val, %i.zr                ; 2 uses
  br i1 %i.zs, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %33 = fcmp oge double %25, 0.000000e+00
  %34 = fneg double %25
  %35 = select i1 %33, double %25, double %34     ; 3 uses
  store double %35, ptr %i.e, align 8, !tbaa !35
  %36 = fcmp oge double %26, 0.000000e+00
  %37 = fneg double %26
  %38 = select i1 %36, double %26, double %37     ; 2 uses
  %i.zt = fcmp oge double %35, %38
  %i.zu = select i1 %i.zt, double %35, double %38
  %i.zv = fmul double %i.bs, %i.zu
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.za
  %.pre1104 = load double, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.za
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !35 ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.zy = phi double [ %i.zx, %bb.bd ], [ %.pre1104, %bb.bc ] ; 3 uses
  %storemerge809 = phi double [ %i.zx, %bb.bd ], [ %i.zv, %bb.bc ] ; 3 uses
  store double %storemerge809, ptr %i.h, align 8, !tbaa !35
  %i.zz = fcmp ole double %storemerge, %storemerge809
  %i.aaa = select i1 %i.zz, double %storemerge, double %storemerge809 ; 3 uses
  %or.cond830 = or i1 %i.zk, %i.zs
  %i.aab = fmul double %i.bs, %i.aaa
  %storemerge810 = select i1 %or.cond830, double 0.000000e+00, double %i.aab
  store double %storemerge810, ptr %i.w, align 8, !tbaa !35
  %i.aac = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.za ; 2 uses
  store double %i.aaa, ptr %i.aac, align 8, !tbaa !35
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.za ; 4 uses
  %i.aae = mul i32 %i.yw, %i.an                   ; 4 uses
  %i.aaf = add nsw i32 %i.aae, %.07101022
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aag ; 2 uses
  %i.aai = shl i32 %i.yw, 1
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr [4 x i8], ptr %i.aq, i64 %i.aaj ; 4 uses
  %i.aal = getelementptr i8, ptr %i.aak, i64 -4   ; 5 uses
  %i.aam = fmul double %i.yu, %i.aaa
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.be
  %.0757 = phi double [ %25, %bb.be ], [ %.2759, %.backedge.backedge ] ; 4 uses
  %.0755 = phi i32 [ 0, %bb.be ], [ %.0755.be, %.backedge.backedge ] ; 3 uses
  %.4749 = phi double [ %.3748974, %bb.be ], [ %.5750, %.backedge.backedge ]
  %.0722 = phi double [ %26, %bb.be ], [ %.2724, %.backedge.backedge ] ; 4 uses
  %.0708 = phi i32 [ 0, %bb.be ], [ %.0708.be, %.backedge.backedge ] ; 2 uses
  %.0693 = phi i32 [ 0, %bb.be ], [ %.0693.be, %.backedge.backedge ]
  %.0690 = phi i32 [ 0, %bb.be ], [ %.1691, %.backedge.backedge ] ; 3 uses
  %.0687 = phi i32 [ %i.yq, %bb.be ], [ %i.abc, %.backedge.backedge ]
  %.4 = phi double [ %.3978, %bb.be ], [ %.5, %.backedge.backedge ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.be ], [ %i.abe, %.backedge.backedge ] ; 2 uses
  %.not811 = icmp eq i32 %.0708, 0
  br i1 %.not811, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.backedge
  %i.aan = load i32, ptr %i.aad, align 4, !tbaa !33
  store i32 %i.aan, ptr %i.i, align 4, !tbaa !33
  %i.aao = load i32, ptr %i.ia, align 4, !tbaa !33
  %i.aap = add nsw i32 %i.aao, -1
  store i32 %i.aap, ptr %i.v, align 4, !tbaa !33
  store double %i.bt, ptr %i.e, align 8, !tbaa !35
  call void @dlarrb_(ptr noundef nonnull %i.q, ptr noundef nonnull %i.hx, ptr noundef %i.ie, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r, ptr noundef nonnull @c_b5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.if, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, ptr noundef %5, ptr noundef nonnull %i.u, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l) #6
  %i.aaq = load i32, ptr %i.l, align 4, !tbaa !33
  %.not812 = icmp eq i32 %i.aaq, 0
  br i1 %.not812, label %bb.bg, label %.loopexit850.sink.split

bb.bg:                                            ; preds = %bb.bf
  %i.aar = load double, ptr %i.zb, align 8, !tbaa !35
  store double %i.aar, ptr %i.o, align 8, !tbaa !35
  store i32 0, ptr %i.aad, align 4, !tbaa !33
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.backedge
  %.1694 = phi i32 [ 1, %bb.bg ], [ %.0693, %.backedge ]
  %i.aas = icmp ne i32 %.1694, 0                  ; 3 uses
  %i.aat = xor i1 %i.aas, true
  %i.aau = zext i1 %i.aat to i32                  ; 2 uses
  store i32 %i.aau, ptr %i.f, align 4, !tbaa !33
  call void @dlar1v_(ptr noundef nonnull %i.q, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hy, ptr noundef nonnull %i.ij, ptr noundef %i.ie, ptr noundef %5, ptr noundef nonnull %i.w, ptr noundef %i.aah, ptr noundef nonnull %i.f, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.s, ptr noundef nonnull %i.aad, ptr noundef %i.aal, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.m, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ch) #6
  %i.aav = icmp eq i32 %.0755, 0
  %i.aaw = load double, ptr %i.m, align 8, !tbaa !35 ; 5 uses
  br i1 %i.aav, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aax = load double, ptr %i.o, align 8, !tbaa !35 ; 2 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.aay = fcmp olt double %i.aaw, %.4            ; 2 uses
  %i.aaz = load double, ptr %i.o, align 8         ; 2 uses
  %spec.select831 = select i1 %i.aay, double %i.aaz, double %.4749
  %spec.select832 = select i1 %i.aay, double %i.aaw, double %.4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.aba = phi double [ %i.aax, %bb.bi ], [ %i.aaz, %bb.bj ] ; 9 uses
  %.5750 = phi double [ %i.aax, %bb.bi ], [ %spec.select831, %bb.bj ] ; 4 uses
  %.5 = phi double [ %i.aaw, %bb.bi ], [ %spec.select832, %bb.bj ] ; 4 uses
  %i.abb = load i32, ptr %i.aal, align 4, !tbaa !33 ; 2 uses
  %i.abc = call i32 @llvm.smin.i32(i32 %.0687, i32 %i.abb) ; 4 uses
  store i32 %.0, ptr %i.d, align 4, !tbaa !33
  %i.abd = load i32, ptr %i.aak, align 4, !tbaa !33 ; 2 uses
  %i.abe = call i32 @llvm.smax.i32(i32 %.0, i32 %i.abd) ; 4 uses
  %i.abf = add nsw i32 %.0755, 1                  ; 3 uses
  %i.abg = fcmp ogt double %i.aaw, %i.aam
  br i1 %i.abg, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.abh = load double, ptr %i.ab, align 8, !tbaa !35 ; 4 uses
  %i.abi = call double @llvm.fabs.f64(double %i.abh)
  %i.abj = load double, ptr %i.n, align 8, !tbaa !35 ; 2 uses
  %i.abk = fcmp oge double %i.aba, 0.000000e+00
  %i.abl = fneg double %i.aba                     ; 3 uses
  %i.abm = select i1 %i.abk, double %i.aba, double %i.abl
  %i.abn = fmul double %i.abj, %i.abm
  %i.abo = fcmp ule double %i.abi, %i.abn
  %or.cond = or i1 %i.aas, %i.abo
  br i1 %or.cond, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.abp = load i32, ptr %i.r, align 4, !tbaa !33
  %i.abq = load i32, ptr %i.t, align 4, !tbaa !33
  %.not815 = icmp sgt i32 %i.abp, %i.abq          ; 3 uses
  %i.abr = fneg double %i.abh
  %i.abs = select i1 %.not815, double %i.abh, double %i.abr
  %i.abt = fcmp ult double %i.abs, 0.000000e+00
  br i1 %i.abt, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.abu = fadd double %i.abh, %i.aba             ; 5 uses
  %i.abv = fcmp ugt double %i.abu, %.0722
  %i.abw = fcmp ult double %i.abu, %.0757
  %or.cond834 = select i1 %i.abv, i1 true, i1 %i.abw
  br i1 %or.cond834, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %..0757 = select i1 %.not815, double %i.aba, double %.0757 ; 3 uses
  %.0722. = select i1 %.not815, double %.0722, double %i.aba ; 3 uses
  %i.abx = fadd double %.0722., %..0757
  %i.aby = fmul double %i.abx, 5.000000e-01
  store double %i.aby, ptr %i.zb, align 8, !tbaa !35
  store double %i.abu, ptr %i.o, align 8, !tbaa !35
  %i.abz = fsub double %.0722., %..0757
  %i.aca = fmul double %i.abz, 5.000000e-01
  store double %i.aca, ptr %i.zg, align 8, !tbaa !35
  %.pre = fneg double %i.abu
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bm, %bb.bn, %bb.bo
  %.pre-phi = phi double [ %i.abl, %bb.bm ], [ %i.abl, %bb.bn ], [ %.pre, %bb.bo ]
  %i.acb = phi double [ %i.aba, %bb.bm ], [ %i.aba, %bb.bn ], [ %i.abu, %bb.bo ] ; 2 uses
  %.2759 = phi double [ %.0757, %bb.bm ], [ %.0757, %bb.bn ], [ %..0757, %bb.bo ] ; 2 uses
  %.2724 = phi double [ %.0722, %bb.bm ], [ %.0722, %bb.bn ], [ %.0722., %bb.bo ] ; 2 uses
  %.1709 = phi i32 [ 1, %bb.bm ], [ 1, %bb.bn ], [ %.0708, %bb.bo ] ; 2 uses
  %.1691 = phi i32 [ %.0690, %bb.bm ], [ %.0690, %bb.bn ], [ 1, %bb.bo ]
  %i.acc = fsub double %.2724, %.2759
  %i.acd = fcmp oge double %i.acb, 0.000000e+00
  %i.ace = select i1 %i.acd, double %i.acb, double %.pre-phi
  %i.acf = fmul double %i.abj, %i.ace
  %i.acg = fcmp olt double %i.acc, %i.acf
  br i1 %i.acg, label %.backedge.backedge, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ach = icmp slt i32 %.0755, 9
  br i1 %i.ach, label %.backedge.backedge, label %bb.br

.backedge.backedge:                               ; preds = %bb.bq, %bb.bp, %bb.br
  %.0755.be = phi i32 [ %i.abf, %bb.bq ], [ %i.abf, %bb.bp ], [ 10, %bb.br ]
  %.0708.be = phi i32 [ %.1709, %bb.bq ], [ %.1709, %bb.bp ], [ 1, %bb.br ]
  %.0693.be = phi i32 [ 0, %bb.bq ], [ 1, %bb.bp ], [ 0, %bb.br ]
  br label %.backedge

bb.br:                                            ; preds = %bb.bq
  %i.aci = icmp eq i32 %i.abf, 10
  br i1 %i.aci, label %.backedge.backedge, label %.loopexit850.sink.split

bb.bs:                                            ; preds = %bb.bl, %bb.bk
  %i.acj = icmp ne i32 %.0690, 0
  %or.cond3 = and i1 %i.acj, %i.aas
  %i.ack = fcmp ole double %.5, %i.aaw
  %or.cond836.not = select i1 %or.cond3, i1 %i.ack, i1 false
  br i1 %or.cond836.not, label %.critedge, label %bb.bt

.critedge:                                        ; preds = %bb.bs
  store double %.5750, ptr %i.o, align 8, !tbaa !35
  store i32 %i.aau, ptr %i.f, align 4, !tbaa !33
  call void @dlar1v_(ptr noundef nonnull %i.q, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hy, ptr noundef nonnull %i.ij, ptr noundef %i.ie, ptr noundef %5, ptr noundef nonnull %i.w, ptr noundef %i.aah, ptr noundef nonnull %i.f, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.s, ptr noundef nonnull %i.aad, ptr noundef nonnull %i.aal, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.m, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ch) #6
  %.pre1105 = load double, ptr %i.o, align 8, !tbaa !35
  %.pre1106 = load i32, ptr %i.aal, align 4, !tbaa !33
  %.pre1107 = load i32, ptr %i.aak, align 4, !tbaa !33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.critedge
  %i.acl = phi i32 [ %i.abd, %bb.bs ], [ %.pre1107, %.critedge ] ; 5 uses
  %i.acm = phi i32 [ %i.abb, %bb.bs ], [ %.pre1106, %.critedge ] ; 3 uses
  %i.acn = phi double [ %i.aba, %bb.bs ], [ %.pre1105, %.critedge ]
  store double %i.acn, ptr %i.zb, align 8, !tbaa !35
  %i.aco = add i32 %i.acm, %i.gd                  ; 3 uses
  store i32 %i.aco, ptr %i.aal, align 4, !tbaa !33
  %i.acp = add nsw i32 %i.acl, %i.gd
  store i32 %i.acp, ptr %i.aak, align 4, !tbaa !33
  %i.acq = add nsw i32 %i.abe, %i.gd
  %i.acr = icmp slt i32 %i.abc, %i.acm
  br i1 %i.acr, label %.loopexit848.loopexit, label %.loopexit848

.loopexit848.loopexit:                            ; preds = %bb.bt
  %i.acs = add i32 %i.gd, %i.aae
  %i.act = add i32 %i.acs, %i.abc
  %i.acu = sext i32 %i.act to i64
  %i.acv = shl nsw i64 %i.acu, 3
  %scevgep1075 = getelementptr i8, ptr %scevgep, i64 %i.acv
  %i.acw = add i32 %.07101022, %i.abc             ; 2 uses
  %smax1076 = call i32 @llvm.smax.i32(i32 %i.aco, i32 %i.acw)
  %i.acx = sub i32 %smax1076, %i.acw
  %i.acy = zext i32 %i.acx to i64
  %i.acz = shl nuw nsw i64 %i.acy, 3
  %i.ada = add nuw nsw i64 %i.acz, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1075, i8 0, i64 %i.ada, i1 false), !tbaa !35
  br label %.loopexit848

.loopexit848:                                     ; preds = %.loopexit848.loopexit, %bb.bt
  %i.adb = icmp sgt i32 %i.abe, %i.acl
  br i1 %i.adb, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %.loopexit848
  %i.adc = add i32 %i.acl, %.07101022             ; 2 uses
  %.not818961 = icmp sgt i32 %i.adc, %i.acq
  br i1 %.not818961, label %.loopexit, label %.lr.ph964.preheader

.lr.ph964.preheader:                              ; preds = %bb.bu
  %i.add = add i32 %i.adc, %i.aae
  %i.ade = sext i32 %i.add to i64
  %i.adf = shl nsw i64 %i.ade, 3
  %scevgep1081 = getelementptr i8, ptr %scevgep, i64 %i.adf
  %i.adg = xor i32 %i.acl, -1
  %i.adh = add i32 %i.abe, %i.adg
  %i.adi = zext i32 %i.adh to i64
  %i.adj = shl nuw nsw i64 %i.adi, 3
  %i.adk = add nuw nsw i64 %i.adj, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1081, i8 0, i64 %i.adk, i1 false), !tbaa !35
  br label %.loopexit

.thread:                                          ; preds = %bb.ax, %bb.aw
  %i.adl = fadd double %.2728, %i.zc
  %i.adm = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.za
end_hunk_0
