inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@CVode:bb.a
  store i32 1, ptr %i.sr, align 4, !tbaa !98
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.st = load double, ptr %i.ss, align 8, !tbaa !237 ; 2 uses
  store double %i.st, ptr %3, align 8, !tbaa !49
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double %i.st, ptr %i.su, align 8, !tbaa !218
  br label %bb.fx

bb.fi:                                            ; preds = %bb.fg
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !237
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.70, double noundef %i.sw)
  br label %bb.fx

bb.fj:                                            ; preds = %bb.fg
  %i.sx = load i64, ptr %i.l, align 8, !tbaa !217
  %i.sy = icmp eq i64 %i.sx, 1
  br i1 %i.sy, label %.preheader, label %.thread543

.preheader:                                       ; preds = %bb.fj
  %i.sz = load i32, ptr %i.nd, align 8, !tbaa !204 ; 2 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %.lr.ph611, label %.thread543

.lr.ph611:                                        ; preds = %.preheader
  %i.tb = load ptr, ptr %i.ne, align 8, !tbaa !210
  %wide.trip.count = zext nneg i32 %i.sz to i64
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fl
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next625, %wide.trip.count
  br i1 %exitcond.not, label %.thread543, label %bb.fl, !llvm.loop !243

bb.fl:                                            ; preds = %.lr.ph611, %bb.fk
  %indvars.iv624 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next625, %bb.fk ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv624
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !37
  %.not527 = icmp eq i32 %i.td, 0
  br i1 %.not527, label %bb.fm, label %bb.fk

bb.fm:                                            ; preds = %bb.fl
  %i.te = load i32, ptr %i.nf, align 8, !tbaa !31
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %bb.fn, label %.thread543

bb.fn:                                            ; preds = %bb.fm
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef 99, ptr noundef nonnull @.str, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.84)
  br label %.thread543

.thread543:                                       ; preds = %bb.fk, %.preheader, %bb.fj, %bb.fn, %bb.fm, %bb.ff
  br i1 %i.i, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %.thread543
  %i.tg = load double, ptr %i.my, align 8, !tbaa !83
  %i.th = fsub double %i.tg, %1
  %i.ti = load double, ptr %i.mb, align 8, !tbaa !229
  %i.tj = fmul double %i.th, %i.ti
  %i.tk = fcmp ult double %i.tj, 0.000000e+00
  br i1 %i.tk, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store double %1, ptr %3, align 8, !tbaa !49
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double %1, ptr %i.tl, align 8, !tbaa !218
  %i.tm = tail call i32 @CVodeGetDky(ptr noundef nonnull %0, double noundef %1, i32 noundef 0, ptr noundef nonnull %2) ; 0 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !244
  store i32 %i.to, ptr %i.me, align 8, !tbaa !100
  %i.tp = load double, ptr %i.ng, align 8, !tbaa !234
  store double %i.tp, ptr %i.mc, align 8, !tbaa !99
  br label %bb.fx

bb.fq:                                            ; preds = %bb.fo, %.thread543
  %i.tq = load i32, ptr %i.nb, align 8, !tbaa !226
  %.not528 = icmp eq i32 %i.tq, 0
  br i1 %.not528, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.tr = load double, ptr %0, align 8, !tbaa !22
  %i.ts = fmul double %i.tr, 1.000000e+02
  %i.tt = load double, ptr %i.my, align 8, !tbaa !83
  %i.tu = tail call double @SUNRabs(double noundef %i.tt) #12
  %i.tv = load double, ptr %i.mb, align 8, !tbaa !229
  %i.tw = tail call double @SUNRabs(double noundef %i.tv) #12
  %i.tx = fadd double %i.tu, %i.tw
  %i.ty = fmul double %i.ts, %i.tx
  %i.tz = load double, ptr %i.my, align 8, !tbaa !83
  %i.ua = load double, ptr %i.nc, align 8, !tbaa !227
  %i.ub = fsub double %i.tz, %i.ua
  %i.uc = tail call double @SUNRabs(double noundef %i.ub) #12
  %i.ud = fcmp ugt double %i.uc, %i.ty
  br i1 %i.ud, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ue = load double, ptr %i.nc, align 8, !tbaa !227
  %i.uf = tail call i32 @CVodeGetDky(ptr noundef nonnull %0, double noundef %i.ue, i32 noundef 0, ptr noundef nonnull %2) ; 0 uses
  %i.ug = load double, ptr %i.nc, align 8, !tbaa !227 ; 2 uses
  store double %i.ug, ptr %3, align 8, !tbaa !49
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double %i.ug, ptr %i.uh, align 8, !tbaa !218
  store i32 0, ptr %i.nb, align 8, !tbaa !226
  br label %bb.fx

bb.ft:                                            ; preds = %bb.fr
  %i.ui = load double, ptr %i.my, align 8, !tbaa !83 ; 2 uses
  %i.uj = load double, ptr %i.ng, align 8, !tbaa !234
  %i.uk = fadd double %i.ui, %i.uj
  %i.ul = load double, ptr %i.nc, align 8, !tbaa !227 ; 2 uses
  %i.um = fsub double %i.uk, %i.ul
  %i.un = load double, ptr %i.mb, align 8, !tbaa !229 ; 2 uses
  %i.uo = fmul double %i.um, %i.un
  %i.up = fcmp ogt double %i.uo, 0.000000e+00
  br i1 %i.up, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.uq = fsub double %i.ul, %i.ui
  %i.ur = load double, ptr %0, align 8, !tbaa !22
  %i.us = tail call double @llvm.fmuladd.f64(double %i.ur, double -4.000000e+00, double 1.000000e+00)
  %i.ut = fmul double %i.uq, %i.us                ; 2 uses
  store double %i.ut, ptr %i.ng, align 8, !tbaa !234
  %i.uu = fdiv double %i.ut, %i.un
  store double %i.uu, ptr %i.nh, align 8, !tbaa !238
  br label %bb.fv

bb.fv:                                            ; preds = %bb.ft, %bb.fu, %bb.fq
  br i1 %i.ni, label %bb.fw, label %bb.du

bb.fw:                                            ; preds = %bb.fv
  %i.uv = load double, ptr %i.my, align 8, !tbaa !83 ; 2 uses
  store double %i.uv, ptr %3, align 8, !tbaa !49
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 992
  store double %i.uv, ptr %i.uw, align 8, !tbaa !218
  %i.ux = load ptr, ptr %i.mg, align 8, !tbaa !46
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ux, ptr noundef nonnull %2) #12
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !244
  store i32 %i.uz, ptr %i.me, align 8, !tbaa !100
  %i.va = load double, ptr %i.ng, align 8, !tbaa !234
  store double %i.va, ptr %i.mc, align 8, !tbaa !99
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fs, %bb.fp, %bb.fi, %bb.fh, %bb.fb, %bb.eu, %bb.ej, %bb.eh, %bb.ed, %bb.ea, %bb.dw
  %.0473 = phi i32 [ -22, %bb.dw ], [ -22, %bb.ea ], [ -22, %bb.ed ], [ -22, %bb.eh ], [ -1, %bb.ej ], [ -2, %bb.eu ], [ %i.ru, %bb.fb ], [ 2, %bb.fh ], [ -12, %bb.fi ], [ 0, %bb.fp ], [ 1, %bb.fs ], [ 0, %bb.fw ] ; 5 uses
  %i.vb = load i32, ptr %i.mn, align 8, !tbaa !144
  %.not529 = icmp eq i32 %i.vb, 0
  br i1 %.not529, label %cvInitialSetup.exit.thread, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !131
  %i.ve = icmp eq i32 %i.vd, 3
  br i1 %i.ve, label %bb.fz, label %cvInitialSetup.exit.thread

bb.fz:                                            ; preds = %bb.fy
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 4 uses
  store i64 0, ptr %i.vf, align 8, !tbaa !138
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 4 uses
  store i64 0, ptr %i.vg, align 8, !tbaa !136
  %i.vh = load i32, ptr %i.mw, align 4, !tbaa !130 ; 4 uses
  %i.vi = icmp sgt i32 %i.vh, 0
  br i1 %i.vi, label %.lr.ph613, label %cvInitialSetup.exit.thread

.lr.ph613:                                        ; preds = %bb.fz
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !156 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !155 ; 3 uses
  %wide.trip.count630 = zext nneg i32 %i.vh to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count630, 1
  %i.vn = icmp eq i32 %i.vh, 1
  br i1 %i.vn, label %.epil.preheader, label %.lr.ph613.new

.lr.ph613.new:                                    ; preds = %.lr.ph613
  %unroll_iter = and i64 %wide.trip.count630, 2147483646
  br label %bb.ga

bb.ga:                                            ; preds = %bb.ga, %.lr.ph613.new
  %indvars.iv627 = phi i64 [ 0, %.lr.ph613.new ], [ %indvars.iv.next628.1, %bb.ga ] ; 4 uses
  %i.vo = phi i64 [ 0, %.lr.ph613.new ], [ %i.wb, %bb.ga ]
  %i.vp = phi i64 [ 0, %.lr.ph613.new ], [ %i.vy, %bb.ga ]
  %niter = phi i64 [ 0, %.lr.ph613.new ], [ %niter.next.1, %bb.ga ]
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv627
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !75
  %i.vs = add nsw i64 %i.vp, %i.vr                ; 2 uses
  store i64 %i.vs, ptr %i.vf, align 8, !tbaa !138
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv627
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !75
  %i.vv = add nsw i64 %i.vo, %i.vu                ; 2 uses
  store i64 %i.vv, ptr %i.vg, align 8, !tbaa !136
  %indvars.iv.next628 = or disjoint i64 %indvars.iv627, 1 ; 2 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv.next628
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !75
  %i.vy = add nsw i64 %i.vs, %i.vx                ; 3 uses
  store i64 %i.vy, ptr %i.vf, align 8, !tbaa !138
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv.next628
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !75
  %i.wb = add nsw i64 %i.vv, %i.wa                ; 3 uses
  store i64 %i.wb, ptr %i.vg, align 8, !tbaa !136
  %indvars.iv.next628.1 = add nuw nsw i64 %indvars.iv627, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cvInitialSetup.exit.thread.loopexit.unr-lcssa, label %bb.ga, !llvm.loop !245

cvInitialSetup.exit.thread.loopexit.unr-lcssa:    ; preds = %bb.ga
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cvInitialSetup.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %cvInitialSetup.exit.thread.loopexit.unr-lcssa, %.lr.ph613
  %indvars.iv627.epil.init = phi i64 [ 0, %.lr.ph613 ], [ %indvars.iv.next628.1, %cvInitialSetup.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ 0, %.lr.ph613 ], [ %i.wb, %cvInitialSetup.exit.thread.loopexit.unr-lcssa ]
  %.epil.init672 = phi i64 [ 0, %.lr.ph613 ], [ %i.vy, %cvInitialSetup.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod673 = trunc i32 %i.vh to i1
  tail call void @llvm.assume(i1 %lcmp.mod673)
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %indvars.iv627.epil.init
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !75
  %i.we = add nsw i64 %.epil.init672, %i.wd
  store i64 %i.we, ptr %i.vf, align 8, !tbaa !138
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv627.epil.init
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !75
  %i.wh = add nsw i64 %.epil.init, %i.wg
  store i64 %i.wh, ptr %i.vg, align 8, !tbaa !136
  br label %cvInitialSetup.exit.thread

cvInitialSetup.exit.thread:                       ; preds = %.epil.preheader, %cvInitialSetup.exit.thread.loopexit.unr-lcssa, %bb.fz, %bb.u, %bb.t, %bb.bc, %bb.az, %bb.av, %bb.at, %bb.ar, %bb.ao, %bb.ai, %bb.ag, %bb.ad, %bb.aa, %bb.y, %bb.am, %bb.o, %bb.fx, %bb.fy, %bb.dj, %bb.dq, %bb.dp, %bb.dm, %bb.dk, %bb.dg, %bb.df, %bb.de, %bb.da, %bb.cz, %bb.cy, %bb.cu, %bb.cg, %bb.ca, %bb.bx, %bb.bu, %bb.bs, %bb.bp, %bb.bn, %bb.bk, %bb.bi, %bb.bf, %bb.bd, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0475 = phi i32 [ -21, %bb.b ], [ -23, %bb.d ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ -12, %bb.dg ], [ -8, %bb.bd ], [ -9, %bb.bf ], [ -31, %bb.bi ], [ -32, %bb.bk ], [ -41, %bb.bn ], [ -42, %bb.bp ], [ -51, %bb.bs ], [ -52, %bb.bu ], [ -22, %bb.bx ], [ -22, %bb.ca ], [ %i.gf, %bb.cg ], [ -12, %bb.cu ], [ -22, %bb.cy ], [ -12, %bb.cz ], [ 2, %bb.da ], [ 0, %bb.de ], [ -22, %bb.dk ], [ %.0473, %bb.fx ], [ 0, %bb.dm ], [ -22, %bb.dp ], [ 1, %bb.dq ], [ 0, %bb.dj ], [ 2, %bb.df ], [ -22, %bb.o ], [ %.0473, %bb.fy ], [ -22, %bb.u ], [ -22, %bb.t ], [ -5, %bb.bc ], [ -22, %bb.az ], [ -22, %bb.av ], [ -22, %bb.at ], [ -22, %bb.ar ], [ -22, %bb.ao ], [ -22, %bb.ai ], [ -22, %bb.ag ], [ -22, %bb.ad ], [ -22, %bb.aa ], [ -22, %bb.y ], [ -22, %bb.am ], [ %.0473, %bb.fz ], [ %.0473, %cvInitialSetup.exit.thread.loopexit.unr-lcssa ], [ %.0473, %.epil.preheader ]
  ret i32 %.0475
}

