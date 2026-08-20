loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dlaein_:bb.a

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1343 ] ; 3 uses
  %i.qy = getelementptr [8 x i8], ptr %7, i64 %index1344 ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 96
  store <4 x double> %broadcast.splat, ptr %i.qy, align 8, !tbaa !9, !alias.scope !62, !noalias !64
  store <4 x double> %broadcast.splat, ptr %i.qz, align 8, !tbaa !9, !alias.scope !62, !noalias !64
  store <4 x double> %broadcast.splat, ptr %i.ra, align 8, !tbaa !9, !alias.scope !62, !noalias !64
  store <4 x double> %broadcast.splat, ptr %i.rb, align 8, !tbaa !9, !alias.scope !62, !noalias !64
  %i.rc = getelementptr [8 x i8], ptr %8, i64 %index1344 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 64
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 96
  store <4 x double> zeroinitializer, ptr %i.rc, align 8, !tbaa !9, !alias.scope !66, !noalias !59
  store <4 x double> zeroinitializer, ptr %i.rd, align 8, !tbaa !9, !alias.scope !66, !noalias !59
  store <4 x double> zeroinitializer, ptr %i.re, align 8, !tbaa !9, !alias.scope !66, !noalias !59
  store <4 x double> zeroinitializer, ptr %i.rf, align 8, !tbaa !9, !alias.scope !66, !noalias !59
  %index.next1345 = add nuw i64 %index1344, 16    ; 2 uses
  %i.rg = icmp eq i64 %index.next1345, %n.vec1342
  br i1 %i.rg, label %middle.block1346, label %vector.body1343, !llvm.loop !67

middle.block1346:                                 ; preds = %vector.body1343
  %cmp.n1347 = icmp eq i64 %n.vec1342, %i.qs
  br i1 %cmp.n1347, label %.loopexit899, label %vec.epilog.iter.check1351

vec.epilog.iter.check1351:                        ; preds = %middle.block1346
  %min.epilog.iters.check1352 = icmp eq i64 %i.qv, 0
  br i1 %min.epilog.iters.check1352, label %.lr.ph910.preheader, label %vec.epilog.ph1353, !prof !20

vec.epilog.ph1353:                                ; preds = %vector.main.loop.iter.check1339, %vec.epilog.iter.check1351
  %vec.epilog.resume.val1348 = phi i64 [ %n.vec1342, %vec.epilog.iter.check1351 ], [ 0, %vector.main.loop.iter.check1339 ]
  %n.vec1354 = and i64 %i.qs, 2147483644          ; 3 uses
  %i.rh = or disjoint i64 %n.vec1354, 1
  %i.ri = load double, ptr %12, align 8, !tbaa !9, !alias.scope !59
  %broadcast.splatinsert1357 = insertelement <4 x double> poison, double %i.ri, i64 0
  %broadcast.splat1358 = shufflevector <4 x double> %broadcast.splatinsert1357, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1355

vec.epilog.vector.body1355:                       ; preds = %vec.epilog.vector.body1355, %vec.epilog.ph1353
  %index1356 = phi i64 [ %vec.epilog.resume.val1348, %vec.epilog.ph1353 ], [ %index.next1359, %vec.epilog.vector.body1355 ] ; 3 uses
  %i.rj = getelementptr [8 x i8], ptr %7, i64 %index1356
  store <4 x double> %broadcast.splat1358, ptr %i.rj, align 8, !tbaa !9, !alias.scope !62, !noalias !64
  %i.rk = getelementptr [8 x i8], ptr %8, i64 %index1356
  store <4 x double> zeroinitializer, ptr %i.rk, align 8, !tbaa !9, !alias.scope !66, !noalias !59
  %index.next1359 = add nuw i64 %index1356, 4     ; 2 uses
  %i.rl = icmp eq i64 %index.next1359, %n.vec1354
  br i1 %i.rl, label %vec.epilog.middle.block1360, label %vec.epilog.vector.body1355, !llvm.loop !68

vec.epilog.middle.block1360:                      ; preds = %vec.epilog.vector.body1355
  %cmp.n1361 = icmp eq i64 %n.vec1354, %i.qs
  br i1 %cmp.n1361, label %.loopexit899, label %.lr.ph910.preheader

.lr.ph910.preheader:                              ; preds = %vector.memcheck1324, %iter.check1349, %vec.epilog.iter.check1351, %vec.epilog.middle.block1360
  %indvars.iv1054.ph = phi i64 [ 1, %iter.check1349 ], [ 1, %vector.memcheck1324 ], [ %i.qw, %vec.epilog.iter.check1351 ], [ %i.rh, %vec.epilog.middle.block1360 ] ; 4 uses
  %i.rm = sub nsw i64 %wide.trip.count, %indvars.iv1054.ph
  %i.rn = zext nneg i32 %i.ah to i64
  %i.ro = sub nsw i64 %i.rn, %indvars.iv1054.ph
  %xtraiter1605 = and i64 %i.rm, 7                ; 2 uses
  %lcmp.mod1606.not = icmp eq i64 %xtraiter1605, 0
  br i1 %lcmp.mod1606.not, label %.lr.ph910.prol.loopexit, label %.lr.ph910.prol

.lr.ph910.prol:                                   ; preds = %.lr.ph910.preheader, %.lr.ph910.prol
  %indvars.iv1054.prol = phi i64 [ %indvars.iv.next1055.prol, %.lr.ph910.prol ], [ %indvars.iv1054.ph, %.lr.ph910.preheader ] ; 3 uses
  %prol.iter1607 = phi i64 [ %prol.iter1607.next, %.lr.ph910.prol ], [ 0, %.lr.ph910.preheader ]
  %i.rp = load double, ptr %12, align 8, !tbaa !9
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1054.prol
  store double %i.rp, ptr %i.rq, align 8, !tbaa !9
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1054.prol
  store double 0.000000e+00, ptr %i.rr, align 8, !tbaa !9
  %indvars.iv.next1055.prol = add nuw nsw i64 %indvars.iv1054.prol, 1 ; 2 uses
  %prol.iter1607.next = add i64 %prol.iter1607, 1 ; 2 uses
  %prol.iter1607.cmp.not = icmp eq i64 %prol.iter1607.next, %xtraiter1605
  br i1 %prol.iter1607.cmp.not, label %.lr.ph910.prol.loopexit, label %.lr.ph910.prol, !llvm.loop !69

