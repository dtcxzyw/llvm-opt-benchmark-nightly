Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@KINSol:bb.a
  %i.sn = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.sl, double noundef 1.000000e+00, ptr noundef %i.sm, ptr noundef %i.sn) #13
  %i.so = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.sp = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.sq = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.sr = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.ss = tail call i32 %i.so(ptr noundef %i.sp, ptr noundef %i.sq, ptr noundef %i.sr) #13, !inline_history !91 ; 2 uses
  %i.st = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.su = add nsw i64 %i.st, 1
  store i64 %i.su, ptr %i.ey, align 8, !tbaa !99
  %i.sv = icmp eq i32 %i.ss, 0
  br i1 %i.sv, label %bb.es, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.sw = icmp slt i32 %i.ss, 0
  br i1 %i.sw, label %KINLinSolDrv.exit.thread.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.sx = fmul double %i.si, 5.000000e-01         ; 2 uses
  %i.sy = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.sy, ptr noundef %i.sy) #13
  %i.sz = fmul double %i.sk, 5.000000e-01         ; 3 uses
  store double %i.sz, ptr %i.hh, align 8, !tbaa !134
  %i.ta = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.tb = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.tc = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ta, double noundef 1.000000e+00, ptr noundef %i.tb, ptr noundef %i.tc) #13
  %i.td = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.te = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.tf = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.tg = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.th = tail call i32 %i.td(ptr noundef %i.te, ptr noundef %i.tf, ptr noundef %i.tg) #13, !inline_history !91 ; 2 uses
  %i.ti = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.tj = add nsw i64 %i.ti, 1
  store i64 %i.tj, ptr %i.ey, align 8, !tbaa !99
  %i.tk = icmp eq i32 %i.th, 0
  br i1 %i.tk, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tl = icmp slt i32 %i.th, 0
  br i1 %i.tl, label %KINLinSolDrv.exit.thread.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.tm = fmul double %i.sx, 5.000000e-01
  %i.tn = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.tn, ptr noundef %i.tn) #13
  %i.to = fmul double %i.sz, 5.000000e-01         ; 3 uses
  store double %i.to, ptr %i.hh, align 8, !tbaa !134
  %i.tp = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.tq = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.tr = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.tp, double noundef 1.000000e+00, ptr noundef %i.tq, ptr noundef %i.tr) #13
  %i.ts = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.tt = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.tu = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.tv = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.tw = tail call i32 %i.ts(ptr noundef %i.tt, ptr noundef %i.tu, ptr noundef %i.tv) #13, !inline_history !91 ; 2 uses
  %i.tx = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.ty = add nsw i64 %i.tx, 1
  store i64 %i.ty, ptr %i.ey, align 8, !tbaa !99
  %i.tz = icmp eq i32 %i.tw, 0
  br i1 %i.tz, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ua = icmp slt i32 %i.tw, 0
  br i1 %i.ua, label %KINLinSolDrv.exit.thread.thread, label %KINLinSolDrv.exit.thread.thread271

bb.es:                                            ; preds = %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei
  %.278.lcssa.i = phi double [ %.1.i, %bb.ei ], [ %i.rt, %bb.ek ], [ %i.si, %bb.em ], [ %i.sx, %bb.eo ], [ %i.tm, %bb.eq ]
  %.26777.lcssa.i = phi double [ %.166.i, %bb.ei ], [ %i.rv, %bb.ek ], [ %i.sk, %bb.em ], [ %i.sz, %bb.eo ], [ %i.to, %bb.eq ]
  %i.ub = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.uc = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.ud = tail call double @N_VWL2Norm(ptr noundef %i.ub, ptr noundef %i.uc) #13 ; 3 uses
  %i.ue = fmul double %i.ud, 5.000000e-01
  %i.uf = fmul double %i.ud, %i.ue
  %i.ug = load <2 x double>, ptr %i.hg, align 8, !tbaa !27
  %i.uh = insertelement <2 x double> poison, double %.278.lcssa.i, i64 0
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uj = fmul <2 x double> %i.ui, %i.ug
  store <2 x double> %i.uj, ptr %i.hg, align 8, !tbaa !27
  %i.uk = load double, ptr %i.ek, align 8, !tbaa !110
  %i.ul = fmul double %i.uk, f0x3FEFAE147AE147AE
  %i.um = fcmp ogt double %.26777.lcssa.i, %i.ul
  %spec.select = zext i1 %i.um to i32
  br label %KINFullNewton.exit.jt2

bb.et:                                            ; preds = %bb.dq, %bb.dr, %bb.dp
  %.1223558 = phi double [ %.2224561, %bb.dq ], [ %.0222, %bb.dr ], [ %.0222, %bb.dp ]
  %.1228556 = phi double [ %.2229559, %bb.dq ], [ %.0227, %bb.dr ], [ %.0227, %bb.dp ]
  %i.un = load i64, ptr %i.ex, align 8, !tbaa !50
  %i.uo = load i64, ptr %i.gw, align 8, !tbaa !123
  %i.up = sub nsw i64 %i.un, %i.uo
  %i.uq = load i64, ptr %i.gx, align 8, !tbaa !23
  %.not.i179 = icmp slt i64 %i.up, %i.uq
  br i1 %.not.i179, label %.peel.begin, label %.peel.begin.thread

.peel.begin.thread:                               ; preds = %bb.et
  store double 2.000000e+00, ptr %i.gj, align 8, !tbaa !26
  store i32 1, ptr %i.gy, align 4, !tbaa !124
  store i32 0, ptr %i.ha, align 4, !tbaa !125
  br label %bb.eu

.peel.begin:                                      ; preds = %bb.et
  %.pre.pre.i187 = load double, ptr %i.gj, align 8, !tbaa !26
  %i.ur = fcmp ogt double %.pre.pre.i187, 1.500000e+00
  store i32 0, ptr %i.ha, align 4, !tbaa !125
  br i1 %i.ur, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %.peel.begin.thread, %.peel.begin
  %i.us = load ptr, ptr %i.gz, align 8, !tbaa !126 ; 2 uses
  %.not33.i184.peel = icmp eq ptr %i.us, null
  br i1 %.not33.i184.peel, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ut = tail call i32 %i.us(ptr noundef nonnull %0) #13, !inline_history !89
  store i32 1, ptr %i.ha, align 4, !tbaa !125
  %i.uu = load i64, ptr %i.ex, align 8, !tbaa !50 ; 2 uses
  store i64 %i.uu, ptr %i.gw, align 8, !tbaa !123
  store i64 %i.uu, ptr %i.hb, align 8, !tbaa !127
  %.not34.i185.peel = icmp eq i32 %i.ut, 0
  br i1 %.not34.i185.peel, label %bb.ew, label %KINLinSolDrv.exit.thread.thread275

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %.peel.begin
  %i.uv = load ptr, ptr %i.hc, align 8, !tbaa !41 ; 2 uses
  %i.uw = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.ux = load ptr, ptr %i.fc, align 8, !tbaa !42
  tail call void @N_VScale(double noundef -1.000000e+00, ptr noundef %i.ux, ptr noundef %i.uv) #13
  %i.uy = load ptr, ptr %i.he, align 8, !tbaa !128
  %i.uz = tail call i32 %i.uy(ptr noundef nonnull %0, ptr noundef %i.uw, ptr noundef %i.uv, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hg) #13, !inline_history !89 ; 2 uses
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %KINLinSolDrv.exit188, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vb = icmp slt i32 %i.uz, 0
  br i1 %i.vb, label %KINLinSolDrv.exit.thread.thread279, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.vc = load ptr, ptr %i.gz, align 8, !tbaa !126 ; 2 uses
  %i.vd = icmp eq ptr %i.vc, null
  br i1 %i.vd, label %KINLinSolDrv.exit.thread.thread267, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ve = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not35.i182.peel = icmp eq i32 %i.ve, 0
  br i1 %.not35.i182.peel, label %.peel.next, label %KINLinSolDrv.exit.thread.thread267

.peel.next:                                       ; preds = %bb.ez, %bb.fd
  %i.vf = phi ptr [ %i.vp, %bb.fd ], [ %i.vc, %bb.ez ]
  store double 2.000000e+00, ptr %i.gj, align 8, !tbaa !26
  store i32 0, ptr %i.ha, align 4, !tbaa !125
  %i.vg = tail call i32 %i.vf(ptr noundef nonnull %0) #13, !inline_history !89
  store i32 1, ptr %i.ha, align 4, !tbaa !125
  %i.vh = load i64, ptr %i.ex, align 8, !tbaa !50 ; 2 uses
  store i64 %i.vh, ptr %i.gw, align 8, !tbaa !123
  store i64 %i.vh, ptr %i.hb, align 8, !tbaa !127
  %.not34.i185 = icmp eq i32 %i.vg, 0
  br i1 %.not34.i185, label %bb.fa, label %KINLinSolDrv.exit.thread.thread275

bb.fa:                                            ; preds = %.peel.next
  %i.vi = load ptr, ptr %i.hc, align 8, !tbaa !41 ; 2 uses
  %i.vj = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.vk = load ptr, ptr %i.fc, align 8, !tbaa !42
  tail call void @N_VScale(double noundef -1.000000e+00, ptr noundef %i.vk, ptr noundef %i.vi) #13
  %i.vl = load ptr, ptr %i.he, align 8, !tbaa !128
  %i.vm = tail call i32 %i.vl(ptr noundef nonnull %0, ptr noundef %i.vj, ptr noundef %i.vi, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hg) #13, !inline_history !89 ; 2 uses
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %KINLinSolDrv.exit188, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.vo = icmp slt i32 %i.vm, 0
  br i1 %i.vo, label %KINLinSolDrv.exit.thread.thread279, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vp = load ptr, ptr %i.gz, align 8, !tbaa !126 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, null
  br i1 %i.vq, label %KINLinSolDrv.exit.thread.thread267, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vr = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not35.i182 = icmp eq i32 %i.vr, 0
  br i1 %.not35.i182, label %.peel.next, label %KINLinSolDrv.exit.thread.thread267, !llvm.loop !92

