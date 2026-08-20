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
begin_hunk_1_@cvStep:bb.a
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
  switch i32 %i.ho, label %bb.ab [
    i32 1, label %bb.s
    i32 2, label %bb.x
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
  br i1 %.not37.i.i.i, label %cvAltSum.exit28.thread.i.i, label %.lr.ph42.split.preheader.i.i.i

.lr.ph42.split.preheader.i.i.i:                   ; preds = %bb.u
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
  br label %.lr.ph42.split.i.i.i

.lr.ph42.split.i.i.i:                             ; preds = %.loopexit937, %.lr.ph42.split.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph42.split.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit937 ] ; 9 uses
  %.03440.i.i.i = phi double [ %i.hs, %.lr.ph42.split.preheader.i.i.i ], [ %i.kh, %.loopexit937 ] ; 2 uses
  %i.ia = icmp eq i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph42.split.i.i.i
  %i.ib = load i32, ptr %i.bu, align 4, !tbaa !86
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.preheader.i.i.i.i.preheader, label %bb.w

.preheader.i.i.i.i.preheader:                     ; preds = %bb.v
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
  br label %bb.w

bb.w:                                             ; preds = %cvAltSum.exit.loopexit.i.i.i, %bb.v, %.lr.ph42.split.i.i.i
  %i.jb = fdiv double %i.hs, %.03440.i.i.i        ; 4 uses
  %min.iters.check859 = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  br i1 %min.iters.check859, label %scalar.ph858, label %vector.ph860

vector.ph860:                                     ; preds = %bb.w
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

scalar.ph858:                                     ; preds = %middle.block877, %bb.w
  %indvars.iv47.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i, %bb.w ], [ %i.jc, %middle.block877 ] ; 5 uses
  %i.jm = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i.ph ; 3 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 -8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !49
  %i.jp = load double, ptr %i.jm, align 8, !tbaa !49
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.jb, double %i.jp)
  store double %i.jq, ptr %i.jm, align 8, !tbaa !49
  %i.jr = icmp samesign ugt i64 %indvars.iv47.i.i.i.ph, 1
  br i1 %i.jr, label %scalar.ph858.1, label %.loopexit937

scalar.ph858.1:                                   ; preds = %scalar.ph858
  %i.js = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i.ph ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -8     ; 2 uses
  %i.ju = getelementptr i8, ptr %i.js, i64 -16
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !49
  %i.jw = load double, ptr %i.jt, align 8, !tbaa !49
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jb, double %i.jw)
  store double %i.jx, ptr %i.jt, align 8, !tbaa !49
  %i.jy = icmp eq i64 %indvars.iv47.i.i.i.ph, 3
  br i1 %i.jy, label %scalar.ph858.2, label %.loopexit937

scalar.ph858.2:                                   ; preds = %scalar.ph858.1
  %i.jz = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i.ph ; 2 uses
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
  br i1 %exitcond.not.i.i.i, label %.preheader.i15.i.i.preheader, label %.lr.ph42.split.i.i.i, !llvm.loop !310

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
  %.034.lcssa.i57.i.i = phi double [ %i.hs, %cvAltSum.exit28.thread.i.i ], [ %i.kh, %._crit_edge.i.loopexit.i.i ]
  %i.mt = phi double [ +inf, %cvAltSum.exit28.thread.i.i ], [ %i.ly, %._crit_edge.i.loopexit.i.i ]
  %.014.i2747.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i ], [ %i.ms, %._crit_edge.i.loopexit.i.i ]
  %i.mu = fdiv double %.034.lcssa.i57.i.i, %i.hs  ; 3 uses
  %i.mv = fdiv double 1.000000e+00, %i.mu         ; 2 uses
  %i.mw = fdiv double %.014.i2747.i.i, %i.mu      ; 2 uses
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
  %indvars.iv47.i41.i.i.ph = phi i64 [ %i.ne, %.lr.ph44.preheader.i.i.i ], [ %i.nf, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader, %.lr.ph44.i.i.i
  %indvars.iv47.i41.i.i = phi i64 [ %indvars.iv.next48.i42.i.i, %.lr.ph44.i.i.i ], [ %indvars.iv47.i41.i.i.ph, %.lr.ph44.i.i.i.preheader ] ; 3 uses
  %i.np = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv47.i41.i.i ; 3 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 -8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !49
  %i.ns = load double, ptr %i.np, align 8, !tbaa !49
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.mv, double %i.ns)
  store double %i.nt, ptr %i.np, align 8, !tbaa !49
  %indvars.iv.next48.i42.i.i = add nsw i64 %indvars.iv47.i41.i.i, -1
  %i.nu = icmp samesign ugt i64 %indvars.iv47.i41.i.i, 1
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
  br label %bb.ab