.lr.ph910.prol.loopexit:                          ; preds = %.lr.ph910.prol, %.lr.ph910.preheader
  %indvars.iv1054.unr = phi i64 [ %indvars.iv1054.ph, %.lr.ph910.preheader ], [ %indvars.iv.next1055.prol, %.lr.ph910.prol ]
  %i.rs = icmp ult i64 %i.ro, 7
  br i1 %i.rs, label %.loopexit899, label %.lr.ph910

.lr.ph910:                                        ; preds = %.lr.ph910.prol.loopexit, %.lr.ph910
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055.7, %.lr.ph910 ], [ %indvars.iv1054.unr, %.lr.ph910.prol.loopexit ] ; 11 uses
  %i.rt = load double, ptr %12, align 8, !tbaa !9
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv1054
  store double %i.rt, ptr %i.ru, align 8, !tbaa !9
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv1054
  store double 0.000000e+00, ptr %i.rv, align 8, !tbaa !9
  %i.rw = load double, ptr %12, align 8, !tbaa !9
  %i.rx = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1054
  store double %i.rw, ptr %i.rx, align 8, !tbaa !9
  %i.ry = getelementptr [8 x i8], ptr %8, i64 %indvars.iv1054
  store double 0.000000e+00, ptr %i.ry, align 8, !tbaa !9
  %indvars.iv.next1055.1 = add nuw nsw i64 %indvars.iv1054, 2 ; 2 uses
  %i.rz = load double, ptr %12, align 8, !tbaa !9
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1055.1
  store double %i.rz, ptr %i.sa, align 8, !tbaa !9
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1055.1
  store double 0.000000e+00, ptr %i.sb, align 8, !tbaa !9
  %indvars.iv.next1055.2 = add nuw nsw i64 %indvars.iv1054, 3 ; 2 uses
  %i.sc = load double, ptr %12, align 8, !tbaa !9
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1055.2
  store double %i.sc, ptr %i.sd, align 8, !tbaa !9
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1055.2
  store double 0.000000e+00, ptr %i.se, align 8, !tbaa !9
  %indvars.iv.next1055.3 = add nuw nsw i64 %indvars.iv1054, 4 ; 2 uses
  %i.sf = load double, ptr %12, align 8, !tbaa !9
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1055.3
  store double %i.sf, ptr %i.sg, align 8, !tbaa !9
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1055.3
  store double 0.000000e+00, ptr %i.sh, align 8, !tbaa !9
  %indvars.iv.next1055.4 = add nuw nsw i64 %indvars.iv1054, 5 ; 2 uses
  %i.si = load double, ptr %12, align 8, !tbaa !9
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1055.4
  store double %i.si, ptr %i.sj, align 8, !tbaa !9
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1055.4
  store double 0.000000e+00, ptr %i.sk, align 8, !tbaa !9
  %indvars.iv.next1055.5 = add nuw nsw i64 %indvars.iv1054, 6 ; 2 uses
  %i.sl = load double, ptr %12, align 8, !tbaa !9
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1055.5
  store double %i.sl, ptr %i.sm, align 8, !tbaa !9
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1055.5
  store double 0.000000e+00, ptr %i.sn, align 8, !tbaa !9
  %indvars.iv.next1055.6 = add nuw nsw i64 %indvars.iv1054, 7 ; 2 uses
  %i.so = load double, ptr %12, align 8, !tbaa !9
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next1055.6
  store double %i.so, ptr %i.sp, align 8, !tbaa !9
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next1055.6
  store double 0.000000e+00, ptr %i.sq, align 8, !tbaa !9
  %indvars.iv.next1055.7 = add nuw nsw i64 %indvars.iv1054, 8 ; 2 uses
  %exitcond1057.not.7 = icmp eq i64 %indvars.iv.next1055.7, %wide.trip.count
  br i1 %exitcond1057.not.7, label %.loopexit899, label %.lr.ph910, !llvm.loop !70

bb.x:                                             ; preds = %bb.v
  %i.sr = tail call double @dnrm2_(ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull @c__1) #7
  store double %i.sr, ptr %i.f, align 8, !tbaa !9
  %i.ss = tail call double @dnrm2_(ptr noundef nonnull %2, ptr noundef %8, ptr noundef nonnull @c__1) #7
  store double %i.ss, ptr %i.g, align 8, !tbaa !9
  %i.st = call double @dlapy2_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #7 ; 2 uses
  %i.su = load double, ptr %12, align 8, !tbaa !9
  %i.sv = fmul double %i.z, %i.su
  %i.sw = fcmp oge double %i.st, %i.ag
  %i.sx = select i1 %i.sw, double %i.st, double %i.ag
  %i.sy = fdiv double %i.sv, %i.sx
  store double %i.sy, ptr %i.n, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.n, ptr noundef %7, ptr noundef nonnull @c__1) #7
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.n, ptr noundef %8, ptr noundef nonnull @c__1) #7
  br label %.loopexit899

.loopexit899:                                     ; preds = %.lr.ph910.prol.loopexit, %.lr.ph910, %middle.block1346, %vec.epilog.middle.block1360, %bb.w, %bb.x
  %i.sz = load i32, ptr %0, align 4, !tbaa !8
  %.not863.not = icmp eq i32 %i.sz, 0             ; 2 uses
  %i.ta = load double, ptr %6, align 8, !tbaa !9  ; 2 uses
  br i1 %.not863.not, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %.loopexit899
  %i.tb = fneg double %i.ta
  %i.tc = sext i32 %i.t to i64                    ; 18 uses
  %i.td = getelementptr [8 x i8], ptr %i.v, i64 %i.tc
  %i.te = getelementptr i8, ptr %i.td, i64 16
  store double %i.tb, ptr %i.te, align 8, !tbaa !9
  %i.tf = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not867911 = icmp slt i32 %i.tf, 2
  br i1 %.not867911, label %._crit_edge930, label %.lr.ph929.preheader