KINLinSolDrv.exit188:                             ; preds = %bb.fa, %bb.ew
  %i.vs = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.vt = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.vu = tail call double @N_VWL2Norm(ptr noundef %i.vs, ptr noundef %i.vt) #13 ; 4 uses
  %i.vv = load double, ptr %i.ek, align 8, !tbaa !110 ; 2 uses
  %i.vw = fdiv double %i.vv, %i.vu                ; 3 uses
  store double %i.vu, ptr %i.hh, align 8, !tbaa !134
  %i.vx = fcmp ogt double %i.vu, %i.vv
  br i1 %i.vx, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %KINLinSolDrv.exit188
  %i.vy = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef %i.vw, ptr noundef %i.vy, ptr noundef %i.vy) #13
  %i.vz = load double, ptr %i.ek, align 8, !tbaa !110 ; 2 uses
  store double %i.vz, ptr %i.hh, align 8, !tbaa !134
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %KINLinSolDrv.exit188
  %.0310.i = phi double [ %i.vz, %bb.fe ], [ %i.vu, %KINLinSolDrv.exit188 ] ; 3 uses
  %.0307.i = phi double [ %i.vw, %bb.fe ], [ 1.000000e+00, %KINLinSolDrv.exit188 ] ; 3 uses
  %.0300.i = phi double [ 1.000000e+00, %bb.fe ], [ %i.vw, %KINLinSolDrv.exit188 ] ; 2 uses
  store double 1.000000e+00, ptr %i.hi, align 8, !tbaa !56
  %i.wa = load i32, ptr %i.hj, align 8, !tbaa !98
  %.not.i189 = icmp eq i32 %i.wa, 0
  br i1 %.not.i189, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.wb = tail call fastcc i32 @KINConstraint(ptr noundef nonnull %0)
  %i.wc = icmp eq i32 %i.wb, -996
  br i1 %i.wc, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.wd = load double, ptr %i.hi, align 8, !tbaa !56
  %i.we = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef %i.wd, ptr noundef %i.we, ptr noundef %i.we) #13
  %i.wf = load double, ptr %i.hi, align 8, !tbaa !56 ; 2 uses
  %5 = fmul double %.0307.i, %i.wf
  %6 = fmul double %.0310.i, %i.wf                ; 3 uses
  store double %6, ptr %i.hh, align 8, !tbaa !134
  %i.wg = load double, ptr %i.hk, align 8, !tbaa !135
  %i.wh = fcmp ugt double %6, %i.wg
  br i1 %i.wh, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.wi = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.wj = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.wk = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.wi, double noundef 1.000000e+00, ptr noundef %i.wj, ptr noundef %i.wk) #13
  br label %bb.gk

bb.fj:                                            ; preds = %bb.fh, %bb.fg, %bb.ff
  %.1311.i = phi double [ %6, %bb.fh ], [ %.0310.i, %bb.fg ], [ %.0310.i, %bb.ff ] ; 2 uses
  %.1308.i = phi double [ %5, %bb.fh ], [ %.0307.i, %bb.fg ], [ %.0307.i, %bb.ff ] ; 2 uses
  %.1301.i = phi double [ 1.000000e+00, %bb.fh ], [ %.0300.i, %bb.fg ], [ %.0300.i, %bb.ff ]
  %i.wl = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.wm = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.wn = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.wl, double noundef 1.000000e+00, ptr noundef %i.wm, ptr noundef %i.wn) #13
  %i.wo = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.wp = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.wq = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.wr = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.ws = tail call i32 %i.wo(ptr noundef %i.wp, ptr noundef %i.wq, ptr noundef %i.wr) #13, !inline_history !93 ; 2 uses
  %i.wt = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.wu = add nsw i64 %i.wt, 1
  store i64 %i.wu, ptr %i.ey, align 8, !tbaa !99
  %i.wv = icmp eq i32 %i.ws, 0
  br i1 %i.wv, label %.peel.begin.i190, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ww = icmp slt i32 %i.ws, 0
  br i1 %i.ww, label %KINLinSolDrv.exit.thread.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.wx = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.wx, ptr noundef %i.wx) #13
  %7 = fmul double %.1308.i, 5.000000e-01         ; 2 uses
  %8 = fmul double %.1311.i, 5.000000e-01         ; 3 uses
  store double %8, ptr %i.hh, align 8, !tbaa !134
  %i.wy = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.wz = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.xa = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.wy, double noundef 1.000000e+00, ptr noundef %i.wz, ptr noundef %i.xa) #13
  %i.xb = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.xc = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.xd = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.xe = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.xf = tail call i32 %i.xb(ptr noundef %i.xc, ptr noundef %i.xd, ptr noundef %i.xe) #13, !inline_history !93 ; 2 uses
  %i.xg = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.xh = add nsw i64 %i.xg, 1
  store i64 %i.xh, ptr %i.ey, align 8, !tbaa !99
  %i.xi = icmp eq i32 %i.xf, 0
  br i1 %i.xi, label %.peel.begin.i190, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xj = icmp slt i32 %i.xf, 0
  br i1 %i.xj, label %KINLinSolDrv.exit.thread.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xk = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.xk, ptr noundef %i.xk) #13
  %9 = fmul double %7, 5.000000e-01               ; 2 uses
  %10 = fmul double %8, 5.000000e-01              ; 3 uses
  store double %10, ptr %i.hh, align 8, !tbaa !134
  %i.xl = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.xm = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.xn = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.xl, double noundef 1.000000e+00, ptr noundef %i.xm, ptr noundef %i.xn) #13
  %i.xo = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.xp = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.xq = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.xr = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.xs = tail call i32 %i.xo(ptr noundef %i.xp, ptr noundef %i.xq, ptr noundef %i.xr) #13, !inline_history !93 ; 2 uses
  %i.xt = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.xu = add nsw i64 %i.xt, 1
  store i64 %i.xu, ptr %i.ey, align 8, !tbaa !99
  %i.xv = icmp eq i32 %i.xs, 0
  br i1 %i.xv, label %.peel.begin.i190, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.xw = icmp slt i32 %i.xs, 0
  br i1 %i.xw, label %KINLinSolDrv.exit.thread.thread, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xx = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.xx, ptr noundef %i.xx) #13
  %11 = fmul double %9, 5.000000e-01              ; 2 uses
  %12 = fmul double %10, 5.000000e-01             ; 3 uses
  store double %12, ptr %i.hh, align 8, !tbaa !134
  %i.xy = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.xz = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.ya = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.xy, double noundef 1.000000e+00, ptr noundef %i.xz, ptr noundef %i.ya) #13
  %i.yb = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.yc = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.yd = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.ye = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.yf = tail call i32 %i.yb(ptr noundef %i.yc, ptr noundef %i.yd, ptr noundef %i.ye) #13, !inline_history !93 ; 2 uses
  %i.yg = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.yh = add nsw i64 %i.yg, 1
  store i64 %i.yh, ptr %i.ey, align 8, !tbaa !99
  %i.yi = icmp eq i32 %i.yf, 0
  br i1 %i.yi, label %.peel.begin.i190, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yj = icmp slt i32 %i.yf, 0
  br i1 %i.yj, label %KINLinSolDrv.exit.thread.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yk = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.yk, ptr noundef %i.yk) #13
  %13 = fmul double %11, 5.000000e-01
  %14 = fmul double %12, 5.000000e-01             ; 3 uses
  store double %14, ptr %i.hh, align 8, !tbaa !134
  %i.yl = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.ym = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.yn = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.yl, double noundef 1.000000e+00, ptr noundef %i.ym, ptr noundef %i.yn) #13
  %i.yo = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.yp = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.yq = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.yr = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.ys = tail call i32 %i.yo(ptr noundef %i.yp, ptr noundef %i.yq, ptr noundef %i.yr) #13, !inline_history !93 ; 2 uses
  %i.yt = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.yu = add nsw i64 %i.yt, 1
  store i64 %i.yu, ptr %i.ey, align 8, !tbaa !99
  %i.yv = icmp eq i32 %i.ys, 0
  br i1 %i.yv, label %.peel.begin.i190, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yw = icmp slt i32 %i.ys, 0
  br i1 %i.yw, label %KINLinSolDrv.exit.thread.thread, label %KINLinSolDrv.exit.thread.thread271