bb.x:                                             ; preds = %cvPredict.exit
  store <2 x double> splat (double 1.000000e+00), ptr %i.bq, align 8, !tbaa !49
  %.not62.i.i = icmp slt i32 %i.hn, 2
  br i1 %.not62.i.i, label %._crit_edge..loopexit_crit_edge.i.i, label %.preheader.i.i

._crit_edge..loopexit_crit_edge.i.i:              ; preds = %bb.x
  %i.oz = load double, ptr %i.be, align 8, !tbaa !229
  %.pre85.i.i = sitofp i32 %i.hn to double
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.x
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
end_hunk_1
begin_hunk_2_@cvStep:bb.a
  %i.cvf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cvc, <2 x double> %i.cve, <2 x double> %i.cva) ; 2 uses
  %i.cvg = extractelement <2 x double> %i.cvf, i64 0 ; 2 uses
  store double %i.cvg, ptr %i.cus, align 8, !tbaa !49
  %i.cvh = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i297
  %i.cvi = extractelement <2 x double> %i.cvf, i64 1 ; 2 uses
  store double %i.cvi, ptr %i.cvh, align 8, !tbaa !49
  %i.cvj = fneg double %i.cuv
  %i.cvk = fmul double %i.cui, %i.cvj
  %i.cvl = tail call double @llvm.fmuladd.f64(double %i.cuq, double %i.cuq, double %i.cvk) ; 2 uses
  %i.cvm = getelementptr inbounds nuw [8 x i8], ptr %i.csn, i64 %indvars.iv.i.i297
  store double %i.cvl, ptr %i.cvm, align 8, !tbaa !49
  %invariant.gep352.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297 ; 5 uses
  %gep353.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 32
  store double %i.cvl, ptr %gep353.i.i, align 8, !tbaa !49
  %gep353.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 64
  store double %i.cvi, ptr %gep353.1.i.i, align 8, !tbaa !49
  %gep353.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i, align 8, !tbaa !49
  %gep353.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 128
  store double %i.cvg, ptr %gep353.3.i.i, align 8, !tbaa !49
  %gep353.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 160
  store double %i.cun, ptr %gep353.4.i.i, align 8, !tbaa !49
  %indvars.iv.next.i.i298 = add nuw nsw i64 %indvars.iv.i.i297, 1 ; 2 uses
  %exitcond.not.i.i299 = icmp eq i64 %indvars.iv.next.i.i298, 4
  br i1 %exitcond.not.i.i299, label %bb.ji, label %bb.jg, !llvm.loop !395

bb.ji:                                            ; preds = %bb.jh
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cvo = load double, ptr %i.cvn, align 8, !tbaa !49 ; 4 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cvq = load double, ptr %i.cvp, align 16, !tbaa !49 ; 4 uses
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cvs = load double, ptr %i.cvr, align 8, !tbaa !49 ; 4 uses
  %i.cvt = fcmp olt double %i.cvq, %i.cvs
  %i.cvu = select i1 %i.cvt, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvv = fcmp olt double %i.cvo, %i.cvu
  %..i.i300 = select i1 %i.cvv, double %i.cvo, double %i.cvu
  %i.cvw = fcmp olt double %..i.i300, 1.000000e-08
  br i1 %i.cvw, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.cvx = fcmp ogt double %i.cvq, %i.cvs
  %i.cvy = select i1 %i.cvx, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvz = fcmp ogt double %i.cvo, %i.cvy
  %i.cwa = select i1 %i.cvz, double %i.cvo, double %i.cvy
  %i.cwb = fcmp ogt double %i.cwa, 2.500000e-07
  br i1 %i.cwb, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jj
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cwd = load double, ptr %i.cwc, align 8, !tbaa !49 ; 2 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cwf = load double, ptr %i.cwe, align 16, !tbaa !49 ; 2 uses
  %i.cwg = fadd double %i.cwd, %i.cwf
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cwi = load double, ptr %i.cwh, align 8, !tbaa !49 ; 2 uses
  %i.cwj = fadd double %i.cwg, %i.cwi
  %i.cwk = fdiv double %i.cwj, 3.000000e+00       ; 4 uses
  %i.cwl = fsub double %i.cwd, %i.cwk
  %i.cwm = tail call double @SUNRabs(double noundef %i.cwl) #12 ; 0 uses
  %i.cwn = fsub double %i.cwf, %i.cwk
  %i.cwo = tail call double @SUNRabs(double noundef %i.cwn) #12 ; 0 uses
  %i.cwp = fsub double %i.cwi, %i.cwk
  %i.cwq = tail call double @SUNRabs(double noundef %i.cwp) #12 ; 0 uses
  br label %.loopexit333.i.i

