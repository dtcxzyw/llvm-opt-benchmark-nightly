Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idaa?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@IDAApolynomialGetY:bb.a
  %i.cd = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %5) #8
  %.not220 = icmp eq i32 %i.cd, 0
  br i1 %.not220, label %bb.z, label %IDAAfindIndex.exit

bb.l:                                             ; preds = %.thread239, %bb.j
  %.2225.ph243 = phi i32 [ 1, %.thread239 ], [ %.2225.ph, %bb.j ] ; 2 uses
  %.1227.ph242 = phi i64 [ %storemerge5256.i, %.thread239 ], [ %.1227.ph, %bb.j ] ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.1227.ph242
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !65
  %i.ch = add nsw i64 %.1227.ph242, -1            ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !65
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl) ; 11 uses
  br i1 %i.o, label %.thread340, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !90 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !64 ; 2 uses
  %i.ct = sub nsw i64 %i.cs, %.1227.ph242
  %i.cu = sext i32 %i.cq to i64                   ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  %.neg = xor i64 %i.cu, -1
  %i.cw = add i64 %i.cs, %.neg
  %.0191 = select i1 %i.cv, i64 %i.cw, i64 %i.ch
  %.not207 = icmp eq i32 %.2225.ph243, 0
  br i1 %.not207, label %.loopexit247, label %.preheader252

.thread340:                                       ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !90 ; 6 uses
  %i.db = sext i32 %i.da to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.1227.ph242, i64 %i.db)
  %.not207343 = icmp eq i32 %.2225.ph243, 0
  br i1 %.not207343, label %.loopexit247, label %.preheader249

.preheader252:                                    ; preds = %bb.m
  %.not208259 = icmp slt i32 %i.cq, 0
  br i1 %.not208259, label %.loopexit247.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader252
  %i.dc = getelementptr [8 x i8], ptr %i.d, i64 %.0191
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.dg = icmp sgt i32 %.fr280, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dj = add nuw i32 %i.cq, 1
  %wide.trip.count289 = zext i32 %i.dj to i64
  %wide.trip.count = zext i32 %.fr280 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %.fr280, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.p

.preheader249:                                    ; preds = %.thread340
  %.not210262 = icmp slt i32 %i.da, 0
  br i1 %.not210262, label %.loopexit247.thread, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader249
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.dm = icmp sgt i32 %.fr280, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dp = add nuw i32 %i.da, 1
  %wide.trip.count299 = zext i32 %i.dp to i64
  %wide.trip.count294 = zext i32 %.fr280 to i64   ; 3 uses
  %min.iters.check366 = icmp ult i32 %.fr280, 4
  %n.vec368 = and i64 %wide.trip.count294, 2147483644 ; 3 uses
  %cmp.n373 = icmp eq i64 %n.vec368, %wide.trip.count294
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph264, %bb.o
  %indvars.iv296 = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next297, %bb.o ] ; 5 uses
  %i.dq = sub nsw i64 %spec.select, %indvars.iv296
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv296
  store double %i.dt, ptr %i.du, align 8, !tbaa !68
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !81
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv296
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !73
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dx, ptr noundef %i.dz) #8
  br i1 %i.dm, label %.preheader248, label %bb.o

.preheader248:                                    ; preds = %bb.n
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !67 ; 3 uses
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.body369

vector.body369:                                   ; preds = %.preheader248, %vector.body369
  %index370 = phi i64 [ %index.next371, %vector.body369 ], [ 0, %.preheader248 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index370 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eb, align 8, !tbaa !68
  store <2 x double> splat (double 1.000000e+00), ptr %i.ec, align 8, !tbaa !68
  %index.next371 = add nuw i64 %index370, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next371, %n.vec368
  br i1 %i.ed, label %middle.block372, label %vector.body369, !llvm.loop !91

middle.block372:                                  ; preds = %vector.body369
  br i1 %cmp.n373, label %.loopexit386.a, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %.preheader248, %middle.block372
  %indvars.iv291.ph = phi i64 [ 0, %.preheader248 ], [ %n.vec368, %middle.block372 ]
  br label %scalar.ph365

scalar.ph365:                                     ; preds = %scalar.ph365.preheader, %scalar.ph365
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %scalar.ph365 ], [ %indvars.iv291.ph, %scalar.ph365.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv291
  store double 1.000000e+00, ptr %i.ee, align 8, !tbaa !68
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %.loopexit386.a, label %scalar.ph365, !llvm.loop !92

.loopexit386.a:                                   ; preds = %scalar.ph365, %middle.block372
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !84
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !74
  %i.ej = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef nonnull %i.ea, ptr noundef %i.eg, ptr noundef %i.ei) #8
  %.not218 = icmp eq i32 %i.ej, 0
  br i1 %.not218, label %bb.o, label %IDAAfindIndex.exit