; Function Attrs: nounwind uwtable
define i32 @cvSensRhsWrapper(ptr nofree noundef captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !130  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.m = load i32, ptr %i.l, align 4, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.p = tail call i32 %i.k(i32 noundef %i.m, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %i.o, ptr noundef %6, ptr noundef %7) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !246
  %i.s = add nsw i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !246
  br label %.loopexit

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.e, align 4, !tbaa !130  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.d, label %.loopexit, !llvm.loop !247

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.w = phi i32 [ %i.f, %.lr.ph ], [ %i.t, %bb.c ]
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = tail call i32 %i.x(i32 noundef %i.w, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.ad, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %6, ptr noundef %7) #12 ; 2 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !246
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !246
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader, %bb.b
  %.1 = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader ], [ %i.ae, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -51, 1) i32 @cvHin(ptr nofree noundef nonnull %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 7 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !83
  %i.c = fsub double %1, %i.b                     ; 3 uses
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.d, label %cvYddNorm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ule double %i.c, 0.000000e+00       ; 3 uses
  %i.f = tail call double @SUNRabs(double noundef %i.c) #12 ; 2 uses
  %i.g = load double, ptr %0, align 8, !tbaa !22
  %i.h = load double, ptr %i.a, align 8, !tbaa !83
  %i.i = tail call double @SUNRabs(double noundef %i.h) #12
  %i.j = tail call double @SUNRabs(double noundef %1) #12
  %i.k = fcmp ogt double %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load double, ptr %i.a, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi double [ %i.l, %bb.c ], [ %1, %bb.b ]
  %i.m = tail call double @SUNRabs(double noundef %.sink) #12
  %i.n = fmul double %i.g, %i.m                   ; 2 uses
  %i.o = fmul double %i.n, 2.000000e+00
  %i.p = fcmp olt double %i.f, %i.o
  br i1 %i.p, label %cvYddNorm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = fmul double %i.n, 1.000000e+02           ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79   ; 14 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  tail call void @N_VAbs(ptr noundef %i.w, ptr noundef %i.u) #12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.ac = tail call i32 %i.y(ptr noundef %i.z, ptr noundef %i.s, ptr noundef %i.ab) #12, !inline_history !248 ; 0 uses
  tail call void @N_VInv(ptr noundef %i.s, ptr noundef %i.s) #12
  tail call void @N_VLinearSum(double noundef 1.000000e-01, ptr noundef %i.u, double noundef 1.000000e+00, ptr noundef %i.s, ptr noundef %i.s) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  tail call void @N_VAbs(ptr noundef %i.ae, ptr noundef %i.u) #12
  tail call void @N_VDiv(ptr noundef %i.u, ptr noundef %i.s, ptr noundef %i.s) #12
  %i.af = tail call double @N_VMaxNorm(ptr noundef %i.s) #12 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !220
  %.not111.i = icmp eq i32 %i.aj, 0
  br i1 %.not111.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !116 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !114 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  tail call void @N_VAbs(ptr noundef %i.ap, ptr noundef %i.an) #12
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.ar = tail call fastcc i32 @cvQuadEwtSet(ptr noundef nonnull readonly %0, ptr noundef %i.aq, ptr noundef %i.al) ; 0 uses
  tail call void @N_VInv(ptr noundef %i.al, ptr noundef %i.al) #12
  tail call void @N_VLinearSum(double noundef 1.000000e-01, ptr noundef %i.an, double noundef 1.000000e+00, ptr noundef %i.al, ptr noundef %i.al) #12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  tail call void @N_VAbs(ptr noundef %i.at, ptr noundef %i.an) #12
  tail call void @N_VDiv(ptr noundef %i.an, ptr noundef %i.al, ptr noundef %i.al) #12
  %i.au = tail call double @N_VMaxNorm(ptr noundef %i.al) #12 ; 2 uses
  %i.av = fcmp ogt double %i.au, %i.af
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.0105.i = phi double [ %i.au, %bb.h ], [ %i.af, %bb.g ], [ %i.af, %bb.f ], [ %i.af, %bb.e ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !144
  %.not112.i = icmp eq i32 %i.ax, 0
  br i1 %.not112.i, label %.loopexit116.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !239
  %.not113.i = icmp eq i32 %i.az, 0
  br i1 %.not113.i, label %.loopexit116.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !147 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !134
  %i.be = tail call fastcc i32 @cvSensEwtSet(ptr noundef nonnull readonly %0, ptr noundef %i.bd, ptr noundef %i.bb) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !130
  %i.bh = icmp sgt i32 %i.bg, 0
end_hunk_0
begin_hunk_1_@cvRcheck3:bb.a
  %i.qc = phi i32 [ %i.pv, %bb.at ], [ %i.pv, %bb.au ], [ %.pre, %bb.av ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qd = sext i32 %i.qc to i64
  %i.qe = icmp slt i64 %indvars.iv.next, %i.qd
  br i1 %i.qe, label %bb.at, label %._crit_edge, !llvm.loop !283

._crit_edge.thread.thread:                        ; preds = %cvRootfind.exit, %.loopexit244.i
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !265
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store double %i.qg, ptr %i.qh, align 8, !tbaa !237
  br label %bb.ax

._crit_edge.thread:                               ; preds = %bb.q
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !265
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store double %i.qj, ptr %i.qk, align 8, !tbaa !237
  br i1 %.not157, label %cvRootfind.exit.thread, label %bb.ax

._crit_edge:                                      ; preds = %bb.aw
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !265
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store double %i.qm, ptr %i.qn, align 8, !tbaa !237
  %i.qo = icmp sgt i32 %i.qc, 0
  br i1 %i.qo, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %._crit_edge
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !207 ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !205 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.qc to i64   ; 5 uses
  %min.iters.check227 = icmp ult i32 %i.qc, 8
  %i.qt = ptrtoaddr ptr %i.qs to i64
  %i.qu = ptrtoaddr ptr %i.qq to i64
  %i.qv = sub i64 %i.qu, %i.qt
  %diff.check225 = icmp ugt i64 %i.qv, -32
  %or.cond251 = select i1 %min.iters.check227, i1 true, i1 %diff.check225
  br i1 %or.cond251, label %scalar.ph226.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph84
  %n.vec229 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next234, %vector.body230 ] ; 3 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %index231 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %wide.load232 = load <2 x double>, ptr %i.qw, align 8, !tbaa !49
  %wide.load233 = load <2 x double>, ptr %i.qx, align 8, !tbaa !49
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %index231 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store <2 x double> %wide.load232, ptr %i.qy, align 8, !tbaa !49
  store <2 x double> %wide.load233, ptr %i.qz, align 8, !tbaa !49
  %index.next234 = add nuw i64 %index231, 4       ; 2 uses
  %i.ra = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.ra, label %middle.block235, label %vector.body230, !llvm.loop !284

middle.block235:                                  ; preds = %vector.body230
  %cmp.n236 = icmp eq i64 %n.vec229, %wide.trip.count
  br i1 %cmp.n236, label %._crit_edge85, label %scalar.ph226.preheader

scalar.ph226.preheader:                           ; preds = %.lr.ph84, %middle.block235
  %indvars.iv109.ph = phi i64 [ 0, %.lr.ph84 ], [ %n.vec229, %middle.block235 ] ; 3 uses
  %xtraiter285 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %scalar.ph226.prol.loopexit, label %scalar.ph226.prol

scalar.ph226.prol:                                ; preds = %scalar.ph226.preheader, %scalar.ph226.prol
  %indvars.iv109.prol = phi i64 [ %indvars.iv.next110.prol, %scalar.ph226.prol ], [ %indvars.iv109.ph, %scalar.ph226.preheader ] ; 3 uses
  %prol.iter287 = phi i64 [ %prol.iter287.next, %scalar.ph226.prol ], [ 0, %scalar.ph226.preheader ]
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv109.prol
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !49
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv109.prol
  store double %i.rc, ptr %i.rd, align 8, !tbaa !49
  %indvars.iv.next110.prol = add nuw nsw i64 %indvars.iv109.prol, 1 ; 2 uses
  %prol.iter287.next = add i64 %prol.iter287, 1   ; 2 uses
  %prol.iter287.cmp.not = icmp eq i64 %prol.iter287.next, %xtraiter285
  br i1 %prol.iter287.cmp.not, label %scalar.ph226.prol.loopexit, label %scalar.ph226.prol, !llvm.loop !285

scalar.ph226.prol.loopexit:                       ; preds = %scalar.ph226.prol, %scalar.ph226.preheader
  %indvars.iv109.unr = phi i64 [ %indvars.iv109.ph, %scalar.ph226.preheader ], [ %indvars.iv.next110.prol, %scalar.ph226.prol ]
  %i.re = sub nsw i64 %indvars.iv109.ph, %wide.trip.count
  %i.rf = icmp ugt i64 %i.re, -4
  br i1 %i.rf, label %._crit_edge85, label %scalar.ph226

scalar.ph226:                                     ; preds = %scalar.ph226.prol.loopexit, %scalar.ph226
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3, %scalar.ph226 ], [ %indvars.iv109.unr, %scalar.ph226.prol.loopexit ] ; 6 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv109
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !49
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv109
  store double %i.rh, ptr %i.ri, align 8, !tbaa !49
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.next110
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !49
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next110
  store double %i.rk, ptr %i.rl, align 8, !tbaa !49
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.next110.1
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !49
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next110.1
  store double %i.rn, ptr %i.ro, align 8, !tbaa !49
  %indvars.iv.next110.2 = add nuw nsw i64 %indvars.iv109, 3 ; 2 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv.next110.2
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !49
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next110.2
  store double %i.rq, ptr %i.rr, align 8, !tbaa !49
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next110.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge85, label %scalar.ph226, !llvm.loop !286

._crit_edge85:                                    ; preds = %scalar.ph226.prol.loopexit, %scalar.ph226, %middle.block235, %._crit_edge
  br i1 %.0232.i.shrunk127, label %bb.ax, label %cvRootfind.exit.thread

bb.ax:                                            ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge85
  %i.rs = phi ptr [ %i.qi, %._crit_edge.thread ], [ %i.ql, %._crit_edge85 ], [ %i.qf, %._crit_edge.thread.thread ]
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !265
  %i.ru = load ptr, ptr %i.ah, align 8, !tbaa !214
  %i.rv = tail call i32 @CVodeGetDky(ptr noundef nonnull %0, double noundef %i.rt, i32 noundef 0, ptr noundef %i.ru) ; 0 uses
  br label %cvRootfind.exit.thread

cvRootfind.exit.thread:                           ; preds = %bb.aa, %._crit_edge.thread.thread132, %._crit_edge.thread, %._crit_edge85, %bb.g, %bb.ax
  %.053 = phi i32 [ 1, %bb.ax ], [ -12, %bb.g ], [ 0, %._crit_edge85 ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge.thread.thread132 ], [ -12, %bb.aa ]
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define range(i32 -26, 1) i32 @CVodeGetDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.6)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !84
  %i.f = icmp sgt i32 %2, %i.e
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.87)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.g = load double, ptr %0, align 8, !tbaa !22
  %i.h = fmul double %i.g, 1.000000e+02
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !83
  %i.k = tail call double @SUNRabs(double noundef %i.j) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !89
  %i.n = tail call double @SUNRabs(double noundef %i.m) #12
  %i.o = fadd double %i.k, %i.n
  %i.p = fmul double %i.h, %i.o                   ; 2 uses
  %i.q = load double, ptr %i.l, align 8, !tbaa !89 ; 2 uses
  %i.r = fcmp olt double %i.q, 0.000000e+00
  %i.s = fneg double %i.p
  %.060 = select i1 %i.r, double %i.s, double %i.p ; 2 uses
  %i.t = load double, ptr %i.i, align 8, !tbaa !83 ; 4 uses
  %i.u = fsub double %i.t, %i.q                   ; 2 uses
  %i.v = fsub double %i.u, %.060
  %i.w = fadd double %i.t, %.060
  %i.x = fsub double %1, %i.v
  %i.y = fsub double %1, %i.w
  %i.z = fmul double %i.x, %i.y
  %i.aa = fcmp ogt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.88, double noundef %1, double noundef %i.u, double noundef %i.t)
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ab = fsub double %1, %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !229
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = load i32, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  %.not71 = icmp slt i32 %i.af, %2
  br i1 %.not71, label %._crit_edge73, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.not67.not68.not = icmp eq i32 %2, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.072 = phi i32 [ %i.af, %.preheader.lr.ph ], [ %6, %bb.m ] ; 6 uses
  %i.ah = sub nsw i32 %.072, %2
  br i1 %.not67.not68.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.05970 = phi i32 [ %i.ak, %.lr.ph ], [ %.072, %.preheader ] ; 2 uses
  %.06169 = phi double [ %i.aj, %.lr.ph ], [ 1.000000e+00, %.preheader ]
  %i.ai = sitofp i32 %.05970 to double
  %i.aj = fmul double %.06169, %i.ai              ; 2 uses
  %i.ak = add nsw i32 %.05970, -1                 ; 2 uses
  %.not67.not = icmp sgt i32 %i.ak, %i.ah
  br i1 %.not67.not, label %.lr.ph, label %._crit_edge, !llvm.loop !287

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.061.lcssa = phi double [ 1.000000e+00, %.preheader ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.al = load i32, ptr %i.d, align 8, !tbaa !84
  %4 = icmp eq i32 %.072, %i.al
  %5 = zext nneg i32 %.072 to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %5
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  tail call void @N_VScale(double noundef %.061.lcssa, ptr noundef %i.an, ptr noundef nonnull %3) #12
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  tail call void @N_VLinearSum(double noundef %.061.lcssa, ptr noundef %i.an, double noundef %i.ae, ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %6 = add nsw i32 %.072, -1
  %.not.not = icmp sgt i32 %.072, %2
  br i1 %.not.not, label %.preheader, label %._crit_edge73, !llvm.loop !288

._crit_edge73:                                    ; preds = %bb.m, %bb.j
  %i.ao = icmp eq i32 %2, 0
  br i1 %i.ao, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge73
  %i.ap = load double, ptr %i.ac, align 8, !tbaa !229
  %i.aq = sub nsw i32 0, %2
  %i.ar = tail call double @SUNRpowerI(double noundef %i.ap, i32 noundef %i.aq) #12
  tail call void @N_VScale(double noundef %i.ar, ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge73, %bb.n, %bb.i, %bb.g, %bb.d, %bb.b
  %.062 = phi i32 [ -21, %bb.b ], [ -26, %bb.d ], [ -24, %bb.g ], [ -25, %bb.i ], [ 0, %bb.n ], [ 0, %._crit_edge73 ]
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cvQuadEwtSet(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !124
  switch i32 %i.b, label %cvQuadEwtSetSS.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  tail call void @N_VAbs(ptr noundef %1, ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load double, ptr %i.e, align 8, !tbaa !125
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  tail call void @N_VScale(double noundef %i.f, ptr noundef %i.g, ptr noundef %i.g) #12
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !126
  tail call void @N_VAddConst(ptr noundef %i.h, double noundef %i.j, ptr noundef %i.h) #12
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.l = tail call double @N_VMin(ptr noundef %i.k) #12
  %i.m = fcmp ugt double %i.l, 0.000000e+00
  br i1 %i.m, label %cvQuadEwtSetSS.exit.sink.split, label %cvQuadEwtSetSS.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116
  tail call void @N_VAbs(ptr noundef %1, ptr noundef %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load double, ptr %i.p, align 8, !tbaa !125
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128
  tail call void @N_VLinearSum(double noundef %i.q, ptr noundef %i.r, double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.r) #12
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.v = tail call double @N_VMin(ptr noundef %i.u) #12
  %i.w = fcmp ugt double %i.v, 0.000000e+00
  br i1 %i.w, label %cvQuadEwtSetSS.exit.sink.split, label %cvQuadEwtSetSS.exit

cvQuadEwtSetSS.exit.sink.split:                   ; preds = %bb.c, %bb.b
  %.sink.in = phi ptr [ %i.c, %bb.b ], [ %i.n, %bb.c ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !116
  tail call void @N_VInv(ptr noundef %.sink, ptr noundef %2) #12
  br label %cvQuadEwtSetSS.exit

cvQuadEwtSetSS.exit:                              ; preds = %cvQuadEwtSetSS.exit.sink.split, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ 0, %cvQuadEwtSetSS.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cvSensEwtSet(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !162
  switch i32 %i.b, label %cvSensEwtSetEE.exit [
    i32 4, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !130
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %cvSensEwtSetEE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 5 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.n, ptr noundef %i.p, ptr noundef %i.e) #12
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.u = tail call i32 %i.q(ptr noundef %i.e, ptr noundef %i.s, ptr noundef %i.t) #12, !inline_history !289
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.d, label %cvSensEwtSetEE.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !49
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  tail call void @N_VScale(double noundef %i.x, ptr noundef %i.y, ptr noundef %i.y) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !130
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %bb.c, label %cvSensEwtSetEE.exit, !llvm.loop !290

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !130
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i10, label %cvSensEwtSetEE.exit

.lr.ph.i10:                                       ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %bb.g ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i11
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !79
  tail call void @N_VAbs(ptr noundef %i.aj, ptr noundef %i.ak) #12
  %i.al = load double, ptr %i.ag, align 8, !tbaa !163
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !79 ; 2 uses
  tail call void @N_VScale(double noundef %i.al, ptr noundef %i.am, ptr noundef %i.am) #12
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !79 ; 2 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !165
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i11
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !49
  tail call void @N_VAddConst(ptr noundef %i.an, double noundef %i.aq, ptr noundef %i.an) #12
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.as = tail call double @N_VMin(ptr noundef %i.ar) #12
  %i.at = fcmp ugt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.g, label %cvSensEwtSetEE.exit

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  tail call void @N_VInv(ptr noundef %i.au, ptr noundef %i.aw) #12
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !130
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i12, %i.ay
  br i1 %i.az, label %bb.f, label %cvSensEwtSetEE.exit, !llvm.loop !291

bb.h:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !130
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i13, label %cvSensEwtSetEE.exit

.lr.ph.i13:                                       ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i13
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i15, %bb.j ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i14
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !79
  tail call void @N_VAbs(ptr noundef %i.bh, ptr noundef %i.bi) #12
  %i.bj = load double, ptr %i.be, align 8, !tbaa !163
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !79 ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !172
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i14
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef %i.bj, ptr noundef %i.bk, double noundef 1.000000e+00, ptr noundef %i.bn, ptr noundef %i.bk) #12
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !79
  %i.bp = tail call double @N_VMin(ptr noundef %i.bo) #12
  %i.bq = fcmp ugt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.j, label %cvSensEwtSetEE.exit

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i14
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
end_hunk_1
begin_hunk_2_@cvStep:bb.a
  br i1 %.not86.not.i, label %.preheader101.i, label %.loopexit103.i, !llvm.loop !300

.loopexit103.i:                                   ; preds = %bb.n, %bb.j, %._crit_edge.i
  %i.ft = phi i32 [ %i.fi, %._crit_edge.i ], [ %i.fb, %bb.j ], [ %i.fr, %bb.n ] ; 4 uses
  %i.fu = load i32, ptr %i.u, align 8, !tbaa !144
  %.not87.i = icmp eq i32 %i.fu, 0
  br i1 %.not87.i, label %.loopexit100.i, label %.preheader99.i

.preheader99.i:                                   ; preds = %.loopexit103.i
  %i.fv = load i32, ptr %i.bl, align 4, !tbaa !130 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 1
  %i.fx = icmp slt i32 %i.ft, 1
  %or.cond443 = or i1 %i.fw, %i.fx
  br i1 %or.cond443, label %.loopexit100.i, label %.preheader98.i

.preheader98.i:                                   ; preds = %.preheader99.i, %._crit_edge114.i
  %i.fy = phi i32 [ %i.gm, %._crit_edge114.i ], [ %i.fv, %.preheader99.i ]
  %i.fz = phi i32 [ %i.gn, %._crit_edge114.i ], [ %i.ft, %.preheader99.i ] ; 3 uses
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %._crit_edge114.i ], [ 0, %.preheader99.i ] ; 3 uses
  %.not91112.i = icmp slt i32 %i.fz, 1
  br i1 %.not91112.i, label %._crit_edge114.i, label %.preheader97.i

.preheader97.i:                                   ; preds = %.preheader98.i, %bb.p
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %bb.p ], [ 1, %.preheader98.i ] ; 3 uses
  %i.ga = phi i32 [ %i.gk, %bb.p ], [ %i.fz, %.preheader98.i ]
  %i.gb = sext i32 %i.ga to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader97.i
  %indvars.iv133.i = phi i64 [ %i.gb, %.preheader97.i ], [ %indvars.iv.next134.i, %bb.o ] ; 3 uses
  %i.gc = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv133.i ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !134
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv139.i
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !46 ; 2 uses
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !134
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv139.i
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.gg, double noundef 1.000000e+00, ptr noundef %i.gj, ptr noundef %i.gg) #12
  %indvars.iv.next134.i = add nsw i64 %indvars.iv133.i, -1
  %.not92.not.i = icmp sgt i64 %indvars.iv133.i, %indvars.iv136.i
  br i1 %.not92.not.i, label %bb.o, label %bb.p, !llvm.loop !301

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1
  %i.gk = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.gl = sext i32 %i.gk to i64
  %.not91.not.i = icmp slt i64 %indvars.iv136.i, %i.gl
  br i1 %.not91.not.i, label %.preheader97.i, label %._crit_edge114.loopexit.i, !llvm.loop !302

._crit_edge114.loopexit.i:                        ; preds = %bb.p
  %.pre.i = load i32, ptr %i.bl, align 4, !tbaa !130
  br label %._crit_edge114.i

._crit_edge114.i:                                 ; preds = %._crit_edge114.loopexit.i, %.preheader98.i
  %i.gm = phi i32 [ %.pre.i, %._crit_edge114.loopexit.i ], [ %i.fy, %.preheader98.i ] ; 2 uses
  %i.gn = phi i32 [ %i.gk, %._crit_edge114.loopexit.i ], [ %i.fz, %.preheader98.i ] ; 2 uses
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %i.go = sext i32 %i.gm to i64
  %i.gp = icmp slt i64 %indvars.iv.next140.i, %i.go
  br i1 %i.gp, label %.preheader98.i, label %.loopexit100.i, !llvm.loop !303

.loopexit100.i:                                   ; preds = %._crit_edge114.i, %.preheader99.i, %.loopexit103.i
  %i.gq = phi i32 [ %i.ft, %.preheader99.i ], [ %i.ft, %.loopexit103.i ], [ %i.gn, %._crit_edge114.i ] ; 4 uses
  %i.gr = load i32, ptr %i.bn, align 8, !tbaa !186
  %.not88.i = icmp eq i32 %i.gr, 0
  br i1 %.not88.i, label %cvPredict.exit, label %.preheader96.i

.preheader96.i:                                   ; preds = %.loopexit100.i
  %i.gs = load i32, ptr %i.bl, align 4, !tbaa !130 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 1
  %i.gu = icmp slt i32 %i.gq, 1
  %or.cond444 = or i1 %i.gt, %i.gu
  br i1 %or.cond444, label %cvPredict.exit, label %.preheader95.i

.preheader95.i:                                   ; preds = %.preheader96.i, %._crit_edge119.i
  %i.gv = phi i32 [ %i.hj, %._crit_edge119.i ], [ %i.gs, %.preheader96.i ]
  %i.gw = phi i32 [ %i.hk, %._crit_edge119.i ], [ %i.gq, %.preheader96.i ] ; 3 uses
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %._crit_edge119.i ], [ 0, %.preheader96.i ] ; 3 uses
  %.not89117.i = icmp slt i32 %i.gw, 1
  br i1 %.not89117.i, label %._crit_edge119.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader95.i, %bb.r
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %bb.r ], [ 1, %.preheader95.i ] ; 3 uses
  %i.gx = phi i32 [ %i.hh, %bb.r ], [ %i.gw, %.preheader95.i ]
  %i.gy = sext i32 %i.gx to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv142.i = phi i64 [ %i.gy, %.preheader.i ], [ %indvars.iv.next143.i, %bb.q ] ; 3 uses
  %i.gz = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv142.i ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 -8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !134
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv148.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !46 ; 2 uses
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !134
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv148.i
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.hd, double noundef 1.000000e+00, ptr noundef %i.hg, ptr noundef %i.hd) #12
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, -1
  %.not90.not.i = icmp sgt i64 %indvars.iv142.i, %indvars.iv145.i
  br i1 %.not90.not.i, label %bb.q, label %bb.r, !llvm.loop !305

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1
  %i.hh = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.hi = sext i32 %i.hh to i64
  %.not89.not.i = icmp slt i64 %indvars.iv145.i, %i.hi
  br i1 %.not89.not.i, label %.preheader.i, label %._crit_edge119.loopexit.i, !llvm.loop !306

._crit_edge119.loopexit.i:                        ; preds = %bb.r
  %.pre151.i = load i32, ptr %i.bl, align 4, !tbaa !130
  br label %._crit_edge119.i

._crit_edge119.i:                                 ; preds = %._crit_edge119.loopexit.i, %.preheader95.i
  %i.hj = phi i32 [ %.pre151.i, %._crit_edge119.loopexit.i ], [ %i.gv, %.preheader95.i ] ; 2 uses
  %i.hk = phi i32 [ %i.hh, %._crit_edge119.loopexit.i ], [ %i.gw, %.preheader95.i ] ; 2 uses
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.hl = sext i32 %i.hj to i64
  %i.hm = icmp slt i64 %indvars.iv.next149.i, %i.hl
  br i1 %i.hm, label %.preheader95.i, label %cvPredict.exit, !llvm.loop !307

cvPredict.exit:                                   ; preds = %._crit_edge119.i, %.loopexit100.i, %.preheader96.i
  %i.hn = phi i32 [ %i.gq, %.preheader96.i ], [ %i.gq, %.loopexit100.i ], [ %i.hk, %._crit_edge119.i ] ; 22 uses
  %i.ho = load i32, ptr %i.bp, align 8, !tbaa !8
  switch i32 %i.ho, label %bb.ac [
    i32 1, label %bb.s
    i32 2, label %bb.y
  ]

bb.s:                                             ; preds = %cvPredict.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.hp = icmp eq i32 %i.hn, 1
  br i1 %i.hp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !49
  store <2 x double> splat (double 1.000000e+00), ptr %i.bt, align 8, !tbaa !49
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.bv, align 8, !tbaa !49
  store double f0x3FB5555555555555, ptr %i.bx, align 8, !tbaa !49
  %i.hq = load double, ptr %i.by, align 8, !tbaa !30
  %i.hr = fmul double %i.hq, 2.000000e+00
  br label %cvSetAdams.exit.i

bb.u:                                             ; preds = %bb.s
  %i.hs = load double, ptr %i.be, align 8, !tbaa !229 ; 4 uses
  store double 1.000000e+00, ptr %i.i, align 16, !tbaa !49
  %.not37.i.i.i = icmp slt i32 %i.hn, 1
  br i1 %.not37.i.i.i, label %cvAltSum.exit28.thread.i.i, label %.lr.ph42.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %bb.u
  %i.ht = zext nneg i32 %i.hn to i64              ; 7 uses
  %i.hu = shl nuw nsw i64 %i.ht, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i, i8 0, i64 %i.hu, i1 false), !tbaa !49
  %i.hv = add nsw i32 %i.hn, -1                   ; 3 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hv to i64 ; 3 uses
  %i.hw = uitofp nneg i32 %i.hn to double
  %i.hx = getelementptr [8 x i8], ptr %i.i, i64 %i.ht
  %i.hy = getelementptr i8, ptr %i.hx, i64 -16
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.hz = icmp eq i32 %i.hv, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1033 = trunc i32 %i.hv to i1
  br label %bb.v

