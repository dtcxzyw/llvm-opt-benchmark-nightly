Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvDoErrorTest:bb.a
  %i.cy = load double, ptr %i.i, align 8, !tbaa !174
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.cy, ptr noundef %i.cz, ptr noundef %i.db) #12
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !102
  %.not138 = icmp eq i32 %i.dd, 0
  br i1 %.not138, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !99
  %i.dg = load double, ptr %i.cl, align 8, !tbaa !65
  %i.dh = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !98
  %i.dk = load ptr, ptr %i.cr, align 8, !tbaa !58
  %i.dl = tail call i32 %i.df(double noundef %i.dg, ptr noundef %i.dh, ptr noundef %i.dj, ptr noundef %i.dk) #12 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !100
  %i.do = add nsw i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !100
  %i.dp = icmp slt i32 %i.dl, 0
  br i1 %i.dp, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not139 = icmp eq i32 %i.dl, 0
  br i1 %.not139, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.dq = load double, ptr %i.i, align 8, !tbaa !174
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !98
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.dq, ptr noundef %i.dr, ptr noundef %i.dt) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !121
  %.not140 = icmp eq i32 %i.dv, 0
  br i1 %.not140, label %.loopexit145, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !126
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !50
  %i.eb = load double, ptr %i.cl, align 8, !tbaa !65
  %i.ec = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.ed = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !114
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !125
  %i.ei = tail call i32 @cvSensRhsWrapper(ptr noundef nonnull %0, double noundef %i.eb, ptr noundef %i.ec, ptr noundef %i.ed, ptr noundef %i.ef, ptr noundef %i.eh, ptr noundef %i.dx, ptr noundef %i.ea) ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not141 = icmp eq i32 %i.ei, 0
  br i1 %.not141, label %.preheader144, label %.loopexit

.preheader144:                                    ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !110
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph, label %.loopexit145

.lr.ph:                                           ; preds = %.preheader144
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.eo = load double, ptr %i.i, align 8, !tbaa !174
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !125
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !50
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !114
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.eo, ptr noundef %i.er, ptr noundef %i.eu) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ev = load i32, ptr %i.ek, align 4, !tbaa !110
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next, %i.ew
  br i1 %i.ex, label %bb.ac, label %.loopexit145, !llvm.loop !413

.loopexit145:                                     ; preds = %bb.ac, %.preheader144, %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !146
  %.not142 = icmp eq i32 %i.ez, 0
  br i1 %.not142, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit145
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !64
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !137
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !143
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !110
  %i.fi = load double, ptr %i.cl, align 8, !tbaa !65
  %i.fj = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !114
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !98
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !141
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !144
  %i.fs = tail call i32 %i.ff(i32 noundef %i.fh, double noundef %i.fi, ptr noundef %i.fj, ptr noundef %i.fl, ptr noundef %i.fn, ptr noundef %i.fp, ptr noundef %i.fr, ptr noundef %i.fb, ptr noundef %i.fd) #12 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !171
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !171
  %i.fw = icmp slt i32 %i.fs, 0
  br i1 %i.fw, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not143 = icmp eq i32 %i.fs, 0
  br i1 %.not143, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae
  %i.fx = load i32, ptr %i.fg, align 4, !tbaa !110
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph148, label %.loopexit

.lr.ph148:                                        ; preds = %.preheader
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph148, %bb.af
  %indvars.iv150 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next151, %bb.af ] ; 3 uses
  %i.ga = load double, ptr %i.i, align 8, !tbaa !174
  %i.gb = load ptr, ptr %i.fo, align 8, !tbaa !141
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv150
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !50
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !114
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv150
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.ga, ptr noundef %i.gd, ptr noundef %i.gg) #12
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.gh = load i32, ptr %i.fg, align 4, !tbaa !110
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next151, %i.gi
  br i1 %i.gj, label %bb.af, label %.loopexit, !llvm.loop !414

.loopexit.sink.split:                             ; preds = %bb.l, %bb.m, %bb.q
  tail call fastcc void @cvRescale(ptr noundef %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.loopexit.sink.split, %.preheader, %.loopexit145, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.u, %bb.t, %bb.b, %bb.c, %bb.a
  %.0131 = phi i32 [ -54, %bb.ae ], [ 0, %bb.a ], [ 5, %.preheader ], [ 5, %.loopexit.sink.split ], [ -3, %bb.b ], [ -8, %bb.t ], [ -11, %bb.u ], [ -31, %bb.w ], [ -34, %bb.x ], [ -41, %bb.aa ], [ -44, %bb.ab ], [ -51, %bb.ad ], [ -3, %bb.c ], [ 5, %.loopexit145 ], [ 5, %bb.af ]
  ret i32 %.0131
}