bb.o:                                             ; preds = %bb.n, %.loopexit386.a
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit250, label %bb.n

bb.p:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv286 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next287, %bb.q ] ; 5 uses
  %i.ek = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv286
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !29 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !65
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv286
  store double %i.em, ptr %i.en, align 8, !tbaa !68
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !31 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !81
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv286
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !73
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.eq, ptr noundef %i.es) #8
  br i1 %i.dg, label %.preheader251, label %bb.q

.preheader251:                                    ; preds = %bb.p
  %i.et = load ptr, ptr %i.dh, align 8, !tbaa !67 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader251, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader251 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eu, align 8, !tbaa !68
  store <2 x double> splat (double 1.000000e+00), ptr %i.ev, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit387, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader251, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader251 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ex, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit387, label %scalar.ph, !llvm.loop !94

.loopexit387:                                     ; preds = %scalar.ph, %middle.block
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !84
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv286
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !74
  %i.fc = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef nonnull %i.et, ptr noundef %i.ez, ptr noundef %i.fb) #8
  %.not209 = icmp eq i32 %i.fc, 0
  br i1 %.not209, label %bb.q, label %IDAAfindIndex.exit

bb.q:                                             ; preds = %bb.p, %.loopexit387
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.loopexit250, label %bb.p

.loopexit250:                                     ; preds = %bb.q, %bb.o
  %.0199344351 = phi i32 [ %i.da, %bb.o ], [ %i.cq, %bb.q ] ; 7 uses
  %.not211268 = icmp slt i32 %.0199344351, 1
  br i1 %.not211268, label %.loopexit247.thread, label %.preheader246.lr.ph

.preheader246.lr.ph:                              ; preds = %.loopexit250
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 4 uses
  %i.ff = icmp sgt i32 %.fr280, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.fh = zext nneg i32 %.0199344351 to i64       ; 2 uses
  br i1 %i.ff, label %.preheader246.us.preheader, label %.preheader246

.preheader246.us.preheader:                       ; preds = %.preheader246.lr.ph
  %wide.trip.count312 = zext nneg i32 %.fr280 to i64
  br label %.preheader246.us

.preheader246.us:                                 ; preds = %.preheader246.us.preheader, %.split.us.us
  %.0196269.us = phi i32 [ %10, %.split.us.us ], [ 1, %.preheader246.us.preheader ] ; 4 uses
  br label %.lr.ph266.us.us

.lr.ph266.us.us:                                  ; preds = %..loopexit_crit_edge.us.us, %.preheader246.us
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %..loopexit_crit_edge.us.us ], [ %i.fh, %.preheader246.us ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv314
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !68
  %6 = trunc nuw i64 %indvars.iv314 to i32        ; 2 uses
  %7 = sub nsw i32 %6, %.0196269.us
  %8 = zext nneg i32 %7 to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !68
  %i.fm = fsub double %i.fj, %i.fl
  %i.fn = fdiv double %i.cm, %i.fm                ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv314
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !73 ; 2 uses
  %i.fq = fneg double %i.fn                       ; 2 uses
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, -1 ; 2 uses
  %9 = and i64 %indvars.iv.next315, 4294967295    ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %9
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !73
  tail call void @N_VLinearSum(double noundef %i.fn, ptr noundef %i.fp, double noundef %i.fq, ptr noundef %i.fs, ptr noundef %i.fp) #8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv314
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %9
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph266.us.us
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %bb.r ], [ 0, %.lr.ph266.us.us ] ; 3 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !74
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv309
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !73 ; 2 uses
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !74
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv309
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !73
  tail call void @N_VLinearSum(double noundef %i.fn, ptr noundef %i.fx, double noundef %i.fq, ptr noundef %i.ga, ptr noundef %i.fx) #8
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count312
  br i1 %exitcond313.not, label %..loopexit_crit_edge.us.us, label %bb.r