.lr.ph929.preheader:                              ; preds = %bb.y
  %i.tg = add i32 %i.t, 3
  %i.th = sext i32 %i.tg to i64
  %i.ti = add nsw i64 %i.u, %i.th
  %i.tj = shl nsw i64 %i.ti, 3
  %scevgep = getelementptr i8, ptr %9, i64 %i.tj
  %i.tk = add nsw i32 %i.tf, -1                   ; 2 uses
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = shl nuw nsw i64 %i.tl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.tm, i1 false), !tbaa !9
  store i32 %i.tk, ptr %i.c, align 4, !tbaa !8
  %i.tn = sext i32 %i.o to i64
  %ident.check1569.not = icmp eq i32 %i.t, 1
  %ident.check1580.not = icmp eq i32 %i.t, 1
  br label %.lr.ph929

.lr.ph929:                                        ; preds = %.lr.ph929.preheader, %bb.ad
  %indvar1573 = phi i64 [ 0, %.lr.ph929.preheader ], [ %indvar.next1574, %bb.ad ] ; 11 uses
  %indvars.iv1075 = phi i64 [ 1, %.lr.ph929.preheader ], [ %indvars.iv.next1076, %bb.ad ] ; 14 uses
  %indvars.iv1061 = phi i64 [ 2, %.lr.ph929.preheader ], [ %indvars.iv.next1062, %bb.ad ] ; 13 uses
  %i.to = shl nuw nsw i64 %indvar1573, 4
  %i.tp = getelementptr i8, ptr %9, i64 %i.to
  %scevgep1584 = getelementptr i8, ptr %i.tp, i64 16
  %i.tq = shl nuw nsw i64 %indvar1573, 4
  %i.tr = getelementptr i8, ptr %9, i64 %i.tq
  %scevgep1575 = getelementptr i8, ptr %i.tr, i64 16
  %indvars1077 = trunc i64 %indvars.iv1075 to i32 ; 2 uses
  %i.ts = mul nsw i64 %indvars.iv1075, %i.tc      ; 5 uses
  %i.tt = mul nsw i32 %i.t, %indvars1077
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv1075
  %i.tw = getelementptr [8 x i8], ptr %i.tv, i64 %i.tu ; 5 uses
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 1 ; 11 uses
  %indvars = trunc i64 %indvars.iv.next1076 to i32
  %i.tx = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next1076
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %i.ts ; 4 uses
  %i.tz = call double @dlapy2_(ptr noundef %i.tw, ptr noundef %i.ty) #7 ; 3 uses
  %i.ua = mul nsw i64 %indvars.iv1075, %i.tn
  %i.ub = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.next1076
  %i.uc = getelementptr [8 x i8], ptr %i.ub, i64 %i.ua
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !9 ; 4 uses
  %i.ue = call double @llvm.fabs.f64(double %i.ud)
  %i.uf = fcmp olt double %i.tz, %i.ue
  br i1 %i.uf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph929
  %16 = load <2 x double>, ptr %i.tw, align 8, !tbaa !9
  %17 = insertelement <2 x double> poison, double %i.ud, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fdiv <2 x double> %16, %18                ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0    ; 3 uses
  store double %20, ptr %i.l, align 8, !tbaa !9
  %21 = extractelement <2 x double> %19, i64 1    ; 2 uses
  store double %21, ptr %i.k, align 8, !tbaa !9
  store double %i.ud, ptr %i.tw, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ty, align 8, !tbaa !9
  %i.ug = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %i.uh = sext i32 %i.ug to i64
  %.not877921.not = icmp slt i64 %indvars.iv1075, %i.uh
  %i.ui = fneg double %21                         ; 7 uses
  br i1 %.not877921.not, label %.lver.check1581, label %.._crit_edge925_crit_edge

.._crit_edge925_crit_edge:                        ; preds = %bb.z
  %.pre1199 = mul nsw i64 %indvars.iv.next1076, %i.tc
  br label %._crit_edge925

.lver.check1581:                                  ; preds = %bb.z
  %i.uj = fneg double %20                         ; 6 uses
  %i.uk = mul nsw i64 %indvars.iv.next1076, %i.tc ; 5 uses
  %i.ul = add i32 %i.ug, 1
  %wide.trip.count1073 = zext i32 %i.ul to i64    ; 6 uses
  %invariant.gep1246 = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next1076 ; 6 uses
  %invariant.gep1248 = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv1075 ; 6 uses
  %invariant.gep1250 = getelementptr [8 x i8], ptr %i.v, i64 %i.ts ; 6 uses
  %invariant.gep1252 = getelementptr [8 x i8], ptr %i.v, i64 %i.uk ; 6 uses
  br i1 %ident.check1580.not, label %.ph1582, label %.ph1582.lver.orig.preheader

.ph1582.lver.orig.preheader:                      ; preds = %.lver.check1581
  %reass.sub1692 = sub i64 %wide.trip.count1073, %indvar1573
  %reass.sub1693 = sub i64 %wide.trip.count1073, %indvar1573
  %xtraiter1614 = and i64 %reass.sub1692, 1
  %lcmp.mod1615.not = icmp eq i64 %xtraiter1614, 0
  br i1 %lcmp.mod1615.not, label %.ph1582.lver.orig.prol.loopexit, label %.ph1582.lver.orig.prol