.peel.begin.i190:                                 ; preds = %bb.fr, %bb.fp, %bb.fn, %bb.fl, %bb.fj
  %.2302390.lcssa.i = phi double [ %.1301.i, %bb.fj ], [ 1.000000e+00, %bb.fl ], [ 1.000000e+00, %bb.fn ], [ 1.000000e+00, %bb.fp ], [ 1.000000e+00, %bb.fr ] ; 3 uses
  %.2309389.lcssa.i = phi double [ %.1308.i, %bb.fj ], [ %7, %bb.fl ], [ %9, %bb.fn ], [ %11, %bb.fp ], [ %13, %bb.fr ] ; 2 uses
  %.2312388.lcssa.i = phi double [ %.1311.i, %bb.fj ], [ %8, %bb.fl ], [ %10, %bb.fn ], [ %12, %bb.fp ], [ %14, %bb.fr ] ; 2 uses
  %i.yx = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.yy = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.yz = tail call double @N_VWL2Norm(ptr noundef %i.yx, ptr noundef %i.yy) #13 ; 4 uses
  %i.za = fmul double %i.yz, 5.000000e-01
  %i.zb = fmul double %i.yz, %i.za                ; 6 uses
  %i.zc = load double, ptr %i.hg, align 8, !tbaa !130
  %i.zd = fmul double %.2309389.lcssa.i, %i.zc    ; 6 uses
  %i.ze = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.zf = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.zg = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.zh = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VInv(ptr noundef %i.zg, ptr noundef %i.zh) #13
  %i.zi = load ptr, ptr %i.hm, align 8, !tbaa !45
  tail call void @N_VAbs(ptr noundef %i.zf, ptr noundef %i.zi) #13
  %i.zj = load ptr, ptr %i.hl, align 8, !tbaa !44 ; 2 uses
  %i.zk = load ptr, ptr %i.hm, align 8, !tbaa !45
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.zj, double noundef 1.000000e+00, ptr noundef %i.zk, ptr noundef %i.zj) #13
  %i.zl = load ptr, ptr %i.hl, align 8, !tbaa !44 ; 2 uses
  tail call void @N_VDiv(ptr noundef %i.ze, ptr noundef %i.zl, ptr noundef %i.zl) #13
  %i.zm = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.zn = tail call double @N_VMaxNorm(ptr noundef %i.zm) #13
  %i.zo = load double, ptr %i.hk, align 8, !tbaa !135
  %i.zp = fdiv double %i.zo, %i.zn                ; 3 uses
  %i.zq = fmul double %i.zd, 1.000000e-04         ; 5 uses
  %i.zr = fneg double %i.zd                       ; 3 uses
  %i.zs = load double, ptr %i.ge, align 8, !tbaa !116 ; 3 uses
  %i.zt = fadd double %i.zq, %i.zs
  %i.zu = fcmp ugt double %i.zb, %i.zt
  br i1 %i.zu, label %bb.ft, label %.loopexit.thread.i

bb.ft:                                            ; preds = %.peel.begin.i190
  %i.zv = fsub double %i.zb, %i.zs
  %i.zw = fsub double %i.zv, %i.zd
  %i.zx = fmul double %i.zw, 2.000000e+00
  %i.zy = fdiv double %i.zr, %i.zx                ; 2 uses
  %i.zz = fcmp ogt double %i.zy, 5.000000e-01
  %.1297.peel.i = select i1 %i.zz, double 5.000000e-01, double %i.zy ; 2 uses
  %i.aaa = fcmp olt double %.1297.peel.i, 1.000000e-01
  %i.aab = select i1 %i.aaa, double 1.000000e-01, double %.1297.peel.i ; 5 uses
  %i.aac = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.aad = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.aae = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aac, double noundef %i.aab, ptr noundef %i.aad, ptr noundef %i.aae) #13
  %i.aaf = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.aag = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.aah = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aai = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.aaj = tail call i32 %i.aaf(ptr noundef %i.aag, ptr noundef %i.aah, ptr noundef %i.aai) #13, !inline_history !93
  %i.aak = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.aal = add nsw i64 %i.aak, 1
  store i64 %i.aal, ptr %i.ey, align 8, !tbaa !99
  %.not332.peel.i = icmp eq i32 %i.aaj, 0
  br i1 %.not332.peel.i, label %bb.fu, label %KINLinSolDrv.exit.thread.thread

bb.fu:                                            ; preds = %bb.ft
  %i.aam = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aan = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.aao = tail call double @N_VWL2Norm(ptr noundef %i.aam, ptr noundef %i.aan) #13 ; 4 uses
  %i.aap = fmul double %i.aao, 5.000000e-01
  %i.aaq = fmul double %i.aao, %i.aap             ; 4 uses
  %i.aar = fcmp olt double %i.aab, %i.zp
  br i1 %i.aar, label %.loopexit425.i, label %.peel.next.i194.preheader

.peel.next.i194.preheader:                        ; preds = %bb.fu
  %i.aas = load double, ptr %i.ge, align 8, !tbaa !116 ; 3 uses
  %i.aat = tail call double @llvm.fmuladd.f64(double %i.zq, double %i.aab, double %i.aas) ; 2 uses
  %i.aau = fcmp ugt double %i.aaq, %i.aat
  br i1 %i.aau, label %.lr.ph.preheader, label %.loopexit.i195

.lr.ph.preheader:                                 ; preds = %.peel.next.i194.preheader
  %i.aav = insertelement <2 x double> poison, double %i.zd, i64 0
  %i.aaw = shufflevector <2 x double> %i.aav, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.peel.next.i194:                                  ; preds = %bb.ga
  %i.aax = add nuw nsw i32 %.0287.i383, 1         ; 2 uses
  %i.aay = load double, ptr %i.ge, align 8, !tbaa !116 ; 3 uses
  %i.aaz = tail call double @llvm.fmuladd.f64(double %i.zq, double %i.acu, double %i.aay) ; 2 uses
  %i.aba = fcmp ugt double %i.adj, %i.aaz
  br i1 %i.aba, label %.lr.ph, label %.loopexit.i195, !llvm.loop !94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.peel.next.i194
  %i.abb = phi double [ %i.aay, %.peel.next.i194 ], [ %i.aas, %.lr.ph.preheader ]
  %.0287.i383 = phi i32 [ %i.aax, %.peel.next.i194 ], [ 1, %.lr.ph.preheader ]
  %.0293.i382 = phi double [ %.10379, %.peel.next.i194 ], [ %i.zb, %.lr.ph.preheader ]
  %.0294.i381 = phi double [ %.0303.i380, %.peel.next.i194 ], [ 1.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %.0303.i380 = phi double [ %i.acu, %.peel.next.i194 ], [ %i.aab, %.lr.ph.preheader ] ; 7 uses
  %.10379 = phi double [ %i.adj, %.peel.next.i194 ], [ %i.aaq, %.lr.ph.preheader ] ; 2 uses
  %i.abc = insertelement <2 x double> poison, double %.0293.i382, i64 0
  %i.abd = insertelement <2 x double> %i.abc, double %.10379, i64 1
  %i.abe = insertelement <2 x double> poison, double %i.abb, i64 0
  %i.abf = shufflevector <2 x double> %i.abe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abg = fsub <2 x double> %i.abd, %i.abf
  %i.abh = insertelement <2 x double> poison, double %.0294.i381, i64 0
  %i.abi = insertelement <2 x double> %i.abh, double %.0303.i380, i64 1 ; 3 uses
  %i.abj = fneg <2 x double> %i.abi               ; 2 uses
  %i.abk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> %i.aaw, <2 x double> %i.abg) ; 3 uses
  %i.abl = fmul <2 x double> %i.abi, %i.abi       ; 2 uses
  %i.abm = fdiv <2 x double> splat (double 1.000000e+00), %i.abl ; 2 uses
  %i.abn = insertelement <2 x double> poison, double %.0303.i380, i64 0
  %i.abo = shufflevector <2 x double> %i.abn, <2 x double> %i.abj, <2 x i32> <i32 0, i32 2>
  %i.abp = fdiv <2 x double> %i.abo, %i.abl       ; 2 uses
  %i.abq = shufflevector <2 x double> %i.abm, <2 x double> %i.abp, <2 x i32> <i32 0, i32 2>
  %i.abr = fneg <2 x double> %i.abk
  %i.abs = shufflevector <2 x double> %i.abr, <2 x double> %i.abk, <2 x i32> <i32 0, i32 2>
  %i.abt = fmul <2 x double> %i.abq, %i.abs
  %i.abu = shufflevector <2 x double> %i.abm, <2 x double> %i.abp, <2 x i32> <i32 1, i32 3>
  %i.abv = shufflevector <2 x double> %i.abk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.abw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abu, <2 x double> %i.abv, <2 x double> %i.abt) ; 2 uses
  %i.abx = fsub double %.0303.i380, %.0294.i381
  %i.aby = fdiv double 1.000000e+00, %i.abx       ; 2 uses
  %i.abz = extractelement <2 x double> %i.abw, i64 0
  %i.aca = fmul double %i.aby, %i.abz             ; 2 uses
  %i.acb = extractelement <2 x double> %i.abw, i64 1
  %i.acc = fmul double %i.aby, %i.acb             ; 4 uses
  %i.acd = fmul double %i.aca, 3.000000e+00       ; 2 uses
  %i.ace = fmul double %i.acd, %i.zr
  %i.acf = tail call double @llvm.fmuladd.f64(double %i.acc, double %i.acc, double %i.ace) ; 2 uses
  %i.acg = tail call double @llvm.fabs.f64(double %i.aca)
  %i.ach = load double, ptr %i.hn, align 8, !tbaa !19
  %i.aci = fcmp olt double %i.acg, %i.ach
  br i1 %i.aci, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph
  %i.acj = fmul double %i.acc, 2.000000e+00
  %i.ack = fdiv double %i.zr, %i.acj
  br label %bb.fz

