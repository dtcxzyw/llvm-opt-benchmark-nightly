inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw27identify_process_dng_fieldsEv:bb.a
  %i.xh = icmp eq i32 %i.xg, 3
  br i1 %i.xh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.xi = lshr i32 %i.xd, 2
  %i.xj = and i32 %i.xi, 572662306
  %i.xk = shl i32 %i.xd, 2
  %i.xl = and i32 %i.xk, -2004318072
  %i.xm = or disjoint i32 %i.xj, %i.xl
  %i.xn = shl i32 %i.xd, 1
  %i.xo = and i32 %i.xm, %i.xn
  %i.xp = or i32 %i.xo, %i.xd                     ; 2 uses
  store i32 %i.xp, ptr %i.xc, align 8, !tbaa !85
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %i.xq = phi i32 [ %i.xp, %bb.do ], [ %i.xd, %bb.dn ], [ %i.xd, %bb.dm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.xr = icmp ne i32 %i.wu, 0
  %i.xs = icmp ne i32 %i.ww, 0
  %or.cond628 = and i1 %i.xr, %i.xs
  br i1 %or.cond628, label %.preheader524.lr.ph.split, label %.preheader523.thread

.preheader524.lr.ph.split:                        ; preds = %bb.dp
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !161
  %i.xv = add i32 %i.xu, 6
  %xtraiter992 = and i32 %i.ww, 1
  %i.xw = icmp eq i32 %i.ww, 1
  %unroll_iter997 = and i32 %i.ww, -2
  %lcmp.mod994.not = icmp eq i32 %xtraiter992, 0
  %lcmp.mod996 = trunc i32 %i.ww to i1
  br label %.preheader524

.preheader524:                                    ; preds = %.preheader524.lr.ph.split, %._crit_edge605
  %.0341608 = phi i32 [ 0, %.preheader524.lr.ph.split ], [ %i.zc, %._crit_edge605 ] ; 2 uses
  %.0342607 = phi i32 [ %i.xv, %.preheader524.lr.ph.split ], [ %.lcssa982, %._crit_edge605 ] ; 2 uses
  %i.xx = shl i32 %.0341608, 1
  %i.xy = and i32 %i.xx, 14                       ; 3 uses
  br i1 %i.xw, label %.epil.preheader, label %.preheader524.new

.preheader524.new:                                ; preds = %.preheader524
  %i.xz = shl nuw nsw i32 %i.xy, 1
  %i.ya = lshr i32 %i.xq, %i.xz
  %i.yb = and i32 %i.ya, 3
  %i.yc = zext nneg i32 %i.yb to i64              ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yc ; 2 uses
  %i.yf = shl nuw nsw i32 %i.xy, 1
  %i.yg = or disjoint i32 %i.yf, 2
  %i.yh = lshr i32 %i.xq, %i.yg
  %i.yi = and i32 %i.yh, 3
  %i.yj = zext nneg i32 %i.yi to i64              ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yj ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yj ; 2 uses
  br label %bb.dq

.preheader523:                                    ; preds = %._crit_edge605
  %.pre742 = load i32, ptr %i.f, align 16, !tbaa !83 ; 2 uses
  %.not477 = icmp eq i32 %.pre742, 0
  br i1 %.not477, label %.preheader523.thread, label %bb.dr

._crit_edge605.unr-lcssa:                         ; preds = %bb.dq
  br i1 %lcmp.mod994.not, label %._crit_edge605, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge605.unr-lcssa, %.preheader524
  %.0340603.epil.init = phi i32 [ 0, %.preheader524 ], [ %i.zt, %._crit_edge605.unr-lcssa ]
  %.1343602.epil.init = phi i32 [ %.0342607, %.preheader524 ], [ %i.zs, %._crit_edge605.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod996)
  %i.ym = sext i32 %.1343602.epil.init to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !83
  %i.yp = and i32 %.0340603.epil.init, 1
  %i.yq = or disjoint i32 %i.yp, %i.xy
  %i.yr = shl nuw nsw i32 %i.yq, 1
  %i.ys = lshr i32 %i.xq, %i.yr
  %i.yt = and i32 %i.ys, 3
  %i.yu = zext nneg i32 %i.yt to i64              ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yu ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !83
  %i.yx = add i32 %i.yw, %i.yo
  store i32 %i.yx, ptr %i.yv, align 4, !tbaa !83
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yu ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !83
  %i.za = add nsw i32 %i.yz, 1
  store i32 %i.za, ptr %i.yy, align 4, !tbaa !83
  %i.zb = add i32 %.1343602.epil.init, 2
  br label %._crit_edge605

._crit_edge605:                                   ; preds = %._crit_edge605.unr-lcssa, %.epil.preheader
  %.lcssa982 = phi i32 [ %i.zs, %._crit_edge605.unr-lcssa ], [ %i.zb, %.epil.preheader ]
  %i.zc = add nuw i32 %.0341608, 1                ; 2 uses
  %exitcond718.not = icmp eq i32 %i.zc, %i.wu
  br i1 %exitcond718.not, label %.preheader523, label %.preheader524, !llvm.loop !274

bb.dq:                                            ; preds = %bb.dq, %.preheader524.new
  %.0340603 = phi i32 [ 0, %.preheader524.new ], [ %i.zt, %bb.dq ]
  %.1343602 = phi i32 [ %.0342607, %.preheader524.new ], [ %i.zs, %bb.dq ] ; 3 uses
  %niter998 = phi i32 [ 0, %.preheader524.new ], [ %niter998.next.1, %bb.dq ]
  %i.zd = sext i32 %.1343602 to i64
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !83
  %i.zg = load i32, ptr %i.yd, align 4, !tbaa !83
  %i.zh = add i32 %i.zg, %i.zf
  store i32 %i.zh, ptr %i.yd, align 4, !tbaa !83
  %i.zi = load i32, ptr %i.ye, align 4, !tbaa !83
  %i.zj = add nsw i32 %i.zi, 1
  store i32 %i.zj, ptr %i.ye, align 4, !tbaa !83
  %i.zk = add i32 %.1343602, 2
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !83
  %i.zo = load i32, ptr %i.yk, align 4, !tbaa !83
  %i.zp = add i32 %i.zo, %i.zn
  store i32 %i.zp, ptr %i.yk, align 4, !tbaa !83
  %i.zq = load i32, ptr %i.yl, align 4, !tbaa !83
  %i.zr = add nsw i32 %i.zq, 1
  store i32 %i.zr, ptr %i.yl, align 4, !tbaa !83
  %i.zs = add i32 %.1343602, 4                    ; 3 uses
  %i.zt = add nuw i32 %.0340603, 2                ; 2 uses
  %niter998.next.1 = add nuw i32 %niter998, 2     ; 2 uses
  %niter998.ncmp.1 = icmp eq i32 %niter998.next.1, %unroll_iter997
  br i1 %niter998.ncmp.1, label %._crit_edge605.unr-lcssa, label %bb.dq, !llvm.loop !275

bb.dr:                                            ; preds = %.preheader523
  %i.zu = load i32, ptr %i.e, align 16, !tbaa !83
  %i.zv = sdiv i32 %i.zu, %.pre742
  %i.zw = load i32, ptr %i.vx, align 4, !tbaa !83
  %i.zx = add i32 %i.zw, %i.zv
  store i32 %i.zx, ptr %i.vx, align 4, !tbaa !83
  br label %.preheader523.thread

.preheader523.thread:                             ; preds = %bb.dp, %.preheader523, %bb.dr
  %i.zy = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !83 ; 2 uses
  %.not477.1 = icmp eq i32 %i.zz, 0
  br i1 %.not477.1, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.preheader523.thread
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !83
  %i.aac = sdiv i32 %i.aab, %i.zz
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 154256 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !83
  %i.aaf = add i32 %i.aae, %i.aac
  store i32 %i.aaf, ptr %i.aad, align 8, !tbaa !83
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.preheader523.thread
  %i.aag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !83 ; 2 uses
  %.not477.2 = icmp eq i32 %i.aah, 0
  br i1 %.not477.2, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !83
  %i.aak = sdiv i32 %i.aaj, %i.aah
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 154260
  %i.aam = add i32 %i.vz, %i.aak
  store i32 %i.aam, ptr %i.aal, align 4, !tbaa !83
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.aan = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !83 ; 2 uses
  %.not477.3 = icmp eq i32 %i.aao, 0
  br i1 %.not477.3, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aap = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !83
  %i.aar = sdiv i32 %i.aaq, %i.aao
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 154264 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !83
  %i.aau = add i32 %i.aat, %i.aar
  store i32 %i.aau, ptr %i.aas, align 8, !tbaa !83
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  store i32 0, ptr %i.wv, align 8, !tbaa !83
  store i32 0, ptr %i.wt, align 4, !tbaa !83
  store i32 %i.xd, ptr %i.xc, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.thread515

bb.dy:                                            ; preds = %.loopexit
  %i.aav = add i32 %i.vv, -3
  %or.cond505 = icmp ult i32 %i.aav, 2
  br i1 %or.cond505, label %bb.dz, label %.thread515

bb.dz:                                            ; preds = %bb.dy
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 154252 ; 7 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !83 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !83 ; 5 uses
  %i.abb = mul i32 %i.aay, %i.vv
  %i.abc = mul i32 %i.abb, %i.aba
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !83
  %i.abf = icmp eq i32 %i.abc, %i.abe
  br i1 %i.abf, label %bb.ea, label %.thread515

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %.not629 = icmp eq i32 %i.aay, 0
  %.not630 = icmp eq i32 %i.aba, 0
  %or.cond808 = or i1 %.not629, %.not630
  br i1 %or.cond808, label %.preheader525.thread, label %.preheader527.us.preheader

.preheader527.us.preheader:                       ; preds = %bb.ea
  %wide.trip.count709 = zext nneg i32 %i.vv to i64 ; 6 uses
  %1 = add i32 %i.aba, -1
  %trip.count.minus.1906 = add nsw i64 %wide.trip.count709, -1
  %broadcast.splatinsert907 = insertelement <4 x i64> poison, i64 %trip.count.minus.1906, i64 0
  %broadcast.splat908 = shufflevector <4 x i64> %broadcast.splatinsert907, <4 x i64> poison, <4 x i32> zeroinitializer
  %2 = icmp uge <4 x i64> %broadcast.splat908, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter = and i32 %i.aba, 3                   ; 3 uses
  %3 = icmp ult i32 %1, 3
  %unroll_iter = and i32 %i.aba, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod991 = icmp ne i32 %xtraiter, 0
  br label %.preheader527.us

.preheader527.us:                                 ; preds = %.preheader527.us.preheader, %._crit_edge595.split.us.us
  %.0335598.us = phi i32 [ %4, %._crit_edge595.split.us.us ], [ 0, %.preheader527.us.preheader ]
  %.0336597.us = phi i64 [ %.lcssa983, %._crit_edge595.split.us.us ], [ 6, %.preheader527.us.preheader ] ; 2 uses
  br i1 %3, label %vector.ph903.epil.preheader, label %vector.ph903

vector.ph903:                                     ; preds = %.preheader527.us, %vector.ph903
  %.1337593.us.us = phi i64 [ %i.abs, %vector.ph903 ], [ %.0336597.us, %.preheader527.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %vector.ph903 ], [ 0, %.preheader527.us ]
  %i.abg = add i64 %.1337593.us.us, %wide.trip.count709 ; 2 uses
  %i.abh = getelementptr [4 x i8], ptr %i.aaw, i64 %.1337593.us.us
  %wide.masked.load912 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abh, <4 x i1> %2, <4 x i32> poison), !tbaa !83
  %unmaskedload1014 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abi = add <4 x i32> %unmaskedload1014, %wide.masked.load912
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abi, ptr align 16 %i.g, <4 x i1> %2), !tbaa !83
  %unmaskedload1015 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abj = add nsw <4 x i32> %unmaskedload1015, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abj, ptr align 16 %i.h, <4 x i1> %2), !tbaa !83
  %i.abk = add i64 %i.abg, %wide.trip.count709    ; 2 uses
  %i.abl = getelementptr [4 x i8], ptr %i.aaw, i64 %i.abg
  %wide.masked.load912.1 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abl, <4 x i1> %2, <4 x i32> poison), !tbaa !83
  %unmaskedload1016 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abm = add <4 x i32> %unmaskedload1016, %wide.masked.load912.1
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abm, ptr align 16 %i.g, <4 x i1> %2), !tbaa !83
  %unmaskedload1017 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abn = add nsw <4 x i32> %unmaskedload1017, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abn, ptr align 16 %i.h, <4 x i1> %2), !tbaa !83
  %i.abo = add i64 %i.abk, %wide.trip.count709    ; 2 uses
  %i.abp = getelementptr [4 x i8], ptr %i.aaw, i64 %i.abk
  %wide.masked.load912.2 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abp, <4 x i1> %2, <4 x i32> poison), !tbaa !83
  %unmaskedload1018 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abq = add <4 x i32> %unmaskedload1018, %wide.masked.load912.2
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abq, ptr align 16 %i.g, <4 x i1> %2), !tbaa !83
  %unmaskedload1019 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abr = add nsw <4 x i32> %unmaskedload1019, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abr, ptr align 16 %i.h, <4 x i1> %2), !tbaa !83
  %i.abs = add i64 %i.abo, %wide.trip.count709    ; 3 uses
  %i.abt = getelementptr [4 x i8], ptr %i.aaw, i64 %i.abo
  %wide.masked.load912.3 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abt, <4 x i1> %2, <4 x i32> poison), !tbaa !83
  %unmaskedload1020 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abu = add <4 x i32> %unmaskedload1020, %wide.masked.load912.3
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abu, ptr align 16 %i.g, <4 x i1> %2), !tbaa !83
  %unmaskedload1021 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abv = add nsw <4 x i32> %unmaskedload1021, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abv, ptr align 16 %i.h, <4 x i1> %2), !tbaa !83
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge595.split.us.us.unr-lcssa, label %vector.ph903, !llvm.loop !276

