Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarrd?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dlarrd_:bb.a
  %i.im = select i1 %i.il, double %.1631760.prol, double %i.ik ; 3 uses
  %i.in = load double, ptr %i.ii, align 8, !tbaa !33 ; 2 uses
  %i.io = fcmp oge double %.1628761.prol, %i.in
  %i.ip = select i1 %i.io, double %.1628761.prol, double %i.in ; 3 uses
  %indvars.iv.next859.prol = add i64 %indvars.iv858.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1080
  br i1 %prol.iter.cmp.not, label %.lr.ph763.prol.loopexit, label %.lr.ph763.prol, !llvm.loop !10

.lr.ph763.prol.loopexit:                          ; preds = %.lr.ph763.prol, %.lr.ph763.preheader
  %.lcssa1071.unr = phi double [ poison, %.lr.ph763.preheader ], [ %i.im, %.lr.ph763.prol ]
  %.lcssa1070.unr = phi double [ poison, %.lr.ph763.preheader ], [ %i.ip, %.lr.ph763.prol ]
  %indvars.iv858.unr = phi i64 [ %i.id, %.lr.ph763.preheader ], [ %indvars.iv.next859.prol, %.lr.ph763.prol ]
  %.1628761.unr = phi double [ %i.ib, %.lr.ph763.preheader ], [ %i.ip, %.lr.ph763.prol ]
  %.1631760.unr = phi double [ %i.ib, %.lr.ph763.preheader ], [ %i.im, %.lr.ph763.prol ]
  %i.iq = sub i32 %.0653779, %i.ha
  %i.ir = icmp ugt i32 %i.iq, -4
  br i1 %i.ir, label %._crit_edge764, label %.lr.ph763

.lr.ph763:                                        ; preds = %.lr.ph763.prol.loopexit, %.lr.ph763
  %indvars.iv858 = phi i64 [ %indvars.iv.next859.3, %.lr.ph763 ], [ %indvars.iv858.unr, %.lr.ph763.prol.loopexit ] ; 5 uses
  %.1628761 = phi double [ %i.km, %.lr.ph763 ], [ %.1628761.unr, %.lr.ph763.prol.loopexit ] ; 2 uses
  %.1631760 = phi double [ %i.kj, %.lr.ph763 ], [ %.1631760.unr, %.lr.ph763.prol.loopexit ] ; 2 uses
  %i.is = trunc i64 %indvars.iv858 to i32
  %i.it = shl i32 %i.is, 1
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr [8 x i8], ptr %i.x, i64 %i.iu ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -8
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !33 ; 2 uses
  %i.iy = fcmp ole double %.1631760, %i.ix
  %i.iz = select i1 %i.iy, double %.1631760, double %i.ix ; 2 uses
  %i.ja = load double, ptr %i.iv, align 8, !tbaa !33 ; 2 uses
  %i.jb = fcmp oge double %.1628761, %i.ja
  %i.jc = select i1 %i.jb, double %.1628761, double %i.ja ; 2 uses
  %i.jd = trunc i64 %indvars.iv858 to i32
  %i.je = shl i32 %i.jd, 1
  %i.jf = add i32 %i.je, 2
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr [8 x i8], ptr %i.x, i64 %i.jg ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !33 ; 2 uses
  %i.jk = fcmp ole double %i.iz, %i.jj
  %i.jl = select i1 %i.jk, double %i.iz, double %i.jj ; 2 uses
  %i.jm = load double, ptr %i.jh, align 8, !tbaa !33 ; 2 uses
  %i.jn = fcmp oge double %i.jc, %i.jm
  %i.jo = select i1 %i.jn, double %i.jc, double %i.jm ; 2 uses
  %i.jp = trunc i64 %indvars.iv858 to i32
  %i.jq = shl i32 %i.jp, 1
  %i.jr = add i32 %i.jq, 4
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [8 x i8], ptr %i.x, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 -8
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !33 ; 2 uses
  %i.jw = fcmp ole double %i.jl, %i.jv
  %i.jx = select i1 %i.jw, double %i.jl, double %i.jv ; 2 uses
  %i.jy = load double, ptr %i.jt, align 8, !tbaa !33 ; 2 uses
  %i.jz = fcmp oge double %i.jo, %i.jy
  %i.ka = select i1 %i.jz, double %i.jo, double %i.jy ; 2 uses
  %i.kb = trunc i64 %indvars.iv858 to i32
  %i.kc = shl i32 %i.kb, 1
  %i.kd = add i32 %i.kc, 6
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr [8 x i8], ptr %i.x, i64 %i.ke ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 -8
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !33 ; 2 uses
  %i.ki = fcmp ole double %i.jx, %i.kh
  %i.kj = select i1 %i.ki, double %i.jx, double %i.kh ; 2 uses
  %i.kk = load double, ptr %i.kf, align 8, !tbaa !33 ; 2 uses
  %i.kl = fcmp oge double %i.ka, %i.kk
  %i.km = select i1 %i.kl, double %i.ka, double %i.kk ; 2 uses
  %indvars.iv.next859.3 = add nuw nsw i64 %indvars.iv858, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next859.3 to i32
  %exitcond861.not.3 = icmp eq i32 %i.ie, %lftr.wideiv.3
  br i1 %exitcond861.not.3, label %._crit_edge764, label %.lr.ph763, !llvm.loop !11