bb.fw:                                            ; preds = %.lr.ph
  %i.acl = fcmp ugt double %i.acf, 0.000000e+00
  br i1 %i.acl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.acm = tail call double @sqrt(double noundef %i.acf) #13
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.acn = phi double [ %i.acm, %bb.fx ], [ 0.000000e+00, %bb.fw ]
  %i.aco = fsub double %i.acn, %i.acc
  %i.acp = fdiv double %i.aco, %i.acd
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fv
  %.0296.i = phi double [ %i.acp, %bb.fy ], [ %i.ack, %bb.fv ] ; 2 uses
  %i.acq = fmul double %.0303.i380, 5.000000e-01  ; 2 uses
  %i.acr = fcmp ogt double %.0296.i, %i.acq
  %.1297.i = select i1 %i.acr, double %i.acq, double %.0296.i ; 2 uses
  %i.acs = fmul double %.0303.i380, 1.000000e-01  ; 2 uses
  %i.act = fcmp ogt double %i.acs, %.1297.i
  %i.acu = select i1 %i.act, double %i.acs, double %.1297.i ; 5 uses
  %i.acv = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.acw = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.acx = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.acv, double noundef %i.acu, ptr noundef %i.acw, ptr noundef %i.acx) #13
  %i.acy = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.acz = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.ada = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.adb = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.adc = tail call i32 %i.acy(ptr noundef %i.acz, ptr noundef %i.ada, ptr noundef %i.adb) #13, !inline_history !93
  %i.add = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.ade = add nsw i64 %i.add, 1
  store i64 %i.ade, ptr %i.ey, align 8, !tbaa !99
  %.not332.i = icmp eq i32 %i.adc, 0
  br i1 %.not332.i, label %bb.ga, label %KINLinSolDrv.exit.thread.thread

bb.ga:                                            ; preds = %bb.fz
  %i.adf = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.adg = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.adh = tail call double @N_VWL2Norm(ptr noundef %i.adf, ptr noundef %i.adg) #13 ; 4 uses
  %i.adi = fmul double %i.adh, 5.000000e-01
  %i.adj = fmul double %i.adh, %i.adi             ; 4 uses
  %i.adk = fcmp olt double %i.acu, %i.zp
  br i1 %i.adk, label %.loopexit425.i, label %.peel.next.i194, !llvm.loop !94

.loopexit425.i:                                   ; preds = %bb.ga, %bb.fu
  %.11238 = phi double [ %i.aao, %bb.fu ], [ %i.adh, %bb.ga ]
  %.11 = phi double [ %i.aaq, %bb.fu ], [ %i.adj, %bb.ga ]
  %i.adl = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.adm = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.adl, ptr noundef %i.adm) #13
  br label %bb.gk

.loopexit.i195:                                   ; preds = %.peel.next.i194, %.peel.next.i194.preheader
  %.10237.lcssa = phi double [ %i.aao, %.peel.next.i194.preheader ], [ %i.adh, %.peel.next.i194 ] ; 3 uses
  %.10.lcssa = phi double [ %i.aaq, %.peel.next.i194.preheader ], [ %i.adj, %.peel.next.i194 ] ; 4 uses
  %.0303.i.lcssa = phi double [ %i.aab, %.peel.next.i194.preheader ], [ %i.acu, %.peel.next.i194 ] ; 4 uses
  %.0294.i.lcssa = phi double [ 1.000000e+00, %.peel.next.i194.preheader ], [ %.0303.i380, %.peel.next.i194 ]
  %.0287.i.lcssa = phi i32 [ 1, %.peel.next.i194.preheader ], [ %i.aax, %.peel.next.i194 ] ; 3 uses
  %.lcssa301 = phi double [ %i.aas, %.peel.next.i194.preheader ], [ %i.aay, %.peel.next.i194 ]
  %.lcssa298 = phi double [ %i.aat, %.peel.next.i194.preheader ], [ %i.aaz, %.peel.next.i194 ]
  %i.adn = fmul double %i.zd, 9.000000e-01        ; 3 uses
  %i.ado = tail call double @llvm.fmuladd.f64(double %i.adn, double %.0303.i.lcssa, double %.lcssa301)
  %i.adp = fcmp olt double %.10.lcssa, %i.ado
  br i1 %i.adp, label %bb.gb, label %.thread475.i

.loopexit.thread.i:                               ; preds = %.peel.begin.i190
  %i.adq = fmul double %i.zd, 9.000000e-01        ; 2 uses
  %i.adr = fadd double %i.adq, %i.zs
  %i.ads = fcmp olt double %i.zb, %i.adr
  br i1 %i.ads, label %.thread.i191, label %.thread475.i

bb.gb:                                            ; preds = %.loopexit.i195
  %i.adt = fcmp oeq double %.0303.i.lcssa, 1.000000e+00
  br i1 %i.adt, label %.thread.i191, label %.critedge.i

.thread.i191:                                     ; preds = %bb.gb, %.loopexit.thread.i
  %.5232 = phi double [ %.10237.lcssa, %bb.gb ], [ %i.yz, %.loopexit.thread.i ]
  %.5 = phi double [ %.10.lcssa, %bb.gb ], [ %i.zb, %.loopexit.thread.i ]
  %.0287.lcssa452462.i = phi i32 [ %.0287.i.lcssa, %bb.gb ], [ 0, %.loopexit.thread.i ] ; 2 uses
  %i.adu = phi double [ %i.adn, %bb.gb ], [ %i.adq, %.loopexit.thread.i ] ; 2 uses
  %i.adv = load double, ptr %i.ek, align 8, !tbaa !110
  %i.adw = fcmp olt double %.2312388.lcssa.i, %i.adv
  br i1 %i.adw, label %.preheader.i.preheader, label %.thread475.i

.preheader.i.preheader:                           ; preds = %.thread.i191
  %i.adx = insertelement <2 x double> poison, double %i.zq, i64 0
  %i.ady = insertelement <2 x double> %i.adx, double %i.adu, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.gc
  %.1304.i = phi double [ %i.adz, %bb.gc ], [ 1.000000e+00, %.preheader.i.preheader ] ; 2 uses
  %.1288.i = phi i32 [ %i.aem, %bb.gc ], [ %.0287.lcssa452462.i, %.preheader.i.preheader ]
  %i.adz = fmul double %.1304.i, 2.000000e+00     ; 3 uses
  %i.aea = fcmp uge double %i.adz, %.2302390.lcssa.i ; 2 uses
  %i.aeb = select i1 %i.aea, double %.2302390.lcssa.i, double %i.adz ; 3 uses
  %i.aec = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.aed = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.aee = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aec, double noundef %i.aeb, ptr noundef %i.aed, ptr noundef %i.aee) #13
  %i.aef = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.aeg = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.aeh = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aei = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.aej = tail call i32 %i.aef(ptr noundef %i.aeg, ptr noundef %i.aeh, ptr noundef %i.aei) #13, !inline_history !93
  %i.aek = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.ael = add nsw i64 %i.aek, 1
  store i64 %i.ael, ptr %i.ey, align 8, !tbaa !99
  %.not333.i = icmp eq i32 %i.aej, 0
  br i1 %.not333.i, label %bb.gc, label %KINLinSolDrv.exit.thread.thread

bb.gc:                                            ; preds = %.preheader.i
  %i.aem = add nuw nsw i32 %.1288.i, 1            ; 2 uses
  %i.aen = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aeo = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.aep = tail call double @N_VWL2Norm(ptr noundef %i.aen, ptr noundef %i.aeo) #13 ; 3 uses
  %i.aeq = fmul double %i.aep, 5.000000e-01
  %i.aer = fmul double %i.aep, %i.aeq             ; 3 uses
  %i.aes = load double, ptr %i.ge, align 8, !tbaa !116
  %i.aet = insertelement <2 x double> poison, double %i.aeb, i64 0
  %i.aeu = shufflevector <2 x double> %i.aet, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aev = insertelement <2 x double> poison, double %i.aes, i64 0
  %i.aew = shufflevector <2 x double> %i.aev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ady, <2 x double> %i.aeu, <2 x double> %i.aew) ; 2 uses
  %i.aey = extractelement <2 x double> %i.aex, i64 0 ; 2 uses
  %i.aez = fcmp ugt double %i.aer, %i.aey
  %i.afa = extractelement <2 x double> %i.aex, i64 1
  %i.afb = fcmp uge double %i.aer, %i.afa
  %or.cond.i192.not728 = or i1 %i.aez, %i.afb     ; 2 uses
  %brmerge = or i1 %or.cond.i192.not728, %i.aea
  br i1 %brmerge, label %.critedge.i.loopexit, label %.preheader.i

.critedge.i.loopexit:                             ; preds = %bb.gc
  %.mux = select i1 %or.cond.i192.not728, double %i.aeb, double %.2302390.lcssa.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.gb
  %.7234 = phi double [ %.10237.lcssa, %bb.gb ], [ %i.aep, %.critedge.i.loopexit ]
  %.7 = phi double [ %.10.lcssa, %bb.gb ], [ %i.aer, %.critedge.i.loopexit ] ; 2 uses
  %i.afc = phi double [ %i.adn, %bb.gb ], [ %i.adu, %.critedge.i.loopexit ]
  %.2305.i = phi double [ %.0303.i.lcssa, %bb.gb ], [ %.mux, %.critedge.i.loopexit ] ; 6 uses
  %.1295.i = phi double [ %.0294.i.lcssa, %bb.gb ], [ %.1304.i, %.critedge.i.loopexit ] ; 3 uses
  %.0290.i = phi double [ %.lcssa298, %bb.gb ], [ %i.aey, %.critedge.i.loopexit ]
  %.2.i = phi i32 [ %.0287.i.lcssa, %bb.gb ], [ %i.aem, %.critedge.i.loopexit ] ; 2 uses
  %i.afd = fcmp olt double %.2305.i, 1.000000e+00
  br i1 %i.afd, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.critedge.i
  %i.afe = fcmp ogt double %.2305.i, 1.000000e+00
  %i.aff = fcmp ogt double %.7, %.0290.i
  %or.cond509.i = and i1 %i.afe, %i.aff
  br i1 %or.cond509.i, label %bb.ge, label %.thread475.i