._crit_edge595.split.us.us.unr-lcssa:             ; preds = %vector.ph903
  br i1 %lcmp.mod.not, label %._crit_edge595.split.us.us, label %vector.ph903.epil.preheader

vector.ph903.epil.preheader:                      ; preds = %._crit_edge595.split.us.us.unr-lcssa, %.preheader527.us
  %.1337593.us.us.epil.init = phi i64 [ %.0336597.us, %.preheader527.us ], [ %i.abs, %._crit_edge595.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod991)
  br label %vector.ph903.epil

vector.ph903.epil:                                ; preds = %vector.ph903.epil, %vector.ph903.epil.preheader
  %.1337593.us.us.epil = phi i64 [ %.1337593.us.us.epil.init, %vector.ph903.epil.preheader ], [ %i.abw, %vector.ph903.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %vector.ph903.epil.preheader ], [ %epil.iter.next, %vector.ph903.epil ]
  %i.abw = add i64 %.1337593.us.us.epil, %wide.trip.count709 ; 2 uses
  %i.abx = getelementptr [4 x i8], ptr %i.aaw, i64 %.1337593.us.us.epil
  %wide.masked.load912.epil = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abx, <4 x i1> %2, <4 x i32> poison), !tbaa !83
  %unmaskedload1022 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.aby = add <4 x i32> %unmaskedload1022, %wide.masked.load912.epil
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.aby, ptr align 16 %i.g, <4 x i1> %2), !tbaa !83
  %unmaskedload1023 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abz = add nsw <4 x i32> %unmaskedload1023, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abz, ptr align 16 %i.h, <4 x i1> %2), !tbaa !83
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge595.split.us.us, label %vector.ph903.epil, !llvm.loop !277