._crit_edge764:                                   ; preds = %.lr.ph763.prol.loopexit, %.lr.ph763, %bb.aq
  %.1631.lcssa = phi double [ %i.ib, %bb.aq ], [ %.lcssa1071.unr, %.lr.ph763.prol.loopexit ], [ %i.kj, %.lr.ph763 ]
  %.1628.lcssa = phi double [ %i.ib, %bb.aq ], [ %.lcssa1070.unr, %.lr.ph763.prol.loopexit ], [ %i.km, %.lr.ph763 ]
  %i.kn = sitofp i32 %i.hb to double              ; 2 uses
  %i.ko = call double @llvm.fmuladd.f64(double %i.eg, double %i.kn, double %.1631.lcssa)
  %i.kp = load double, ptr %12, align 8, !tbaa !33 ; 2 uses
  %i.kq = fneg double %i.kp
  %i.kr = call double @llvm.fmuladd.f64(double %i.kq, double 2.000000e+00, double %i.ko) ; 3 uses
  %i.ks = call double @llvm.fmuladd.f64(double %i.ee, double %i.kn, double %.1628.lcssa)
  %i.kt = call double @llvm.fmuladd.f64(double %i.kp, double 2.000000e+00, double %i.ks) ; 4 uses
  br i1 %i.gt, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %._crit_edge764
  %i.ku = load double, ptr %18, align 8, !tbaa !33 ; 3 uses
  %i.kv = fcmp olt double %i.kt, %i.ku
  br i1 %i.kv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kw = add nsw i32 %i.hb, %.1605782
  %i.kx = add nsw i32 %i.hb, %.1599783
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %.inv = fcmp oge double %i.kr, %i.ku
  %.714 = select i1 %.inv, double %i.kr, double %i.ku ; 2 uses
  %i.ky = load double, ptr %19, align 8, !tbaa !33 ; 2 uses
  %.inv739 = fcmp ole double %i.kt, %i.ky
  %i.kz = select i1 %.inv739, double %i.kt, double %i.ky ; 2 uses
  %i.la = fcmp ult double %.714, %i.kz
  br i1 %i.la, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at, %._crit_edge764
  %.2632 = phi double [ %.714, %bb.at ], [ %i.kr, %._crit_edge764 ] ; 2 uses
  %.2629 = phi double [ %i.kz, %bb.at ], [ %i.kt, %._crit_edge764 ] ; 2 uses
  %i.lb = load i32, ptr %2, align 4, !tbaa !31    ; 3 uses
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr [8 x i8], ptr %i.o, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.ld, i64 8      ; 2 uses
  store double %.2632, ptr %i.le, align 8, !tbaa !33
  %i.lf = add nsw i32 %i.lb, %i.hb
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr [8 x i8], ptr %i.o, i64 %i.lg
  %i.li = getelementptr i8, ptr %i.lh, i64 8
  store double %.2629, ptr %i.li, align 8, !tbaa !33
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hz ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.hz ; 2 uses
  %i.ll = shl i32 %i.hb, 1
  %i.lm = add nsw i32 %i.lb, %i.ll
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr [8 x i8], ptr %i.o, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %15, align 4, !tbaa !31
  %i.lr = add nsw i32 %i.lq, 1
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ls
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ls
  call void @dlaebz_(ptr noundef nonnull @c__1, ptr noundef nonnull @c__0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull @c__1, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %12, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.m, ptr noundef nonnull %i.le, ptr noundef %i.lp, ptr noundef nonnull %i.k, ptr noundef %23, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lu, ptr noundef nonnull %i.f) #6
  %i.lv = load i32, ptr %i.f, align 4, !tbaa !31  ; 2 uses
  %.not704 = icmp eq i32 %i.lv, 0
  br i1 %.not704, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 %i.lv, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