bb.ge:                                            ; preds = %bb.gd, %.critedge.i
  %i.afg = fcmp olt double %.2305.i, %.1295.i
  %i.afh = select i1 %i.afg, double %.2305.i, double %.1295.i
  %i.afi = fsub double %.1295.i, %.2305.i
  %i.afj = tail call double @llvm.fabs.f64(double %i.afi)
  br label %.critedge2.outer.i

.critedge2.outer.i:                               ; preds = %bb.gg, %bb.ge
  %.0298.ph.i = phi double [ %.1299.ph.i, %bb.gg ], [ %i.afj, %bb.ge ]
  %.0291.ph.i = phi double [ %.1292.ph.i, %bb.gg ], [ %i.afh, %bb.ge ] ; 2 uses
  %.3.ph.i = phi i32 [ %i.afw, %bb.gg ], [ %.2.i, %bb.ge ]
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.gf, %.critedge2.outer.i
  %.0298.i = phi double [ %i.afk, %bb.gf ], [ %.0298.ph.i, %.critedge2.outer.i ] ; 3 uses
  %.3.i193 = phi i32 [ %i.afw, %bb.gf ], [ %.3.ph.i, %.critedge2.outer.i ]
  %i.afk = fmul double %.0298.i, 5.000000e-01     ; 3 uses
  %i.afl = fadd double %.0291.ph.i, %i.afk        ; 7 uses
  %i.afm = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.afn = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.afo = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.afm, double noundef %i.afl, ptr noundef %i.afn, ptr noundef %i.afo) #13
  %i.afp = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.afq = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.afr = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.afs = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.aft = tail call i32 %i.afp(ptr noundef %i.afq, ptr noundef %i.afr, ptr noundef %i.afs) #13, !inline_history !93
  %i.afu = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.afv = add nsw i64 %i.afu, 1
  store i64 %i.afv, ptr %i.ey, align 8, !tbaa !99
  %.not334.i = icmp eq i32 %i.aft, 0
  br i1 %.not334.i, label %bb.gf, label %KINLinSolDrv.exit.thread.thread

bb.gf:                                            ; preds = %.critedge2.i
  %i.afw = add nsw i32 %.3.i193, 1                ; 4 uses
  %i.afx = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.afy = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.afz = tail call double @N_VWL2Norm(ptr noundef %i.afx, ptr noundef %i.afy) #13 ; 3 uses
  %i.aga = fmul double %i.afz, 5.000000e-01
  %i.agb = fmul double %i.afz, %i.aga             ; 3 uses
  %i.agc = load double, ptr %i.ge, align 8, !tbaa !116 ; 2 uses
  %i.agd = tail call double @llvm.fmuladd.f64(double %i.zq, double %i.afl, double %i.agc)
  %i.age = fcmp ogt double %i.agb, %i.agd
  br i1 %i.age, label %.critedge2.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.agf = tail call double @llvm.fmuladd.f64(double %i.afc, double %i.afl, double %i.agc)
  %i.agg = fcmp olt double %i.agb, %i.agf         ; 4 uses
  %i.agh = fsub double %.0298.i, %i.afk
  %.1299.ph.i = select i1 %i.agg, double %i.agh, double %.0298.i ; 2 uses
  %.1292.ph.i = select i1 %i.agg, double %i.afl, double %.0291.ph.i
  %i.agi = fcmp oge double %.1299.ph.i, %i.zp
  %i.agj = select i1 %i.agg, i1 %i.agi, i1 false
  br i1 %i.agj, label %.critedge2.outer.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.agg, label %bb.gi, label %.thread475.i

bb.gi:                                            ; preds = %bb.gh
  %i.agk = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.agl = load ptr, ptr %i.hd, align 8, !tbaa !43
  %i.agm = load ptr, ptr %i.hc, align 8, !tbaa !41
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.agk, double noundef %i.afl, ptr noundef %i.agl, ptr noundef %i.agm) #13
  %i.agn = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.ago = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.agp = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.agq = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.agr = tail call i32 %i.agn(ptr noundef %i.ago, ptr noundef %i.agp, ptr noundef %i.agq) #13, !inline_history !93
  %i.ags = load i64, ptr %i.ey, align 8, !tbaa !99
  %i.agt = add nsw i64 %i.ags, 1
  store i64 %i.agt, ptr %i.ey, align 8, !tbaa !99
  %.not335.i = icmp eq i32 %i.agr, 0
  br i1 %.not335.i, label %bb.gj, label %KINLinSolDrv.exit.thread.thread

bb.gj:                                            ; preds = %bb.gi
  %i.agu = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.agv = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.agw = tail call double @N_VWL2Norm(ptr noundef %i.agu, ptr noundef %i.agv) #13 ; 3 uses
  %i.agx = fmul double %i.agw, 5.000000e-01
  %i.agy = fmul double %i.agw, %i.agx
  %i.agz = load i64, ptr %i.ho, align 8, !tbaa !136
  %i.aha = add nsw i64 %i.agz, 1
  store i64 %i.aha, ptr %i.ho, align 8, !tbaa !136
  br label %.thread475.i

.thread475.i:                                     ; preds = %bb.gj, %bb.gh, %bb.gd, %.thread.i191, %.loopexit.thread.i, %.loopexit.i195
  %.4231 = phi double [ %i.agw, %bb.gj ], [ %i.afz, %bb.gh ], [ %.7234, %bb.gd ], [ %.5232, %.thread.i191 ], [ %.10237.lcssa, %.loopexit.i195 ], [ %i.yz, %.loopexit.thread.i ]
  %.4226 = phi double [ %i.agy, %bb.gj ], [ %i.agb, %bb.gh ], [ %.7, %bb.gd ], [ %.5, %.thread.i191 ], [ %.10.lcssa, %.loopexit.i195 ], [ %i.zb, %.loopexit.thread.i ]
  %.3306.i = phi double [ %i.afl, %bb.gj ], [ %i.afl, %bb.gh ], [ %.2305.i, %bb.gd ], [ 1.000000e+00, %.thread.i191 ], [ %.0303.i.lcssa, %.loopexit.i195 ], [ 1.000000e+00, %.loopexit.thread.i ] ; 2 uses
  %.4.i = phi i32 [ %i.afw, %bb.gj ], [ %i.afw, %bb.gh ], [ %.2.i, %bb.gd ], [ %.0287.lcssa452462.i, %.thread.i191 ], [ %.0287.i.lcssa, %.loopexit.i195 ], [ 0, %.loopexit.thread.i ]
  %i.ahb = sext i32 %.4.i to i64
  %i.ahc = load i64, ptr %i.hp, align 8, !tbaa !137
  %i.ahd = add nsw i64 %i.ahc, %i.ahb
  store i64 %i.ahd, ptr %i.hp, align 8, !tbaa !137
  %i.ahe = load <2 x double>, ptr %i.hg, align 8, !tbaa !27
  %i.ahf = insertelement <2 x double> poison, double %.3306.i, i64 0
  %i.ahg = shufflevector <2 x double> %i.ahf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahh = fmul <2 x double> %i.ahg, %i.ahe
  %15 = insertelement <2 x double> poison, double %.2309389.lcssa.i, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x double> %16, %i.ahh
  store <2 x double> %17, ptr %i.hg, align 8, !tbaa !27
  %i.ahi = fmul double %.2312388.lcssa.i, %.3306.i
  %i.ahj = load double, ptr %i.ek, align 8, !tbaa !110
  %i.ahk = fmul double %i.ahj, f0x3FEFAE147AE147AE
  %i.ahl = fcmp ogt double %i.ahi, %i.ahk
  %spec.select282 = zext i1 %i.ahl to i32
  br label %bb.gk

bb.gk:                                            ; preds = %.thread475.i, %.loopexit425.i, %bb.fi
  %.12239 = phi double [ %.11238, %.loopexit425.i ], [ %.1228556, %bb.fi ], [ %.4231, %.thread475.i ]
  %.12 = phi double [ %.11, %.loopexit425.i ], [ %.1223558, %bb.fi ], [ %.4226, %.thread475.i ]
  %.4221 = phi i32 [ 0, %.loopexit425.i ], [ 0, %bb.fi ], [ %spec.select282, %.thread475.i ]
  %.0313.i = phi i32 [ -997, %.loopexit425.i ], [ -997, %bb.fi ], [ 0, %.thread475.i ]
  %i.ahm = load i64, ptr %i.ho, align 8, !tbaa !136
  %i.ahn = load i64, ptr %i.hq, align 8, !tbaa !25
  %i.aho = icmp sgt i64 %i.ahm, %i.ahn
  br i1 %i.aho, label %.thread261, label %KINFullNewton.exit.jt2

KINFullNewton.exit:                               ; preds = %bb.dp
  %i.ahp = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.ahq = and i32 %i.ahp, -2
  %switch158 = icmp eq i32 %i.ahq, 2
  br i1 %switch158, label %KINStop.exit.thread, label %bb.gl

