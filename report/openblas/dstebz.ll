Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dstebz?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dstebz_:bb.a
  %i.ln = select i1 %i.lm, double %i.ky, double %i.ll ; 2 uses
  %indvars.iv.next904.1 = add nsw i64 %indvars.iv903, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next904.1 to i32
  %exitcond906.not.1 = icmp eq i32 %i.iu, %lftr.wideiv.1
  br i1 %exitcond906.not.1, label %._crit_edge806, label %.lr.ph805, !llvm.loop !11

._crit_edge806:                                   ; preds = %.lr.ph805.prol.loopexit, %.lr.ph805, %bb.ai
  %.1660.lcssa = phi double [ %i.jr, %bb.ai ], [ %.lcssa1031.unr, %.lr.ph805.prol.loopexit ], [ %i.ln, %.lr.ph805 ] ; 2 uses
  %.1657.lcssa = phi double [ %i.jr, %bb.ai ], [ %.lcssa1032.unr, %.lr.ph805.prol.loopexit ], [ %i.lj, %.lr.ph805 ] ; 2 uses
  %.1.lcssa = phi double [ 0.000000e+00, %bb.ai ], [ %.lcssa1033.unr, %.lr.ph805.prol.loopexit ], [ %i.ld, %.lr.ph805 ] ; 2 uses
  %i.lo = sext i32 %i.iu to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !31 ; 2 uses
  %i.lr = fadd double %.1.lcssa, %i.lq            ; 2 uses
  %i.ls = fcmp oge double %.1657.lcssa, %i.lr
  %i.lt = select i1 %i.ls, double %.1657.lcssa, double %i.lr ; 4 uses
  %i.lu = fsub double %i.lq, %.1.lcssa            ; 2 uses
  %i.lv = fcmp ole double %.1660.lcssa, %i.lu
  %i.lw = select i1 %i.lv, double %.1660.lcssa, double %i.lu ; 4 uses
  %i.lx = fcmp oge double %i.lw, 0.000000e+00
  %i.ly = fneg double %i.lw
  %i.lz = select i1 %i.lx, double %i.lw, double %i.ly ; 2 uses
  %i.ma = fcmp oge double %i.lt, 0.000000e+00
  %i.mb = fneg double %i.lt
  %i.mc = select i1 %i.ma, double %i.lt, double %i.mb ; 2 uses
  %i.md = fcmp oge double %i.lz, %i.mc
  %i.me = select i1 %i.md, double %i.lz, double %i.mc
  %i.mf = fmul double %i.me, 2.100000e+00
  %i.mg = fmul double %i.av, %i.mf                ; 2 uses
  %i.mh = sitofp i32 %i.iv to double              ; 2 uses
  %i.mi = fneg double %i.mg
  %i.mj = call double @llvm.fmuladd.f64(double %i.mi, double %i.mh, double %i.lw)
  %i.mk = load double, ptr %i.k, align 8, !tbaa !31 ; 2 uses
  %i.ml = fneg double %i.mk
  %i.mm = call double @llvm.fmuladd.f64(double %i.ml, double 2.100000e+00, double %i.mj) ; 6 uses
  %i.mn = call double @llvm.fmuladd.f64(double %i.mg, double %i.mh, double %i.lt)
  %i.mo = call double @llvm.fmuladd.f64(double %i.mk, double 2.100000e+00, double %i.mn) ; 7 uses
  %i.mp = load double, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.mq = fcmp ugt double %i.mp, 0.000000e+00
  br i1 %i.mq, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge806
  %i.mr = fcmp oge double %i.mm, 0.000000e+00
  %i.ms = fneg double %i.mm
  %i.mt = select i1 %i.mr, double %i.mm, double %i.ms ; 2 uses
  %i.mu = fcmp oge double %i.mo, 0.000000e+00
  %i.mv = fneg double %i.mo
  %i.mw = select i1 %i.mu, double %i.mo, double %i.mv ; 2 uses
  %i.mx = fcmp oge double %i.mt, %i.mw
  %i.my = select i1 %i.mx, double %i.mt, double %i.mw
  %i.mz = fmul double %i.av, %i.my
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge806, %bb.aj
  %storemerge736 = phi double [ %i.mz, %bb.aj ], [ %i.mp, %._crit_edge806 ]
  store double %storemerge736, ptr %i.d, align 8, !tbaa !31
  br i1 %i.ip, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.na = fcmp olt double %i.mo, %.1651
  br i1 %i.na, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.nb = add nsw i32 %i.iv, %.1631827
  %i.nc = add nsw i32 %i.iv, %.1623828
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.nd = fcmp oge double %i.mm, %.1651
  %i.ne = select i1 %i.nd, double %i.mm, double %.1651 ; 2 uses
  %i.nf = fcmp ole double %i.mo, %.1644
  %i.ng = select i1 %i.nf, double %i.mo, double %.1644 ; 2 uses
  %i.nh = fcmp ult double %i.ne, %i.ng
  br i1 %i.nh, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.2661 = phi double [ %i.ne, %bb.an ], [ %i.mm, %bb.ak ] ; 2 uses
  %.2658 = phi double [ %i.ng, %bb.an ], [ %i.mo, %bb.ak ] ; 2 uses
  %i.ni = load i32, ptr %2, align 4, !tbaa !29    ; 3 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr [8 x i8], ptr %i.m, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 8      ; 2 uses
  store double %.2661, ptr %i.nl, align 8, !tbaa !31
  %i.nm = add nsw i32 %i.ni, %i.iv
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr [8 x i8], ptr %i.m, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 8
  store double %.2658, ptr %i.np, align 8, !tbaa !31
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.jp ; 2 uses
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.jp ; 2 uses
  %i.ns = shl i32 %i.iv, 1
  %i.nt = add nsw i32 %i.ni, %i.ns
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr [8 x i8], ptr %i.m, i64 %i.nu
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %i.nx = load i32, ptr %10, align 4, !tbaa !29
  %i.ny = add nsw i32 %i.nx, 1
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nz
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.nz
  call void @dlaebz_(ptr noundef nonnull @c__1, ptr noundef nonnull @c__0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull @c__1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr, ptr noundef nonnull %i.j, ptr noundef nonnull %i.nl, ptr noundef %i.nw, ptr noundef nonnull %i.h, ptr noundef %16, ptr noundef nonnull %i.oa, ptr noundef nonnull %i.ob, ptr noundef nonnull %i.c) #6
  %i.oc = load i32, ptr %16, align 4, !tbaa !29   ; 3 uses
  %i.od = add nsw i32 %i.oc, %.1631827
  %i.oe = load i32, ptr %i.i, align 4, !tbaa !29  ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr [4 x i8], ptr %i.l, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !29
  %i.oj = add nsw i32 %i.oi, %.1623828
  %i.ok = load i32, ptr %10, align 4, !tbaa !29   ; 2 uses
  %i.ol = sub nsw i32 %i.ok, %i.oc                ; 2 uses
  %i.om = fsub double %.2658, %.2661
  %i.on = load double, ptr %i.k, align 8, !tbaa !31 ; 2 uses
  %i.oo = fadd double %i.om, %i.on
  %i.op = call double @log(double noundef %i.oo) #6
  %i.oq = call double @log(double noundef %i.on) #6
  %i.or = fsub double %i.op, %i.oq
  %i.os = fdiv double %i.or, f0x3FE62E42FEFA39EF
  %i.ot = fptosi double %i.os to i32
  %i.ou = add nsw i32 %i.ot, 2
  store i32 %i.ou, ptr %i.e, align 4, !tbaa !29
  %i.ov = load i32, ptr %2, align 4, !tbaa !29    ; 2 uses
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr [8 x i8], ptr %i.m, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.ox, i64 8
  %i.oz = shl i32 %i.oe, 1
  %i.pa = add nsw i32 %i.ov, %i.oz
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr [8 x i8], ptr %i.m, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 8
  %i.pe = load i32, ptr %10, align 4, !tbaa !29
  %i.pf = add nsw i32 %i.pe, 1
  %i.pg = sext i32 %i.pf to i64                   ; 2 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pg
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.pg
  call void @dlaebz_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull @c__1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr, ptr noundef nonnull %i.j, ptr noundef %i.oy, ptr noundef %i.pd, ptr noundef nonnull %i.b, ptr noundef nonnull %16, ptr noundef nonnull %i.ph, ptr noundef nonnull %i.pi, ptr noundef nonnull %i.c) #6
  %i.pj = load i32, ptr %i.b, align 4, !tbaa !29  ; 3 uses
  %.not737815 = icmp slt i32 %i.pj, 1
  br i1 %.not737815, label %._crit_edge820, label %.lr.ph819