bb.jk:                                            ; preds = %bb.ji
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cws = load double, ptr %i.cwr, align 8, !tbaa !49 ; 3 uses
  %i.cwt = tail call double @SUNRabs(double noundef %i.cws) #12
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !49 ; 3 uses
  %i.cww = fmul double %i.cwv, 1.000000e-10       ; 2 uses
  %i.cwx = fcmp olt double %i.cwt, %i.cww
  br i1 %i.cwx, label %cvSLdet.exit.thread.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cwz = load double, ptr %i.cwy, align 16, !tbaa !49
  %i.cxa = fneg double %i.cwz
  %i.cxb = fdiv double %i.cxa, %i.cws             ; 3 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cxd = load double, ptr %i.cxc, align 16, !tbaa !49
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cxf = load double, ptr %i.cxe, align 8, !tbaa !49 ; 2 uses
  %i.cxg = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxf, double %i.cxd) ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cxi = load double, ptr %i.cxh, align 16, !tbaa !49
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.cxk = load double, ptr %i.cxj, align 8, !tbaa !49 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.cxn = load <2 x double>, ptr %i.cxm, align 8
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cxp = load double, ptr %i.cxo, align 8, !tbaa !49
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cxr = load double, ptr %i.cxq, align 8, !tbaa !49
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cxt = load double, ptr %i.cxs, align 8, !tbaa !49
  %i.cxu = load <2 x double>, ptr %i.cxl, align 16, !tbaa !49
  %i.cxv = tail call double @SUNRabs(double noundef %i.cxg) #12
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cxx = load double, ptr %i.cxw, align 16, !tbaa !49 ; 5 uses
  %i.cxy = fmul double %i.cxx, 1.000000e-10       ; 2 uses
  %i.cxz = fcmp olt double %i.cxv, %i.cxy
  br i1 %i.cxz, label %cvSLdet.exit.thread.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.cya = fneg double %i.cxp
  %i.cyb = fdiv double %i.cya, %i.cws             ; 3 uses
  %i.cyc = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.cxk, double %i.cxt)
  %i.cyd = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.cxf, double %i.cxr)
  %i.cye = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxk, double %i.cxi)
  %i.cyf = fneg double %i.cyd
  %i.cyg = fdiv double %i.cyf, %i.cxg             ; 2 uses
  %i.cyh = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cye, double %i.cyc) ; 2 uses
  %i.cyi = tail call double @SUNRabs(double noundef %i.cyh) #12
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cyk = load double, ptr %i.cyj, align 8, !tbaa !49 ; 5 uses
  %i.cyl = fmul double %i.cyk, 1.000000e-10       ; 2 uses
  %i.cym = fcmp olt double %i.cyi, %i.cyl
  br i1 %i.cym, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.cyn = insertelement <2 x double> poison, double %i.cxb, i64 0
  %i.cyo = insertelement <2 x double> %i.cyn, double %i.cyb, i64 1
  %i.cyp = shufflevector <2 x double> %i.cxn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cyq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyo, <2 x double> %i.cyp, <2 x double> %i.cxu) ; 2 uses
  %i.cyr = extractelement <2 x double> %i.cyq, i64 0
  %i.cys = extractelement <2 x double> %i.cyq, i64 1
  %i.cyt = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cyr, double %i.cys)
  %i.cyu = fneg double %i.cyt
  %i.cyv = fdiv double %i.cyu, %i.cyh             ; 9 uses
  %i.cyw = fcmp olt double %i.cyv, 1.000000e-10
  %i.cyx = fcmp ogt double %i.cyv, 1.000000e+02
  %or.cond.i.i301 = or i1 %i.cyw, %i.cyx
  br i1 %or.cond.i.i301, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jn
  %i.cyy = fmul double %i.cyv, %i.cyv             ; 2 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.czb = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.czc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.czd = load <2 x double>, ptr %i.cyz, align 8, !tbaa !49 ; 5 uses
  %i.cze = load <2 x double>, ptr %i.cza, align 8, !tbaa !49 ; 6 uses
  %i.czf = load <2 x double>, ptr %i.czb, align 8, !tbaa !49 ; 6 uses
  %i.czg = load <2 x double>, ptr %i.czc, align 8, !tbaa !49 ; 6 uses
  %i.czh = insertelement <2 x double> poison, double %i.cyv, i64 0
  %i.czi = shufflevector <2 x double> %i.czh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czg, <2 x double> %i.czf)
  %i.czk = insertelement <2 x double> poison, double %i.cyy, i64 0
  %i.czl = shufflevector <2 x double> %i.czk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.czm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czl, <2 x double> %i.czj, <2 x double> %i.cze)
  %i.czn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czm, <2 x double> %i.czd) ; 3 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !49 ; 3 uses
  %i.czq = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.czr = load double, ptr %i.czq, align 8, !tbaa !49 ; 4 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.czt = load double, ptr %i.czs, align 8, !tbaa !49 ; 4 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czv = load double, ptr %i.czu, align 8, !tbaa !49 ; 4 uses
  %i.czw = tail call double @llvm.fmuladd.f64(double %i.cyv, double %i.czv, double %i.czt)
  %i.czx = tail call double @llvm.fmuladd.f64(double %i.cyy, double %i.czw, double %i.czr)
  %i.czy = tail call double @llvm.fmuladd.f64(double %i.cyv, double %i.czx, double %i.czp) ; 2 uses
  %i.czz = extractelement <2 x double> %i.czn, i64 0
  %i.daa = tail call double @SUNRabs(double noundef %i.czz) #12
  %i.dab = fdiv double %i.daa, %i.cwv             ; 2 uses
  %i.dac = fcmp ogt double %i.dab, 0.000000e+00
  %.1292.i.i = select i1 %i.dac, double %i.dab, double 0.000000e+00 ; 2 uses
  %i.dad = extractelement <2 x double> %i.czn, i64 1
  %i.dae = tail call double @SUNRabs(double noundef %i.dad) #12
  %i.daf = fdiv double %i.dae, %i.cxx             ; 2 uses
  %i.dag = fcmp ogt double %i.daf, %.1292.i.i
  %.1292.1.i.i = select i1 %i.dag, double %i.daf, double %.1292.i.i ; 2 uses
  %i.dah = tail call double @SUNRabs(double noundef %i.czy) #12
  %i.dai = fdiv double %i.dah, %i.cyk             ; 2 uses
  %i.daj = fcmp ogt double %i.dai, %.1292.1.i.i
  %.1292.2.i.i = select i1 %i.daj, double %i.dai, double %.1292.1.i.i
  %i.dak = fcmp olt double %.1292.2.i.i, 1.000000e-03
  br i1 %i.dak, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.dal = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dam = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dan = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.dao = insertelement <2 x double> poison, double %i.cww, i64 0
  %i.dap = insertelement <2 x double> %i.dao, double %i.cxy, i64 1
  %i.daq = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dar = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.das = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dat = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dau = extractelement <2 x double> %i.czg, i64 0
  %1 = extractelement <2 x double> %i.czg, i64 1
  %i.dav = extractelement <2 x double> %i.czf, i64 0
  %2 = extractelement <2 x double> %i.czf, i64 1
  %i.daw = extractelement <2 x double> %i.cze, i64 0
  %i.dax = extractelement <2 x double> %i.cze, i64 1
  %3 = extractelement <2 x double> %i.czd, i64 0
  %i.day = extractelement <2 x double> %i.czd, i64 1
  %i.daz = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dba = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbb = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbc = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbd = insertelement <2 x double> poison, double %i.czv, i64 0
  %i.dbe = shufflevector <2 x double> %i.dbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbf = insertelement <2 x double> poison, double %i.czt, i64 0
  %i.dbg = shufflevector <2 x double> %i.dbf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbh = insertelement <2 x double> poison, double %i.czr, i64 0
  %i.dbi = shufflevector <2 x double> %i.dbh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbj = insertelement <2 x double> poison, double %i.czp, i64 0
  %i.dbk = shufflevector <2 x double> %i.dbj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbl = insertelement <2 x double> poison, double %i.cwv, i64 0 ; 2 uses
  %i.dbm = insertelement <2 x double> %i.dbl, double %i.cxx, i64 1
  %i.dbn = insertelement <2 x double> poison, double %i.cxx, i64 0
  %i.dbo = insertelement <2 x double> %i.dbn, double %i.cyk, i64 1
  %i.dbp = shufflevector <2 x double> %i.dbl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbq = insertelement <2 x double> poison, double %i.cxx, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i303, %.preheader336.i.i
  %.sroa.10.0.i.i = phi double [ %i.czy, %.preheader336.i.i ], [ %i.dfz, %.preheader.i.i303 ]
  %.0298376.i.i = phi double [ %i.cyv, %.preheader336.i.i ], [ %i.dfv, %.preheader.i.i303 ] ; 5 uses
  %.0304375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2306.2.i.i, %.preheader.i.i303 ]
  %.0307374.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dga, %.preheader.i.i303 ]
  %i.dbr = phi <2 x double> [ %i.czn, %.preheader336.i.i ], [ %i.dgc, %.preheader.i.i303 ]
  %i.dbs = fmul double %.0298376.i.i, %.0298376.i.i ; 2 uses
  %i.dbt = fmul double %.0298376.i.i, 4.000000e+00 ; 2 uses
  %i.dbu = fneg <2 x double> %i.dbr
  %i.dbv = fmul double %i.czv, %i.dbt
  %i.dbw = fneg double %.sroa.10.0.i.i
  %i.dbx = insertelement <2 x double> poison, double %i.dbt, i64 0
  %i.dby = shufflevector <2 x double> %i.dbx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbz = fmul <2 x double> %i.czg, %i.dby
  %i.dca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czf, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dbz)
  %i.dcb = insertelement <2 x double> poison, double %i.dbs, i64 0
  %i.dcc = shufflevector <2 x double> %i.dcb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcc, <2 x double> %i.dca, <2 x double> %i.cze) ; 3 uses
  %i.dce = extractelement <2 x double> %i.dcd, i64 0
  %i.dcf = tail call double @SUNRabs(double noundef %i.dce) #12
  %i.dcg = extractelement <2 x double> %i.dcd, i64 1
  %i.dch = tail call double @SUNRabs(double noundef %i.dcg) #12
  %i.dci = insertelement <2 x double> poison, double %i.dcf, i64 0
  %i.dcj = insertelement <2 x double> %i.dci, double %i.dch, i64 1
  %i.dck = fcmp ogt <2 x double> %i.dcj, %i.dap
  %i.dcl = fdiv <2 x double> %i.dbu, %i.dcd
  %i.dcm = select <2 x i1> %i.dck, <2 x double> %i.dcl, <2 x double> zeroinitializer
  %i.dcn = insertelement <2 x double> poison, double %.0298376.i.i, i64 0
  %i.dco = shufflevector <2 x double> %i.dcn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcp = fadd <2 x double> %i.dco, %i.dcm       ; 10 uses
  %i.dcq = extractelement <2 x double> %i.dcp, i64 0
  store double %i.dcq, ptr %i.dal, align 8, !tbaa !49
  %i.dcr = extractelement <2 x double> %i.dcp, i64 1
  store double %i.dcr, ptr %i.dam, align 16, !tbaa !49
  %i.dcs = fmul <2 x double> %i.dcp, %i.dcp       ; 3 uses
  %i.dct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.daq, <2 x double> %i.dar)
  %i.dcu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcs, <2 x double> %i.dct, <2 x double> %i.das)
  %i.dcv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.dcu, <2 x double> %i.dat) ; 3 uses
  %i.dcw = extractelement <2 x double> %i.dcv, i64 0
  %i.dcx = extractelement <2 x double> %i.dcv, i64 1
  %i.dcy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.daz, <2 x double> %i.dba)
  %i.dcz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcs, <2 x double> %i.dcy, <2 x double> %i.dbb)
  %i.dda = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.dcz, <2 x double> %i.dbc) ; 3 uses
  %i.ddb = extractelement <2 x double> %i.dda, i64 0
  %i.ddc = tail call double @llvm.fmuladd.f64(double %i.czt, double 3.000000e+00, double %i.dbv)
  %i.ddd = tail call double @llvm.fmuladd.f64(double %i.dbs, double %i.ddc, double %i.czr) ; 2 uses
  %i.dde = tail call double @SUNRabs(double noundef %i.ddd) #12
  %i.ddf = fcmp ogt double %i.dde, %i.cyl
  %i.ddg = tail call double @SUNRabs(double noundef %i.dcw) #12
  %i.ddh = tail call double @SUNRabs(double noundef %i.ddb) #12
  %i.ddi = insertelement <2 x double> poison, double %i.dbw, i64 0
  %i.ddj = insertelement <2 x double> %i.ddi, double %i.ddh, i64 1
  %i.ddk = insertelement <2 x double> %i.dbq, double %i.ddd, i64 0
  %i.ddl = fdiv <2 x double> %i.ddj, %i.ddk       ; 2 uses
  %i.ddm = extractelement <2 x double> %i.ddl, i64 0
  %.sroa.8.0.i.i = select i1 %i.ddf, double %i.ddm, double 0.000000e+00
  %i.ddn = fadd double %.0298376.i.i, %.sroa.8.0.i.i ; 9 uses
  store double %i.ddn, ptr %i.dan, align 8, !tbaa !49
  %i.ddo = extractelement <2 x double> %i.dda, i64 1
  %i.ddp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.dbe, <2 x double> %i.dbg)
  %i.ddq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcs, <2 x double> %i.ddp, <2 x double> %i.dbi)
  %i.ddr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.ddq, <2 x double> %i.dbk) ; 3 uses
  %i.dds = extractelement <2 x double> %i.ddr, i64 0
  %i.ddt = tail call double @SUNRabs(double noundef %i.dds) #12
  store <2 x double> %i.dcv, ptr %gep364.i.i, align 8, !tbaa !49
  %i.ddu = tail call double @SUNRabs(double noundef %i.dcx) #12
  %i.ddv = insertelement <2 x double> poison, double %i.ddu, i64 0
  %i.ddw = insertelement <2 x double> %i.ddv, double %i.ddg, i64 1
  %i.ddx = fdiv <2 x double> %i.ddw, %i.dbp       ; 3 uses
  %i.ddy = fcmp ogt <2 x double> %i.ddx, zeroinitializer ; 2 uses
  %i.ddz = extractelement <2 x i1> %i.ddy, i64 1
  %i.dea = extractelement <2 x double> %i.ddx, i64 1
  %.1290.i.i = select i1 %i.ddz, double %i.dea, double 0.000000e+00 ; 2 uses
  %i.deb = extractelement <2 x double> %i.ddl, i64 1 ; 2 uses
  %i.dec = fcmp ogt double %i.deb, %.1290.i.i
  %.1290.1.i.i = select i1 %i.dec, double %i.deb, double %.1290.i.i ; 2 uses
  %i.ded = extractelement <2 x i1> %i.ddy, i64 0
  %i.dee = extractelement <2 x double> %i.ddx, i64 0
  %.1290.1421.i.i = select i1 %i.ded, double %i.dee, double 0.000000e+00
  store <2 x double> %i.dda, ptr %gep364.1.i.i, align 8, !tbaa !49
  %i.def = tail call double @SUNRabs(double noundef %i.ddo) #12
  store <2 x double> %i.ddr, ptr %gep364.2.i.i, align 8, !tbaa !49
  %i.deg = extractelement <2 x double> %i.ddr, i64 1
  %i.deh = tail call double @SUNRabs(double noundef %i.deg) #12
  %i.dei = fmul double %i.ddn, %i.ddn             ; 3 uses
  %i.dej = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.dau, double %i.dav)
  %i.dek = tail call double @llvm.fmuladd.f64(double %i.dei, double %i.dej, double %i.daw)
  %4 = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.dek, double %3) ; 2 uses
  store double %4, ptr %gep364.2422.i.i, align 8, !tbaa !49
  %i.del = tail call double @SUNRabs(double noundef %4) #12
  %5 = tail call double @llvm.fmuladd.f64(double %i.ddn, double %1, double %2)
  %i.dem = tail call double @llvm.fmuladd.f64(double %i.dei, double %5, double %i.dax)
  %i.den = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.dem, double %i.day) ; 2 uses
  store double %i.den, ptr %gep364.1.2.i.i, align 8, !tbaa !49
  %i.deo = tail call double @SUNRabs(double noundef %i.den) #12
  %i.dep = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.czv, double %i.czt)
  %i.deq = tail call double @llvm.fmuladd.f64(double %i.dei, double %i.dep, double %i.czr)
  %i.der = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.deq, double %i.czp) ; 2 uses
  store double %i.der, ptr %gep364.2.2.i.i, align 8, !tbaa !49
  %i.des = tail call double @SUNRabs(double noundef %i.der) #12
  %i.det = fdiv double %i.des, %i.cyk             ; 2 uses
  %i.deu = insertelement <2 x double> poison, double %i.del, i64 0
  %i.dev = insertelement <2 x double> %i.deu, double %i.def, i64 1
  %i.dew = fdiv <2 x double> %i.dev, %i.dbm       ; 2 uses
  %i.dex = fdiv double %i.ddt, %i.cyk             ; 2 uses
  %i.dey = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1290.1421.i.i, i64 1 ; 2 uses
  %i.dez = fcmp ogt <2 x double> %i.dew, %i.dey
  %i.dfa = fcmp ogt double %i.dex, %.1290.1.i.i
  %i.dfb = select <2 x i1> %i.dez, <2 x double> %i.dew, <2 x double> %i.dey ; 2 uses
  %.1290.2.i.i = select i1 %i.dfa, double %i.dex, double %.1290.1.i.i ; 3 uses
  %i.dfc = insertelement <2 x double> poison, double %i.deo, i64 0
  %i.dfd = insertelement <2 x double> %i.dfc, double %i.deh, i64 1
  %i.dfe = fdiv <2 x double> %i.dfd, %i.dbo       ; 2 uses
  %i.dff = fcmp ogt <2 x double> %i.dfe, %i.dfb
  %i.dfg = fadd double %.1290.2.i.i, 1.000000e+00 ; 2 uses
  %i.dfh = fcmp olt double %.1290.2.i.i, %i.dfg   ; 2 uses
  %i.dfi = select <2 x i1> %i.dff, <2 x double> %i.dfe, <2 x double> %i.dfb ; 3 uses
  %.2306.i.i = select i1 %i.dfh, i32 1, i32 %.0304375.i.i
  %.2.i.i302 = select i1 %i.dfh, double %.1290.2.i.i, double %i.dfg ; 2 uses
  %i.dfj = insertelement <2 x double> poison, double %i.det, i64 0
  %i.dfk = insertelement <2 x double> %i.dfj, double %.2.i.i302, i64 1
  %i.dfl = fcmp ogt <2 x double> %i.dfk, %i.dfi   ; 2 uses
  %i.dfm = extractelement <2 x i1> %i.dfl, i64 1
  %.2306.1.i.i = select i1 %i.dfm, i32 2, i32 %.2306.i.i
  %i.dfn = insertelement <2 x double> %i.dfi, double %i.det, i64 0
  %i.dfo = insertelement <2 x double> %i.dfi, double %.2.i.i302, i64 1
  %i.dfp = select <2 x i1> %i.dfl, <2 x double> %i.dfn, <2 x double> %i.dfo ; 2 uses
  %i.dfq = extractelement <2 x double> %i.dfp, i64 0 ; 2 uses
  %i.dfr = extractelement <2 x double> %i.dfp, i64 1 ; 2 uses
  %i.dfs = fcmp olt double %i.dfq, %i.dfr         ; 2 uses
  %.2306.2.i.i = select i1 %i.dfs, i32 3, i32 %.2306.1.i.i ; 2 uses
  %.2.2.i.i = select i1 %i.dfs, double %i.dfq, double %i.dfr ; 2 uses
  %i.dft = zext nneg i32 %.2306.2.i.i to i64      ; 2 uses
  %i.dfu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dft
  %i.dfv = load double, ptr %i.dfu, align 8, !tbaa !49 ; 2 uses
  %i.dfw = fcmp olt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dfw, label %bb.jo, label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dft ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dfx = load double, ptr %gep372.i.i, align 8, !tbaa !49
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dfy = load double, ptr %gep372.1.i.i, align 8, !tbaa !49
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dfz = load double, ptr %gep372.2.i.i, align 8, !tbaa !49
  %i.dga = add nuw nsw i32 %.0307374.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dga, 4
  %i.dgb = insertelement <2 x double> poison, double %i.dfx, i64 0
  %i.dgc = insertelement <2 x double> %i.dgb, double %i.dfy, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jo, label %.preheader335.i.i, !llvm.loop !396