; Function Attrs: nounwind uwtable
define internal fastcc double @cvSensNorm(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = load ptr, ptr %2, align 8, !tbaa !50
  %i.c = tail call double @N_VWrmsNorm(ptr noundef %i.a, ptr noundef %i.b) #12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %.015 = phi double [ %.1, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call double @N_VWrmsNorm(ptr noundef %i.h, ptr noundef %i.j) #12 ; 2 uses
  %i.l = fcmp ogt double %i.k, %.015
  %.1 = select i1 %i.l, double %i.k, double %.015 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !110
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ %i.c, %bb.a ], [ %.1, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cvAdjustOrder(ptr nofree noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 16 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66   ; 13 uses
  %i.c = icmp eq i32 %i.b, 2
  %i.d = icmp ne i32 %1, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %cvAdjustAdams.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  switch i32 %i.f, label %cvAdjustAdams.exit [
    i32 1, label %bb.c
    i32 2, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.d, label %.preheader108.i

.preheader108.i:                                  ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not111.i = icmp slt i32 %i.h, 0
  br i1 %.not111.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader108.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.j = add nuw i32 %i.h, 1
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.l, i1 false), !tbaa !53
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !67
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.r) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !102
  %.not98.i = icmp eq i32 %i.t, 0
  br i1 %.not98.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.v = load i32, ptr %i.n, align 8, !tbaa !67
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.y) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !121
  %.not99.i = icmp eq i32 %i.aa, 0
  br i1 %.not99.i, label %cvAdjustAdams.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph133.i, label %cvAdjustAdams.exit

.lr.ph133.i:                                      ; preds = %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph133.i
  %indvars.iv160.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next161.i, %bb.g ] ; 2 uses
  %i.af = load i32, ptr %i.n, align 8, !tbaa !67
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv160.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !50
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ak) #12
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %i.al = load i32, ptr %i.ab, align 4, !tbaa !110
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next161.i, %i.am
  br i1 %i.an, label %bb.g, label %cvAdjustAdams.exit, !llvm.loop !416

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader108.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !53
  %.not94114.i = icmp slt i32 %i.b, 3
  br i1 %.not94114.i, label %.loopexit104.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.as = load double, ptr %i.ar, align 8, !tbaa !177
  %i.at = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext i32 %i.at to i64      ; 2 uses
  br label %bb.h

.loopexit107.i:                                   ; preds = %scalar.ph111, %scalar.ph111.1, %scalar.ph111.2, %middle.block130
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader106.i, label %bb.h, !llvm.loop !417

.preheader106.i:                                  ; preds = %.loopexit107.i
  %i.au = uitofp nneg i32 %i.b to double          ; 5 uses
  %.pre.i = load double, ptr %i.ap, align 8, !tbaa !53 ; 2 uses
  %i.av = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.aw = add nsw i32 %i.b, -3
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.epil.preheader, label %.preheader106.i.new

.preheader106.i.new:                              ; preds = %.preheader106.i
  %unroll_iter = and i64 %i.av, -4
  br label %bb.j