.lr.ph819:                                        ; preds = %bb.ao
  %i.pk = load i32, ptr %i.i, align 4, !tbaa !29
  %i.pl = load i32, ptr %i.c, align 4, !tbaa !29
  %i.pm = sub nsw i32 %i.pj, %i.pl
  %i.pn = sub nsw i32 0, %indvars919
  %i.po = add i32 %i.ol, 1
  %i.pp = add i32 %i.ok, 1
  %i.pq = sub i32 %i.pp, %i.oc
  %i.pr = sext i32 %i.pk to i64
  %i.ps = sext i32 %i.pm to i64
  %i.pt = add nuw i32 %i.pj, 1
  %wide.trip.count915 = zext i32 %i.pt to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph819, %._crit_edge814
  %indvars.iv912 = phi i64 [ 1, %.lr.ph819 ], [ %indvars.iv.next913, %._crit_edge814 ] ; 5 uses
  %.1636817 = phi i32 [ %.0635826, %.lr.ph819 ], [ %.2637, %._crit_edge814 ]
  %i.pu = load i32, ptr %2, align 4, !tbaa !29
  %i.pv = sext i32 %i.pu to i64                   ; 2 uses
  %i.pw = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv912
  %i.px = getelementptr [8 x i8], ptr %i.pw, i64 %i.pv
  %i.py = load double, ptr %i.px, align 8, !tbaa !31
  %i.pz = add nsw i64 %indvars.iv912, %i.pr       ; 2 uses
  %i.qa = getelementptr [8 x i8], ptr %i.m, i64 %i.pz
  %i.qb = getelementptr [8 x i8], ptr %i.qa, i64 %i.pv
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !31
  %i.qd = fadd double %i.py, %i.qc
  %i.qe = fmul double %i.qd, 5.000000e-01         ; 3 uses
  %i.qf = icmp sgt i64 %indvars.iv912, %i.ps      ; 2 uses
  %.0669 = select i1 %i.qf, i32 %i.pn, i32 %indvars919 ; 3 uses
  %.2637 = select i1 %i.qf, i32 1, i32 %.1636817  ; 2 uses
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.pz
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !29 ; 3 uses
  %i.qi = add nsw i32 %i.qh, %i.ol
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv912
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !29 ; 2 uses
  %i.ql = add i32 %i.po, %i.qk                    ; 2 uses
  %.not738810 = icmp sgt i32 %i.ql, %i.qi
  br i1 %.not738810, label %._crit_edge814, label %iter.check