.ph1582.lver.orig.prol:                           ; preds = %.ph1582.lver.orig.preheader
  %i.um = mul nsw i64 %indvars.iv1061, %i.tc      ; 2 uses
  %gep1247.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1246, i64 %i.um ; 2 uses
  %i.un = load double, ptr %gep1247.lver.orig.prol, align 8, !tbaa !9 ; 3 uses
  %gep1249.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1248, i64 %i.um ; 2 uses
  %i.uo = load double, ptr %gep1249.lver.orig.prol, align 8, !tbaa !9
  %i.up = call double @llvm.fmuladd.f64(double %i.uj, double %i.un, double %i.uo)
  store double %i.up, ptr %gep1247.lver.orig.prol, align 8, !tbaa !9
  %indvars.iv.next1071.lver.orig.prol = add nuw nsw i64 %indvars.iv1061, 1 ; 3 uses
  %gep1251.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1250, i64 %indvars.iv.next1071.lver.orig.prol ; 2 uses
  %i.uq = load double, ptr %gep1251.lver.orig.prol, align 8, !tbaa !9
  %i.ur = call double @llvm.fmuladd.f64(double %i.ui, double %i.un, double %i.uq)
  %gep1253.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1252, i64 %indvars.iv.next1071.lver.orig.prol
  store double %i.ur, ptr %gep1253.lver.orig.prol, align 8, !tbaa !9
  store double %i.un, ptr %gep1249.lver.orig.prol, align 8, !tbaa !9
  store double 0.000000e+00, ptr %gep1251.lver.orig.prol, align 8, !tbaa !9
  br label %.ph1582.lver.orig.prol.loopexit

.ph1582.lver.orig.prol.loopexit:                  ; preds = %.ph1582.lver.orig.prol, %.ph1582.lver.orig.preheader
  %indvars.iv1070.lver.orig.unr = phi i64 [ %indvars.iv1061, %.ph1582.lver.orig.preheader ], [ %indvars.iv.next1071.lver.orig.prol, %.ph1582.lver.orig.prol ]
  %i.us = icmp eq i64 %reass.sub1693, 3
  br i1 %i.us, label %._crit_edge925, label %.ph1582.lver.orig

.ph1582.lver.orig:                                ; preds = %.ph1582.lver.orig.prol.loopexit, %.ph1582.lver.orig
  %indvars.iv1070.lver.orig = phi i64 [ %indvars.iv.next1071.lver.orig.1, %.ph1582.lver.orig ], [ %indvars.iv1070.lver.orig.unr, %.ph1582.lver.orig.prol.loopexit ] ; 3 uses
  %i.ut = mul nsw i64 %indvars.iv1070.lver.orig, %i.tc ; 2 uses
  %gep1247.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1246, i64 %i.ut ; 2 uses
  %i.uu = load double, ptr %gep1247.lver.orig, align 8, !tbaa !9 ; 3 uses
  %gep1249.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1248, i64 %i.ut ; 2 uses
  %i.uv = load double, ptr %gep1249.lver.orig, align 8, !tbaa !9
  %i.uw = call double @llvm.fmuladd.f64(double %i.uj, double %i.uu, double %i.uv)
  store double %i.uw, ptr %gep1247.lver.orig, align 8, !tbaa !9
  %indvars.iv.next1071.lver.orig = add nuw nsw i64 %indvars.iv1070.lver.orig, 1 ; 3 uses
  %gep1251.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1250, i64 %indvars.iv.next1071.lver.orig ; 2 uses
  %i.ux = load double, ptr %gep1251.lver.orig, align 8, !tbaa !9
  %i.uy = call double @llvm.fmuladd.f64(double %i.ui, double %i.uu, double %i.ux)
  %gep1253.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1252, i64 %indvars.iv.next1071.lver.orig
  store double %i.uy, ptr %gep1253.lver.orig, align 8, !tbaa !9
  store double %i.uu, ptr %gep1249.lver.orig, align 8, !tbaa !9
  store double 0.000000e+00, ptr %gep1251.lver.orig, align 8, !tbaa !9
  %i.uz = mul nsw i64 %indvars.iv.next1071.lver.orig, %i.tc ; 2 uses
  %gep1247.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1246, i64 %i.uz ; 2 uses
  %i.va = load double, ptr %gep1247.lver.orig.1, align 8, !tbaa !9 ; 3 uses
  %gep1249.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1248, i64 %i.uz ; 2 uses
  %i.vb = load double, ptr %gep1249.lver.orig.1, align 8, !tbaa !9
  %i.vc = call double @llvm.fmuladd.f64(double %i.uj, double %i.va, double %i.vb)
  store double %i.vc, ptr %gep1247.lver.orig.1, align 8, !tbaa !9
  %indvars.iv.next1071.lver.orig.1 = add nuw nsw i64 %indvars.iv1070.lver.orig, 2 ; 4 uses
  %gep1251.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1250, i64 %indvars.iv.next1071.lver.orig.1 ; 2 uses
  %i.vd = load double, ptr %gep1251.lver.orig.1, align 8, !tbaa !9
  %i.ve = call double @llvm.fmuladd.f64(double %i.ui, double %i.va, double %i.vd)
  %gep1253.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1252, i64 %indvars.iv.next1071.lver.orig.1
  store double %i.ve, ptr %gep1253.lver.orig.1, align 8, !tbaa !9
  store double %i.va, ptr %gep1249.lver.orig.1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %gep1251.lver.orig.1, align 8, !tbaa !9
  %exitcond1074.not.lver.orig.1 = icmp eq i64 %indvars.iv.next1071.lver.orig.1, %wide.trip.count1073
  br i1 %exitcond1074.not.lver.orig.1, label %._crit_edge925, label %.ph1582.lver.orig, !llvm.loop !71

.ph1582:                                          ; preds = %.lver.check1581
  %load_initial1585 = load double, ptr %scevgep1584, align 8 ; 4 uses
  %reass.sub1694 = sub i64 %wide.trip.count1073, %indvar1573
  %reass.sub1695 = sub i64 %wide.trip.count1073, %indvar1573
  %xtraiter1619 = and i64 %reass.sub1694, 1
  %lcmp.mod1620.not = icmp eq i64 %xtraiter1619, 0
  br i1 %lcmp.mod1620.not, label %.prol.loopexit1618, label %.prol.loopexit1618.unr-lcssa