KINFullNewton.exit.jt2:                           ; preds = %bb.es, %bb.eh, %bb.gk, %bb.dq
  %.2229.jt2 = phi double [ %.2229559, %bb.dq ], [ %.12239, %bb.gk ], [ %.1228555, %bb.eh ], [ %i.ud, %bb.es ]
  %.2224.jt2 = phi double [ %.2224561, %bb.dq ], [ %.12, %bb.gk ], [ %.1223557, %bb.eh ], [ %i.uf, %bb.es ] ; 2 uses
  %.2219.jt2 = phi i32 [ %.2219564, %bb.dq ], [ %.4221, %bb.gk ], [ 0, %bb.eh ], [ %spec.select, %bb.es ]
  %.2.jt2 = phi i32 [ -998, %bb.dq ], [ 0, %bb.gk ], [ 0, %bb.eh ], [ 0, %bb.es ]
  %.0.jt2 = phi i32 [ 0, %bb.dq ], [ %.0313.i, %bb.gk ], [ -997, %bb.eh ], [ 0, %bb.es ]
  %i.ahr = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.ahs = and i32 %i.ahr, -2
  %switch158.jt2 = icmp eq i32 %i.ahs, 2
  br i1 %switch158.jt2, label %KINStop.exit.thread.jt2, label %bb.gl

KINFullNewton.exit.jt4294966297:                  ; preds = %bb.dr
  %i.aht = load i32, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %i.ahu = and i32 %i.aht, -2
  %switch158.jt4294966297 = icmp eq i32 %i.ahu, 2
  br i1 %switch158.jt4294966297, label %KINStop.exit.thread.jt4294966297, label %bb.gl

bb.gl:                                            ; preds = %KINFullNewton.exit.jt2, %KINFullNewton.exit.jt4294966297, %KINFullNewton.exit
  %i.ahv = phi i32 [ %i.ahr, %KINFullNewton.exit.jt2 ], [ %i.aht, %KINFullNewton.exit.jt4294966297 ], [ %i.ahp, %KINFullNewton.exit ] ; 2 uses
  %.0566 = phi i32 [ %.0.jt2, %KINFullNewton.exit.jt2 ], [ 0, %KINFullNewton.exit.jt4294966297 ], [ 0, %KINFullNewton.exit ]
  %.2219564 = phi i32 [ %.2219.jt2, %KINFullNewton.exit.jt2 ], [ %.0217, %KINFullNewton.exit.jt4294966297 ], [ %.0217, %KINFullNewton.exit ] ; 6 uses
  %.2224561 = phi double [ %.2224.jt2, %KINFullNewton.exit.jt2 ], [ %.0222, %KINFullNewton.exit.jt4294966297 ], [ %.0222, %KINFullNewton.exit ] ; 14 uses
  %.2229559 = phi double [ %.2229.jt2, %KINFullNewton.exit.jt2 ], [ %.0227, %KINFullNewton.exit.jt4294966297 ], [ %.0227, %KINFullNewton.exit ] ; 10 uses
  %i.ahw = load i32, ptr %i.hr, align 8, !tbaa !112
  %.not154 = icmp eq i32 %i.ahw, 0
  br i1 %.not154, label %bb.gq, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ahx = load i32, ptr %i.hs, align 8, !tbaa !28
  switch i32 %i.ahx, label %._crit_edge.i198 [
    i32 1, label %bb.gn
    i32 2, label %bb.gp
  ]

._crit_edge.i198:                                 ; preds = %bb.gm
  %.pre.i200 = load double, ptr %i.hu, align 8, !tbaa !113
  br label %KINForcingTerm.exit

bb.gn:                                            ; preds = %bb.gm
  %i.ahy = load double, ptr %i.gb, align 8, !tbaa !104 ; 3 uses
  %i.ahz = load double, ptr %i.hg, align 8, !tbaa !130
  %i.aia = fmul double %i.ahz, 2.000000e+00
  %i.aib = tail call double @llvm.fmuladd.f64(double %i.ahy, double %i.ahy, double %i.aia)
  %i.aic = load double, ptr %i.hf, align 8, !tbaa !131 ; 2 uses
  %i.aid = tail call double @llvm.fmuladd.f64(double %i.aic, double %i.aic, double %i.aib) ; 2 uses
  %i.aie = fcmp ugt double %i.aid, 0.000000e+00
  br i1 %i.aie, label %bb.go, label %.thread.i197

bb.go:                                            ; preds = %bb.gn
  %i.aif = tail call double @sqrt(double noundef %i.aid) #13
  br label %.thread.i197

.thread.i197:                                     ; preds = %bb.go, %bb.gn
  %i.aig = phi double [ %i.aif, %bb.go ], [ 0.000000e+00, %bb.gn ]
  %i.aih = load double, ptr %i.hu, align 8, !tbaa !113
  %i.aii = load double, ptr %i.hv, align 8, !tbaa !29
  %i.aij = tail call double @pow(double noundef %i.aih, double noundef %i.aii) #13
  %i.aik = fsub double %.2229559, %i.aig
  %i.ail = tail call double @llvm.fabs.f64(double %i.aik)
  %i.aim = fdiv double %i.ail, %i.ahy
  br label %KINForcingTerm.exit

bb.gp:                                            ; preds = %bb.gm
  %i.ain = load double, ptr %i.ht, align 8, !tbaa !132 ; 2 uses
  %i.aio = load double, ptr %i.hu, align 8, !tbaa !113
  %i.aip = load double, ptr %i.hv, align 8, !tbaa !29 ; 2 uses
  %i.aiq = tail call double @pow(double noundef %i.aio, double noundef %i.aip) #13
  %i.air = fmul double %i.ain, %i.aiq
  %i.ais = load double, ptr %i.gb, align 8, !tbaa !104
  %i.ait = fdiv double %.2229559, %i.ais
  %i.aiu = tail call double @pow(double noundef %i.ait, double noundef %i.aip) #13
  %i.aiv = fmul double %i.ain, %i.aiu
  br label %KINForcingTerm.exit

KINForcingTerm.exit:                              ; preds = %._crit_edge.i198, %.thread.i197, %bb.gp
  %i.aiw = phi double [ %i.aiv, %bb.gp ], [ %.pre.i200, %._crit_edge.i198 ], [ %i.aim, %.thread.i197 ] ; 2 uses
  %.1.i196 = phi double [ %i.air, %bb.gp ], [ 5.000000e-01, %._crit_edge.i198 ], [ %i.aij, %.thread.i197 ] ; 2 uses
  %i.aix = fcmp olt double %.1.i196, 1.000000e-01
  %spec.store.select.i = select i1 %i.aix, double 0.000000e+00, double %.1.i196 ; 2 uses
  %i.aiy = fcmp ogt double %i.aiw, %spec.store.select.i
  %.spec.store.select.i = select i1 %i.aiy, double %i.aiw, double %spec.store.select.i ; 2 uses
  %i.aiz = fcmp ogt double %.spec.store.select.i, 1.000000e-04
  %i.aja = select i1 %i.aiz, double %.spec.store.select.i, double 1.000000e-04 ; 2 uses
  %i.ajb = fcmp olt double %i.aja, 9.000000e-01
  %i.ajc = select i1 %i.ajb, double %i.aja, double 9.000000e-01
  store double %i.ajc, ptr %i.hu, align 8, !tbaa !113
  br label %bb.gq

bb.gq:                                            ; preds = %KINForcingTerm.exit, %bb.gl
  store double %.2229559, ptr %i.gb, align 8, !tbaa !104
  %i.ajd = icmp eq i32 %.0566, -997
  br i1 %i.ajd, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.aje = load ptr, ptr %i.gz, align 8, !tbaa !126
  %.not84.i213 = icmp eq ptr %i.aje, null
  br i1 %.not84.i213, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ajf = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not85.i = icmp eq i32 %i.ajf, 0
  br i1 %.not85.i, label %bb.dq, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.ajg = icmp eq i32 %i.ahv, 0
  br i1 %i.ajg, label %KINStop.exit.thread.jt2, label %KINStop.exit.thread.jt4294967291

bb.gu:                                            ; preds = %bb.gq
  %i.ajh = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.aji = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.ajj = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VProd(ptr noundef %i.aji, ptr noundef %i.ajh, ptr noundef %i.ajj) #13
  %i.ajk = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.ajl = tail call double @N_VMaxNorm(ptr noundef %i.ajk) #13
  %i.ajm = load double, ptr %i.fn, align 8, !tbaa !105
  %i.ajn = fcmp ugt double %i.ajl, %i.ajm
  br i1 %i.ajn, label %bb.gv, label %KINStop.exit.thread.jt2

bb.gv:                                            ; preds = %bb.gu
  %i.ajo = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  %i.ajp = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.ajq = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ajp, double noundef -1.000000e+00, ptr noundef %i.ajq, ptr noundef %i.ajo) #13
  %i.ajr = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.ajs = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.ajt = load ptr, ptr %i.hl, align 8, !tbaa !44
  tail call void @N_VInv(ptr noundef %i.ajs, ptr noundef %i.ajt) #13
  %i.aju = load ptr, ptr %i.hm, align 8, !tbaa !45
  tail call void @N_VAbs(ptr noundef %i.ajr, ptr noundef %i.aju) #13
  %i.ajv = load ptr, ptr %i.hl, align 8, !tbaa !44 ; 2 uses
  %i.ajw = load ptr, ptr %i.hm, align 8, !tbaa !45
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ajv, double noundef 1.000000e+00, ptr noundef %i.ajw, ptr noundef %i.ajv) #13
  %i.ajx = load ptr, ptr %i.hl, align 8, !tbaa !44 ; 2 uses
  tail call void @N_VDiv(ptr noundef %i.ajo, ptr noundef %i.ajx, ptr noundef %i.ajx) #13
  %i.ajy = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.ajz = tail call double @N_VMaxNorm(ptr noundef %i.ajy) #13 ; 2 uses
  %i.aka = load double, ptr %i.hk, align 8, !tbaa !135
  %i.akb = fcmp ugt double %i.ajz, %i.aka
  br i1 %i.akb, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.akc = load ptr, ptr %i.gz, align 8, !tbaa !126
  %.not82.i202 = icmp eq ptr %i.akc, null
  br i1 %.not82.i202, label %KINStop.exit.thread.jt2, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.akd = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not83.i203 = icmp eq i32 %i.akd, 0
  br i1 %.not83.i203, label %KINStop.exit.thread.jt4294966297.sink.split, label %KINStop.exit.thread.jt2