bb.v:                                             ; preds = %.loopexit937, %.lr.ph42.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph42.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit937 ] ; 9 uses
  %.03440.i.i.i = phi double [ %i.hs, %.lr.ph42.i.i.i ], [ %i.kh, %.loopexit937 ] ; 2 uses
  %i.ia = icmp eq i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %i.ia, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ib = load i32, ptr %i.bu, align 4, !tbaa !86
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.preheader.i.i.i.i.preheader, label %bb.x

.preheader.i.i.i.i.preheader:                     ; preds = %bb.w
  br i1 %i.hz, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %.018.i.i.i.i = phi double [ %i.iq, %.preheader.i.i.i.i ], [ 0.000000e+00, %.preheader.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i
  %i.ie = load double, ptr %i.id, align 16, !tbaa !49
  %i.if = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ig = add i32 %i.if, 2
  %i.ih = uitofp nneg i32 %i.ig to double
  %i.ii = fdiv double %i.ie, %i.ih
  %i.ij = fadd double %i.ii, %.018.i.i.i.i
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.i
  %i.il = load double, ptr %i.ik, align 8, !tbaa !49
  %i.im = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.in = add i32 %i.im, 2
  %i.io = uitofp nneg i32 %i.in to double
  %i.ip = fdiv double %i.il, %i.io
  %i.iq = fsub double %i.ij, %i.ip                ; 3 uses
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !308

cvAltSum.exit.loopexit.i.i.i.unr-lcssa:           ; preds = %.preheader.i.i.i.i
  br i1 %lcmp.mod.not, label %cvAltSum.exit.loopexit.i.i.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, %.preheader.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.i.i.i.preheader ], [ %i.iq, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1033)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.is = load double, ptr %i.ir, align 8, !tbaa !49
  %i.it = trunc i64 %indvars.iv.i.i.i.i.epil.init to i32
  %i.iu = add i32 %i.it, 2
  %i.iv = uitofp nneg i32 %i.iu to double
  %i.iw = fdiv double %i.is, %i.iv
  %i.ix = fadd double %i.iw, %.018.i.i.i.i.epil.init
  br label %cvAltSum.exit.loopexit.i.i.i