iter.check:                                       ; preds = %bb.ap
  %i.qm = sext i32 %i.ql to i64                   ; 5 uses
  %i.qn = add i32 %i.pq, %i.qh
  %i.qo = xor i32 %i.qk, -1
  %i.qp = add i32 %i.qh, %i.qo                    ; 3 uses
  %i.qq = zext i32 %i.qp to i64
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.qp, 3
  br i1 %min.iters.check, label %.lr.ph813.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1018 = icmp ult i32 %i.qp, 15
  br i1 %min.iters.check1018, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qs = and i64 %i.qr, 12
  %n.vec = and i64 %i.qr, 8589934576              ; 4 uses
  %i.qt = add nsw i64 %n.vec, %i.qm
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.qe, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %.0669, i64 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qu = add i64 %index, %i.qm                   ; 2 uses
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qu ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 96
  store <4 x double> %broadcast.splat, ptr %i.qv, align 8, !tbaa !31
  store <4 x double> %broadcast.splat, ptr %i.qw, align 8, !tbaa !31
  store <4 x double> %broadcast.splat, ptr %i.qx, align 8, !tbaa !31
  store <4 x double> %broadcast.splat, ptr %i.qy, align 8, !tbaa !31
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.qu ; 4 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  store <4 x i32> %broadcast.splat1020, ptr %i.qz, align 4, !tbaa !29
  store <4 x i32> %broadcast.splat1020, ptr %18, align 4, !tbaa !29
  store <4 x i32> %broadcast.splat1020, ptr %19, align 4, !tbaa !29
  store <4 x i32> %broadcast.splat1020, ptr %i.ra, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rb = icmp eq i64 %index.next, %n.vec
  br i1 %i.rb, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qr, %n.vec
  br i1 %cmp.n, label %._crit_edge814, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph813.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1021 = and i64 %i.qr, 8589934588          ; 3 uses
  %i.rc = add nsw i64 %n.vec1021, %i.qm
  %broadcast.splatinsert1022 = insertelement <4 x double> poison, double %i.qe, i64 0
  %broadcast.splat1023 = shufflevector <4 x double> %broadcast.splatinsert1022, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1024 = insertelement <4 x i32> poison, i32 %.0669, i64 0
  %broadcast.splat1025 = shufflevector <4 x i32> %broadcast.splatinsert1024, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1026 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1027, %vec.epilog.vector.body ] ; 2 uses
  %i.rd = add i64 %index1026, %i.qm               ; 2 uses
  %i.re = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rd
  store <4 x double> %broadcast.splat1023, ptr %i.re, align 8, !tbaa !31
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.rd
  store <4 x i32> %broadcast.splat1025, ptr %i.rf, align 4, !tbaa !29
  %index.next1027 = add nuw i64 %index1026, 4     ; 2 uses
  %i.rg = icmp eq i64 %index.next1027, %n.vec1021
  br i1 %i.rg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1028 = icmp eq i64 %i.qr, %n.vec1021
  br i1 %cmp.n1028, label %._crit_edge814, label %.lr.ph813.preheader