.prol.loopexit1618.unr-lcssa:                     ; preds = %.ph1582
  %i.vf = mul nuw nsw i64 %indvars.iv1061, %i.tc  ; 2 uses
  %gep1247.prol = getelementptr [8 x i8], ptr %invariant.gep1246, i64 %i.vf
  %gep1249.prol = getelementptr [8 x i8], ptr %invariant.gep1248, i64 %i.vf ; 2 uses
  %i.vg = load double, ptr %gep1249.prol, align 8, !tbaa !9
  %i.vh = call double @llvm.fmuladd.f64(double %i.uj, double %load_initial1585, double %i.vg)
  store double %i.vh, ptr %gep1247.prol, align 8, !tbaa !9
  %indvars.iv.next1071.prol = add nuw nsw i64 %indvars.iv1061, 1 ; 3 uses
  %gep1251.prol = getelementptr [8 x i8], ptr %invariant.gep1250, i64 %indvars.iv.next1071.prol ; 2 uses
  %i.vi = load double, ptr %gep1251.prol, align 8, !tbaa !9
  %i.vj = call double @llvm.fmuladd.f64(double %i.ui, double %load_initial1585, double %i.vi) ; 2 uses
  %gep1253.prol = getelementptr [8 x i8], ptr %invariant.gep1252, i64 %indvars.iv.next1071.prol
  store double %i.vj, ptr %gep1253.prol, align 8, !tbaa !9
  store double %load_initial1585, ptr %gep1249.prol, align 8, !tbaa !9
  store double 0.000000e+00, ptr %gep1251.prol, align 8, !tbaa !9
  br label %.prol.loopexit1618

.prol.loopexit1618:                               ; preds = %.prol.loopexit1618.unr-lcssa, %.ph1582
  %store_forwarded1586.unr = phi double [ %load_initial1585, %.ph1582 ], [ %i.vj, %.prol.loopexit1618.unr-lcssa ]
  %indvars.iv1070.unr = phi i64 [ %indvars.iv1061, %.ph1582 ], [ %indvars.iv.next1071.prol, %.prol.loopexit1618.unr-lcssa ]
  %i.vk = icmp eq i64 %reass.sub1695, 3
  br i1 %i.vk, label %._crit_edge925, label %.ph1582.new

.ph1582.new:                                      ; preds = %.prol.loopexit1618, %.ph1582.new
  %store_forwarded1586 = phi double [ %i.vu, %.ph1582.new ], [ %store_forwarded1586.unr, %.prol.loopexit1618 ] ; 3 uses
  %indvars.iv1070 = phi i64 [ %indvars.iv.next1071.1, %.ph1582.new ], [ %indvars.iv1070.unr, %.prol.loopexit1618 ] ; 3 uses
  %i.vl = mul nuw nsw i64 %indvars.iv1070, %i.tc  ; 2 uses
  %gep1247 = getelementptr [8 x i8], ptr %invariant.gep1246, i64 %i.vl
  %gep1249 = getelementptr [8 x i8], ptr %invariant.gep1248, i64 %i.vl ; 2 uses
  %i.vm = load double, ptr %gep1249, align 8, !tbaa !9
  %i.vn = call double @llvm.fmuladd.f64(double %i.uj, double %store_forwarded1586, double %i.vm)
  store double %i.vn, ptr %gep1247, align 8, !tbaa !9
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 1 ; 3 uses
  %gep1251 = getelementptr [8 x i8], ptr %invariant.gep1250, i64 %indvars.iv.next1071 ; 2 uses
  %i.vo = load double, ptr %gep1251, align 8, !tbaa !9
  %i.vp = call double @llvm.fmuladd.f64(double %i.ui, double %store_forwarded1586, double %i.vo) ; 4 uses
  %gep1253 = getelementptr [8 x i8], ptr %invariant.gep1252, i64 %indvars.iv.next1071
  store double %i.vp, ptr %gep1253, align 8, !tbaa !9
  store double %store_forwarded1586, ptr %gep1249, align 8, !tbaa !9
  store double 0.000000e+00, ptr %gep1251, align 8, !tbaa !9
  %i.vq = mul nuw nsw i64 %indvars.iv.next1071, %i.tc ; 2 uses
  %gep1247.1 = getelementptr [8 x i8], ptr %invariant.gep1246, i64 %i.vq
  %gep1249.1 = getelementptr [8 x i8], ptr %invariant.gep1248, i64 %i.vq ; 2 uses
  %i.vr = load double, ptr %gep1249.1, align 8, !tbaa !9
  %i.vs = call double @llvm.fmuladd.f64(double %i.uj, double %i.vp, double %i.vr)
  store double %i.vs, ptr %gep1247.1, align 8, !tbaa !9
  %indvars.iv.next1071.1 = add nuw nsw i64 %indvars.iv1070, 2 ; 4 uses
  %gep1251.1 = getelementptr [8 x i8], ptr %invariant.gep1250, i64 %indvars.iv.next1071.1 ; 2 uses
  %i.vt = load double, ptr %gep1251.1, align 8, !tbaa !9
  %i.vu = call double @llvm.fmuladd.f64(double %i.ui, double %i.vp, double %i.vt) ; 2 uses
  %gep1253.1 = getelementptr [8 x i8], ptr %invariant.gep1252, i64 %indvars.iv.next1071.1
  store double %i.vu, ptr %gep1253.1, align 8, !tbaa !9
  store double %i.vp, ptr %gep1249.1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %gep1251.1, align 8, !tbaa !9
  %exitcond1074.not.1 = icmp eq i64 %indvars.iv.next1071.1, %wide.trip.count1073
  br i1 %exitcond1074.not.1, label %._crit_edge925, label %.ph1582.new, !llvm.loop !71