cvAltSum.exit.loopexit.i.i.i:                     ; preds = %cvAltSum.exit.loopexit.i.i.i.unr-lcssa, %.preheader.i.i.i.i.epil.preheader
  %.lcssa972 = phi double [ %i.iq, %cvAltSum.exit.loopexit.i.i.i.unr-lcssa ], [ %i.ix, %.preheader.i.i.i.i.epil.preheader ]
  %i.iy = fmul double %.lcssa972, %i.hw
  %i.iz = load double, ptr %i.hy, align 8, !tbaa !49
  %i.ja = fdiv double %i.iy, %i.iz
  store double %i.ja, ptr %i.bv, align 8, !tbaa !49
  br label %bb.x

bb.x:                                             ; preds = %cvAltSum.exit.loopexit.i.i.i, %bb.w, %bb.v
  %i.jb = fdiv double %i.hs, %.03440.i.i.i        ; 4 uses
  %min.iters.check859 = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  br i1 %min.iters.check859, label %scalar.ph858, label %vector.ph860

vector.ph860:                                     ; preds = %bb.x
  %n.vec861 = and i64 %indvars.iv.i.i.i, 9223372036854775804 ; 2 uses
  %i.jc = and i64 %indvars.iv.i.i.i, 3
  %broadcast.splatinsert862 = insertelement <2 x double> poison, double %i.jb, i64 0 ; 2 uses
  %i.jd = shufflevector <2 x double> %broadcast.splatinsert862, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = shufflevector <2 x double> %broadcast.splatinsert862, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body864

vector.body864:                                   ; preds = %vector.body864, %vector.ph860
  %index865 = phi i64 [ 0, %vector.ph860 ], [ %index.next876, %vector.body864 ] ; 2 uses
  %i.jf = sub i64 %indvars.iv.i.i.i, %index865
  %i.jg = getelementptr [8 x i8], ptr %i.i, i64 %i.jf ; 4 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -16
  %i.ji = getelementptr i8, ptr %i.jg, i64 -32
  %wide.load866 = load <2 x double>, ptr %i.jh, align 8, !tbaa !49
  %wide.load867 = load <2 x double>, ptr %i.ji, align 8, !tbaa !49
  %i.jj = getelementptr i8, ptr %i.jg, i64 -8     ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jg, i64 -24    ; 2 uses
  %wide.load870 = load <2 x double>, ptr %i.jj, align 8, !tbaa !49
  %wide.load871 = load <2 x double>, ptr %i.jk, align 8, !tbaa !49
  %reverse874 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load866, <2 x double> %i.jd, <2 x double> %wide.load870)
  %reverse875 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load867, <2 x double> %i.je, <2 x double> %wide.load871)
  store <2 x double> %reverse874, ptr %i.jj, align 8, !tbaa !49
  store <2 x double> %reverse875, ptr %i.jk, align 8, !tbaa !49
  %index.next876 = add nuw i64 %index865, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next876, %n.vec861
  br i1 %i.jl, label %middle.block877, label %vector.body864, !llvm.loop !309

middle.block877:                                  ; preds = %vector.body864
  %cmp.n878 = icmp eq i64 %indvars.iv.i.i.i, %n.vec861
  br i1 %cmp.n878, label %.loopexit937, label %scalar.ph858

scalar.ph858:                                     ; preds = %middle.block877, %bb.x
  %indvars.iv46.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i, %bb.x ], [ %i.jc, %middle.block877 ] ; 5 uses
  %i.jm = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv46.i.i.i.ph ; 3 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 -8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !49
  %i.jp = load double, ptr %i.jm, align 8, !tbaa !49
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.jb, double %i.jp)
  store double %i.jq, ptr %i.jm, align 8, !tbaa !49
  %i.jr = icmp samesign ugt i64 %indvars.iv46.i.i.i.ph, 1
  br i1 %i.jr, label %scalar.ph858.1, label %.loopexit937

scalar.ph858.1:                                   ; preds = %scalar.ph858
  %i.js = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv46.i.i.i.ph ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -8     ; 2 uses
  %i.ju = getelementptr i8, ptr %i.js, i64 -16
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !49
  %i.jw = load double, ptr %i.jt, align 8, !tbaa !49
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jb, double %i.jw)
  store double %i.jx, ptr %i.jt, align 8, !tbaa !49
  %i.jy = icmp eq i64 %indvars.iv46.i.i.i.ph, 3
  br i1 %i.jy, label %scalar.ph858.2, label %.loopexit937

scalar.ph858.2:                                   ; preds = %scalar.ph858.1
  %i.jz = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv46.i.i.i.ph ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 -16    ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jz, i64 -24
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !49
  %i.kd = load double, ptr %i.ka, align 8, !tbaa !49
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.jb, double %i.kd)
  store double %i.ke, ptr %i.ka, align 8, !tbaa !49
  br label %.loopexit937

.loopexit937:                                     ; preds = %scalar.ph858, %scalar.ph858.1, %scalar.ph858.2, %middle.block877
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !49
  %i.kh = fadd double %.03440.i.i.i, %i.kg        ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ht
  br i1 %exitcond.not.i.i.i, label %.preheader.i15.i.i.preheader, label %bb.v, !llvm.loop !310

.preheader.i15.i.i.preheader:                     ; preds = %.loopexit937
  %xtraiter1034 = and i64 %i.ht, 1
  %unroll_iter1038 = and i64 %i.ht, 2147483646
  br label %.preheader.i15.i.i

cvAltSum.exit28.thread.i.i:                       ; preds = %bb.u
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !49
  br label %._crit_edge.i.i.i

.preheader.i15.i.i:                               ; preds = %.preheader.i15.i.i, %.preheader.i15.i.i.preheader
  %indvars.iv.i16.i.i = phi i64 [ 0, %.preheader.i15.i.i.preheader ], [ %indvars.iv.next.i17.i.i.1, %.preheader.i15.i.i ] ; 4 uses
  %.018.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.preheader ], [ %i.kv, %.preheader.i15.i.i ]
  %niter1039 = phi i64 [ 0, %.preheader.i15.i.i.preheader ], [ %niter1039.next.1, %.preheader.i15.i.i ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i16.i.i
  %i.kj = load double, ptr %i.ki, align 16, !tbaa !49
  %i.kk = trunc i64 %indvars.iv.i16.i.i to i32
  %i.kl = or disjoint i32 %i.kk, 1
  %i.km = uitofp nneg i32 %i.kl to double
  %i.kn = fdiv double %i.kj, %i.km
  %i.ko = fadd double %i.kn, %.018.i.i.i
  %indvars.iv.next.i17.i.i = or disjoint i64 %indvars.iv.i16.i.i, 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i17.i.i
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !49
  %i.kr = trunc i64 %indvars.iv.next.i17.i.i to i32
  %i.ks = add i32 %i.kr, 1
  %i.kt = uitofp nneg i32 %i.ks to double
  %i.ku = fdiv double %i.kq, %i.kt
  %i.kv = fsub double %i.ko, %i.ku                ; 3 uses
  %indvars.iv.next.i17.i.i.1 = add nuw nsw i64 %indvars.iv.i16.i.i, 2 ; 3 uses
  %niter1039.next.1 = add i64 %niter1039, 2       ; 2 uses
  %niter1039.ncmp.1 = icmp eq i64 %niter1039.next.1, %unroll_iter1038
  br i1 %niter1039.ncmp.1, label %.preheader.i21.i.i.preheader.unr-lcssa, label %.preheader.i15.i.i, !llvm.loop !308

.preheader.i21.i.i.preheader.unr-lcssa:           ; preds = %.preheader.i15.i.i
  %lcmp.mod1035.not = icmp eq i64 %xtraiter1034, 0
  br i1 %lcmp.mod1035.not, label %.preheader.i21.i.i.preheader, label %.preheader.i15.i.i.epil.preheader

.preheader.i15.i.i.epil.preheader:                ; preds = %.preheader.i21.i.i.preheader.unr-lcssa
  %lcmp.mod1037 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1037)
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i17.i.i.1
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !49
  %i.ky = trunc i64 %indvars.iv.next.i17.i.i.1 to i32
  %i.kz = add i32 %i.ky, 1
  %i.la = uitofp nneg i32 %i.kz to double
  %i.lb = fdiv double %i.kx, %i.la
  %i.lc = fadd double %i.lb, %i.kv
  br label %.preheader.i21.i.i.preheader