._crit_edge595.split.us.us:                       ; preds = %vector.ph903.epil, %._crit_edge595.split.us.us.unr-lcssa
  %.lcssa983 = phi i64 [ %i.abs, %._crit_edge595.split.us.us.unr-lcssa ], [ %i.abw, %vector.ph903.epil ]
  %4 = add nuw i32 %.0335598.us, 1                ; 2 uses
  %exitcond712.not = icmp eq i32 %4, %i.aay
  br i1 %exitcond712.not, label %.preheader525, label %.preheader527.us, !llvm.loop !278

.preheader525:                                    ; preds = %._crit_edge595.split.us.us
  %.pre = load i32, ptr %i.h, align 16, !tbaa !83 ; 2 uses
  %.not470 = icmp eq i32 %.pre, 0
  br i1 %.not470, label %.preheader525.thread, label %bb.eb

bb.eb:                                            ; preds = %.preheader525
  %i.aca = load i32, ptr %i.g, align 16, !tbaa !83
  %i.acb = sdiv i32 %i.aca, %.pre
  %i.acc = load i32, ptr %i.aaw, align 4, !tbaa !83
  %i.acd = add i32 %i.acc, %i.acb
  store i32 %i.acd, ptr %i.aaw, align 4, !tbaa !83
  br label %.preheader525.thread