bb.aw:                                            ; preds = %bb.au
  %i.lw = load i32, ptr %23, align 4, !tbaa !31   ; 3 uses
  %i.lx = add nsw i32 %i.lw, %.1605782
  %i.ly = load i32, ptr %i.l, align 4, !tbaa !31  ; 2 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr [4 x i8], ptr %i.n, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !31
  %i.md = add nsw i32 %i.mc, %.1599783
  %i.me = load i32, ptr %15, align 4, !tbaa !31   ; 2 uses
  %i.mf = sub nsw i32 %i.me, %i.lw                ; 5 uses
  %i.mg = fsub double %.2629, %.2632
  %i.mh = load double, ptr %12, align 8, !tbaa !33 ; 2 uses
  %i.mi = fadd double %i.mg, %i.mh
  %i.mj = call double @log(double noundef %i.mi) #6
  %i.mk = call double @log(double noundef %i.mh) #6
  %i.ml = fsub double %i.mj, %i.mk
  %i.mm = fdiv double %i.ml, f0x3FE62E42FEFA39EF
  %i.mn = fptosi double %i.mm to i32
  %i.mo = add nsw i32 %i.mn, 2
  store i32 %i.mo, ptr %i.h, align 4, !tbaa !31
  %i.mp = load i32, ptr %2, align 4, !tbaa !31    ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr [8 x i8], ptr %i.o, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  %i.mt = shl i32 %i.ly, 1
  %i.mu = add nsw i32 %i.mp, %i.mt
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr [8 x i8], ptr %i.o, i64 %i.mv
  %i.mx = getelementptr i8, ptr %i.mw, i64 8
  %i.my = load i32, ptr %15, align 4, !tbaa !31
  %i.mz = add nsw i32 %i.my, 1
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.na
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.na
  call void @dlaebz_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull @c__1, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %12, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.m, ptr noundef %i.ms, ptr noundef %i.mx, ptr noundef nonnull %i.e, ptr noundef nonnull %23, ptr noundef nonnull %i.nb, ptr noundef nonnull %i.nc, ptr noundef nonnull %i.f) #6
  %i.nd = load i32, ptr %i.f, align 4, !tbaa !31  ; 2 uses
  %.not705 = icmp eq i32 %i.nd, 0
  br i1 %.not705, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.nd, ptr %24, align 4, !tbaa !31
  br label %.critedge.thread

bb.ay:                                            ; preds = %bb.aw
  %i.ne = load i32, ptr %i.e, align 4, !tbaa !31  ; 2 uses
  %.not706772 = icmp slt i32 %i.ne, 1
  br i1 %.not706772, label %._crit_edge776, label %.lr.ph775