bb.gy:                                            ; preds = %bb.gv
  %i.ake = load i64, ptr %i.ex, align 8, !tbaa !50 ; 3 uses
  %i.akf = load i64, ptr %i.hy, align 8, !tbaa !22
  %.not.i204 = icmp slt i64 %i.ake, %i.akf
  br i1 %.not.i204, label %bb.gz, label %KINStop.exit.thread.jt4294967290

bb.gz:                                            ; preds = %bb.gy
  %.not72.i = icmp eq i32 %.2219564, 0
  br i1 %.not72.i, label %.thread.i212, label %bb.ha

.thread.i212:                                     ; preds = %bb.gz
  store i64 0, ptr %i.gg, align 8, !tbaa !118
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.akg = load i64, ptr %i.gg, align 8, !tbaa !118
  %i.akh = add nsw i64 %i.akg, 1                  ; 2 uses
  store i64 %i.akh, ptr %i.gg, align 8, !tbaa !118
  %i.aki = icmp eq i64 %i.akh, 5
  br i1 %i.aki, label %KINStop.exit.thread.jt4294967289, label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %.thread.i212
  %i.akj = load i32, ptr %i.em, align 8, !tbaa !111
  %.not73.i = icmp eq i32 %i.akj, 0
  br i1 %.not73.i, label %bb.hc, label %KINStop.exit.thread.jt4294966297.sink.split

bb.hc:                                            ; preds = %bb.hb
  %i.akk = load i32, ptr %i.hz, align 4, !tbaa !114
  %.not74.i = icmp eq i32 %i.akk, 0
  br i1 %.not74.i, label %bb.hd, label %KINStop.exit.thread.jt4294966297

bb.hd:                                            ; preds = %bb.hc
  %i.akl = load i64, ptr %i.hb, align 8, !tbaa !127
  %i.akm = sub nsw i64 %i.ake, %i.akl
  %i.akn = load i64, ptr %i.ia, align 8, !tbaa !24
  %.not75.i = icmp slt i64 %i.akm, %i.akn
  br i1 %.not75.i, label %bb.ho, label %bb.he

bb.he:                                            ; preds = %bb.hd
  store i64 %i.ake, ptr %i.hb, align 8, !tbaa !127
  %i.ako = load i32, ptr %i.gs, align 8, !tbaa !30
  %.not79.i205 = icmp eq i32 %i.ako, 0
  %.pre.i207 = load double, ptr %i.gb, align 8, !tbaa !104 ; 3 uses
  br i1 %.not79.i205, label %._crit_edge.i209, label %bb.hf

._crit_edge.i209:                                 ; preds = %bb.he
  %.pre87.i = load double, ptr %i.gp, align 8, !tbaa !121
  br label %bb.hk

bb.hf:                                            ; preds = %bb.he
  %i.akp = load double, ptr %i.fn, align 8, !tbaa !105
  %i.akq = fdiv double %.pre.i207, %i.akp
  %i.akr = fadd double %i.akq, -1.000000e+00      ; 2 uses
  %i.aks = fcmp olt double %i.akr, 0.000000e+00
  %i.akt = select i1 %i.aks, double 0.000000e+00, double %i.akr ; 2 uses
  %i.aku = fcmp ogt double %i.akt, 1.200000e+01
  br i1 %i.aku, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.akv = load double, ptr %i.ic, align 8, !tbaa !138
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.akw = load double, ptr %i.ib, align 8, !tbaa !139
  %i.akx = tail call double @exp(double noundef %i.akt) #13
  %i.aky = fmul double %i.akw, %i.akx             ; 2 uses
  %i.akz = load double, ptr %i.ic, align 8, !tbaa !138 ; 2 uses
  %i.ala = fcmp olt double %i.aky, %i.akz
  br i1 %i.ala, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.hg
  %i.alb = phi double [ %i.akv, %bb.hg ], [ %i.aky, %bb.hi ], [ %i.akz, %bb.hh ] ; 2 uses
  store double %i.alb, ptr %i.gp, align 8, !tbaa !121
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %._crit_edge.i209
  %i.alc = phi double [ %.pre87.i, %._crit_edge.i209 ], [ %i.alb, %bb.hj ]
  %i.ald = load double, ptr %i.gf, align 8, !tbaa !117
  %i.ale = fmul double %i.alc, %i.ald
  %i.alf = fcmp ogt double %.pre.i207, %i.ale
  br i1 %i.alf, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %i.alg = load ptr, ptr %i.gz, align 8, !tbaa !126
  %.not80.i208 = icmp eq ptr %i.alg, null
  br i1 %.not80.i208, label %KINStop.exit.thread.jt4294966297, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.alh = load i32, ptr %i.ha, align 4, !tbaa !125
  %.not81.i = icmp eq i32 %i.alh, 0
  br i1 %.not81.i, label %KINStop.exit.thread.jt4294966297.sink.split, label %KINStop.exit.thread.jt4294966297

bb.hn:                                            ; preds = %bb.hk
  store double %.pre.i207, ptr %i.gf, align 8, !tbaa !117
  br label %KINStop.exit.thread.jt4294966297.sink.split

bb.ho:                                            ; preds = %bb.hd
  %i.ali = load i32, ptr %i.gv, align 8, !tbaa !133
  %.not76.i210 = icmp eq i32 %i.ali, 0
  %i.alj = load i32, ptr %i.gy, align 4, !tbaa !124
  %.not77.i211 = icmp eq i32 %i.alj, 0            ; 2 uses
  br i1 %.not76.i210, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  br i1 %.not77.i211, label %KINStop.exit.thread.jt4294966297.sink.split, label %.thread101.i

.thread101.i:                                     ; preds = %bb.hp
  %i.alk = load double, ptr %i.gb, align 8, !tbaa !104
  store double %i.alk, ptr %i.gf, align 8, !tbaa !117
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.all = load double, ptr %i.gb, align 8, !tbaa !104
  store double %i.all, ptr %i.gf, align 8, !tbaa !117
  br i1 %.not77.i211, label %KINStop.exit.thread.jt4294966297.sink.split, label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.thread101.i
  store i32 0, ptr %i.gy, align 4, !tbaa !124
  br label %KINStop.exit.thread.jt4294966297.sink.split

KINStop.exit.thread:                              ; preds = %KINFullNewton.exit
  %i.alm = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.aln = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.alm, ptr noundef %i.aln) #13
  store double %.0222, ptr %i.ge, align 8, !tbaa !116
  br i1 %cond, label %bb.dk, label %KINPicardAA.exit

KINStop.exit.thread.jt4294967291:                 ; preds = %bb.gt
  %i.alo = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.alp = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.alo, ptr noundef %i.alp) #13
  store double %.2224561, ptr %i.ge, align 8, !tbaa !116
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 747, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17)
  br label %KINPicardAA.exit

KINStop.exit.thread.jt4294967289:                 ; preds = %bb.ha
  %i.alq = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.alr = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.alq, ptr noundef %i.alr) #13
  store double %.2224561, ptr %i.ge, align 8, !tbaa !116
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 759, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19)
  br label %KINPicardAA.exit

KINStop.exit.thread.jt4294967290:                 ; preds = %bb.gy
  %i.als = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.alt = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.als, ptr noundef %i.alt) #13
  store double %.2224561, ptr %i.ge, align 8, !tbaa !116
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 755, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %KINPicardAA.exit

KINStop.exit.thread.jt4294966297.sink.split:      ; preds = %bb.hp, %bb.hq, %bb.hr, %bb.hm, %bb.hb, %bb.gx, %bb.hn
  %.sink649 = phi double [ %i.ajz, %bb.hb ], [ 2.000000e+00, %bb.gx ], [ 1.000000e+00, %bb.hn ], [ 2.000000e+00, %bb.hm ], [ 1.000000e+00, %bb.hr ], [ 1.000000e+00, %bb.hq ], [ 1.000000e+00, %bb.hp ]
  store double %.sink649, ptr %i.gj, align 8, !tbaa !26
  br label %KINStop.exit.thread.jt4294966297

KINStop.exit.thread.jt4294966297:                 ; preds = %KINStop.exit.thread.jt4294966297.sink.split, %KINFullNewton.exit.jt4294966297, %bb.hc, %bb.hl, %bb.hm
  %.2219565 = phi i32 [ %.0217, %KINFullNewton.exit.jt4294966297 ], [ %.2219564, %bb.hl ], [ %.2219564, %bb.hm ], [ %.2219564, %bb.hc ], [ %.2219564, %KINStop.exit.thread.jt4294966297.sink.split ]
  %.2224562 = phi double [ %.0222, %KINFullNewton.exit.jt4294966297 ], [ %.2224561, %bb.hl ], [ %.2224561, %bb.hm ], [ %.2224561, %bb.hc ], [ %.2224561, %KINStop.exit.thread.jt4294966297.sink.split ] ; 2 uses
  %.2229560 = phi double [ %.0227, %KINFullNewton.exit.jt4294966297 ], [ %.2229559, %bb.hl ], [ %.2229559, %bb.hm ], [ %.2229559, %bb.hc ], [ %.2229559, %KINStop.exit.thread.jt4294966297.sink.split ]
  %i.alu = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.alv = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.alu, ptr noundef %i.alv) #13
  store double %.2224562, ptr %i.ge, align 8, !tbaa !116
  br label %bb.dj