.preheader525.thread:                             ; preds = %bb.ea, %.preheader525, %bb.eb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !83 ; 2 uses
  %.not470.1 = icmp eq i32 %i.acf, 0
  br i1 %.not470.1, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.preheader525.thread
  %i.acg = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !83
  %i.aci = sdiv i32 %i.ach, %i.acf
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 154256 ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 8, !tbaa !83
  %i.acl = add i32 %i.ack, %i.aci
  store i32 %i.acl, ptr %i.acj, align 8, !tbaa !83
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.preheader525.thread
  %i.acm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !83 ; 2 uses
  %.not470.2 = icmp eq i32 %i.acn, 0
  br i1 %.not470.2, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aco = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !83
  %i.acq = sdiv i32 %i.acp, %i.acn
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 154260 ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !83
  %i.act = add i32 %i.acs, %i.acq
  store i32 %i.act, ptr %i.acr, align 4, !tbaa !83
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.acu = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !83 ; 2 uses
  %.not470.3 = icmp eq i32 %i.acv, 0
  br i1 %.not470.3, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.acw = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !83
  %i.acy = sdiv i32 %i.acx, %i.acv
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 154264 ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !83
  %i.adb = add i32 %i.ada, %i.acy
  store i32 %i.adb, ptr %i.acz, align 8, !tbaa !83
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store i32 0, ptr %i.aaz, align 8, !tbaa !83
  store i32 0, ptr %i.aax, align 4, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.thread515

.thread515:                                       ; preds = %bb.dl, %bb.dx, %bb.eh, %bb.dz, %bb.dy, %bb.dk
  %i.adc = phi i32 [ %i.vs, %bb.dl ], [ %i.vs, %bb.dx ], [ %i.vs, %bb.eh ], [ %i.vs, %bb.dz ], [ %i.vs, %bb.dy ], [ %i.wp, %bb.dk ]
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 5 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 154252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.add, ptr noundef nonnull align 4 dereferenceable(16416) %i.ade, i64 16416, i1 false)
  %i.adf = load i32, ptr %i.aa, align 8, !tbaa !92
  %i.adg = icmp slt i32 %i.w, %i.adf
  %or.cond15 = and i1 %i.ad, %i.adg
  br i1 %or.cond15, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %.thread515
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.adi = zext nneg i32 %i.w to i64
  %i.adj = getelementptr inbounds nuw [33472 x i8], ptr %i.adh, i64 %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 488
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !256
  %i.adm = and i32 %i.adl, 16384
  %.not471 = icmp eq i32 %i.adm, 0
  br i1 %.not471, label %bb.ej, label %.thread517

bb.ej:                                            ; preds = %bb.ei
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.ado = load i32, ptr %i.adn, align 8, !tbaa !256
  %i.adp = and i32 %i.ado, 16384
  %.not521 = icmp eq i32 %i.adp, 0
  br i1 %.not521, label %bb.en, label %.thread517