.lr.ph775:                                        ; preds = %bb.ay
  %i.nf = load i32, ptr %i.l, align 4, !tbaa !31
  %i.ng = add i32 %i.mf, 1
  %i.nh = add i32 %i.me, 1
  %i.ni = sub i32 %i.nh, %i.lw
  %i.nj = sext i32 %i.nf to i64
  %i.nk = add nuw i32 %i.ne, 1
  %wide.trip.count870 = zext i32 %i.nk to i64
  %i.nl = trunc nuw nsw i64 %indvars.iv872 to i32 ; 3 uses
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %i.mf, i64 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %i.nl, i64 0 ; 2 uses
  %invariant.op = sub <4 x i32> splat (i32 4), %broadcast.splat998
  %invariant.op.a = sub <4 x i32> splat (i32 8), %broadcast.splat998
  %invariant.op1146 = sub <4 x i32> splat (i32 12), %broadcast.splat998
  %25 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <8 x i32> zeroinitializer
  %26 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %i.mf, i64 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1010 = insertelement <4 x i32> poison, i32 %i.nl, i64 0
  %broadcast.splat1011 = shufflevector <4 x i32> %broadcast.splatinsert1010, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph775, %._crit_edge771
  %indvars.iv867 = phi i64 [ 1, %.lr.ph775 ], [ %indvars.iv.next868, %._crit_edge771 ] ; 4 uses
  %i.nm = load i32, ptr %2, align 4, !tbaa !31
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv867
  %i.np = getelementptr [8 x i8], ptr %i.no, i64 %i.nn
  %i.nq = load double, ptr %i.np, align 8, !tbaa !33 ; 2 uses
  %i.nr = add nsw i64 %indvars.iv867, %i.nj       ; 2 uses
  %i.ns = getelementptr [8 x i8], ptr %i.o, i64 %i.nr
  %i.nt = getelementptr [8 x i8], ptr %i.ns, i64 %i.nn
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !33 ; 2 uses
  %i.nv = fadd double %i.nq, %i.nu
  %i.nw = fmul double %i.nv, 5.000000e-01         ; 3 uses
  %i.nx = fsub double %i.nq, %i.nu                ; 3 uses
  %i.ny = fcmp oge double %i.nx, 0.000000e+00
  %i.nz = fneg double %i.nx
  %i.oa = select i1 %i.ny, double %i.nx, double %i.nz
  %i.ob = fmul double %i.oa, 5.000000e-01         ; 3 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.nr
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !31 ; 3 uses
  %i.oe = add nsw i32 %i.od, %i.mf
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv867
  %i.og = load i32, ptr %i.of, align 4, !tbaa !31 ; 2 uses
  %i.oh = add i32 %i.ng, %i.og                    ; 3 uses
  %.not707767 = icmp sgt i32 %i.oh, %i.oe
  br i1 %.not707767, label %._crit_edge771, label %iter.check