.preheader.i21.i.i.preheader:                     ; preds = %.preheader.i21.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.epil.preheader
  %.lcssa974 = phi double [ %i.kv, %.preheader.i21.i.i.preheader.unr-lcssa ], [ %i.lc, %.preheader.i15.i.i.epil.preheader ]
  %xtraiter1040 = and i64 %i.ht, 1
  %unroll_iter1044 = and i64 %i.ht, 2147483646
  br label %.preheader.i21.i.i

.preheader.i21.i.i:                               ; preds = %.preheader.i21.i.i, %.preheader.i21.i.i.preheader
  %indvars.iv.i22.i.i = phi i64 [ 0, %.preheader.i21.i.i.preheader ], [ %indvars.iv.next.i25.i.i.1, %.preheader.i21.i.i ] ; 4 uses
  %.018.i23.i.i = phi double [ 0.000000e+00, %.preheader.i21.i.i.preheader ], [ %i.lq, %.preheader.i21.i.i ]
  %niter1045 = phi i64 [ 0, %.preheader.i21.i.i.preheader ], [ %niter1045.next.1, %.preheader.i21.i.i ]
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i22.i.i
  %i.le = load double, ptr %i.ld, align 16, !tbaa !49
  %i.lf = trunc i64 %indvars.iv.i22.i.i to i32
  %i.lg = add i32 %i.lf, 2
  %i.lh = uitofp nneg i32 %i.lg to double
  %i.li = fdiv double %i.le, %i.lh
  %i.lj = fadd double %i.li, %.018.i23.i.i
  %indvars.iv.next.i25.i.i = or disjoint i64 %indvars.iv.i22.i.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i25.i.i
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !49
  %i.lm = trunc i64 %indvars.iv.next.i25.i.i to i32
  %i.ln = add i32 %i.lm, 2
  %i.lo = uitofp nneg i32 %i.ln to double
  %i.lp = fdiv double %i.ll, %i.lo
  %i.lq = fsub double %i.lj, %i.lp                ; 3 uses
  %indvars.iv.next.i25.i.i.1 = add nuw nsw i64 %indvars.iv.i22.i.i, 2 ; 3 uses
  %niter1045.next.1 = add i64 %niter1045, 2       ; 2 uses
  %niter1045.ncmp.1 = icmp eq i64 %niter1045.next.1, %unroll_iter1044
  br i1 %niter1045.ncmp.1, label %cvAltSum.exit28.i.i.unr-lcssa, label %.preheader.i21.i.i, !llvm.loop !308

cvAltSum.exit28.i.i.unr-lcssa:                    ; preds = %.preheader.i21.i.i
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1041.not, label %cvAltSum.exit28.i.i, label %.preheader.i21.i.i.epil.preheader

.preheader.i21.i.i.epil.preheader:                ; preds = %cvAltSum.exit28.i.i.unr-lcssa
  %lcmp.mod1043 = trunc i32 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1043)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i25.i.i.1
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !49
  %i.lt = trunc i64 %indvars.iv.next.i25.i.i.1 to i32
  %i.lu = add i32 %i.lt, 2
  %i.lv = uitofp nneg i32 %i.lu to double
  %i.lw = fdiv double %i.ls, %i.lv
  %i.lx = fadd double %i.lw, %i.lq
  br label %cvAltSum.exit28.i.i

cvAltSum.exit28.i.i:                              ; preds = %cvAltSum.exit28.i.i.unr-lcssa, %.preheader.i21.i.i.epil.preheader
  %.lcssa975 = phi double [ %i.lq, %cvAltSum.exit28.i.i.unr-lcssa ], [ %i.lx, %.preheader.i21.i.i.epil.preheader ]
  %i.ly = fdiv double 1.000000e+00, %.lcssa974    ; 4 uses
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !49
  %i.lz = add nuw i32 %i.hn, 1
  %wide.trip.count.i29.i.i = zext i32 %i.lz to i64
  %i.ma = zext nneg i32 %i.hn to i64              ; 3 uses
  %n.vec848 = and i64 %i.ma, 2147483646           ; 2 uses
  %i.mb = or i64 %i.ma, 1
  %broadcast.splatinsert849 = insertelement <2 x double> poison, double %i.ly, i64 0
  %broadcast.splat850 = shufflevector <2 x double> %broadcast.splatinsert849, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %cvAltSum.exit28.i.i
  %index852 = phi i64 [ 0, %cvAltSum.exit28.i.i ], [ %index.next854, %vector.body851 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %cvAltSum.exit28.i.i ], [ %vec.ind.next, %vector.body851 ] ; 2 uses
  %i.mc = or disjoint i64 %index852, 1            ; 2 uses
  %i.md = getelementptr [8 x i8], ptr %i.i, i64 %i.mc
  %i.me = getelementptr i8, ptr %i.md, i64 -8
  %wide.load853 = load <2 x double>, ptr %i.me, align 16, !tbaa !49
  %i.mf = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.mg = fdiv <2 x double> %wide.load853, %i.mf
  %i.mh = fmul <2 x double> %broadcast.splat850, %i.mg
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.mc
  store <2 x double> %i.mh, ptr %i.mi, align 8, !tbaa !49
  %index.next854 = add nuw i64 %index852, 2       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.mj = icmp eq i64 %index.next854, %n.vec848
  br i1 %i.mj, label %middle.block855, label %vector.body851, !llvm.loop !311

middle.block855:                                  ; preds = %vector.body851
  %cmp.n856 = icmp eq i64 %n.vec848, %i.ma
  br i1 %cmp.n856, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %middle.block855, %.lr.ph.i.i.i
  %indvars.iv.i30.i.i = phi i64 [ %indvars.iv.next.i31.i.i, %.lr.ph.i.i.i ], [ %i.mb, %middle.block855 ] ; 4 uses
  %i.mk = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i30.i.i
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !49
  %i.mn = trunc nuw nsw i64 %indvars.iv.i30.i.i to i32
  %i.mo = uitofp nneg i32 %i.mn to double
  %i.mp = fdiv double %i.mm, %i.mo
  %i.mq = fmul double %i.ly, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i30.i.i
  store double %i.mq, ptr %i.mr, align 8, !tbaa !49
  %indvars.iv.next.i31.i.i = add nuw nsw i64 %indvars.iv.i30.i.i, 1 ; 2 uses
  %exitcond.not.i32.i.i = icmp eq i64 %indvars.iv.next.i31.i.i, %wide.trip.count.i29.i.i
  br i1 %exitcond.not.i32.i.i, label %._crit_edge.i.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !312

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph.i.i.i, %middle.block855
  %i.ms = fmul double %i.ly, %.lcssa975
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %cvAltSum.exit28.thread.i.i
  %.034.lcssa.i55.i.i = phi double [ %i.hs, %cvAltSum.exit28.thread.i.i ], [ %i.kh, %._crit_edge.i.loopexit.i.i ]
  %i.mt = phi double [ +inf, %cvAltSum.exit28.thread.i.i ], [ %i.ly, %._crit_edge.i.loopexit.i.i ]
  %.014.i2745.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i ], [ %i.ms, %._crit_edge.i.loopexit.i.i ]
  %i.mu = fdiv double %.034.lcssa.i55.i.i, %i.hs  ; 3 uses
  %i.mv = fdiv double 1.000000e+00, %i.mu         ; 2 uses
  %i.mw = fdiv double %.014.i2745.i.i, %i.mu      ; 2 uses
  store double %i.mw, ptr %i.bs, align 8, !tbaa !49
  %i.mx = sext i32 %i.hn to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.mx
  %i.mz = load double, ptr %i.my, align 8, !tbaa !49
  %i.na = fdiv double %i.mu, %i.mz
  store double %i.na, ptr %i.bt, align 8, !tbaa !49
  %i.nb = load i32, ptr %i.bu, align 4, !tbaa !86
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %.preheader.i33.i.i, label %cvAdamsFinish.exit.i.i

.preheader.i33.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.nd = icmp sgt i32 %i.hn, 0
  br i1 %i.nd, label %.lr.ph44.preheader.i.i.i, label %._crit_edge45.i.i.i

.lr.ph44.preheader.i.i.i:                         ; preds = %.preheader.i33.i.i
  %i.ne = zext nneg i32 %i.hn to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.hn, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader.i.i.i
  %n.vec = and i64 %i.ne, 2147483644              ; 2 uses
  %i.nf = and i64 %i.ne, 3
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mv, i64 0 ; 2 uses
  %i.ng = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ni = sub i64 %i.ne, %index
  %i.nj = getelementptr [8 x i8], ptr %i.i, i64 %i.ni ; 4 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 -16
  %i.nl = getelementptr i8, ptr %i.nj, i64 -32
  %wide.load = load <2 x double>, ptr %i.nk, align 8, !tbaa !49
  %wide.load837 = load <2 x double>, ptr %i.nl, align 8, !tbaa !49
  %i.nm = getelementptr i8, ptr %i.nj, i64 -8     ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nj, i64 -24    ; 2 uses
  %wide.load839 = load <2 x double>, ptr %i.nm, align 8, !tbaa !49
  %wide.load840 = load <2 x double>, ptr %i.nn, align 8, !tbaa !49
  %reverse843 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.ng, <2 x double> %wide.load839)
  %reverse844 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load837, <2 x double> %i.nh, <2 x double> %wide.load840)
  store <2 x double> %reverse843, ptr %i.nm, align 8, !tbaa !49
  store <2 x double> %reverse844, ptr %i.nn, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.no = icmp eq i64 %index.next, %n.vec
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ne
  br i1 %cmp.n, label %.preheader.preheader.i.i.i.i, label %.lr.ph44.i.i.i.preheader

.lr.ph44.i.i.i.preheader:                         ; preds = %.lr.ph44.preheader.i.i.i, %middle.block
  %indvars.iv47.i.i.i.ph = phi i64 [ %i.ne, %.lr.ph44.preheader.i.i.i ], [ %i.nf, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader, %.lr.ph44.i.i.i
  %indvars.iv47.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i, %.lr.ph44.i.i.i ], [ %indvars.iv47.i.i.i.ph, %.lr.ph44.i.i.i.preheader ] ; 3 uses
  %i.np = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i ; 3 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 -8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !49
  %i.ns = load double, ptr %i.np, align 8, !tbaa !49
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.mv, double %i.ns)
  store double %i.nt, ptr %i.np, align 8, !tbaa !49
  %indvars.iv.next48.i.i.i = add nsw i64 %indvars.iv47.i.i.i, -1
  %i.nu = icmp samesign ugt i64 %indvars.iv47.i.i.i, 1
  br i1 %i.nu, label %.lr.ph44.i.i.i, label %.preheader.preheader.i.i.i.i, !llvm.loop !314

._crit_edge45.i.i.i:                              ; preds = %.preheader.i33.i.i
  %i.nv = icmp slt i32 %i.hn, 0
  br i1 %i.nv, label %cvAltSum.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge45.i.i.i
  %i.nw = add nuw i32 %i.hn, 1                    ; 2 uses
  %wide.trip.count.i.i34.i.i = zext i32 %i.nw to i64 ; 2 uses
  %xtraiter1046 = and i64 %wide.trip.count.i.i34.i.i, 1
  %i.nx = icmp eq i32 %i.hn, 0
  br i1 %i.nx, label %.preheader.i.i35.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.new

.preheader.preheader.i.i.i.i.new:                 ; preds = %.preheader.preheader.i.i.i.i
  %unroll_iter1050 = and i64 %wide.trip.count.i.i34.i.i, 4294967294
  br label %.preheader.i.i35.i.i