.thread517:                                       ; preds = %bb.ej, %bb.ei
  %i.adq = phi i32 [ %i.w, %bb.ei ], [ 0, %bb.ej ]
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [33472 x i8], ptr %i.adh, i64 %i.adr
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 33412
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !279 ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 187172
  store float %i.adu, ptr %i.adv, align 4, !tbaa !280
  %i.adw = fpext reassoc nsz arcp contract afn float %i.adu to double
  %i.adx = fcmp reassoc nsz arcp contract afn ule double %i.adw, 1.000000e-01
  %i.ady = fcmp reassoc nsz arcp contract afn ugt float %i.adu, 1.000000e+00
  %or.cond506 = or i1 %i.ady, %i.adx
  br i1 %or.cond506, label %bb.en, label %.preheader522

.preheader522:                                    ; preds = %.thread517
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !119 ; 3 uses
  %invariant.smin611 = call i32 @llvm.smin.i32(i32 %i.aea, i32 4) ; 2 uses
  %i.aeb = icmp sgt i32 %i.aea, 0                 ; 2 uses
  br i1 %i.aeb, label %vector.body924, label %._crit_edge615

vector.body924:                                   ; preds = %.preheader522
  %wide.trip.count726 = zext nneg i32 %invariant.smin611 to i64
  %trip.count.minus.1921 = add nsw i64 %wide.trip.count726, -1
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %trip.count.minus.1921, i64 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.aec = icmp uge <4 x i64> %broadcast.splat923, <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.load928 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 8 %i.add, <4 x i1> %i.aec, <4 x i32> zeroinitializer), !tbaa !83
  %i.aed = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %wide.masked.load928)
  br label %._crit_edge615

._crit_edge615:                                   ; preds = %vector.body924, %.preheader522
  %.0331.lcssa = phi i32 [ 0, %.preheader522 ], [ %i.aed, %vector.body924 ]
  %i.aee = call i32 @llvm.smax.i32(i32 %i.aea, i32 1)
  %i.aef = call i32 @llvm.umin.i32(i32 %i.aee, i32 4)
  %i.aeg = sdiv i32 %.0331.lcssa, %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !83
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !83
  %i.ael = mul i32 %i.aek, %i.aei                 ; 4 uses
  %.not474 = icmp eq i32 %i.ael, 0
  br i1 %.not474, label %bb.ek, label %iter.check

iter.check:                                       ; preds = %._crit_edge615
  %invariant.umin618 = call i32 @llvm.umin.i32(i32 %i.ael, i32 4096) ; 2 uses
  %wide.trip.count733 = zext nneg i32 %invariant.umin618 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ael, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check932 = icmp ult i32 %i.ael, 32
  br i1 %min.iters.check932, label %vec.epilog.ph, label %vector.ph933

vector.ph933:                                     ; preds = %vector.main.loop.iter.check
  %i.aem = and i64 %wide.trip.count733, 28
  %n.vec934 = and i64 %wide.trip.count733, 8160   ; 4 uses
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next944, %vector.body935 ] ; 2 uses
  %vec.phi937 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aes, %vector.body935 ]
  %vec.phi938 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aet, %vector.body935 ]
  %vec.phi939 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aeu, %vector.body935 ]
  %vec.phi940 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aev, %vector.body935 ]
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %index936 ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 24
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 56
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 88
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aen, i64 120
  %wide.load = load <8 x i32>, ptr %i.aeo, align 8, !tbaa !83
  %wide.load941 = load <8 x i32>, ptr %i.aep, align 8, !tbaa !83
  %wide.load942 = load <8 x i32>, ptr %i.aeq, align 8, !tbaa !83
  %wide.load943 = load <8 x i32>, ptr %i.aer, align 8, !tbaa !83
  %i.aes = add <8 x i32> %wide.load, %vec.phi937  ; 2 uses
  %i.aet = add <8 x i32> %wide.load941, %vec.phi938 ; 2 uses
  %i.aeu = add <8 x i32> %wide.load942, %vec.phi939 ; 2 uses
  %i.aev = add <8 x i32> %wide.load943, %vec.phi940 ; 2 uses
  %index.next944 = add nuw i64 %index936, 32      ; 2 uses
  %i.aew = icmp eq i64 %index.next944, %n.vec934
  br i1 %i.aew, label %middle.block945, label %vector.body935, !llvm.loop !281