iter.check:                                       ; preds = %bb.az
  %i.oi = sext i32 %i.oh to i64                   ; 6 uses
  %i.oj = add i32 %i.ni, %i.od
  %i.ok = xor i32 %i.og, -1
  %i.ol = add i32 %i.od, %i.ok                    ; 3 uses
  %i.om = zext i32 %i.ol to i64
  %i.on = add nuw nsw i64 %i.om, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ol, 3
  %brmerge1150 = or i1 %min.iters.check, %conflict.rdx
  br i1 %brmerge1150, label %.lr.ph770.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check994 = icmp ult i32 %i.ol, 15
  br i1 %min.iters.check994, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.oo = and i64 %i.on, 12
  %n.vec = and i64 %i.on, 8589934576              ; 4 uses
  %i.op = add nsw i64 %n.vec, %i.oi               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.nw, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert995 = insertelement <4 x double> poison, double %i.ob, i64 0
  %broadcast.splat996 = shufflevector <4 x double> %broadcast.splatinsert995, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %i.oh, i64 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat1002, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.oq = add i64 %index, %i.oi                   ; 4 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oq ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 96
  store <4 x double> %broadcast.splat, ptr %i.or, align 8, !tbaa !33
  store <4 x double> %broadcast.splat, ptr %i.os, align 8, !tbaa !33
  store <4 x double> %broadcast.splat, ptr %i.ot, align 8, !tbaa !33
  store <4 x double> %broadcast.splat, ptr %i.ou, align 8, !tbaa !33
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.oq ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 96
  store <4 x double> %broadcast.splat996, ptr %i.ov, align 8, !tbaa !33
  store <4 x double> %broadcast.splat996, ptr %i.ow, align 8, !tbaa !33
  store <4 x double> %broadcast.splat996, ptr %i.ox, align 8, !tbaa !33
  store <4 x double> %broadcast.splat996, ptr %i.oy, align 8, !tbaa !33
  %i.oz = sub nsw <4 x i32> %vec.ind, %broadcast.splat998
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %.reass1147 = add <4 x i32> %vec.ind, %invariant.op.a
  %.reass1149 = add <4 x i32> %vec.ind, %invariant.op1146
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.oq ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %27 = shufflevector <4 x i32> %i.oz, <4 x i32> %.reass, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %27, ptr %i.pa, align 4, !tbaa !31
  %28 = shufflevector <4 x i32> %.reass1147, <4 x i32> %.reass1149, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i32> %28, ptr %i.pb, align 4, !tbaa !31
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.oq ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  store <8 x i32> %25, ptr %i.pc, align 4, !tbaa !31
  store <8 x i32> %26, ptr %i.pd, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.on, %n.vec
  br i1 %cmp.n, label %._crit_edge771, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.oo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph770.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.op, %vec.epilog.iter.check ], [ %i.oi, %vector.main.loop.iter.check ]
  %n.vec1003 = and i64 %i.on, 8589934588          ; 3 uses
  %i.pf = add nsw i64 %n.vec1003, %i.oi
  %broadcast.splatinsert1004 = insertelement <4 x double> poison, double %i.nw, i64 0
  %broadcast.splat1005 = shufflevector <4 x double> %broadcast.splatinsert1004, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1006 = insertelement <4 x double> poison, double %i.ob, i64 0
  %broadcast.splat1007 = shufflevector <4 x double> %broadcast.splatinsert1006, <4 x double> poison, <4 x i32> zeroinitializer
  %i.pg = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert1012 = insertelement <4 x i32> poison, i32 %i.pg, i64 0
  %broadcast.splat1013 = shufflevector <4 x i32> %broadcast.splatinsert1012, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction1014 = add <4 x i32> %broadcast.splat1013, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1015 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1017, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1016 = phi <4 x i32> [ %induction1014, %vec.epilog.ph ], [ %vec.ind.next1018, %vec.epilog.vector.body ] ; 2 uses
  %i.ph = add i64 %index1015, %i.oi               ; 4 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ph
  store <4 x double> %broadcast.splat1005, ptr %i.pi, align 8, !tbaa !33
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ph
  store <4 x double> %broadcast.splat1007, ptr %i.pj, align 8, !tbaa !33
  %i.pk = sub nsw <4 x i32> %vec.ind1016, %broadcast.splat1009
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ph
  store <4 x i32> %i.pk, ptr %i.pl, align 4, !tbaa !31
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ph
  store <4 x i32> %broadcast.splat1011, ptr %i.pm, align 4, !tbaa !31
  %index.next1017 = add nuw i64 %index1015, 4     ; 2 uses
  %vec.ind.next1018 = add <4 x i32> %vec.ind1016, splat (i32 4)
  %i.pn = icmp eq i64 %index.next1017, %n.vec1003
  br i1 %i.pn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1019 = icmp eq i64 %i.on, %n.vec1003
  br i1 %cmp.n1019, label %._crit_edge771, label %.lr.ph770.preheader

.lr.ph770.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv862.ph = phi i64 [ %i.oi, %iter.check ], [ %i.pf, %vec.epilog.middle.block ], [ %i.op, %vec.epilog.iter.check ]
  br label %.lr.ph770