._crit_edge925:                                   ; preds = %.ph1582.lver.orig.prol.loopexit, %.ph1582.lver.orig, %.prol.loopexit1618, %.ph1582.new, %.._crit_edge925_crit_edge
  %.pre-phi1200 = phi i64 [ %.pre1199, %.._crit_edge925_crit_edge ], [ %i.uk, %.prol.loopexit1618 ], [ %i.uk, %.ph1582.new ], [ %i.uk, %.ph1582.lver.orig ], [ %i.uk, %.ph1582.lver.orig.prol.loopexit ] ; 2 uses
  %i.vv = load double, ptr %6, align 8, !tbaa !9
  %i.vw = fneg double %i.vv
  %i.vx = add nuw nsw i64 %indvars.iv1075, 2      ; 2 uses
  %i.vy = add nsw i64 %i.vx, %i.ts                ; 2 uses
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.vy
  store double %i.vw, ptr %i.vz, align 8, !tbaa !9
  %i.wa = load double, ptr %6, align 8, !tbaa !9
  %i.wb = getelementptr [8 x i8], ptr %i.v, i64 %.pre-phi1200
  %i.wc = getelementptr [8 x i8], ptr %i.wb, i64 %indvars.iv.next1076 ; 2 uses
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !9
  %i.we = call double @llvm.fmuladd.f64(double %i.ui, double %i.wa, double %i.wd)
  store double %i.we, ptr %i.wc, align 8, !tbaa !9
  %i.wf = load double, ptr %6, align 8, !tbaa !9
  %i.wg = getelementptr [8 x i8], ptr %i.v, i64 %.pre-phi1200
  %i.wh = getelementptr [8 x i8], ptr %i.wg, i64 %i.vx ; 2 uses
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !9
  %i.wj = call double @llvm.fmuladd.f64(double %20, double %i.wf, double %i.wi)
  store double %i.wj, ptr %i.wh, align 8, !tbaa !9
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph929
  %i.wk = fcmp oeq double %i.tz, 0.000000e+00
  br i1 %i.wk, label %bb.ab, label %._crit_edge1180

._crit_edge1180:                                  ; preds = %bb.aa
  %.pre = load double, ptr %i.ty, align 8, !tbaa !9
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.wl = load double, ptr %12, align 8, !tbaa !9
  store double %i.wl, ptr %i.tw, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ty, align 8, !tbaa !9
  %i.wm = load double, ptr %12, align 8, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge1180, %bb.ab
  %i.wn = phi double [ 0.000000e+00, %bb.ab ], [ %.pre, %._crit_edge1180 ]
  %.0831 = phi double [ %i.wm, %bb.ab ], [ %i.tz, %._crit_edge1180 ] ; 2 uses
  %i.wo = fdiv double %i.ud, %.0831
  %i.wp = fdiv double %i.wo, %.0831               ; 2 uses
  %i.wq = load double, ptr %i.tw, align 8, !tbaa !9
  %i.wr = fmul double %i.wq, %i.wp                ; 2 uses
  store double %i.wr, ptr %i.l, align 8, !tbaa !9
  %i.ws = fneg double %i.wn
  %i.wt = fmul double %i.wp, %i.ws                ; 13 uses
  store double %i.wt, ptr %i.k, align 8, !tbaa !9
  %i.wu = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %i.wv = sext i32 %i.wu to i64
  %.not876916.not = icmp slt i64 %indvars.iv1075, %i.wv
  br i1 %.not876916.not, label %.lver.check1570, label %.._crit_edge920_crit_edge

.._crit_edge920_crit_edge:                        ; preds = %bb.ac
  %.pre1203 = mul nsw i64 %indvars.iv.next1076, %i.tc
  br label %._crit_edge920

.lver.check1570:                                  ; preds = %bb.ac
  %i.ww = fneg double %i.wr                       ; 12 uses
  %i.wx = mul nsw i64 %indvars.iv.next1076, %i.tc ; 5 uses
  %i.wy = add i32 %i.wu, 1
  %wide.trip.count1066 = zext i32 %i.wy to i64    ; 6 uses
  %invariant.gep1238 = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next1076 ; 6 uses
  %invariant.gep1240 = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv1075 ; 6 uses
  %invariant.gep1242 = getelementptr [8 x i8], ptr %i.v, i64 %i.ts ; 6 uses
  %invariant.gep1244 = getelementptr [8 x i8], ptr %i.v, i64 %i.wx ; 6 uses
  br i1 %ident.check1569.not, label %.ph1571, label %.ph1571.lver.orig.preheader

.ph1571.lver.orig.preheader:                      ; preds = %.lver.check1570
  %reass.sub = sub i64 %wide.trip.count1066, %indvar1573
  %reass.sub1689 = sub i64 %wide.trip.count1066, %indvar1573
  %xtraiter1608 = and i64 %reass.sub, 1
  %lcmp.mod1609.not = icmp eq i64 %xtraiter1608, 0
  br i1 %lcmp.mod1609.not, label %.ph1571.lver.orig.prol.loopexit, label %.ph1571.lver.orig.prol

.ph1571.lver.orig.prol:                           ; preds = %.ph1571.lver.orig.preheader
  %i.wz = mul nsw i64 %indvars.iv1061, %i.tc      ; 2 uses
  %gep1239.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1238, i64 %i.wz ; 2 uses
  %i.xa = load double, ptr %gep1239.lver.orig.prol, align 8, !tbaa !9
  %gep1241.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1240, i64 %i.wz
  %i.xb = load double, ptr %gep1241.lver.orig.prol, align 8, !tbaa !9 ; 2 uses
  %i.xc = call double @llvm.fmuladd.f64(double %i.ww, double %i.xb, double %i.xa)
  %indvars.iv.next1064.lver.orig.prol = add nuw nsw i64 %indvars.iv1061, 1 ; 3 uses
  %gep1243.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1242, i64 %indvars.iv.next1064.lver.orig.prol ; 2 uses
  %i.xd = load double, ptr %gep1243.lver.orig.prol, align 8, !tbaa !9
  %i.xe = call double @llvm.fmuladd.f64(double %i.wt, double %i.xd, double %i.xc)
  store double %i.xe, ptr %gep1239.lver.orig.prol, align 8, !tbaa !9
  %i.xf = load double, ptr %gep1243.lver.orig.prol, align 8, !tbaa !9
  %i.xg = fneg double %i.xb
  %i.xh = fmul double %i.wt, %i.xg
  %i.xi = call double @llvm.fmuladd.f64(double %i.ww, double %i.xf, double %i.xh)
  %gep1245.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep1244, i64 %indvars.iv.next1064.lver.orig.prol
  store double %i.xi, ptr %gep1245.lver.orig.prol, align 8, !tbaa !9
  br label %.ph1571.lver.orig.prol.loopexit