middle.block945:                                  ; preds = %vector.body935
  %bin.rdx = add <8 x i32> %i.aet, %i.aes
  %bin.rdx946 = add <8 x i32> %i.aeu, %bin.rdx
  %bin.rdx947 = add <8 x i32> %i.aev, %bin.rdx946
  %i.aex = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx947) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec934, %wide.trip.count733
  br i1 %cmp.n, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block945
  %min.epilog.iters.check = icmp eq i64 %i.aem, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !282

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec934, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aex, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec948 = and i64 %wide.trip.count733, 8188   ; 3 uses
  %i.aey = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index949 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next952, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi950 = phi <4 x i32> [ %i.aey, %vec.epilog.ph ], [ %i.afb, %vec.epilog.vector.body ]
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %index949
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 24
  %wide.load951 = load <4 x i32>, ptr %i.afa, align 8, !tbaa !83
  %i.afb = add <4 x i32> %wide.load951, %vec.phi950 ; 2 uses
  %index.next952 = add nuw i64 %index949, 4       ; 2 uses
  %i.afc = icmp eq i64 %index.next952, %n.vec948
  br i1 %i.afc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.afd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afb) ; 2 uses
  %cmp.n953 = icmp eq i64 %n.vec948, %wide.trip.count733
  br i1 %cmp.n953, label %.critedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv728.ph = phi i64 [ 0, %iter.check ], [ %n.vec934, %vec.epilog.iter.check ], [ %n.vec948, %vec.epilog.middle.block ]
  %.0329619.ph = phi i32 [ 0, %iter.check ], [ %i.aex, %vec.epilog.iter.check ], [ %i.afd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block945
  %.lcssa = phi i32 [ %i.afd, %vec.epilog.middle.block ], [ %i.aex, %middle.block945 ], [ %i.afi, %vec.epilog.scalar.ph ]
  %i.afe = udiv i32 %.lcssa, %invariant.umin618
  br label %bb.ek

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %vec.epilog.scalar.ph ], [ %indvars.iv728.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0329619 = phi i32 [ %i.afi, %vec.epilog.scalar.ph ], [ %.0329619.ph, %vec.epilog.scalar.ph.preheader ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %indvars.iv728
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !83
  %i.afi = add i32 %i.afh, %.0329619              ; 2 uses
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next729, %wide.trip.count733
  br i1 %exitcond734.not, label %.critedge, label %vec.epilog.scalar.ph, !llvm.loop !284

bb.ek:                                            ; preds = %.critedge, %._crit_edge615
  %.1330 = phi i32 [ %i.afe, %.critedge ], [ 0, %._crit_edge615 ]
  br i1 %i.aeb, label %vector.body963, label %._crit_edge627

vector.body963:                                   ; preds = %bb.ek
  %i.afj = add i32 %.1330, %i.aeg
  %i.afk = add i32 %i.afj, %i.adc                 ; 2 uses
  %i.afl = sub i32 %.sink, %i.afk
  %i.afm = uitofp reassoc nsz arcp contract afn i32 %i.afl to float
  %i.afn = fmul reassoc nsz arcp contract afn float %i.adu, %i.afm
  %i.afo = sitofp reassoc nsz arcp contract afn i32 %i.afk to float
  %i.afp = fadd reassoc nsz arcp contract afn float %i.afn, %i.afo
  %i.afq = fptoui float %i.afp to i32
  %broadcast.splatinsert961 = insertelement <4 x i32> poison, i32 %i.afq, i64 0
  %broadcast.splat962 = shufflevector <4 x i32> %broadcast.splatinsert961, <4 x i32> poison, <4 x i32> zeroinitializer
  %wide.trip.count738 = zext nneg i32 %invariant.smin611 to i64
  %trip.count.minus.1958 = add nsw i64 %wide.trip.count738, -1
  %broadcast.splatinsert959 = insertelement <4 x i64> poison, i64 %trip.count.minus.1958, i64 0
  %broadcast.splat960 = shufflevector <4 x i64> %broadcast.splatinsert959, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 153100
  %i.afs = icmp uge <4 x i64> %broadcast.splat960, <i64 0, i64 1, i64 2, i64 3>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %broadcast.splat962, ptr align 4 %i.afr, <4 x i1> %i.afs), !tbaa !83
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %vector.body963, %bb.ek
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !83 ; 2 uses
  %.not475 = icmp eq i32 %i.afu, 0
  br i1 %.not475, label %bb.en, label %bb.el

bb.el:                                            ; preds = %._crit_edge627
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 153112 ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 8, !tbaa !83
  %.not476 = icmp eq i32 %i.afw, 0
  br i1 %.not476, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 %i.afu, ptr %i.afv, align 8, !tbaa !83
  br label %bb.en

bb.en:                                            ; preds = %.thread515, %._crit_edge627, %bb.el, %bb.em, %.thread517, %bb.ej, %bb.a
  ret void
}