..loopexit_crit_edge.us.us:                       ; preds = %bb.r
  %.not217.us.us.not = icmp slt i32 %.0196269.us, %6
  br i1 %.not217.us.us.not, label %.lr.ph266.us.us, label %.split.us.us

.split.us.us:                                     ; preds = %..loopexit_crit_edge.us.us
  %10 = add nuw i32 %.0196269.us, 1
  %exitcond321.not = icmp eq i32 %.0196269.us, %.0199344351
  br i1 %exitcond321.not, label %.loopexit247, label %.preheader246.us

.preheader246:                                    ; preds = %.preheader246.lr.ph, %.split
  %.0196269 = phi i32 [ %15, %.split ], [ 1, %.preheader246.lr.ph ] ; 4 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader246, %.loopexit
  %indvars.iv301 = phi i64 [ %i.fh, %.preheader246 ], [ %indvars.iv.next302, %.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv301
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !68
  %11 = trunc nuw i64 %indvars.iv301 to i32       ; 2 uses
  %12 = sub nsw i32 %11, %.0196269
  %13 = zext nneg i32 %12 to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %13
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !68
  %i.gf = fsub double %i.gc, %i.ge
  %i.gg = fdiv double %i.cm, %i.gf                ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv301
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !73 ; 2 uses
  %i.gj = fneg double %i.gg
  %indvars.iv.next302 = add nsw i64 %indvars.iv301, -1 ; 2 uses
  %14 = and i64 %indvars.iv.next302, 4294967295
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %14
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !73
  tail call void @N_VLinearSum(double noundef %i.gg, ptr noundef %i.gi, double noundef %i.gj, ptr noundef %i.gl, ptr noundef %i.gi) #8
  %.not217.not = icmp slt i32 %.0196269, %11
  br i1 %.not217.not, label %.loopexit, label %.split

.split:                                           ; preds = %.loopexit
  %15 = add nuw i32 %.0196269, 1
  %exitcond308.not = icmp eq i32 %.0196269, %.0199344351
  br i1 %exitcond308.not, label %.loopexit247, label %.preheader246

.loopexit247.thread:                              ; preds = %.loopexit250, %.preheader249, %.preheader252
  %.0199345.ph = phi i32 [ %.0199344351, %.loopexit250 ], [ %i.cq, %.preheader252 ], [ %i.da, %.preheader249 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !67 ; 2 uses
  store double 1.000000e+00, ptr %i.gn, align 8, !tbaa !68
  br label %._crit_edge

.loopexit247:                                     ; preds = %.split, %.split.us.us, %.thread340, %bb.m
  %.0199345 = phi i32 [ %i.da, %.thread340 ], [ %.0199344351, %.split.us.us ], [ %i.cq, %bb.m ], [ %.0199344351, %.split ] ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !67 ; 7 uses
  store double 1.000000e+00, ptr %i.gp, align 8, !tbaa !68
  %i.gq = icmp sgt i32 %.0199345, 0
  br i1 %i.gq, label %.lr.ph271, label %._crit_edge

.lr.ph271:                                        ; preds = %.loopexit247
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 3 uses
  %wide.trip.count325 = zext nneg i32 %.0199345 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count325, 1
  %i.gs = icmp eq i32 %.0199345, 1
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph271.new

.lr.ph271.new:                                    ; preds = %.lr.ph271
  %unroll_iter = and i64 %wide.trip.count325, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph271.new
  %i.gt = phi double [ 1.000000e+00, %.lr.ph271.new ], [ %i.he, %bb.s ]
  %indvars.iv322.a = phi i64 [ 0, %.lr.ph271.new ], [ %indvars.iv.next323.1.a, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph271.new ], [ %niter.next.1, %bb.s ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv322.a
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !68
  %i.gw = fsub double %1, %i.gv
  %i.gx = fmul double %i.gt, %i.gw
  %i.gy = fdiv double %i.gx, %i.cm                ; 2 uses
  %indvars.iv.next323 = or disjoint i64 %indvars.iv322.a, 1 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next323
  store double %i.gy, ptr %i.gz, align 8, !tbaa !68
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next323
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !68
  %i.hc = fsub double %1, %i.hb
  %i.hd = fmul double %i.gy, %i.hc
  %i.he = fdiv double %i.hd, %i.cm                ; 3 uses
  %indvars.iv.next323.1.a = add nuw nsw i64 %indvars.iv322.a, 2 ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next323.1.a
  store double %i.he, ptr %i.hf, align 8, !tbaa !68
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.s

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph271
  %.epil.init = phi double [ 1.000000e+00, %.lr.ph271 ], [ %i.he, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv322.epil.init.a = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next323.1.a, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod392 = trunc i32 %.0199345 to i1
  tail call void @llvm.assume(i1 %lcmp.mod392)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv322.epil.init.a
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !68
  %i.hi = fsub double %1, %i.hh
  %i.hj = fmul double %.epil.init, %i.hi
  %i.hk = fdiv double %i.hj, %i.cm
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv322.epil.init.a
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store double %i.hk, ptr %i.hm, align 8, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit247.thread, %.loopexit247
  %i.hn = phi ptr [ %i.gn, %.loopexit247.thread ], [ %i.gp, %.loopexit247 ], [ %i.gp, %._crit_edge.loopexit.unr-lcssa ], [ %i.gp, %.epil.preheader ]
  %i.ho = phi ptr [ %i.gm, %.loopexit247.thread ], [ %i.go, %.loopexit247 ], [ %i.go, %._crit_edge.loopexit.unr-lcssa ], [ %i.go, %.epil.preheader ] ; 3 uses
  %.0199345356 = phi i32 [ %.0199345.ph, %.loopexit247.thread ], [ %.0199345, %.loopexit247 ], [ %.0199345, %._crit_edge.loopexit.unr-lcssa ], [ %.0199345, %.epil.preheader ] ; 4 uses
  %i.hp = add i32 %.0199345356, 1                 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.hr = tail call i32 @N_VLinearCombination(i32 noundef %i.hp, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.hq, ptr noundef %2) #8
  %.not212 = icmp eq i32 %i.hr, 0
  br i1 %.not212, label %bb.t, label %IDAAfindIndex.exit

bb.t:                                             ; preds = %._crit_edge
  %i.hs = icmp sgt i32 %.fr280, 0                 ; 2 uses
  br i1 %i.hs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ht = load ptr, ptr %i.ho, align 8, !tbaa !67
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.hv = tail call i32 @N_VLinearCombinationVectorArray(i32 noundef %.fr280, i32 noundef %i.hp, ptr noundef %i.ht, ptr noundef nonnull %i.hu, ptr noundef %4) #8
  %.not213 = icmp eq i32 %i.hv, 0
  br i1 %.not213, label %bb.v, label %IDAAfindIndex.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not214272 = icmp slt i32 %.0199345356, 1
  %.pre = load ptr, ptr %i.ho, align 8, !tbaa !67 ; 4 uses
  br i1 %.not214272, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.v
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 3 uses
  %wide.trip.count330 = zext i32 %i.hp to i64
  %i.hx = add nsw i64 %wide.trip.count330, -1     ; 3 uses
  %xtraiter394 = and i64 %i.hx, 1
  %i.hy = icmp eq i32 %i.hp, 2
  br i1 %i.hy, label %.epil.preheader393, label %.lr.ph277.new

.lr.ph277.new:                                    ; preds = %.lr.ph277
  %unroll_iter397 = and i64 %i.hx, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph277.new
  %indvars.iv327 = phi i64 [ 1, %.lr.ph277.new ], [ %indvars.iv.next328.1, %bb.w ] ; 4 uses
  %.0275 = phi double [ 0.000000e+00, %.lr.ph277.new ], [ %i.in, %bb.w ]
  %.0190274 = phi double [ 1.000000e+00, %.lr.ph277.new ], [ %i.io, %bb.w ] ; 2 uses
  %niter398 = phi i64 [ 0, %.lr.ph277.new ], [ %niter398.next.1, %bb.w ]
  %i.hz = add nsw i64 %indvars.iv327, -1          ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !68
  %i.ic = fsub double %1, %i.ib
  %i.id = fdiv double %i.ic, %i.cm                ; 2 uses
  %i.ie = fdiv double %.0190274, %i.cm
  %i.if = tail call double @llvm.fmuladd.f64(double %i.id, double %.0275, double %i.ie) ; 2 uses
  %i.ig = fmul double %.0190274, %i.id            ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.hz
  store double %i.if, ptr %i.ih, align 8, !tbaa !68
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv327
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !68
  %i.ik = fsub double %1, %i.ij
  %i.il = fdiv double %i.ik, %i.cm                ; 2 uses
  %i.im = fdiv double %i.ig, %i.cm
  %i.in = tail call double @llvm.fmuladd.f64(double %i.il, double %i.if, double %i.im) ; 3 uses
  %i.io = fmul double %i.ig, %i.il                ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv327
  store double %i.in, ptr %i.ip, align 8, !tbaa !68
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %niter398.next.1 = add nuw i64 %niter398, 2     ; 2 uses
  %niter398.ncmp.1 = icmp eq i64 %niter398.next.1, %unroll_iter397
  br i1 %niter398.ncmp.1, label %._crit_edge278.loopexit.unr-lcssa, label %bb.w

._crit_edge278.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %._crit_edge278, label %.epil.preheader393

.epil.preheader393:                               ; preds = %._crit_edge278.loopexit.unr-lcssa, %.lr.ph277
  %indvars.iv327.epil.init = phi i64 [ 1, %.lr.ph277 ], [ %indvars.iv.next328.1, %._crit_edge278.loopexit.unr-lcssa ]
  %.0275.epil.init = phi double [ 0.000000e+00, %.lr.ph277 ], [ %i.in, %._crit_edge278.loopexit.unr-lcssa ]
  %.0190274.epil.init = phi double [ 1.000000e+00, %.lr.ph277 ], [ %i.io, %._crit_edge278.loopexit.unr-lcssa ]
  %lcmp.mod396 = trunc i64 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod396)
  %i.iq = add nsw i64 %indvars.iv327.epil.init, -1 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !68
  %i.it = fsub double %1, %i.is
  %i.iu = fdiv double %i.it, %i.cm
  %i.iv = fdiv double %.0190274.epil.init, %i.cm
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iu, double %.0275.epil.init, double %i.iv)
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.iq
  store double %i.iw, ptr %i.ix, align 8, !tbaa !68
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %.epil.preheader393, %._crit_edge278.loopexit.unr-lcssa, %bb.v
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.iz = tail call i32 @N_VLinearCombination(i32 noundef %.0199345356, ptr noundef %.pre, ptr noundef nonnull %i.iy, ptr noundef %3) #8
  %.not215 = icmp eq i32 %i.iz, 0
  br i1 %.not215, label %bb.x, label %IDAAfindIndex.exit

bb.x:                                             ; preds = %._crit_edge278
  br i1 %i.hs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ja = load ptr, ptr %i.ho, align 8, !tbaa !67
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.jc = tail call i32 @N_VLinearCombinationVectorArray(i32 noundef %.fr280, i32 noundef %.0199345356, ptr noundef %i.ja, ptr noundef nonnull %i.jb, ptr noundef %5) #8
  %.not216 = icmp eq i32 %i.jc, 0
  br i1 %.not216, label %bb.z, label %IDAAfindIndex.exit

bb.z:                                             ; preds = %.thread, %bb.k, %bb.y, %bb.x
  br label %IDAAfindIndex.exit

IDAAfindIndex.exit:                               ; preds = %.loopexit387, %.loopexit386.a, %.loopexit255, %bb.y, %._crit_edge278, %bb.u, %._crit_edge, %bb.k, %.loopexit385.a, %bb.z
  %.0200 = phi i32 [ -107, %.loopexit255 ], [ -28, %bb.y ], [ -28, %.loopexit385.a ], [ -28, %.loopexit386.a ], [ -28, %bb.k ], [ 0, %bb.z ], [ -28, %._crit_edge ], [ -28, %bb.u ], [ -28, %._crit_edge278 ], [ -28, %.loopexit387 ]
  ret i32 %.0200
}

; Function Attrs: nounwind uwtable
define internal range(i32 -28, 1) i32 @IDAApolynomialStorePnt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !81
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.g) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %IDAAGettnSolutionYp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.n, ptr noundef nonnull %i.i) #8
  br label %IDAAGettnSolutionYp.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78   ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 1) ; 4 uses
  %.not32.i = icmp slt i32 %spec.store.select.i, 1
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %.pre.i = load double, ptr %i.q, align 8, !tbaa !68 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 2064       ; 3 uses
  %i.s = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %xtraiter = and i64 %i.s, 1
  %i.t = icmp ult i32 %i.p, 2
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.s, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %i.u = phi double [ %.pre.i, %.lr.ph.i.new ], [ %i.aj, %bb.e ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 4 uses
  %.036.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.as, %bb.e ] ; 2 uses
  %.02735.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.aq, %bb.e ]
  %.02834.i = phi double [ 1.000000e+00, %.lr.ph.i.new ], [ %i.ah, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.v = fmul double %.036.i, %.02834.i           ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !68 ; 3 uses
  %i.y = insertelement <2 x double> poison, double %.02834.i, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.u, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.x, i64 1
  %i.ac = fdiv <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = tail call double @llvm.fmuladd.f64(double %.02735.i, double %.036.i, double %i.ad) ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !68
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %i.ah = fmul double %i.ag, %i.v                 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !68 ; 3 uses
  %i.ak = insertelement <2 x double> poison, double %i.v, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.x, i64 1
  %i.am = insertelement <2 x double> poison, double %i.x, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = fdiv <2 x double> %i.al, %i.an          ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ap) ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  store double %i.aq, ptr %i.ar, align 8, !tbaa !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.as = extractelement <2 x double> %i.ao, i64 1 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.e

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre.i, %.lr.ph.i ], [ %i.aj, %._crit_edge.i.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.036.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.as, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02735.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02834.i.epil.init = phi double [ 1.000000e+00, %.lr.ph.i ], [ %i.ah, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod54 = trunc i32 %spec.store.select.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.at = fdiv double %.02834.i.epil.init, %.epil.init
  %i.au = tail call double @llvm.fmuladd.f64(double %.02735.i.epil.init, double %.036.i.epil.init, double %i.at)
  %i.av = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.i.epil.init
  store double %i.au, ptr %i.av, align 8, !tbaa !68
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ay = tail call i32 @N_VLinearCombination(i32 noundef %spec.store.select.i, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.i) #8 ; 0 uses
  br label %IDAAGettnSolutionYp.exit

IDAAGettnSolutionYp.exit:                         ; preds = %._crit_edge.i, %bb.c, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !38
  %.not27 = icmp eq i32 %i.ba, 0
  br i1 %.not27, label %IDAAGettnSolutionYpS.exit, label %.preheader

.preheader:                                       ; preds = %IDAAGettnSolutionYp.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !53 ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !67 ; 3 uses
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bc to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bg, align 8, !tbaa !68
  store <2 x double> splat (double 1.000000e+00), ptr %i.bh, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !74
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.bp = tail call i32 @N_VScaleVectorArray(i32 noundef %i.bc, ptr noundef %i.bf, ptr noundef %i.bm, ptr noundef %i.bo) #8
  %.not28 = icmp eq i32 %i.bp, 0
  br i1 %.not28, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !85 ; 3 uses
end_hunk_0