.lr.ph770:                                        ; preds = %.lr.ph770.preheader, %.lr.ph770
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph770 ], [ %indvars.iv862.ph, %.lr.ph770.preheader ] ; 6 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv862
  store double %i.nw, ptr %i.po, align 8, !tbaa !33
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv862
  store double %i.ob, ptr %i.pp, align 8, !tbaa !33
  %i.pq = trunc nsw i64 %indvars.iv862 to i32
  %i.pr = sub nsw i32 %i.pq, %i.mf
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv862
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !31
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv862
  store i32 %i.nl, ptr %i.pt, align 4, !tbaa !31
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %lftr.wideiv865 = trunc i64 %indvars.iv.next863 to i32
  %exitcond866.not = icmp eq i32 %i.oj, %lftr.wideiv865
  br i1 %exitcond866.not, label %._crit_edge771, label %.lr.ph770, !llvm.loop !14

._crit_edge771:                                   ; preds = %.lr.ph770, %middle.block, %vec.epilog.middle.block, %bb.az
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %exitcond871.not = icmp eq i64 %indvars.iv.next868, %wide.trip.count870
  br i1 %exitcond871.not, label %._crit_edge776, label %bb.az, !llvm.loop !15

._crit_edge776:                                   ; preds = %._crit_edge771, %bb.ay
  %i.pu = load i32, ptr %i.k, align 4, !tbaa !31
  %i.pv = load i32, ptr %15, align 4, !tbaa !31
  %i.pw = add nsw i32 %i.pv, %i.pu
  store i32 %i.pw, ptr %15, align 4, !tbaa !31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ao, %bb.as, %bb.at, %bb.ap, %._crit_edge776
  %.3607 = phi i32 [ %spec.select713, %bb.ap ], [ %i.lx, %._crit_edge776 ], [ %spec.select713, %bb.ao ], [ %i.kw, %bb.as ], [ %.1605782, %bb.at ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.ap ], [ %i.md, %._crit_edge776 ], [ %.2.mux, %bb.ao ], [ %i.kx, %bb.as ], [ %.1599783, %bb.at ] ; 2 uses
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1 ; 2 uses
  %exitcond876.not = icmp eq i64 %indvars.iv.next873, %wide.trip.count875
  br i1 %exitcond876.not, label %._crit_edge786.loopexit, label %bb.am, !llvm.loop !16

._crit_edge786.loopexit:                          ; preds = %bb.ba
  %i.px = xor i32 %.3607, -1
  br label %._crit_edge786

._crit_edge786:                                   ; preds = %._crit_edge786.loopexit, %bb.al
  %.1605.lcssa = phi i32 [ -1, %bb.al ], [ %i.px, %._crit_edge786.loopexit ]
  %.1599.lcssa = phi i32 [ 0, %bb.al ], [ %.3, %._crit_edge786.loopexit ]
  br i1 %i.eq, label %bb.bb, label %.thread731

bb.bb:                                            ; preds = %._crit_edge786
  %i.py = load i32, ptr %5, align 4, !tbaa !31
  %i.pz = add i32 %i.py, %.1605.lcssa             ; 5 uses
  %i.qa = load i32, ptr %6, align 4, !tbaa !31
  %i.qb = sub nsw i32 %.1599.lcssa, %i.qa         ; 6 uses
  %i.qc = icmp sgt i32 %i.pz, 0
  br i1 %i.qc, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.k, align 4, !tbaa !31
  %i.qd = load i32, ptr %15, align 4, !tbaa !31   ; 4 uses
  %.not685790 = icmp slt i32 %i.qd, 1
  br i1 %.not685790, label %._crit_edge795, label %.lr.ph794.preheader

.lr.ph794.preheader:                              ; preds = %bb.bc
  %i.qe = zext nneg i32 %i.qd to i64              ; 2 uses
  %xtraiter1082 = and i64 %i.qe, 1
  %i.qf = icmp eq i32 %i.qd, 1
  br i1 %i.qf, label %.lr.ph794.epil.preheader, label %.lr.ph794.preheader.new

.lr.ph794.preheader.new:                          ; preds = %.lr.ph794.preheader
  %unroll_iter1088 = and i64 %i.qe, 2147483646
  br label %.lr.ph794