.preheader.i.i35.i.i:                             ; preds = %.preheader.i.i35.i.i, %.preheader.preheader.i.i.i.i.new
  %indvars.iv.i.i36.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.1, %.preheader.i.i35.i.i ] ; 4 uses
  %.018.i.i37.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.new ], [ %i.ol, %.preheader.i.i35.i.i ]
  %niter1051 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.new ], [ %niter1051.next.1, %.preheader.i.i35.i.i ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i36.i.i
  %i.nz = load double, ptr %i.ny, align 16, !tbaa !49
  %i.oa = trunc i64 %indvars.iv.i.i36.i.i to i32
  %i.ob = add i32 %i.oa, 2
  %i.oc = uitofp nneg i32 %i.ob to double
  %i.od = fdiv double %i.nz, %i.oc
  %i.oe = fadd double %i.od, %.018.i.i37.i.i
  %indvars.iv.next.i.i39.i.i = or disjoint i64 %indvars.iv.i.i36.i.i, 1 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i39.i.i
  %i.og = load double, ptr %i.of, align 8, !tbaa !49
  %i.oh = trunc i64 %indvars.iv.next.i.i39.i.i to i32
  %i.oi = add i32 %i.oh, 2
  %i.oj = uitofp nneg i32 %i.oi to double
  %i.ok = fdiv double %i.og, %i.oj
  %i.ol = fsub double %i.oe, %i.ok                ; 3 uses
  %indvars.iv.next.i.i39.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i, 2 ; 2 uses
  %niter1051.next.1 = add i64 %niter1051, 2       ; 2 uses
  %niter1051.ncmp.1 = icmp eq i64 %niter1051.next.1, %unroll_iter1050
  br i1 %niter1051.ncmp.1, label %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i, !llvm.loop !308

cvAltSum.exit.i.i.i.loopexit.unr-lcssa:           ; preds = %.preheader.i.i35.i.i
  %lcmp.mod1047.not = icmp eq i64 %xtraiter1046, 0
  br i1 %lcmp.mod1047.not, label %cvAltSum.exit.i.i.i, label %.preheader.i.i35.i.i.epil.preheader

.preheader.i.i35.i.i.epil.preheader:              ; preds = %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i
  %indvars.iv.i.i36.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.1, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i ], [ %i.ol, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1049 = trunc i32 %i.nw to i1
  tail call void @llvm.assume(i1 %lcmp.mod1049)
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i36.i.i.epil.init
  %i.on = load double, ptr %i.om, align 8, !tbaa !49
  %i.oo = trunc i64 %indvars.iv.i.i36.i.i.epil.init to i32
  %i.op = add i32 %i.oo, 2
  %i.oq = uitofp nneg i32 %i.op to double
  %i.or = fdiv double %i.on, %i.oq
  %i.os = fadd double %i.or, %.018.i.i37.i.i.epil.init
  br label %cvAltSum.exit.i.i.i

cvAltSum.exit.i.i.i:                              ; preds = %.preheader.i.i35.i.i.epil.preheader, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i
  %.014.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i ], [ %i.ol, %cvAltSum.exit.i.i.i.loopexit.unr-lcssa ], [ %i.os, %.preheader.i.i35.i.i.epil.preheader ]
  %i.ot = fmul double %i.mt, %.014.i.i.i.i
  %i.ou = load i32, ptr %i.ca, align 8, !tbaa !85
  %i.ov = sitofp i32 %i.ou to double
  %i.ow = fdiv double %i.ot, %i.ov
  store double %i.ow, ptr %i.bx, align 8, !tbaa !49
  br label %cvAdamsFinish.exit.i.i

cvAdamsFinish.exit.i.i:                           ; preds = %cvAltSum.exit.i.i.i, %._crit_edge.i.i.i
  %i.ox = load double, ptr %i.by, align 8, !tbaa !30
  %i.oy = fdiv double %i.ox, %i.mw
  br label %cvSetAdams.exit.i

cvSetAdams.exit.i:                                ; preds = %cvAdamsFinish.exit.i.i, %bb.t
  %.sink.i.i = phi double [ %i.oy, %cvAdamsFinish.exit.i.i ], [ %i.hr, %bb.t ]
  store double %.sink.i.i, ptr %i.bz, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %bb.ac

bb.y:                                             ; preds = %cvPredict.exit
  store <2 x double> splat (double 1.000000e+00), ptr %i.bq, align 8, !tbaa !49
  %.not62.i.i = icmp slt i32 %i.hn, 2
  br i1 %.not62.i.i, label %._crit_edge..loopexit_crit_edge.i.i, label %.preheader.i.i

._crit_edge..loopexit_crit_edge.i.i:              ; preds = %bb.y
  %i.oz = load double, ptr %i.be, align 8, !tbaa !229
  %.pre85.i.i = sitofp i32 %i.hn to double
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.y
  %i.pa = add nsw i32 %i.hn, -1
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = shl nuw nsw i64 %i.pb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.pc, i1 false), !tbaa !49
  %i.pd = load double, ptr %i.be, align 8, !tbaa !229 ; 4 uses
  %.not.i.i = icmp eq i32 %i.hn, 2
  br i1 %.not.i.i, label %.lr.ph74.preheader.i.i, label %.lr.ph68.preheader.i.i

.lr.ph68.preheader.i.i:                           ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.hn to i64 ; 2 uses
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %.loopexit938, %.lr.ph68.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 2, %.lr.ph68.preheader.i.i ], [ %indvars.iv.next.i.i, %.loopexit938 ] ; 9 uses
  %.05266.i.i = phi double [ %i.pd, %.lr.ph68.preheader.i.i ], [ %i.ph, %.loopexit938 ]
  %.05765.i.i = phi double [ -1.000000e+00, %.lr.ph68.preheader.i.i ], [ %i.qp, %.loopexit938 ]
  %i.pe = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.pf = getelementptr i8, ptr %i.pe, i64 992
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !49
  %i.ph = fadd double %.05266.i.i, %i.pg          ; 3 uses
  %i.pi = fdiv double %i.pd, %i.ph                ; 4 uses
  %min.iters.check903 = icmp samesign ult i64 %indvars.iv.i.i, 4
  br i1 %min.iters.check903, label %scalar.ph902, label %vector.ph904

vector.ph904:                                     ; preds = %.lr.ph68.i.i
  %n.vec905 = and i64 %indvars.iv.i.i, 9223372036854775804 ; 2 uses
  %i.pj = and i64 %indvars.iv.i.i, 3
  %broadcast.splatinsert906 = insertelement <2 x double> poison, double %i.pi, i64 0 ; 2 uses
  %i.pk = shufflevector <2 x double> %broadcast.splatinsert906, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pl = shufflevector <2 x double> %broadcast.splatinsert906, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body908

vector.body908:                                   ; preds = %vector.body908, %vector.ph904
  %index909 = phi i64 [ 0, %vector.ph904 ], [ %index.next920, %vector.body908 ] ; 2 uses
  %i.pm = sub i64 %indvars.iv.i.i, %index909
  %i.pn = getelementptr [8 x i8], ptr %i.bq, i64 %i.pm ; 4 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 -16
  %i.pp = getelementptr i8, ptr %i.pn, i64 -32
  %wide.load910 = load <2 x double>, ptr %i.po, align 8, !tbaa !49
  %wide.load911 = load <2 x double>, ptr %i.pp, align 8, !tbaa !49
  %i.pq = getelementptr i8, ptr %i.pn, i64 -8     ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pn, i64 -24    ; 2 uses
  %wide.load914 = load <2 x double>, ptr %i.pq, align 8, !tbaa !49
  %wide.load915 = load <2 x double>, ptr %i.pr, align 8, !tbaa !49
  %reverse918 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load910, <2 x double> %i.pk, <2 x double> %wide.load914)
  %reverse919 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load911, <2 x double> %i.pl, <2 x double> %wide.load915)
  store <2 x double> %reverse918, ptr %i.pq, align 8, !tbaa !49
  store <2 x double> %reverse919, ptr %i.pr, align 8, !tbaa !49
  %index.next920 = add nuw i64 %index909, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next920, %n.vec905
  br i1 %i.ps, label %middle.block921, label %vector.body908, !llvm.loop !315

middle.block921:                                  ; preds = %vector.body908
  %cmp.n922 = icmp eq i64 %indvars.iv.i.i, %n.vec905
  br i1 %cmp.n922, label %.loopexit938, label %scalar.ph902

scalar.ph902:                                     ; preds = %middle.block921, %.lr.ph68.i.i
  %indvars.iv77.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph68.i.i ], [ %i.pj, %middle.block921 ] ; 5 uses
  %i.pt = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 3 uses
  %i.pu = getelementptr i8, ptr %i.pt, i64 -8
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !49
  %i.pw = load double, ptr %i.pt, align 8, !tbaa !49
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pv, double %i.pi, double %i.pw)
  store double %i.px, ptr %i.pt, align 8, !tbaa !49
  %i.py = icmp samesign ugt i64 %indvars.iv77.i.i.ph, 1
  br i1 %i.py, label %scalar.ph902.1, label %.loopexit938

scalar.ph902.1:                                   ; preds = %scalar.ph902
  %i.pz = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 -8     ; 2 uses
  %i.qb = getelementptr i8, ptr %i.pz, i64 -16
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !49
  %i.qd = load double, ptr %i.qa, align 8, !tbaa !49
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.pi, double %i.qd)
  store double %i.qe, ptr %i.qa, align 8, !tbaa !49
  %i.qf = icmp eq i64 %indvars.iv77.i.i.ph, 3
  br i1 %i.qf, label %scalar.ph902.2, label %.loopexit938

scalar.ph902.2:                                   ; preds = %scalar.ph902.1
  %i.qg = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 -16    ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qg, i64 -24
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !49
  %i.qk = load double, ptr %i.qh, align 8, !tbaa !49
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qj, double %i.pi, double %i.qk)
  store double %i.ql, ptr %i.qh, align 8, !tbaa !49
  br label %.loopexit938

.loopexit938:                                     ; preds = %scalar.ph902, %scalar.ph902.1, %scalar.ph902.2, %middle.block921
  %i.qm = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.qn = uitofp nneg i32 %i.qm to double
  %i.qo = fdiv double 1.000000e+00, %i.qn
  %i.qp = fsub double %.05765.i.i, %i.qo          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge69.loopexit.i.i, label %.lr.ph68.i.i, !llvm.loop !316

._crit_edge69.loopexit.i.i:                       ; preds = %.loopexit938
  %.pre.i.i = load double, ptr %i.br, align 8, !tbaa !49
  br label %.lr.ph74.preheader.i.i

.lr.ph74.preheader.i.i:                           ; preds = %._crit_edge69.loopexit.i.i, %.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %wide.trip.count.i.i, %._crit_edge69.loopexit.i.i ], [ 2, %.preheader.i.i ] ; 7 uses
  %i.qq = phi double [ %.pre.i.i, %._crit_edge69.loopexit.i.i ], [ 1.000000e+00, %.preheader.i.i ]
  %.057.lcssa.i.i = phi double [ %i.qp, %._crit_edge69.loopexit.i.i ], [ -1.000000e+00, %.preheader.i.i ]
  %.052.lcssa.i.i = phi double [ %i.ph, %._crit_edge69.loopexit.i.i ], [ %i.pd, %.preheader.i.i ]
  %i.qr = uitofp nneg i32 %i.hn to double         ; 2 uses
  %i.qs = fdiv double 1.000000e+00, %i.qr
  %i.qt = fsub double %.057.lcssa.i.i, %i.qs      ; 2 uses
  %i.qu = fneg double %i.qq                       ; 2 uses
  %i.qv = fsub double %i.qu, %i.qt                ; 5 uses
  %i.qw = getelementptr [8 x i8], ptr %0, i64 %.pre-phi.i.i
  %i.qx = getelementptr i8, ptr %i.qw, i64 992
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !49
  %min.iters.check881 = icmp samesign ult i64 %.pre-phi.i.i, 4
  br i1 %min.iters.check881, label %.lr.ph74.i.i, label %vector.ph882