.ph1571.lver.orig.prol.loopexit:                  ; preds = %.ph1571.lver.orig.prol, %.ph1571.lver.orig.preheader
  %indvars.iv1063.lver.orig.unr = phi i64 [ %indvars.iv1061, %.ph1571.lver.orig.preheader ], [ %indvars.iv.next1064.lver.orig.prol, %.ph1571.lver.orig.prol ]
  %i.xj = icmp eq i64 %reass.sub1689, 3
  br i1 %i.xj, label %._crit_edge920, label %.ph1571.lver.orig

.ph1571.lver.orig:                                ; preds = %.ph1571.lver.orig.prol.loopexit, %.ph1571.lver.orig
  %indvars.iv1063.lver.orig = phi i64 [ %indvars.iv.next1064.lver.orig.1, %.ph1571.lver.orig ], [ %indvars.iv1063.lver.orig.unr, %.ph1571.lver.orig.prol.loopexit ] ; 3 uses
  %i.xk = mul nsw i64 %indvars.iv1063.lver.orig, %i.tc ; 2 uses
  %gep1239.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1238, i64 %i.xk ; 2 uses
  %i.xl = load double, ptr %gep1239.lver.orig, align 8, !tbaa !9
  %gep1241.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1240, i64 %i.xk
  %i.xm = load double, ptr %gep1241.lver.orig, align 8, !tbaa !9 ; 2 uses
  %i.xn = call double @llvm.fmuladd.f64(double %i.ww, double %i.xm, double %i.xl)
  %indvars.iv.next1064.lver.orig = add nuw nsw i64 %indvars.iv1063.lver.orig, 1 ; 3 uses
  %gep1243.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1242, i64 %indvars.iv.next1064.lver.orig ; 2 uses
  %i.xo = load double, ptr %gep1243.lver.orig, align 8, !tbaa !9
  %i.xp = call double @llvm.fmuladd.f64(double %i.wt, double %i.xo, double %i.xn)
  store double %i.xp, ptr %gep1239.lver.orig, align 8, !tbaa !9
  %i.xq = load double, ptr %gep1243.lver.orig, align 8, !tbaa !9
  %i.xr = fneg double %i.xm
  %i.xs = fmul double %i.wt, %i.xr
  %i.xt = call double @llvm.fmuladd.f64(double %i.ww, double %i.xq, double %i.xs)
  %gep1245.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1244, i64 %indvars.iv.next1064.lver.orig
  store double %i.xt, ptr %gep1245.lver.orig, align 8, !tbaa !9
  %i.xu = mul nsw i64 %indvars.iv.next1064.lver.orig, %i.tc ; 2 uses
  %gep1239.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1238, i64 %i.xu ; 2 uses
  %i.xv = load double, ptr %gep1239.lver.orig.1, align 8, !tbaa !9
  %gep1241.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1240, i64 %i.xu
  %i.xw = load double, ptr %gep1241.lver.orig.1, align 8, !tbaa !9 ; 2 uses
  %i.xx = call double @llvm.fmuladd.f64(double %i.ww, double %i.xw, double %i.xv)
  %indvars.iv.next1064.lver.orig.1 = add nuw nsw i64 %indvars.iv1063.lver.orig, 2 ; 4 uses
  %gep1243.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1242, i64 %indvars.iv.next1064.lver.orig.1 ; 2 uses
  %i.xy = load double, ptr %gep1243.lver.orig.1, align 8, !tbaa !9
  %i.xz = call double @llvm.fmuladd.f64(double %i.wt, double %i.xy, double %i.xx)
  store double %i.xz, ptr %gep1239.lver.orig.1, align 8, !tbaa !9
  %i.ya = load double, ptr %gep1243.lver.orig.1, align 8, !tbaa !9
  %i.yb = fneg double %i.xw
  %i.yc = fmul double %i.wt, %i.yb
  %i.yd = call double @llvm.fmuladd.f64(double %i.ww, double %i.ya, double %i.yc)
  %gep1245.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1244, i64 %indvars.iv.next1064.lver.orig.1
  store double %i.yd, ptr %gep1245.lver.orig.1, align 8, !tbaa !9
  %exitcond1067.not.lver.orig.1 = icmp eq i64 %indvars.iv.next1064.lver.orig.1, %wide.trip.count1066
  br i1 %exitcond1067.not.lver.orig.1, label %._crit_edge920, label %.ph1571.lver.orig, !llvm.loop !72