.lr.ph813.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv907.ph = phi i64 [ %i.qm, %iter.check ], [ %i.qt, %vec.epilog.iter.check ], [ %i.rc, %vec.epilog.middle.block ]
  br label %.lr.ph813

.lr.ph813:                                        ; preds = %.lr.ph813.preheader, %.lr.ph813
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %.lr.ph813 ], [ %indvars.iv907.ph, %.lr.ph813.preheader ] ; 3 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv907
  store double %i.qe, ptr %i.rh, align 8, !tbaa !31
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv907
  store i32 %.0669, ptr %i.ri, align 4, !tbaa !29
  %indvars.iv.next908 = add nsw i64 %indvars.iv907, 1 ; 2 uses
  %lftr.wideiv910 = trunc i64 %indvars.iv.next908 to i32
  %exitcond911.not = icmp eq i32 %i.qn, %lftr.wideiv910
  br i1 %exitcond911.not, label %._crit_edge814, label %.lr.ph813, !llvm.loop !14

._crit_edge814:                                   ; preds = %.lr.ph813, %middle.block, %vec.epilog.middle.block, %bb.ap
  %indvars.iv.next913 = add nuw nsw i64 %indvars.iv912, 1 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next913, %wide.trip.count915
  br i1 %exitcond916.not, label %._crit_edge820, label %bb.ap, !llvm.loop !15

._crit_edge820:                                   ; preds = %._crit_edge814, %bb.ao
  %.1636.lcssa = phi i32 [ %.0635826, %bb.ao ], [ %.2637, %._crit_edge814 ]
  %i.rj = load i32, ptr %i.h, align 4, !tbaa !29
  %i.rk = load i32, ptr %10, align 4, !tbaa !29
  %i.rl = add nsw i32 %i.rk, %i.rj
  store i32 %i.rl, ptr %10, align 4, !tbaa !29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.an, %.thread759, %bb.ah, %._crit_edge820
  %.3638 = phi i32 [ %.0635826, %bb.ah ], [ %.1636.lcssa, %._crit_edge820 ], [ %.0635826, %.thread759 ], [ %.0635826, %bb.am ], [ %.0635826, %bb.an ] ; 2 uses
  %.3633 = phi i32 [ %.2632762769, %bb.ah ], [ %i.od, %._crit_edge820 ], [ %spec.select775, %.thread759 ], [ %i.nb, %bb.am ], [ %.1631827, %bb.an ] ; 2 uses
  %.3625 = phi i32 [ %.2624771, %bb.ah ], [ %i.oj, %._crit_edge820 ], [ %.2624770, %.thread759 ], [ %i.nc, %bb.am ], [ %.1623828, %bb.an ] ; 2 uses
  %indvars.iv.next918 = add nuw nsw i64 %indvars.iv917, 1
  %.not719.not = icmp samesign ult i64 %indvars.iv917, %i.ir
  br i1 %.not719.not, label %bb.af, label %._crit_edge831.loopexit, !llvm.loop !16