declare void @_ZN6LibRaw22SetStandardIlluminantsEjPKc(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw18sony_arw2_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18phase_one_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20phase_one_load_raw_sEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20phase_one_load_raw_cEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare noundef i32 @_ZN6LibRaw18find_ifd_by_offsetEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw13cam_xyz_coeffEPA4_fPA3_d(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw12linear_tableEj(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw10nikon_e995Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw11nikon_e2100Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw10nikon_3700Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw10minolta_z2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw19canon_sraw_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18canon_600_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare noundef i32 @_ZN6LibRaw10canon_s2isEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #5

declare void @_ZN6LibRaw12simple_coeffEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare noundef signext i16 @_ZN6LibRaw16guess_byte_orderEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN6LibRaw25unpacked_load_raw_FujiDBPEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512), double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw19hasselblad_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20sinar_4shot_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw17leaf_hdr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw18panasonic_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw13sony_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw19kodak_c603_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw19kodak_c330_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw19kodak_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw20kodak_dc120_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

declare void @_ZN6LibRaw15rollei_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512)) #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f64.p0(<4 x double>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f64.p0(<16 x double>, ptr captures(none), <16 x i1>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}
end_hunk_0
begin_hunk_1_@llvm.masked.store.v16f64.p0
!78 = !{!"_ZTS18libraw_callbacks_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = !{!9, !9, i64 0}
!83 = !{!8, !8, i64 0}
!84 = !{!19, !51, i64 5584}
!85 = !{!19, !8, i64 544}
!86 = !{!19, !8, i64 48}
!87 = !{!19, !8, i64 381716}
!88 = !{!23, !23, i64 0}
!89 = !{!19, !23, i64 381670}
!90 = !{!19, !8, i64 153096}
!91 = !{!19, !31, i64 381696}
!92 = !{!19, !8, i64 381712}
!93 = !{!19, !23, i64 2920}
!94 = !{!19, !8, i64 384216}
!95 = !{!19, !8, i64 384220}
!96 = !{!19, !23, i64 384224}
!97 = !{!19, !27, i64 4020}
!98 = !{!19, !27, i64 4824}
!99 = !{!27, !27, i64 0}
!100 = !{!19, !23, i64 2030}
!101 = !{!19, !31, i64 381792}
!102 = !{!19, !8, i64 192680}
!103 = !{!104, !23, i64 4}
!104 = !{!"_ZTS18libraw_dng_color_t", !8, i64 0, !23, i64 4, !9, i64 8, !9, i64 72, !9, i64 120}
!105 = !{!19, !31, i64 381632}
!106 = !{!19, !8, i64 381840}
!107 = !{!19, !8, i64 381808}
!108 = !{!19, !8, i64 381744}
!109 = !{!19, !8, i64 153088}
!110 = !{!19, !8, i64 192712}
!111 = !{!19, !57, i64 192704}
!112 = !{!19, !8, i64 381664}
!113 = !{!19, !8, i64 381864}
!114 = !{!19, !8, i64 153872}
!115 = !{!19, !8, i64 381656}
!116 = !{!19, !8, i64 381660}
!117 = !{!19, !24, i64 40}
!118 = !{!19, !8, i64 381720}
!119 = !{!19, !8, i64 540}
!120 = distinct !{!120, !16, !121, !122}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = distinct !{!123, !16}
!124 = !{!19, !23, i64 381728}
!125 = !{!19, !68, i64 381592}
!126 = !{!127, !127, i64 0}
!127 = !{!"vtable pointer", !10, i64 0}
!128 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !130, file: !129, line: 102, type: !131, scopeLine: 102, containingType: !130, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!129 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!130 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !129, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !134, !135, !133}
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !136, line: 109, baseType: !137)
!136 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!137 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!138 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !130, file: !129, line: 101, type: !139, scopeLine: 101, containingType: !130, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!133, !134, !141, !142, !142}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 18, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !{!146, !146, i64 0}
!146 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!147 = !{!19, !8, i64 381880}
!148 = !{!19, !31, i64 381872}
!149 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !130, file: !129, line: 103, type: !150, scopeLine: 103, containingType: !130, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!150 = !DISubroutineType(types: !151)
!151 = !{!135, !134}
!152 = !{!19, !31, i64 381760}
!153 = !{!19, !9, i64 768416}
!154 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !130, file: !129, line: 105, type: !155, scopeLine: 105, containingType: !130, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!155 = !DISubroutineType(types: !156)
!156 = !{!133, !134}
!157 = distinct !{!157, !16}
!158 = distinct !{null}
!159 = !{!19, !8, i64 193496}
!160 = !{!19, !8, i64 528}
!161 = !{!19, !8, i64 5556}
!162 = !{!19, !23, i64 18}
!163 = !{!19, !23, i64 16}
!164 = !{!19, !23, i64 22}
!165 = !{!19, !23, i64 20}
!166 = !{!19, !8, i64 381836}
!167 = !{!19, !23, i64 24}
!168 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !130, file: !129, line: 104, type: !150, scopeLine: 104, containingType: !130, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!169 = distinct !{!169, !16}
!170 = !{!171, !8, i64 0}
!171 = !{!"_ZTS22libraw_custom_camera_t", !8, i64 0, !23, i64 4, !23, i64 6, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !23, i64 12, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 27, !23, i64 48}
!172 = !{!171, !9, i64 16}
!173 = !{!171, !23, i64 48}
!174 = !{!171, !23, i64 4}
!175 = !{!171, !23, i64 6}
!176 = !{!171, !9, i64 8}
!177 = !{!19, !23, i64 26}
!178 = !{!171, !9, i64 9}
!179 = !{!171, !9, i64 10}
!180 = !{!171, !9, i64 11}
!181 = !{!171, !9, i64 14}
!182 = !{!171, !23, i64 12}
!183 = !{!19, !8, i64 381860}
!184 = !{!19, !23, i64 1354}
!185 = !{!171, !9, i64 15}
!186 = !{!19, !8, i64 532}
!187 = !{!19, !8, i64 381832}
!188 = !{!19, !8, i64 381844}
!189 = !{!19, !31, i64 381704}
!190 = distinct !{!190, !16}
!191 = !{!19, !8, i64 1968}
!192 = !{!19, !23, i64 2016}
!193 = !{!19, !23, i64 2018}
!194 = !{!19, !14, i64 768264}
!195 = !{!19, !14, i64 768272}
!196 = !{!19, !8, i64 5552}
!197 = !{!19, !23, i64 193494}
!198 = !{!199, !8, i64 12}
!199 = !{!"_ZTS5jhead", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !9, i64 32, !9, i64 56, !9, i64 184, !9, i64 312, !9, i64 472, !21, i64 632}
!200 = !{!19, !23, i64 193492}
!201 = !{!199, !8, i64 8}
!202 = !{!24, !24, i64 0}
!203 = distinct !{!203, !16, !121, !122}
!204 = distinct !{!204, !16}
!205 = distinct !{!205, !206}
!206 = !{!"llvm.loop.unroll.disable"}
!207 = !{!19, !8, i64 5396}
!208 = !{!19, !8, i64 5392}
!209 = !{!19, !8, i64 384228}
!210 = !DISubprogram(name: "adobe_coeff", linkageName: "_ZN6LibRaw11adobe_coeffEjPKci", scope: !212, file: !211, line: 348, type: !213, scopeLine: 348, containingType: !212, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!211 = !DIFile(filename: "src/external/LibRaw/libraw/libraw.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "74f509d56e54266474f737b86ec23b25")
!212 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw", file: !211, line: 188, size: 6148096, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS6LibRaw")
!213 = !DISubroutineType(types: !214)
!214 = !{!133, !215, !216, !217, !133}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!216 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!220 = !{!19, !8, i64 5596}
!221 = !{!19, !8, i64 381828}
!222 = !{!19, !8, i64 381912}
!223 = !{!19, !8, i64 153476}
!224 = !{!19, !8, i64 192676}
!225 = distinct !{!225, !16}
!226 = !{!227, !31, i64 32}
!227 = !{!"_ZTS10tiff_ifd_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !31, i64 32, !31, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !228, i64 72, !8, i64 80, !228, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !27, i64 124, !31, i64 128, !31, i64 136, !8, i64 144, !9, i64 148, !55, i64 488, !8, i64 33464}
!228 = !{!"p1 long long", !14, i64 0}
!229 = !{!227, !8, i64 16}
!230 = !{!19, !23, i64 2028}
!231 = !{!19, !8, i64 536}
!232 = !{!19, !27, i64 192688}
!233 = !{!19, !8, i64 381688}
!234 = !{!19, !23, i64 3142}
!235 = distinct !{!235, !16}
!236 = !{!19, !8, i64 2948}
!237 = !{!238, !23, i64 4}
!238 = !{!"_ZTS23libraw_raw_inset_crop_t", !23, i64 0, !23, i64 2, !23, i64 4, !23, i64 6}
!239 = !{!238, !23, i64 6}
!240 = !{!238, !23, i64 2}
!241 = !{!238, !23, i64 0}
!242 = distinct !{!242, !16}
!243 = !{!19, !23, i64 3746}
!244 = !{!19, !23, i64 3748}
!245 = !{!19, !23, i64 3744}
!246 = !{!19, !23, i64 3742}
!247 = !{!19, !8, i64 2552}
!248 = !{!19, !8, i64 2564}
!249 = !{!19, !8, i64 2556}
!250 = !{!19, !8, i64 5376}
!251 = !{!19, !8, i64 381856}
!252 = !{!19, !8, i64 381852}
!253 = !{!19, !8, i64 381820}
!254 = !{!19, !74, i64 381824}
!255 = !{!104, !8, i64 0}
!256 = !{!227, !8, i64 488}
!257 = !{!227, !27, i64 33408}
!258 = !{!19, !27, i64 187168}
!259 = !{!227, !8, i64 56}
!260 = !{!227, !8, i64 8}
!261 = !{!262, !8, i64 0}
!262 = !{!"_ZTS22libraw_dng_rawopcode_t", !8, i64 0, !14, i64 8}
!263 = !{!262, !14, i64 8}
!264 = !{!227, !27, i64 33328}
!265 = !{!19, !27, i64 187088}
!266 = !{!227, !8, i64 16908}
!267 = !{!19, !8, i64 170668}
!268 = !{!227, !8, i64 33372}
!269 = !{!19, !8, i64 187132}
!270 = !{!227, !31, i64 128}
!271 = !{!19, !31, i64 381768}
!272 = !{!227, !31, i64 136}
!273 = !{!227, !8, i64 144}
!274 = distinct !{!274, !16}
!275 = distinct !{!275, !16}
!276 = distinct !{!276, !16}
!277 = distinct !{!277, !206}
!278 = distinct !{!278, !16}
!279 = !{!227, !27, i64 33412}
!280 = !{!19, !27, i64 187172}
!281 = distinct !{!281, !16, !121, !122}
!282 = !{!"branch_weights", i32 4, i32 28}
!283 = distinct !{!283, !16, !121, !122}
!284 = distinct !{!284, !16, !122, !121}
end_hunk_1