vector.ph882:                                     ; preds = %.lr.ph74.preheader.i.i
  %n.vec883 = and i64 %.pre-phi.i.i, 2147483644   ; 2 uses
  %i.qz = and i64 %.pre-phi.i.i, 3
  %broadcast.splatinsert884 = insertelement <2 x double> poison, double %i.qv, i64 0 ; 2 uses
  %i.ra = shufflevector <2 x double> %broadcast.splatinsert884, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rb = shufflevector <2 x double> %broadcast.splatinsert884, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph882
  %index887 = phi i64 [ 0, %vector.ph882 ], [ %index.next898, %vector.body886 ] ; 2 uses
  %i.rc = sub i64 %.pre-phi.i.i, %index887
  %i.rd = getelementptr [8 x i8], ptr %i.bq, i64 %i.rc ; 4 uses
  %i.re = getelementptr i8, ptr %i.rd, i64 -16
  %i.rf = getelementptr i8, ptr %i.rd, i64 -32
  %wide.load888 = load <2 x double>, ptr %i.re, align 8, !tbaa !49
  %wide.load889 = load <2 x double>, ptr %i.rf, align 8, !tbaa !49
  %i.rg = getelementptr i8, ptr %i.rd, i64 -8     ; 2 uses
  %i.rh = getelementptr i8, ptr %i.rd, i64 -24    ; 2 uses
  %wide.load892 = load <2 x double>, ptr %i.rg, align 8, !tbaa !49
  %wide.load893 = load <2 x double>, ptr %i.rh, align 8, !tbaa !49
  %reverse896 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load888, <2 x double> %i.ra, <2 x double> %wide.load892)
  %reverse897 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load889, <2 x double> %i.rb, <2 x double> %wide.load893)
  store <2 x double> %reverse896, ptr %i.rg, align 8, !tbaa !49
  store <2 x double> %reverse897, ptr %i.rh, align 8, !tbaa !49
  %index.next898 = add nuw i64 %index887, 4       ; 2 uses
  %i.ri = icmp eq i64 %index.next898, %n.vec883
  br i1 %i.ri, label %middle.block899, label %vector.body886, !llvm.loop !317

middle.block899:                                  ; preds = %vector.body886
  %cmp.n900 = icmp eq i64 %.pre-phi.i.i, %n.vec883
  br i1 %cmp.n900, label %.loopexit.i.loopexit.i, label %.lr.ph74.i.i
end_hunk_2
begin_hunk_3_@cvStep:bb.a
  store double %i.dmc, ptr %i.dlk, align 8, !tbaa !238
  %i.dmd = load double, ptr %i.be, align 8, !tbaa !229
  %i.dme = fmul double %i.dmc, %i.dmd
  %i.dmf = getelementptr inbounds nuw i8, ptr %0, i64 952
  store double %i.dme, ptr %i.dmf, align 8, !tbaa !234
  %i.dmg = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !101
  %i.dmi = add nsw i64 %i.dmh, 1
  store i64 %i.dmi, ptr %i.dmg, align 8, !tbaa !101
  br label %cvBDFStab.exit

bb.kb:                                            ; preds = %bb.jd
  store i32 0, ptr %i.bxj, align 8, !tbaa !96
  br label %cvBDFStab.exit

cvBDFStab.exit:                                   ; preds = %bb.kb, %bb.ka, %cvSLdet.exit.i, %cvSLdet.exit.thread.i, %bb.jf, %bb.je, %cvPrepareNextStep.exit
  store double 1.000000e+01, ptr %i.ccm, align 8, !tbaa !87
  %i.dmj = load double, ptr %i.bs, align 8, !tbaa !49
  %i.dmk = load ptr, ptr %i.ch, align 8, !tbaa !78 ; 2 uses
  tail call void @N_VScale(double noundef %i.dmj, ptr noundef %i.dmk, ptr noundef %i.dmk) #12
  %i.dml = load i32, ptr %i.bj, align 8, !tbaa !122
  %.not190 = icmp eq i32 %i.dml, 0
  br i1 %.not190, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %cvBDFStab.exit
  %i.dmm = load double, ptr %i.bs, align 8, !tbaa !49
  %i.dmn = load ptr, ptr %i.ds, align 8, !tbaa !114 ; 2 uses
  tail call void @N_VScale(double noundef %i.dmm, ptr noundef %i.dmn, ptr noundef %i.dmn) #12
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %cvBDFStab.exit
  %i.dmo = load i32, ptr %i.u, align 8, !tbaa !144
  %.not191 = icmp eq i32 %i.dmo, 0
  br i1 %.not191, label %.loopexit322, label %.preheader321

.preheader321:                                    ; preds = %bb.kd
  %i.dmp = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.dmq = icmp sgt i32 %i.dmp, 0
  br i1 %i.dmq, label %.lr.ph440, label %.loopexit322

.lr.ph440:                                        ; preds = %.preheader321, %.lr.ph440
  %indvars.iv545 = phi i64 [ %indvars.iv.next546, %.lr.ph440 ], [ 0, %.preheader321 ] ; 2 uses
  %i.dmr = load double, ptr %i.bs, align 8, !tbaa !49
  %i.dms = load ptr, ptr %i.dd, align 8, !tbaa !147
  %i.dmt = getelementptr inbounds nuw [8 x i8], ptr %i.dms, i64 %indvars.iv545
  %i.dmu = load ptr, ptr %i.dmt, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VScale(double noundef %i.dmr, ptr noundef %i.dmu, ptr noundef %i.dmu) #12
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %i.dmv = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.dmw = sext i32 %i.dmv to i64
  %i.dmx = icmp slt i64 %indvars.iv.next546, %i.dmw
  br i1 %i.dmx, label %.lr.ph440, label %.loopexit322, !llvm.loop !397

.loopexit322:                                     ; preds = %.lr.ph440, %.preheader321, %bb.kd
  %i.dmy = load i32, ptr %i.bn, align 8, !tbaa !186
  %.not192 = icmp eq i32 %i.dmy, 0
  br i1 %.not192, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit322
  %i.dmz = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.dna = icmp sgt i32 %i.dmz, 0
  br i1 %i.dna, label %.lr.ph442, label %.loopexit

.lr.ph442:                                        ; preds = %.preheader, %.lr.ph442
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.lr.ph442 ], [ 0, %.preheader ] ; 2 uses
  %i.dnb = load double, ptr %i.bs, align 8, !tbaa !49
  %i.dnc = load ptr, ptr %i.ek, align 8, !tbaa !177
  %i.dnd = getelementptr inbounds nuw [8 x i8], ptr %i.dnc, i64 %indvars.iv548
  %i.dne = load ptr, ptr %i.dnd, align 8, !tbaa !46 ; 2 uses
  tail call void @N_VScale(double noundef %i.dnb, ptr noundef %i.dne, ptr noundef %i.dne) #12
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.dnf = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.dng = sext i32 %i.dnf to i64
  %i.dnh = icmp slt i64 %indvars.iv.next549, %i.dng
  br i1 %i.dnh, label %.lr.ph442, label %.loopexit, !llvm.loop !398

.loopexit:                                        ; preds = %cvQuadSensNorm.exit, %cvQuadSensNls.exit, %bb.gm, %.loopexit335, %bb.ds, %bb.dm, %cvQuadNls.exit, %bb.de, %cvNls.exit, %.lr.ph442, %.preheader, %.loopexit322
  %.0157 = phi i32 [ 0, %.preheader ], [ 0, %.loopexit322 ], [ 0, %.lr.ph442 ], [ %i.bwl, %cvQuadSensNls.exit ], [ %i.bul, %bb.gm ], [ %.2156, %.loopexit335 ], [ -8, %bb.ds ], [ %i.aqe, %bb.dm ], [ %i.apz, %cvQuadNls.exit ], [ %i.apd, %bb.de ], [ %i.apb, %cvNls.exit ], [ %i.bxd, %cvQuadSensNorm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  ret i32 %.0157
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @SUNRpowerI(double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @CVodeGetQuad(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.c = load double, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !49
  %i.d = tail call i32 @CVodeGetQuadDky(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -30, 1) i32 @CVodeGetQuadDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.6)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.20)
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.86)
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !84
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.87)
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.i = load double, ptr %0, align 8, !tbaa !22
  %i.j = fmul double %i.i, 1.000000e+02
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !83
  %i.m = tail call double @SUNRabs(double noundef %i.l) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !89
  %i.p = tail call double @SUNRabs(double noundef %i.o) #12
  %i.q = fadd double %i.m, %i.p
  %i.r = fmul double %i.j, %i.q                   ; 2 uses
  %i.s = load double, ptr %i.n, align 8, !tbaa !89 ; 2 uses
  %i.t = fcmp olt double %i.s, 0.000000e+00
  %i.u = fneg double %i.r
  %.058 = select i1 %i.t, double %i.u, double %i.r ; 2 uses
  %i.v = load double, ptr %i.k, align 8, !tbaa !83 ; 3 uses
  %i.w = fsub double %i.v, %i.s
  %i.x = fsub double %i.w, %.058
  %i.y = fadd double %i.v, %.058
  %i.z = fsub double %1, %i.x
  %i.aa = fsub double %1, %i.y
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = fcmp ogt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88)
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ad = fsub double %1, %i.v
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !229
  %i.ag = fdiv double %i.ad, %i.af
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %.not6570 = icmp slt i32 %i.ah, %2
  br i1 %.not6570, label %._crit_edge72, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.not66.not67.not = icmp eq i32 %2, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.o
  %.071 = phi i32 [ %i.ah, %.preheader.lr.ph ], [ %6, %bb.o ] ; 6 uses
  %i.aj = sub nsw i32 %.071, %2
  br i1 %.not66.not67.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.05769 = phi i32 [ %i.am, %.lr.ph ], [ %.071, %.preheader ] ; 2 uses
  %.05968 = phi double [ %i.al, %.lr.ph ], [ 1.000000e+00, %.preheader ]
  %i.ak = sitofp i32 %.05769 to double
  %i.al = fmul double %.05968, %i.ak              ; 2 uses
  %i.am = add nsw i32 %.05769, -1                 ; 2 uses
  %.not66.not = icmp sgt i32 %i.am, %i.aj
  br i1 %.not66.not, label %.lr.ph, label %._crit_edge, !llvm.loop !399

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.059.lcssa = phi double [ 1.000000e+00, %.preheader ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.an = load i32, ptr %i.f, align 8, !tbaa !84
  %4 = icmp eq i32 %.071, %i.an
  %5 = zext nneg i32 %.071 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %5
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  br i1 %4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  tail call void @N_VScale(double noundef %.059.lcssa, ptr noundef %i.ap, ptr noundef nonnull %3) #12
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  tail call void @N_VLinearSum(double noundef %.059.lcssa, ptr noundef %i.ap, double noundef %i.ag, ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %6 = add nsw i32 %.071, -1
  %.not65.not = icmp sgt i32 %.071, %2
  br i1 %.not65.not, label %.preheader, label %._crit_edge72, !llvm.loop !400

._crit_edge72:                                    ; preds = %bb.o, %bb.l
  %i.aq = icmp eq i32 %2, 0
  br i1 %i.aq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge72
  %i.ar = load double, ptr %i.ae, align 8, !tbaa !229
  %i.as = sub nsw i32 0, %2
  %i.at = tail call double @SUNRpowerI(double noundef %i.ar, i32 noundef %i.as) #12
  tail call void @N_VScale(double noundef %i.at, ptr noundef nonnull %3, ptr noundef nonnull %3) #12
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge72, %bb.p, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.060 = phi i32 [ -21, %bb.b ], [ -30, %bb.d ], [ -26, %bb.f ], [ -24, %bb.i ], [ -25, %bb.k ], [ 0, %bb.p ], [ 0, %._crit_edge72 ]
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define range(i32 -45, 1) i32 @CVodeGetSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.6)
  br label %CVodeGetSensDky.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.c = load double, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !49
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !130
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %CVodeGetSensDky.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull readonly %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94)
  br label %CVodeGetSensDky.exit

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !130
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %CVodeGetSensDky.exit, !llvm.loop !401

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = tail call i32 @CVodeGetSensDky1(ptr noundef nonnull readonly %0, double noundef %i.c, i32 noundef 0, i32 noundef %i.m, ptr noundef %i.l) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %CVodeGetSensDky.exit