._crit_edge831.loopexit:                          ; preds = %bb.aq
  %i.rm = xor i32 %.3633, -1
  %i.rn = icmp ne i32 %.3638, 0
  br label %._crit_edge831

._crit_edge831:                                   ; preds = %._crit_edge831.loopexit, %bb.ae
  %.0635.lcssa = phi i1 [ false, %bb.ae ], [ %i.rn, %._crit_edge831.loopexit ] ; 2 uses
  %.1631.lcssa = phi i32 [ -1, %bb.ae ], [ %i.rm, %._crit_edge831.loopexit ]
  %.1623.lcssa = phi i32 [ 0, %bb.ae ], [ %.3625, %._crit_edge831.loopexit ]
  br i1 %i.cr, label %bb.ar, label %bb.ce

bb.ar:                                            ; preds = %._crit_edge831
  %i.ro = load i32, ptr %5, align 4, !tbaa !29
  %i.rp = add i32 %i.ro, %.1631.lcssa             ; 5 uses
  %i.rq = load i32, ptr %6, align 4, !tbaa !29
  %i.rr = sub nsw i32 %.1623.lcssa, %i.rq         ; 5 uses
  %i.rs = icmp sgt i32 %i.rp, 0
  %i.rt = icmp sgt i32 %i.rr, 0
  %or.cond3 = select i1 %i.rs, i1 true, i1 %i.rt
  br i1 %or.cond3, label %bb.as, label %bb.bg

bb.as:                                            ; preds = %bb.ar
  %i.ru = load i32, ptr %10, align 4, !tbaa !29   ; 4 uses
  %.not720836 = icmp slt i32 %i.ru, 1
  br i1 %.not720836, label %._crit_edge842, label %.lr.ph841.preheader

.lr.ph841.preheader:                              ; preds = %bb.as
  %i.rv = zext nneg i32 %i.ru to i64              ; 2 uses
  %xtraiter1045 = and i64 %i.rv, 1
  %i.rw = icmp eq i32 %i.ru, 1
  br i1 %i.rw, label %.lr.ph841.epil.preheader, label %.lr.ph841.preheader.new

.lr.ph841.preheader.new:                          ; preds = %.lr.ph841.preheader
  %unroll_iter1052 = and i64 %i.rv, 2147483646
  br label %.lr.ph841

.lr.ph841:                                        ; preds = %bb.bb, %.lr.ph841.preheader.new
  %indvars.iv920 = phi i64 [ 1, %.lr.ph841.preheader.new ], [ %indvars.iv.next921.1, %bb.bb ] ; 5 uses
  %.0640839 = phi i32 [ %i.rr, %.lr.ph841.preheader.new ], [ %.1641.1, %bb.bb ] ; 4 uses
  %.0645838 = phi i32 [ %i.rp, %.lr.ph841.preheader.new ], [ %.1646.1, %bb.bb ] ; 4 uses
  %i.rx = phi i32 [ 0, %.lr.ph841.preheader.new ], [ %i.tb, %bb.bb ] ; 3 uses
  %niter1053 = phi i64 [ 0, %.lr.ph841.preheader.new ], [ %niter1053.next.1, %bb.bb ]
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv920
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !31 ; 3 uses
  %i.sa = fcmp ole double %i.rz, %.1629
  %i.sb = icmp sgt i32 %.0645838, 0
  %or.cond5 = select i1 %i.sa, i1 %i.sb, i1 false
  br i1 %or.cond5, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph841
  %i.sc = add nsw i32 %.0645838, -1
  br label %.lr.ph841.1

bb.au:                                            ; preds = %.lr.ph841
  %i.sd = fcmp oge double %i.rz, %.1627
  %i.se = icmp sgt i32 %.0640839, 0
  %or.cond7 = select i1 %i.sd, i1 %i.se, i1 false
  br i1 %or.cond7, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.sf = add nsw i32 %.0640839, -1
  br label %.lr.ph841.1