KINStop.exit.thread.jt2:                          ; preds = %KINFullNewton.exit.jt2, %bb.gu, %bb.gw, %bb.gx, %bb.gt
  %.2224563 = phi double [ %.2224561, %bb.gt ], [ %.2224.jt2, %KINFullNewton.exit.jt2 ], [ %.2224561, %bb.gx ], [ %.2224561, %bb.gw ], [ %.2224561, %bb.gu ]
  %.3.jt2 = phi i32 [ 2, %bb.gt ], [ %.2.jt2, %KINFullNewton.exit.jt2 ], [ 2, %bb.gx ], [ 2, %bb.gw ], [ 0, %bb.gu ]
  %i.alw = load ptr, ptr %i.hc, align 8, !tbaa !41
  %i.alx = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.alw, ptr noundef %i.alx) #13
  store double %.2224563, ptr %i.ge, align 8, !tbaa !116
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread:                  ; preds = %bb.fq, %bb.gi, %bb.ft, %bb.fk, %bb.fm, %bb.fo, %bb.ej, %bb.el, %bb.en, %bb.ep, %bb.fz, %.preheader.i, %.critedge2.i, %bb.fs, %bb.er
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -13, i32 noundef 727, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread271:               ; preds = %bb.fs, %bb.er
  %.lcssa621.sink = phi double [ %i.to, %bb.er ], [ %14, %bb.fs ]
  %i.aly = load ptr, ptr %i.hd, align 8, !tbaa !43 ; 2 uses
  tail call void @N_VScale(double noundef 5.000000e-01, ptr noundef %i.aly, ptr noundef %i.aly) #13
  %i.alz = fmul double %.lcssa621.sink, 5.000000e-01
  store double %i.alz, ptr %i.hh, align 8, !tbaa !134
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -15, i32 noundef 731, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread275:               ; preds = %bb.ev, %bb.du, %.peel.next, %.peel.next468
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 735, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread279:               ; preds = %bb.ex, %bb.dw, %bb.fb, %bb.ea
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef %0, i32 noundef -12, i32 noundef 739, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15)
  br label %KINPicardAA.exit

KINLinSolDrv.exit.thread.thread267:               ; preds = %bb.ey, %bb.ez, %bb.dx, %bb.dy, %bb.fd, %bb.fc, %bb.ec, %bb.eb
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 743, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16)
  br label %KINPicardAA.exit

.thread261:                                       ; preds = %bb.gk
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 751, ptr noundef nonnull @__func__.KINSol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18)
  br label %KINPicardAA.exit

KINPicardAA.exit:                                 ; preds = %KINStop.exit.thread, %bb.db, %bb.da, %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.cq, %bb.cp, %bb.co, %.peel.next.i, %KINStop.exit.thread.jt2, %bb.ay, %bb.ba, %bb.bq, %bb.bn, %bb.bl, %bb.bj, %bb.av, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.u, %bb.w, %KINPicardFcnEval.exit.thread.loopexit126.split.loop.exit137.i, %bb.cx, %bb.cv, %KINLinSolDrv.exit.thread.thread, %KINLinSolDrv.exit.thread.thread271, %KINLinSolDrv.exit.thread.thread275, %KINLinSolDrv.exit.thread.thread279, %KINLinSolDrv.exit.thread.thread267, %KINStop.exit.thread.jt4294967291, %.thread261, %KINStop.exit.thread.jt4294967290, %KINStop.exit.thread.jt4294967289, %KINFP.exit, %KINFP.exit.thread241, %bb.ah, %bb.bx, %bb.o, %bb.m, %bb.j, %bb.h, %bb.d, %bb.b
  %.0124 = phi i32 [ -1, %bb.b ], [ -3, %bb.d ], [ %i.l, %bb.h ], [ %i.m, %bb.j ], [ -2, %bb.m ], [ -2, %bb.o ], [ -18, %bb.u ], [ %.3.i, %KINFP.exit ], [ -4, %bb.bx ], [ -14, %bb.bl ], [ -6, %bb.ah ], [ -13, %KINFP.exit.thread241 ], [ -7, %KINStop.exit.thread.jt4294967289 ], [ -6, %KINStop.exit.thread.jt4294967290 ], [ -8, %.thread261 ], [ -5, %KINStop.exit.thread.jt4294967291 ], [ -9, %KINLinSolDrv.exit.thread.thread267 ], [ -12, %KINLinSolDrv.exit.thread.thread279 ], [ -11, %KINLinSolDrv.exit.thread.thread275 ], [ -15, %KINLinSolDrv.exit.thread.thread271 ], [ -13, %KINLinSolDrv.exit.thread.thread ], [ %.3.jt2, %KINStop.exit.thread.jt2 ], [ -2, %bb.ao ], [ -18, %bb.cv ], [ -18, %bb.cx ], [ -2, %bb.am ], [ -2, %bb.ak ], [ -2, %bb.ai ], [ -13, %bb.bj ], [ -2, %bb.av ], [ -2, %bb.as ], [ -2, %bb.aq ], [ %.2.le.i172, %KINPicardFcnEval.exit.thread.loopexit126.split.loop.exit137.i ], [ -13, %bb.cq ], [ -18, %bb.w ], [ -2, %bb.ay ], [ -2, %bb.ba ], [ -10, %bb.bq ], [ 1, %bb.bn ], [ -13, %bb.cl ], [ -13, %.peel.next.i ], [ -13, %bb.co ], [ -13, %bb.cp ], [ -13, %bb.ci ], [ %i.mi, %bb.da ], [ -13, %bb.ck ], [ -13, %bb.db ], [ -13, %bb.cm ], [ %.0122, %KINStop.exit.thread ]
  ret i32 %.0124
}

declare i32 @KINInitAA(ptr noundef) local_unnamed_addr #5

declare i32 @KINInitOrth(ptr noundef) local_unnamed_addr #5

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #5

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @KINFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 27 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroy(ptr noundef nonnull %i.d) #13
  store ptr null, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !40
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !40
  %i.i = sub nsw <2 x i64> %i.h, %i.g
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %.not55.i = icmp eq ptr %i.k, null
  br i1 %.not55.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @N_VDestroy(ptr noundef nonnull %i.k) #13
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.n = load <2 x i64>, ptr %i.l, align 8, !tbaa !40
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !40
  %i.p = sub nsw <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %i.m, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %.not56.i = icmp eq ptr %i.r, null
  br i1 %.not56.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @N_VDestroy(ptr noundef nonnull %i.r) #13
  store ptr null, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.s, align 8, !tbaa !40
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !40
  %i.w = sub nsw <2 x i64> %i.v, %i.u
  store <2 x i64> %i.w, ptr %i.t, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 336 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 2 uses
  %.not57.i = icmp eq ptr %i.y, null
  br i1 %.not57.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @N_VDestroy(ptr noundef nonnull %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !40
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !tbaa !40
  %i.ad = sub nsw <2 x i64> %i.ac, %i.ab
  store <2 x i64> %i.ad, ptr %i.aa, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %.not58.i = icmp eq ptr %i.af, null
  br i1 %.not58.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @N_VDestroy(ptr noundef nonnull %i.af) #13
  store ptr null, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !40
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !40
  %i.ak = sub nsw <2 x i64> %i.aj, %i.ai
  store <2 x i64> %i.ak, ptr %i.ah, align 8, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55 ; 2 uses
  %.not59.i = icmp eq ptr %i.am, null
  br i1 %.not59.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @N_VDestroy(ptr noundef nonnull %i.am) #13
  store ptr null, ptr %i.al, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !tbaa !40
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !40
  %i.ar = sub nsw <2 x i64> %i.aq, %i.ap
  store <2 x i64> %i.ar, ptr %i.ao, align 8, !tbaa !40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 328 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %.not60.i = icmp eq ptr %i.at, null
  br i1 %.not60.i, label %KINFreeVectors.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @N_VDestroy(ptr noundef nonnull %i.at) #13
  store ptr null, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !tbaa !40
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !40
  %i.ay = sub nsw <2 x i64> %i.ax, %i.aw
  store <2 x i64> %i.ay, ptr %i.av, align 8, !tbaa !40
  br label %KINFreeVectors.exit

KINFreeVectors.exit:                              ; preds = %bb.n, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %KINFreeVectors.exit
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %KINFreeVectors.exit
  tail call void @KINFreeAA(ptr noundef nonnull %i.a) #13
  tail call void @KINFreeOrth(ptr noundef nonnull %i.a) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !142
  %i.bd = load ptr, ptr %0, align 8, !tbaa !140
  tail call void @free(ptr noundef %i.bd) #13
  store ptr null, ptr %0, align 8, !tbaa !140
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

declare void @KINFreeAA(ptr noundef) local_unnamed_addr #5

declare void @KINFreeOrth(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @KINPrintInfo(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ...) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 16               ; 4 uses
  %i.c = alloca [30 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
end_hunk_0