CVodeGetSensDky.exit:                             ; preds = %.lr.ph.i, %bb.e, %bb.d, %.preheader.i, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %.preheader.i ], [ -26, %bb.d ], [ %i.n, %.lr.ph.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -45, 1) i32 @CVodeGetSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.6)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94)
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr %i.c, align 4, !tbaa !130
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !401

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = tail call i32 @CVodeGetSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.k, ptr noundef %i.j) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %.preheader, %bb.d, %bb.b
  %.016 = phi i32 [ -21, %bb.b ], [ -26, %bb.d ], [ 0, %.preheader ], [ %i.l, %.lr.ph ], [ 0, %bb.e ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 -45, 1) i32 @CVodeGetSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.c = load double, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !49
  %i.d = tail call i32 @CVodeGetSensDky1(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -45, 1) i32 @CVodeGetSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.6)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !144
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.34)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %4, null
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.86)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !84
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.87)
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.i = icmp slt i32 %3, 0
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130
  %.not72 = icmp slt i32 %3, %i.k
  br i1 %.not72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96)
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.l = load double, ptr %0, align 8, !tbaa !22
  %i.m = fmul double %i.l, 1.000000e+02
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !83
  %i.p = tail call double @SUNRabs(double noundef %i.o) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !89
  %i.s = tail call double @SUNRabs(double noundef %i.r) #12
  %i.t = fadd double %i.p, %i.s
  %i.u = fmul double %i.m, %i.t                   ; 2 uses
  %i.v = load double, ptr %i.q, align 8, !tbaa !89 ; 2 uses
  %i.w = fcmp olt double %i.v, 0.000000e+00
  %i.x = fneg double %i.u
  %.064 = select i1 %i.w, double %i.x, double %i.u ; 2 uses
  %i.y = load double, ptr %i.n, align 8, !tbaa !83 ; 3 uses
  %i.z = fsub double %i.y, %i.v
  %i.aa = fsub double %i.z, %.064
  %i.ab = fadd double %i.y, %.064
  %i.ac = fsub double %1, %i.aa
  %i.ad = fsub double %1, %i.ab
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.88)
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ag = fsub double %1, %i.y
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !229
  %i.aj = fdiv double %i.ag, %i.ai
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %.not7378 = icmp slt i32 %i.ak, %2
  br i1 %.not7378, label %._crit_edge80, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.am = zext nneg i32 %3 to i64
  %.not74.not75.not = icmp eq i32 %2, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
  %.079 = phi i32 [ %i.ak, %.preheader.lr.ph ], [ %7, %bb.r ] ; 6 uses
  %i.an = sub nsw i32 %.079, %2
  br i1 %.not74.not75.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.06377 = phi i32 [ %i.aq, %.lr.ph ], [ %.079, %.preheader ] ; 2 uses
  %.06576 = phi double [ %i.ap, %.lr.ph ], [ 1.000000e+00, %.preheader ]
  %i.ao = sitofp i32 %.06377 to double
  %i.ap = fmul double %.06576, %i.ao              ; 2 uses
  %i.aq = add nsw i32 %.06377, -1                 ; 2 uses
  %.not74.not = icmp sgt i32 %i.aq, %i.an
  br i1 %.not74.not, label %.lr.ph, label %._crit_edge, !llvm.loop !402

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.065.lcssa = phi double [ 1.000000e+00, %.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !84
  %5 = icmp eq i32 %.079, %i.ar
  %6 = zext nneg i32 %.079 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %6
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.am
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  br i1 %5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  tail call void @N_VScale(double noundef %.065.lcssa, ptr noundef %i.av, ptr noundef nonnull %4) #12
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  tail call void @N_VLinearSum(double noundef %.065.lcssa, ptr noundef %i.av, double noundef %i.aj, ptr noundef nonnull %4, ptr noundef nonnull %4) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %7 = add nsw i32 %.079, -1
  %.not73.not = icmp sgt i32 %.079, %2
  br i1 %.not73.not, label %.preheader, label %._crit_edge80, !llvm.loop !403

._crit_edge80:                                    ; preds = %bb.r, %bb.o
  %i.aw = icmp eq i32 %2, 0
  br i1 %i.aw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge80
  %i.ax = load double, ptr %i.ah, align 8, !tbaa !229
  %i.ay = sub nsw i32 0, %2
  %i.az = tail call double @SUNRpowerI(double noundef %i.ax, i32 noundef %i.ay) #12
  tail call void @N_VScale(double noundef %i.az, ptr noundef nonnull %4, ptr noundef nonnull %4) #12
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge80, %bb.s, %bb.n, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.066 = phi i32 [ -21, %bb.b ], [ -40, %bb.d ], [ -26, %bb.f ], [ -24, %bb.i ], [ -45, %bb.l ], [ -25, %bb.n ], [ 0, %bb.s ], [ 0, %._crit_edge80 ]
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @CVodeGetQuadSens(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.6)
  br label %CVodeGetQuadSensDky.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.c = load double, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !49
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !130
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %CVodeGetQuadSensDky.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull readonly %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94)
  br label %CVodeGetQuadSensDky.exit

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.h = load i32, ptr %i.e, align 4, !tbaa !130
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %CVodeGetQuadSensDky.exit, !llvm.loop !404

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = tail call i32 @CVodeGetQuadSensDky1(ptr noundef nonnull readonly %0, double noundef %i.c, i32 noundef 0, i32 noundef %i.m, ptr noundef %i.l) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %CVodeGetQuadSensDky.exit

CVodeGetQuadSensDky.exit:                         ; preds = %.lr.ph.i, %bb.e, %bb.d, %.preheader.i, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %.preheader.i ], [ -26, %bb.d ], [ %i.n, %.lr.ph.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @CVodeGetQuadSensDky(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.6)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94)
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr %i.c, align 4, !tbaa !130
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !404

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = tail call i32 @CVodeGetQuadSensDky1(ptr noundef nonnull %0, double noundef %1, i32 noundef %2, i32 noundef %i.k, ptr noundef %i.j) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %.preheader, %bb.d, %bb.b
  %.016 = phi i32 [ -21, %bb.b ], [ -26, %bb.d ], [ 0, %.preheader ], [ %i.l, %.lr.ph ], [ 0, %bb.e ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @CVodeGetQuadSens1(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.c = load double, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  store double %i.c, ptr %1, align 8, !tbaa !49
  %i.d = tail call i32 @CVodeGetQuadSensDky1(ptr noundef nonnull %0, double noundef %i.c, i32 noundef 0, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -50, 1) i32 @CVodeGetQuadSensDky1(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.6)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.44)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %4, null
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.86)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !84
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.87)
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.i = icmp slt i32 %3, 0
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130
  %.not72 = icmp slt i32 %3, %i.k
  br i1 %.not72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.96)
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.l = load double, ptr %0, align 8, !tbaa !22
  %i.m = fmul double %i.l, 1.000000e+02
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !83
  %i.p = tail call double @SUNRabs(double noundef %i.o) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !89
  %i.s = tail call double @SUNRabs(double noundef %i.r) #12
  %i.t = fadd double %i.p, %i.s
  %i.u = fmul double %i.m, %i.t                   ; 2 uses
  %i.v = load double, ptr %i.q, align 8, !tbaa !89 ; 2 uses
  %i.w = fcmp olt double %i.v, 0.000000e+00
  %i.x = fneg double %i.u
  %.064 = select i1 %i.w, double %i.x, double %i.u ; 2 uses
  %i.y = load double, ptr %i.n, align 8, !tbaa !83 ; 3 uses
  %i.z = fsub double %i.y, %i.v
  %i.aa = fsub double %i.z, %.064
  %i.ab = fadd double %i.y, %.064
  %i.ac = fsub double %1, %i.aa
  %i.ad = fsub double %1, %i.ab
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.88)
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ag = fsub double %1, %i.y
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !229
  %i.aj = fdiv double %i.ag, %i.ai
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %.not7378 = icmp slt i32 %i.ak, %2
  br i1 %.not7378, label %._crit_edge80, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.am = zext nneg i32 %3 to i64
  %.not74.not75.not = icmp eq i32 %2, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
  %.079 = phi i32 [ %i.ak, %.preheader.lr.ph ], [ %7, %bb.r ] ; 6 uses
  %i.an = sub nsw i32 %.079, %2
  br i1 %.not74.not75.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.06377 = phi i32 [ %i.aq, %.lr.ph ], [ %.079, %.preheader ] ; 2 uses
  %.06576 = phi double [ %i.ap, %.lr.ph ], [ 1.000000e+00, %.preheader ]
  %i.ao = sitofp i32 %.06377 to double
  %i.ap = fmul double %.06576, %i.ao              ; 2 uses
  %i.aq = add nsw i32 %.06377, -1                 ; 2 uses
  %.not74.not = icmp sgt i32 %i.aq, %i.an
  br i1 %.not74.not, label %.lr.ph, label %._crit_edge, !llvm.loop !405

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.065.lcssa = phi double [ 1.000000e+00, %.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !84
  %5 = icmp eq i32 %.079, %i.ar
  %6 = zext nneg i32 %.079 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %6
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.am
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  br i1 %5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  tail call void @N_VScale(double noundef %.065.lcssa, ptr noundef %i.av, ptr noundef nonnull %4) #12
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  tail call void @N_VLinearSum(double noundef %.065.lcssa, ptr noundef %i.av, double noundef %i.aj, ptr noundef nonnull %4, ptr noundef nonnull %4) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %7 = add nsw i32 %.079, -1
  %.not73.not = icmp sgt i32 %.079, %2
  br i1 %.not73.not, label %.preheader, label %._crit_edge80, !llvm.loop !406

._crit_edge80:                                    ; preds = %bb.r, %bb.o
  %i.aw = icmp eq i32 %2, 0
  br i1 %i.aw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge80
  %i.ax = load double, ptr %i.ah, align 8, !tbaa !229
  %i.ay = sub nsw i32 0, %2
  %i.az = tail call double @SUNRpowerI(double noundef %i.ax, i32 noundef %i.ay) #12
  tail call void @N_VScale(double noundef %i.az, ptr noundef nonnull %4, ptr noundef nonnull %4) #12
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge80, %bb.s, %bb.n, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.066 = phi i32 [ -21, %bb.b ], [ -50, %bb.d ], [ -26, %bb.f ], [ -24, %bb.i ], [ -45, %bb.l ], [ -25, %bb.n ], [ 0, %bb.s ], [ 0, %._crit_edge80 ]
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define void @CVodeFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !407    ; 27 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  tail call void @N_VDestroy(ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  tail call void @N_VDestroy(ptr noundef %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  tail call void @N_VDestroy(ptr noundef %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  tail call void @N_VDestroy(ptr noundef %i.l) #12
  %.not23.i = icmp slt i32 %i.d, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.n = add nuw i32 %i.d, 1
  %wide.trip.count.i = zext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  tail call void @N_VDestroy(ptr noundef %i.p) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !408

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.q = add nsw i32 %i.d, 5
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1592 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76
  %i.u = mul nsw i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1624 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !42
  %i.x = sub nsw i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77
  %i.aa = mul nsw i64 %i.z, %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1632 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43
  %i.ad = sub nsw i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1784
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !110
  %.not22.i = icmp eq i32 %i.af, 0
  br i1 %.not22.i, label %cvFreeVectors.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !109
  tail call void @N_VDestroy(ptr noundef %i.ah) #12
  %i.ai = load <2 x i64>, ptr %i.s, align 8, !tbaa !75
  %i.aj = load <2 x i64>, ptr %i.v, align 8, !tbaa !75
  %i.ak = sub nsw <2 x i64> %i.aj, %i.ai
  store <2 x i64> %i.ak, ptr %i.v, align 8, !tbaa !75
  br label %cvFreeVectors.exit

cvFreeVectors.exit:                               ; preds = %._crit_edge.i, %bb.d
  tail call void @CVodeQuadFree(ptr noundef nonnull %i.a)
  tail call void @CVodeSensFree(ptr noundef nonnull %i.a)
  tail call void @CVodeQuadSensFree(ptr noundef nonnull %i.a)
  tail call void @CVodeAdjFree(ptr noundef nonnull %i.a) #12
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %cvFreeVectors.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1688
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !409 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.ap(ptr noundef nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %cvFreeVectors.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2072
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !204
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2120 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !205
  tail call void @free(ptr noundef %i.au) #12
  store ptr null, ptr %i.at, align 8, !tbaa !205
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2128 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !206
  tail call void @free(ptr noundef %i.aw) #12
  store ptr null, ptr %i.av, align 8, !tbaa !206
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2136 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !207
  tail call void @free(ptr noundef %i.ay) #12
  store ptr null, ptr %i.ax, align 8, !tbaa !207
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2080 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !208
  tail call void @free(ptr noundef %i.ba) #12
  store ptr null, ptr %i.az, align 8, !tbaa !208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2088 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !209
  tail call void @free(ptr noundef %i.bc) #12
  store ptr null, ptr %i.bb, align 8, !tbaa !209
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 2176 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !210
  tail call void @free(ptr noundef %i.be) #12
  store ptr null, ptr %i.bd, align 8, !tbaa !210
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = load ptr, ptr %0, align 8, !tbaa !407
  tail call void @free(ptr noundef %i.bf) #12
  store ptr null, ptr %0, align 8, !tbaa !407
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @CVodeQuadFree(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1796 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !123
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1764
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113
  tail call void @N_VDestroy(ptr noundef %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114
  tail call void @N_VDestroy(ptr noundef %i.i) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  tail call void @N_VDestroy(ptr noundef %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116
  tail call void @N_VDestroy(ptr noundef %i.m) #12
  %.not24.i = icmp slt i32 %i.e, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.o = add nuw i32 %i.e, 1
  %wide.trip.count.i = zext i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  tail call void @N_VDestroy(ptr noundef %i.q) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !410

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.r = add nsw i32 %i.e, 5
end_hunk_3