.lr.ph794:                                        ; preds = %bb.bh, %.lr.ph794.preheader.new
  %indvars.iv877 = phi i64 [ 1, %.lr.ph794.preheader.new ], [ %indvars.iv.next878.1, %bb.bh ] ; 9 uses
  %.0618792 = phi i32 [ %i.pz, %.lr.ph794.preheader.new ], [ %.1619.1, %bb.bh ] ; 3 uses
  %i.qg = phi i32 [ 0, %.lr.ph794.preheader.new ], [ %i.rq, %bb.bh ] ; 2 uses
  %niter1089 = phi i64 [ 0, %.lr.ph794.preheader.new ], [ %niter1089.next.1, %bb.bh ]
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv877
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !33 ; 2 uses
  %i.qj = fcmp ole double %i.qi, %.1603
  %i.qk = icmp sgt i32 %.0618792, 0
  %or.cond3 = select i1 %i.qj, i1 %i.qk, i1 false
  br i1 %or.cond3, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph794
  %i.ql = add nsw i32 %.0618792, -1
  br label %.lr.ph794.1

bb.be:                                            ; preds = %.lr.ph794
  %i.qm = add nsw i32 %i.qg, 1                    ; 3 uses
  store i32 %i.qm, ptr %i.k, align 4, !tbaa !31
  %i.qn = sext i32 %i.qm to i64                   ; 4 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.qn
  store double %i.qi, ptr %i.qo, align 8, !tbaa !33
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv877
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !33
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.qn
  store double %i.qq, ptr %i.qr, align 8, !tbaa !33
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv877
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !31
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.qn
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !31
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv877
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !31
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.qn
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !31
  br label %.lr.ph794.1

.lr.ph794.1:                                      ; preds = %bb.bd, %bb.be
  %i.qy = phi i32 [ %i.qg, %bb.bd ], [ %i.qm, %bb.be ] ; 2 uses
  %.1619 = phi i32 [ %i.ql, %bb.bd ], [ %.0618792, %bb.be ] ; 3 uses
  %i.qz = getelementptr [8 x i8], ptr %16, i64 %indvars.iv877
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !33 ; 2 uses
  %i.rb = fcmp ole double %i.ra, %.1603
  %i.rc = icmp sgt i32 %.1619, 0
  %or.cond3.1 = select i1 %i.rb, i1 %i.rc, i1 false
  br i1 %or.cond3.1, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph794.1
  %i.rd = add nsw i32 %i.qy, 1                    ; 3 uses
  store i32 %i.rd, ptr %i.k, align 4, !tbaa !31
  %i.re = sext i32 %i.rd to i64                   ; 4 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.re
  store double %i.ra, ptr %i.rf, align 8, !tbaa !33
  %i.rg = getelementptr [8 x i8], ptr %17, i64 %indvars.iv877
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !33
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.re
  store double %i.rh, ptr %i.ri, align 8, !tbaa !33
  %i.rj = getelementptr [4 x i8], ptr %21, i64 %indvars.iv877
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !31
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.re
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !31
  %i.rm = getelementptr [4 x i8], ptr %20, i64 %indvars.iv877
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !31
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.re
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !31
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph794.1
  %i.rp = add nsw i32 %.1619, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.rq = phi i32 [ %i.qy, %bb.bg ], [ %i.rd, %bb.bf ] ; 3 uses
  %.1619.1 = phi i32 [ %i.rp, %bb.bg ], [ %.1619, %bb.bf ] ; 3 uses
  %indvars.iv.next878.1 = add nuw nsw i64 %indvars.iv877, 2 ; 2 uses
  %niter1089.next.1 = add i64 %niter1089, 2       ; 2 uses
  %niter1089.ncmp.1 = icmp eq i64 %niter1089.next.1, %unroll_iter1088
  br i1 %niter1089.ncmp.1, label %._crit_edge795.loopexit.unr-lcssa, label %.lr.ph794, !llvm.loop !17
end_hunk_0