bb.h:                                             ; preds = %.loopexit107.i, %.lr.ph118.i
  %indvars.iv140.i = phi i64 [ 1, %.lr.ph118.i ], [ %indvars.iv.next141.i, %.loopexit107.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph118.i ], [ %indvars.iv.next.i, %.loopexit107.i ] ; 7 uses
  %.0116.i = phi double [ 0.000000e+00, %.lr.ph118.i ], [ %i.ba, %.loopexit107.i ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv140.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !53
  %i.ba = fadd double %.0116.i, %i.az             ; 2 uses
  %i.bb = fdiv double %i.ba, %i.as                ; 4 uses
  %min.iters.check112 = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %min.iters.check112, label %scalar.ph111, label %vector.ph113

vector.ph113:                                     ; preds = %bb.h
  %n.vec114 = and i64 %indvars.iv.i, 9223372036854775804 ; 2 uses
  %i.bc = and i64 %indvars.iv.i, 3
  %broadcast.splatinsert115 = insertelement <2 x double> poison, double %i.bb, i64 0 ; 2 uses
  %i.bd = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next129, %vector.body117 ] ; 2 uses
  %i.bf = sub i64 %indvars.iv.i, %index118
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -24 ; 2 uses
  %wide.load119 = load <2 x double>, ptr %i.bh, align 8, !tbaa !53
  %wide.load120 = load <2 x double>, ptr %i.bi, align 8, !tbaa !53
  %i.bj = getelementptr i8, ptr %i.bg, i64 -16
  %i.bk = getelementptr i8, ptr %i.bg, i64 -32
  %wide.load123 = load <2 x double>, ptr %i.bj, align 8, !tbaa !53
  %wide.load124 = load <2 x double>, ptr %i.bk, align 8, !tbaa !53
  %reverse127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load119, <2 x double> %i.bd, <2 x double> %wide.load123)
  %reverse128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load120, <2 x double> %i.be, <2 x double> %wide.load124)
  store <2 x double> %reverse127, ptr %i.bh, align 8, !tbaa !53
  store <2 x double> %reverse128, ptr %i.bi, align 8, !tbaa !53
  %index.next129 = add nuw i64 %index118, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next129, %n.vec114
  br i1 %i.bl, label %middle.block130, label %vector.body117, !llvm.loop !418

middle.block130:                                  ; preds = %vector.body117
  %cmp.n131 = icmp eq i64 %indvars.iv.i, %n.vec114
  br i1 %cmp.n131, label %.loopexit107.i, label %scalar.ph111

scalar.ph111:                                     ; preds = %middle.block130, %bb.h
  %indvars.iv137.i.ph = phi i64 [ %indvars.iv.i, %bb.h ], [ %i.bc, %middle.block130 ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv137.i.ph ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !53
  %i.bo = getelementptr i8, ptr %i.bm, i64 -8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !53
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bb, double %i.bp)
  store double %i.bq, ptr %i.bm, align 8, !tbaa !53
  %i.br = icmp samesign ugt i64 %indvars.iv137.i.ph, 1
  br i1 %i.br, label %scalar.ph111.1, label %.loopexit107.i

scalar.ph111.1:                                   ; preds = %scalar.ph111
  %i.bs = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv137.i.ph ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8     ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !53
  %i.bv = getelementptr i8, ptr %i.bs, i64 -16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !53
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bb, double %i.bw)
  store double %i.bx, ptr %i.bt, align 8, !tbaa !53
  %i.by = icmp eq i64 %indvars.iv137.i.ph, 3
  br i1 %i.by, label %scalar.ph111.2, label %.loopexit107.i

scalar.ph111.2:                                   ; preds = %scalar.ph111.1
  %i.bz = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv137.i.ph ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -16    ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !53
  %i.cc = getelementptr i8, ptr %i.bz, i64 -24
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !53
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bb, double %i.cd)
  store double %i.ce, ptr %i.ca, align 8, !tbaa !53
  br label %.loopexit107.i

.lr.ph124.i.unr-lcssa:                            ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph124.i.unr-lcssa, %.preheader106.i
  %.epil.init = phi double [ %.pre.i, %.preheader106.i ], [ %i.df, %.lr.ph124.i.unr-lcssa ]
  %indvars.iv143.i.epil.init = phi i64 [ 1, %.preheader106.i ], [ %indvars.iv.next144.i.3, %.lr.ph124.i.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %i.cf = phi double [ %.epil.init, %.epil.preheader ], [ %i.cj, %bb.i ]
  %indvars.iv143.i.epil = phi i64 [ %indvars.iv143.i.epil.init, %.epil.preheader ], [ %indvars.iv.next144.i.epil, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %indvars.iv.next144.i.epil = add nuw nsw i64 %indvars.iv143.i.epil, 1 ; 3 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next144.i.epil to i32
  %i.ch = uitofp nneg i32 %i.cg to double
  %i.ci = fdiv double %i.cf, %i.ch
  %i.cj = fmul double %i.ci, %i.au                ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i.epil
  store double %i.cj, ptr %i.ck, align 8, !tbaa !53
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@cvAdjustOrder:bb.a
  %reverse86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load79, <2 x double> %i.mw, <2 x double> %wide.load82)
  store <2 x double> %reverse85, ptr %i.mz, align 8, !tbaa !53
  store <2 x double> %reverse86, ptr %i.na, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nd = icmp eq i64 %index.next, %n.vec
  br i1 %i.nd, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mp, %n.vec
  br i1 %cmp.n, label %._crit_edge107.i.i, label %.lr.ph106.i.i.preheader

.lr.ph106.i.i.preheader:                          ; preds = %.lr.ph106.preheader.i.i, %middle.block
  %indvars.iv129.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph106.preheader.i.i ], [ %i.mu, %middle.block ]
  br label %.lr.ph106.i.i