.ph1571:                                          ; preds = %.lver.check1570
  %load_initial1576 = load double, ptr %scevgep1575, align 8 ; 3 uses
  %reass.sub1690 = sub i64 %wide.trip.count1066, %indvar1573
  %reass.sub1691 = sub i64 %wide.trip.count1066, %indvar1573
  %xtraiter1611 = and i64 %reass.sub1690, 1
  %lcmp.mod1612.not = icmp eq i64 %xtraiter1611, 0
  br i1 %lcmp.mod1612.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.ph1571
  %i.ye = mul nuw nsw i64 %indvars.iv1061, %i.tc  ; 2 uses
  %gep1239.prol = getelementptr [8 x i8], ptr %invariant.gep1238, i64 %i.ye
  %gep1241.prol = getelementptr [8 x i8], ptr %invariant.gep1240, i64 %i.ye
  %i.yf = load double, ptr %gep1241.prol, align 8, !tbaa !9 ; 2 uses
  %i.yg = call double @llvm.fmuladd.f64(double %i.ww, double %i.yf, double %load_initial1576)
  %indvars.iv.next1064.prol = add nuw nsw i64 %indvars.iv1061, 1 ; 3 uses
  %gep1243.prol = getelementptr [8 x i8], ptr %invariant.gep1242, i64 %indvars.iv.next1064.prol
  %i.yh = call double @llvm.fmuladd.f64(double %i.wt, double %load_initial1576, double %i.yg)
  store double %i.yh, ptr %gep1239.prol, align 8, !tbaa !9
  %i.yi = load double, ptr %gep1243.prol, align 8, !tbaa !9
  %i.yj = fneg double %i.yf
  %i.yk = fmul double %i.wt, %i.yj
  %i.yl = call double @llvm.fmuladd.f64(double %i.ww, double %i.yi, double %i.yk) ; 2 uses
  %gep1245.prol = getelementptr [8 x i8], ptr %invariant.gep1244, i64 %indvars.iv.next1064.prol
  store double %i.yl, ptr %gep1245.prol, align 8, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.ph1571
  %store_forwarded1577.unr = phi double [ %load_initial1576, %.ph1571 ], [ %i.yl, %.prol.loopexit.unr-lcssa ]
  %indvars.iv1063.unr = phi i64 [ %indvars.iv1061, %.ph1571 ], [ %indvars.iv.next1064.prol, %.prol.loopexit.unr-lcssa ]
  %i.ym = icmp eq i64 %reass.sub1691, 3
  br i1 %i.ym, label %._crit_edge920, label %.ph1571.new

.ph1571.new:                                      ; preds = %.prol.loopexit, %.ph1571.new
  %store_forwarded1577 = phi double [ %i.zc, %.ph1571.new ], [ %store_forwarded1577.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064.1, %.ph1571.new ], [ %indvars.iv1063.unr, %.prol.loopexit ] ; 3 uses
  %i.yn = mul nuw nsw i64 %indvars.iv1063, %i.tc  ; 2 uses
  %gep1239 = getelementptr [8 x i8], ptr %invariant.gep1238, i64 %i.yn
  %gep1241 = getelementptr [8 x i8], ptr %invariant.gep1240, i64 %i.yn
  %i.yo = load double, ptr %gep1241, align 8, !tbaa !9 ; 2 uses
  %i.yp = call double @llvm.fmuladd.f64(double %i.ww, double %i.yo, double %store_forwarded1577)
  %indvars.iv.next1064 = add nuw nsw i64 %indvars.iv1063, 1 ; 3 uses
  %gep1243 = getelementptr [8 x i8], ptr %invariant.gep1242, i64 %indvars.iv.next1064
  %i.yq = call double @llvm.fmuladd.f64(double %i.wt, double %store_forwarded1577, double %i.yp)
  store double %i.yq, ptr %gep1239, align 8, !tbaa !9
  %i.yr = load double, ptr %gep1243, align 8, !tbaa !9
  %i.ys = fneg double %i.yo
  %i.yt = fmul double %i.wt, %i.ys
  %i.yu = call double @llvm.fmuladd.f64(double %i.ww, double %i.yr, double %i.yt) ; 3 uses
  %gep1245 = getelementptr [8 x i8], ptr %invariant.gep1244, i64 %indvars.iv.next1064
  store double %i.yu, ptr %gep1245, align 8, !tbaa !9
  %i.yv = mul nuw nsw i64 %indvars.iv.next1064, %i.tc ; 2 uses
  %gep1239.1 = getelementptr [8 x i8], ptr %invariant.gep1238, i64 %i.yv
  %gep1241.1 = getelementptr [8 x i8], ptr %invariant.gep1240, i64 %i.yv
  %i.yw = load double, ptr %gep1241.1, align 8, !tbaa !9 ; 2 uses
  %i.yx = call double @llvm.fmuladd.f64(double %i.ww, double %i.yw, double %i.yu)
  %indvars.iv.next1064.1 = add nuw nsw i64 %indvars.iv1063, 2 ; 4 uses
  %gep1243.1 = getelementptr [8 x i8], ptr %invariant.gep1242, i64 %indvars.iv.next1064.1
  %i.yy = call double @llvm.fmuladd.f64(double %i.wt, double %i.yu, double %i.yx)
  store double %i.yy, ptr %gep1239.1, align 8, !tbaa !9
  %i.yz = load double, ptr %gep1243.1, align 8, !tbaa !9
  %i.za = fneg double %i.yw
  %i.zb = fmul double %i.wt, %i.za
  %i.zc = call double @llvm.fmuladd.f64(double %i.ww, double %i.yz, double %i.zb) ; 2 uses
  %gep1245.1 = getelementptr [8 x i8], ptr %invariant.gep1244, i64 %indvars.iv.next1064.1
  store double %i.zc, ptr %gep1245.1, align 8, !tbaa !9
  %exitcond1067.not.1 = icmp eq i64 %indvars.iv.next1064.1, %wide.trip.count1066
  br i1 %exitcond1067.not.1, label %._crit_edge920, label %.ph1571.new, !llvm.loop !72

._crit_edge920:                                   ; preds = %.ph1571.lver.orig.prol.loopexit, %.ph1571.lver.orig, %.prol.loopexit, %.ph1571.new, %.._crit_edge920_crit_edge
  %.pre-phi1204 = phi i64 [ %.pre1203, %.._crit_edge920_crit_edge ], [ %i.wx, %.prol.loopexit ], [ %i.wx, %.ph1571.new ], [ %i.wx, %.ph1571.lver.orig ], [ %i.wx, %.ph1571.lver.orig.prol.loopexit ]
  %i.zd = load double, ptr %6, align 8, !tbaa !9
  %i.ze = add nuw nsw i64 %indvars.iv1075, 2      ; 2 uses
  %i.zf = getelementptr [8 x i8], ptr %i.v, i64 %i.ze
  %i.zg = getelementptr [8 x i8], ptr %i.zf, i64 %.pre-phi1204 ; 2 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !9
  %i.zi = fsub double %i.zh, %i.zd
  store double %i.zi, ptr %i.zg, align 8, !tbaa !9
  %.pre1192 = add nsw i64 %i.ze, %i.ts
  br label %bb.ad

end_hunk_0