bb.aw:                                            ; preds = %bb.au
  %i.sg = add nsw i32 %i.rx, 1                    ; 2 uses
  %i.sh = sext i32 %i.sg to i64                   ; 2 uses
  %i.si = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sh
  store double %i.rz, ptr %i.si, align 8, !tbaa !31
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv920
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !29
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.sh
  store i32 %i.sk, ptr %i.sl, align 4, !tbaa !29
  br label %.lr.ph841.1

.lr.ph841.1:                                      ; preds = %bb.at, %bb.aw, %bb.av
  %i.sm = phi i32 [ %i.rx, %bb.at ], [ %i.rx, %bb.av ], [ %i.sg, %bb.aw ] ; 3 uses
  %.1646 = phi i32 [ %i.sc, %bb.at ], [ %.0645838, %bb.av ], [ %.0645838, %bb.aw ] ; 4 uses
  %.1641 = phi i32 [ %.0640839, %bb.at ], [ %i.sf, %bb.av ], [ %.0640839, %bb.aw ] ; 4 uses
  %i.sn = getelementptr [8 x i8], ptr %12, i64 %indvars.iv920
  %i.so = load double, ptr %i.sn, align 8, !tbaa !31 ; 3 uses
  %i.sp = fcmp ole double %i.so, %.1629
  %i.sq = icmp sgt i32 %.1646, 0
  %or.cond5.1 = select i1 %i.sp, i1 %i.sq, i1 false
  br i1 %or.cond5.1, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph841.1
  %i.sr = fcmp oge double %i.so, %.1627
  %i.ss = icmp sgt i32 %.1641, 0
  %or.cond7.1 = select i1 %i.sr, i1 %i.ss, i1 false
  br i1 %or.cond7.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.st = add nsw i32 %i.sm, 1                    ; 2 uses
  %i.su = sext i32 %i.st to i64                   ; 2 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.su
  store double %i.so, ptr %i.sv, align 8, !tbaa !31
  %i.sw = getelementptr [4 x i8], ptr %13, i64 %indvars.iv920
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !29
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.su
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !29
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.sz = add nsw i32 %.1641, -1
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph841.1
  %i.ta = add nsw i32 %.1646, -1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.tb = phi i32 [ %i.sm, %bb.ba ], [ %i.sm, %bb.az ], [ %i.st, %bb.ay ] ; 3 uses
  %.1646.1 = phi i32 [ %i.ta, %bb.ba ], [ %.1646, %bb.az ], [ %.1646, %bb.ay ] ; 3 uses
  %.1641.1 = phi i32 [ %.1641, %bb.ba ], [ %i.sz, %bb.az ], [ %.1641, %bb.ay ] ; 3 uses
  %indvars.iv.next921.1 = add nuw nsw i64 %indvars.iv920, 2 ; 2 uses
  %niter1053.next.1 = add i64 %niter1053, 2       ; 2 uses
  %niter1053.ncmp.1 = icmp eq i64 %niter1053.next.1, %unroll_iter1052
  br i1 %niter1053.ncmp.1, label %._crit_edge842.loopexit.unr-lcssa, label %.lr.ph841, !llvm.loop !17

._crit_edge842.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod1047.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1047.not, label %._crit_edge842, label %.lr.ph841.epil.preheader

.lr.ph841.epil.preheader:                         ; preds = %._crit_edge842.loopexit.unr-lcssa, %.lr.ph841.preheader
  %indvars.iv920.epil.init = phi i64 [ 1, %.lr.ph841.preheader ], [ %indvars.iv.next921.1, %._crit_edge842.loopexit.unr-lcssa ] ; 2 uses
  %.0640839.epil.init = phi i32 [ %i.rr, %.lr.ph841.preheader ], [ %.1641.1, %._crit_edge842.loopexit.unr-lcssa ] ; 4 uses
  %.0645838.epil.init = phi i32 [ %i.rp, %.lr.ph841.preheader ], [ %.1646.1, %._crit_edge842.loopexit.unr-lcssa ] ; 4 uses
end_hunk_0