.lr.ph106.i.i:                                    ; preds = %.lr.ph106.i.i.preheader, %.lr.ph106.i.i
  %indvars.iv129.i.i = phi i64 [ %indvars.iv.next130.i.i, %.lr.ph106.i.i ], [ %indvars.iv129.i.i.ph, %.lr.ph106.i.i.preheader ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv129.i.i ; 3 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !53
  %i.ng = getelementptr i8, ptr %i.ne, i64 -8
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !53
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.mt, double %i.nh)
  store double %i.ni, ptr %i.ne, align 8, !tbaa !53
  %indvars.iv.next130.i.i = add nsw i64 %indvars.iv129.i.i, -1
  %i.nj = icmp sgt i64 %indvars.iv129.i.i, 2
  br i1 %i.nj, label %.lr.ph106.i.i, label %._crit_edge107.i.i, !llvm.loop !435

._crit_edge107.i.i:                               ; preds = %.lr.ph106.i.i, %middle.block
  %indvars.iv.next133.i.i = add nuw nsw i64 %indvars.iv132.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next133.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %.preheader101.i.i, label %.lr.ph106.preheader.i.i, !llvm.loop !436

bb.t:                                             ; preds = %bb.t, %.preheader101.i.i
  %indvars.iv135.i.i = phi i64 [ 2, %.preheader101.i.i ], [ %indvars.iv.next136.i.i, %bb.t ] ; 3 uses
  %i.nk = phi i32 [ %i.b, %.preheader101.i.i ], [ %i.nt, %bb.t ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv135.i.i
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !53
  %i.nn = fneg double %i.nm
  %i.no = sext i32 %i.nk to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !50
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv135.i.i
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.nn, ptr noundef %i.nq, double noundef 1.000000e+00, ptr noundef %i.ns, ptr noundef %i.ns) #12
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %i.nt = load i32, ptr %i.a, align 8, !tbaa !66  ; 5 uses
  %i.nu = sext i32 %i.nt to i64
  %i.nv = icmp slt i64 %indvars.iv.next136.i.i, %i.nu
  br i1 %i.nv, label %bb.t, label %._crit_edge115.i.i, !llvm.loop !437

._crit_edge115.i.i:                               ; preds = %bb.t
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !102
  %.not92.i.i = icmp ne i32 %i.nx, 0
  %i.ny = icmp sgt i32 %i.nt, 2
  %or.cond.i.i = and i1 %i.ny, %.not92.i.i
  br i1 %or.cond.i.i, label %.lr.ph117.i.i, label %.loopexit100.i.i

.lr.ph117.i.i:                                    ; preds = %._crit_edge115.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph117.i.i
  %indvars.iv138.i.i = phi i64 [ 2, %.lr.ph117.i.i ], [ %indvars.iv.next139.i.i, %bb.u ] ; 3 uses
  %i.oa = phi i32 [ %i.nt, %.lr.ph117.i.i ], [ %i.oj, %bb.u ]
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv138.i.i
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !53
  %i.od = fneg double %i.oc
  %i.oe = sext i32 %i.oa to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !50
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv138.i.i
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.od, ptr noundef %i.og, double noundef 1.000000e+00, ptr noundef %i.oi, ptr noundef %i.oi) #12
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %i.oj = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.ok = sext i32 %i.oj to i64
  %i.ol = icmp slt i64 %indvars.iv.next139.i.i, %i.ok
  br i1 %i.ol, label %bb.u, label %.loopexit100.i.i, !llvm.loop !438