bb.jo:                                            ; preds = %.preheader.i.i303, %.preheader335.i.i
  %.0301.i.i = phi i32 [ 0, %.preheader.i.i303 ], [ 3, %.preheader335.i.i ]
  %i.dgd = fcmp ogt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgd, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jo, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.1302.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0301.i.i, %bb.jo ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %.2300.i.i = phi double [ %i.cyv, %.preheader338.i.i ], [ %i.dfv, %bb.jo ], [ %i.cwk, %.loopexit333.loopexit.i.i ] ; 22 uses
  %i.dge = fmul double %.2300.i.i, %.2300.i.i     ; 3 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dgg = load double, ptr %i.dgf, align 8, !tbaa !49
  %i.dgh = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dgi = load double, ptr %i.dgh, align 8, !tbaa !49
  %i.dgj = fmul double %.2300.i.i, %i.dgi         ; 2 uses
  %i.dgk = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dgl = load double, ptr %i.dgk, align 8, !tbaa !49
  %i.dgm = fmul double %.2300.i.i, %i.dgl
  %i.dgn = fmul double %.2300.i.i, %i.dgm         ; 2 uses
  %i.dgo = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dgp = load double, ptr %i.dgo, align 8, !tbaa !49
  %i.dgq = fmul double %.2300.i.i, %i.dgp
  %i.dgr = fmul double %.2300.i.i, %i.dgq
  %i.dgs = fmul double %.2300.i.i, %i.dgr
  %i.dgt = fsub double %i.dgj, %i.dgn             ; 4 uses
  %i.dgu = fsub double %i.dgn, %i.dgs
  %i.dgv = fsub double %i.dgt, %i.dgu             ; 2 uses
  %i.dgw = tail call double @SUNRabs(double noundef %i.dgt) #12
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dgy = load double, ptr %i.dgx, align 8, !tbaa !49
  %i.dgz = fmul double %i.dgy, 1.000000e-10
  %i.dha = fcmp olt double %i.dgw, %i.dgz
  br i1 %i.dha, label %cvSLdet.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %.loopexit333.i.i
  %i.dhb = fsub double %i.dgg, %i.dgj
  %i.dhc = fsub double %i.dhb, %i.dgt
  %i.dhd = fsub double %i.dhc, %i.dgv
  %i.dhe = fneg double %i.dhd
  %i.dhf = fdiv double %i.dhe, %i.dgt             ; 3 uses
  %i.dhg = fcmp olt double %i.dhf, 1.000000e-10
  %i.dhh = fcmp ogt double %i.dhf, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dhg, %i.dhh
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.dhi = fdiv double %i.dgv, %i.dhf
  %i.dhj = fdiv double %i.dhi, %i.dge
  %i.dhk = load double, ptr %i.dgk, align 8, !tbaa !49
  %i.dhl = fadd double %i.dhj, %i.dhk
  %i.dhm = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dhn = load double, ptr %i.dhm, align 8, !tbaa !49
  %i.dho = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dhp = load double, ptr %i.dho, align 8, !tbaa !49
  %i.dhq = fmul double %.2300.i.i, %i.dhp         ; 2 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.dhs = load double, ptr %i.dhr, align 8, !tbaa !49
  %i.dht = fmul double %.2300.i.i, %i.dhs
  %i.dhu = fmul double %.2300.i.i, %i.dht         ; 2 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dhw = load double, ptr %i.dhv, align 8, !tbaa !49
  %i.dhx = fmul double %.2300.i.i, %i.dhw
  %i.dhy = fmul double %.2300.i.i, %i.dhx
  %i.dhz = fmul double %.2300.i.i, %i.dhy
  %i.dia = fsub double %i.dhq, %i.dhu             ; 4 uses
  %i.dib = fsub double %i.dhu, %i.dhz
  %i.dic = fsub double %i.dia, %i.dib             ; 2 uses
  %i.did = tail call double @SUNRabs(double noundef %i.dia) #12
  %i.die = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dif = load double, ptr %i.die, align 16, !tbaa !49
  %i.dig = fmul double %i.dif, 1.000000e-10
  %i.dih = fcmp olt double %i.did, %i.dig
  br i1 %i.dih, label %cvSLdet.exit.thread.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.dii = fsub double %i.dhn, %i.dhq
  %i.dij = fsub double %i.dii, %i.dia
  %i.dik = fsub double %i.dij, %i.dic
  %i.dil = fneg double %i.dik
  %i.dim = fdiv double %i.dil, %i.dia             ; 3 uses
  %i.din = fcmp olt double %i.dim, 1.000000e-10
  %i.dio = fcmp ogt double %i.dim, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.din, %i.dio
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.dip = fdiv double %i.dic, %i.dim
  %i.diq = fdiv double %i.dip, %i.dge
  %i.dir = load double, ptr %i.dhr, align 8, !tbaa !49
  %i.dis = fadd double %i.diq, %i.dir             ; 3 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.diu = load double, ptr %i.dit, align 8, !tbaa !49
  %i.div = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.diw = load double, ptr %i.div, align 8, !tbaa !49
  %i.dix = fmul double %.2300.i.i, %i.diw         ; 2 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.diz = load double, ptr %i.diy, align 8, !tbaa !49
  %i.dja = fmul double %.2300.i.i, %i.diz
  %i.djb = fmul double %.2300.i.i, %i.dja         ; 2 uses
  %i.djc = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.djd = load double, ptr %i.djc, align 8, !tbaa !49
  %i.dje = fmul double %.2300.i.i, %i.djd
  %i.djf = fmul double %.2300.i.i, %i.dje
  %i.djg = fmul double %.2300.i.i, %i.djf
  %i.djh = fsub double %i.dix, %i.djb             ; 4 uses
  %i.dji = fsub double %i.djb, %i.djg
  %i.djj = fsub double %i.djh, %i.dji             ; 2 uses
  %i.djk = tail call double @SUNRabs(double noundef %i.djh) #12
  %i.djl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.djm = load double, ptr %i.djl, align 8, !tbaa !49
  %i.djn = fmul double %i.djm, 1.000000e-10
  %i.djo = fcmp olt double %i.djk, %i.djn
  br i1 %i.djo, label %cvSLdet.exit.thread.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.djp = fsub double %i.diu, %i.dix
  %i.djq = fsub double %i.djp, %i.djh
  %i.djr = fsub double %i.djq, %i.djj
  %i.djs = fneg double %i.djr
  %i.djt = fdiv double %i.djs, %i.djh             ; 3 uses
  %i.dju = fcmp olt double %i.djt, 1.000000e-10
  %i.djv = fcmp ogt double %i.djt, 4.000000e+00
  %or.cond3.2.i.i = or i1 %i.dju, %i.djv
  %i.djw = fcmp olt double %i.dis, 1.000000e-10
  %or.cond.i304 = select i1 %or.cond3.2.i.i, i1 true, i1 %i.djw
  br i1 %or.cond.i304, label %cvSLdet.exit.thread.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.djx = fdiv double %i.djj, %i.djt
  %i.djy = fdiv double %i.djx, %i.dge
  %i.djz = load double, ptr %i.diy, align 8, !tbaa !49
  %i.dka = fadd double %i.djy, %i.djz
  %i.dkb = fdiv double %i.dka, %i.dis             ; 2 uses
  %i.dkc = fdiv double %i.dhl, %i.dis
  %i.dkd = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.dke = mul nsw i32 %i.dkd, %i.dkd
  %i.dkf = add nsw i32 %i.dke, -1
  %i.dkg = sitofp i32 %i.dkf to double
  %i.dkh = sitofp i32 %i.dkd to double
  %i.dki = fadd double %i.dkh, -1.000000e+00
  %i.dkj = tail call double @llvm.fmuladd.f64(double %i.dkb, double %i.dkc, double -1.000000e+00)
end_hunk_2