.loopexit100.i.i:                                 ; preds = %bb.u, %._crit_edge115.i.i, %._crit_edge.i3.i
  %i.om = phi i32 [ %i.nt, %._crit_edge115.i.i ], [ %i.b, %._crit_edge.i3.i ], [ %i.oj, %bb.u ] ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !121
  %.not93.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not93.i.i, label %.loopexit98.i.i, label %.preheader97.i.i

.preheader97.i.i:                                 ; preds = %.loopexit100.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !110 ; 2 uses
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %.preheader96.lr.ph.i.i, label %.loopexit98.i.i

.preheader96.lr.ph.i.i:                           ; preds = %.preheader97.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ot = icmp sgt i32 %i.om, 2
  br i1 %i.ot, label %.preheader96.i.i, label %.loopexit98.i.i

.preheader96.i.i:                                 ; preds = %.preheader96.lr.ph.i.i, %._crit_edge120.i.i
  %i.ou = phi i32 [ %i.pn, %._crit_edge120.i.i ], [ %i.oq, %.preheader96.lr.ph.i.i ]
  %i.ov = phi i32 [ %i.po, %._crit_edge120.i.i ], [ %i.om, %.preheader96.lr.ph.i.i ] ; 3 uses
  %indvars.iv144.i.i = phi i64 [ %indvars.iv.next145.i.i, %._crit_edge120.i.i ], [ 0, %.preheader96.lr.ph.i.i ] ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 2
  br i1 %i.ow, label %.lr.ph119.i.i, label %._crit_edge120.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader96.i.i, %.lr.ph119.i.i
  %indvars.iv141.i.i = phi i64 [ %indvars.iv.next142.i.i, %.lr.ph119.i.i ], [ 2, %.preheader96.i.i ] ; 3 uses
  %i.ox = phi i32 [ %i.pk, %.lr.ph119.i.i ], [ %i.ov, %.preheader96.i.i ]
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv141.i.i
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !53
  %i.pa = fneg double %i.oz
  %i.pb = sext i32 %i.ox to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.pb
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !114
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv144.i.i
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !50
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv141.i.i
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !114
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv144.i.i
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.pa, ptr noundef %i.pf, double noundef 1.000000e+00, ptr noundef %i.pj, ptr noundef %i.pj) #12
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.pk = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = icmp slt i64 %indvars.iv.next142.i.i, %i.pl
  br i1 %i.pm, label %.lr.ph119.i.i, label %._crit_edge120.loopexit.i.i, !llvm.loop !439

._crit_edge120.loopexit.i.i:                      ; preds = %.lr.ph119.i.i
  %.pre.i.i = load i32, ptr %i.op, align 4, !tbaa !110
  br label %._crit_edge120.i.i

._crit_edge120.i.i:                               ; preds = %._crit_edge120.loopexit.i.i, %.preheader96.i.i
  %i.pn = phi i32 [ %.pre.i.i, %._crit_edge120.loopexit.i.i ], [ %i.ou, %.preheader96.i.i ] ; 2 uses
  %i.po = phi i32 [ %i.pk, %._crit_edge120.loopexit.i.i ], [ %i.ov, %.preheader96.i.i ] ; 2 uses
  %indvars.iv.next145.i.i = add nuw nsw i64 %indvars.iv144.i.i, 1 ; 2 uses
  %i.pp = sext i32 %i.pn to i64
  %i.pq = icmp slt i64 %indvars.iv.next145.i.i, %i.pp
  br i1 %i.pq, label %.preheader96.i.i, label %.loopexit98.i.i, !llvm.loop !440

.loopexit98.i.i:                                  ; preds = %._crit_edge120.i.i, %.preheader96.lr.ph.i.i, %.preheader97.i.i, %.loopexit100.i.i
  %i.pr = phi i32 [ %i.om, %.loopexit100.i.i ], [ %i.om, %.preheader96.lr.ph.i.i ], [ %i.om, %.preheader97.i.i ], [ %i.po, %._crit_edge120.i.i ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !146
  %.not94.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not94.i.i, label %cvAdjustAdams.exit, label %.preheader95.i.i

.preheader95.i.i:                                 ; preds = %.loopexit98.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !110 ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.preheader.lr.ph.i.i, label %cvAdjustAdams.exit

.preheader.lr.ph.i.i:                             ; preds = %.preheader95.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.py = icmp sgt i32 %i.pr, 2
  br i1 %i.py, label %.preheader.i8.i, label %cvAdjustAdams.exit

.preheader.i8.i:                                  ; preds = %.preheader.lr.ph.i.i, %._crit_edge124.i.i
  %i.pz = phi i32 [ %i.qs, %._crit_edge124.i.i ], [ %i.pv, %.preheader.lr.ph.i.i ]
  %i.qa = phi i32 [ %i.qt, %._crit_edge124.i.i ], [ %i.pr, %.preheader.lr.ph.i.i ] ; 3 uses
  %indvars.iv150.i.i = phi i64 [ %indvars.iv.next151.i.i, %._crit_edge124.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 3 uses
  %i.qb = icmp sgt i32 %i.qa, 2
  br i1 %i.qb, label %.lr.ph123.i.i, label %._crit_edge124.i.i

.lr.ph123.i.i:                                    ; preds = %.preheader.i8.i, %.lr.ph123.i.i
  %indvars.iv147.i.i = phi i64 [ %indvars.iv.next148.i.i, %.lr.ph123.i.i ], [ 2, %.preheader.i8.i ] ; 3 uses
  %i.qc = phi i32 [ %i.qp, %.lr.ph123.i.i ], [ %i.qa, %.preheader.i8.i ]
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv147.i.i
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !53
  %i.qf = fneg double %i.qe
  %i.qg = sext i32 %i.qc to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.qg
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !114
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %indvars.iv150.i.i
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !50
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv147.i.i
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !114
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv150.i.i
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.qf, ptr noundef %i.qk, double noundef 1.000000e+00, ptr noundef %i.qo, ptr noundef %i.qo) #12
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %i.qp = load i32, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next148.i.i, %i.qq
  br i1 %i.qr, label %.lr.ph123.i.i, label %._crit_edge124.loopexit.i.i, !llvm.loop !441

._crit_edge124.loopexit.i.i:                      ; preds = %.lr.ph123.i.i
  %.pre153.i.i = load i32, ptr %i.pu, align 4, !tbaa !110
  br label %._crit_edge124.i.i

._crit_edge124.i.i:                               ; preds = %._crit_edge124.loopexit.i.i, %.preheader.i8.i
  %i.qs = phi i32 [ %.pre153.i.i, %._crit_edge124.loopexit.i.i ], [ %i.pz, %.preheader.i8.i ] ; 2 uses
  %i.qt = phi i32 [ %i.qp, %._crit_edge124.loopexit.i.i ], [ %i.qa, %.preheader.i8.i ]
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %i.qu = sext i32 %i.qs to i64
  %i.qv = icmp slt i64 %indvars.iv.next151.i.i, %i.qu
  br i1 %i.qv, label %.preheader.i8.i, label %cvAdjustAdams.exit, !llvm.loop !442

cvAdjustAdams.exit:                               ; preds = %._crit_edge124.i.i, %._crit_edge173.i.i, %._crit_edge130.i, %bb.g, %.preheader.lr.ph.i.i, %.preheader95.i.i, %.loopexit98.i.i, %.preheader.i.i, %.loopexit138.i.i, %bb.m, %.preheader100.lr.ph.i, %.preheader101.i, %.loopexit104.i, %.preheader.i, %bb.f, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cvRescale(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66
  %.not56 = icmp slt i32 %i.c, 1
  %.pre = load double, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  br i1 %.not56, label %._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 752
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %.loopexit
  %indvars.iv64 = phi i64 [ 1, %.lr.ph59 ], [ %indvars.iv.next65, %.loopexit ] ; 6 uses
  %.058 = phi double [ %.pre, %.lr.ph59 ], [ %i.al, %.loopexit ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  tail call void @N_VScale(double noundef %.058, ptr noundef %i.m, ptr noundef %i.m) #12
  %i.n = load i32, ptr %i.e, align 8, !tbaa !102
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  tail call void @N_VScale(double noundef %.058, ptr noundef %i.p, ptr noundef %i.p) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load i32, ptr %i.g, align 8, !tbaa !121
  %.not49 = icmp eq i32 %i.q, 0
  br i1 %.not49, label %.loopexit52, label %.preheader51

.preheader51:                                     ; preds = %bb.d
  %i.r = load i32, ptr %i.h, align 4, !tbaa !110
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %.loopexit52

.lr.ph:                                           ; preds = %.preheader51
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 2 uses
  tail call void @N_VScale(double noundef %.058, ptr noundef %i.w, ptr noundef %i.w) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.h, align 4, !tbaa !110
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.e, label %.loopexit52, !llvm.loop !443

.loopexit52:                                      ; preds = %bb.e, %.preheader51, %bb.d
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !146
  %.not50 = icmp eq i32 %i.aa, 0
  br i1 %.not50, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit52
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !110
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph55, %bb.f
  %indvars.iv61 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next62, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv61
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  tail call void @N_VScale(double noundef %.058, ptr noundef %i.ag, ptr noundef %i.ag) #12
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !110
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next62, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !444

.loopexit:                                        ; preds = %bb.f, %.preheader, %.loopexit52
  %i.ak = load double, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  %i.al = fmul double %.058, %i.ak
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %i.am = load i32, ptr %i.b, align 8, !tbaa !66
  %i.an = sext i32 %i.am to i64
  %.not.not = icmp slt i64 %indvars.iv64, %i.an
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !445

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.ao = phi double [ %.pre, %bb.a ], [ %i.ak, %.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !177
  %i.ar = fmul double %i.aq, %i.ao                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 944
  store double %i.ar, ptr %i.as, align 8, !tbaa !174
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 960
  store double %i.ar, ptr %i.at, align 8, !tbaa !81
  store double %i.ar, ptr %i.ap, align 8, !tbaa !177
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store i32 0, ptr %i.au, align 8, !tbaa !78
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @cvRestore(ptr nofree noundef nonnull captures(none) initializes((984, 992)) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  store double %1, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %.not99 = icmp slt i32 %i.c, 1
  br i1 %.not99, label %._crit_edge, label %.preheader97.lr.ph

.preheader97.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.lr.ph, %bb.c
  %indvars.iv117 = phi i64 [ 1, %.preheader97.lr.ph ], [ %indvars.iv.next118, %bb.c ] ; 3 uses
  %i.e = phi i32 [ %i.c, %.preheader97.lr.ph ], [ %i.k, %bb.c ]
  %i.f = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader97, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.preheader97 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !50
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.i, double noundef -1.000000e+00, ptr noundef %i.j, ptr noundef %i.i) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not87.not = icmp sgt i64 %indvars.iv, %indvars.iv117
  br i1 %.not87.not, label %bb.b, label %bb.c, !llvm.loop !446

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %i.k = load i32, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.l = sext i32 %i.k to i64
  %.not.not = icmp slt i64 %indvars.iv117, %i.l
  br i1 %.not.not, label %.preheader97, label %._crit_edge, !llvm.loop !447

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.m = phi i32 [ %i.c, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i32, ptr %i.n, align 8, !tbaa !102
  %.not78 = icmp eq i32 %i.o, 0
  %.not79102 = icmp slt i32 %i.m, 1
  %or.cond = or i1 %.not78, %.not79102
  br i1 %or.cond, label %.loopexit96, label %.preheader94.lr.ph

.preheader94.lr.ph:                               ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.lr.ph, %bb.e
  %indvars.iv123 = phi i64 [ 1, %.preheader94.lr.ph ], [ %indvars.iv.next124, %bb.e ] ; 3 uses
  %i.q = phi i32 [ %i.m, %.preheader94.lr.ph ], [ %i.w, %bb.e ]
  %i.r = sext i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader94, %bb.d
  %indvars.iv120 = phi i64 [ %i.r, %.preheader94 ], [ %indvars.iv.next121, %bb.d ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv120 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !50
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.u, double noundef -1.000000e+00, ptr noundef %i.v, ptr noundef %i.u) #12
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1
  %.not86.not = icmp sgt i64 %indvars.iv120, %indvars.iv123
  br i1 %.not86.not, label %bb.d, label %bb.e, !llvm.loop !448

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %i.w = load i32, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.x = sext i32 %i.w to i64
  %.not79.not = icmp slt i64 %indvars.iv123, %i.x
  br i1 %.not79.not, label %.preheader94, label %.loopexit96, !llvm.loop !449

.loopexit96:                                      ; preds = %bb.e, %._crit_edge
  %i.y = phi i32 [ %i.m, %._crit_edge ], [ %i.w, %bb.e ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !121
  %.not80 = icmp eq i32 %i.aa, 0
  br i1 %.not80, label %.loopexit93, label %.preheader92

end_hunk_1
