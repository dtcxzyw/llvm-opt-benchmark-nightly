Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlahqr?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dlahqr_:bb.a
  %i.hx = select <2 x i1> %i.hw, <2 x double> %i.hv, <2 x double> %i.ht ; 3 uses
  %i.hy = fcmp ole <2 x double> %i.hv, %i.ht
  %i.hz = select <2 x i1> %i.hy, <2 x double> %i.hv, <2 x double> %i.ht
  %i.ia = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = fadd <2 x double> %i.ia, %i.ib
  %i.id = fdiv <2 x double> %i.hx, %i.ic
  %i.ie = fmul <2 x double> %i.hz, %i.id          ; 2 uses
  %i.if = extractelement <2 x double> %i.ie, i64 0
  %i.ig = fmul double %i.ci, %i.if                ; 2 uses
  %i.ih = fcmp oge double %i.cm, %i.ig
  %i.ii = select i1 %i.ih, double %i.cm, double %i.ig
  %i.ij = extractelement <2 x double> %i.ie, i64 1
  %i.ik = fcmp ugt double %i.ij, %i.ii
  br i1 %i.ik, label %bb.p, label %._crit_edge818

bb.p:                                             ; preds = %bb.n, %bb.o
  %.not784.not = icmp sgt i64 %indvars.iv.next881, %i.fm
  br i1 %.not784.not, label %.lr.ph817, label %._crit_edge818, !llvm.loop !15

._crit_edge818:                                   ; preds = %.lr.ph817, %bb.o, %bb.p, %.preheader805
  %.0759.lcssa = phi i32 [ %.0765863, %.preheader805 ], [ %.0758855, %bb.p ], [ %indvars882, %bb.o ], [ %indvars882, %.lr.ph817 ] ; 17 uses
  %i.il = load i32, ptr %3, align 4, !tbaa !8
  %i.im = icmp sgt i32 %.0759.lcssa, %i.il
  br i1 %i.im, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge818
  %i.in = add nsw i32 %.0759.lcssa, -1
  %i.io = mul nsw i32 %i.in, %i.j
  %i.ip = add nsw i32 %i.io, %.0759.lcssa
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iq
  store double 0.000000e+00, ptr %i.ir, align 8, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge818
  %.not787 = icmp slt i32 %.0759.lcssa, %i.ej
  br i1 %.not787, label %bb.s, label %bb.am

bb.s:                                             ; preds = %bb.r
  %i.is = load i32, ptr %0, align 4, !tbaa !8
  %.not788 = icmp eq i32 %i.is, 0                 ; 2 uses
  %spec.select = select i1 %.not788, i32 %.0759.lcssa, i32 %.2755856 ; 7 uses
  %spec.select802 = select i1 %.not788, i32 %.0765863, i32 %.2857 ; 5 uses
  switch i32 %.0746858, label %bb.v [
    i32 10, label %bb.t
    i32 20, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.it = add nsw i32 %.0759.lcssa, 1             ; 2 uses
  %i.iu = mul nsw i32 %.0759.lcssa, %i.j          ; 2 uses
  %i.iv = add nsw i32 %i.it, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9 ; 3 uses
  %i.iz = fcmp oge double %i.iy, 0.000000e+00
  %i.ja = fneg double %i.iy
  %i.jb = select i1 %i.iz, double %i.iy, double %i.ja
  %i.jc = add nsw i32 %.0759.lcssa, 2
  %i.jd = mul nsw i32 %i.it, %i.j
  %i.je = add nsw i32 %i.jc, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !9 ; 3 uses
  %i.ji = fcmp oge double %i.jh, 0.000000e+00
  %i.jj = fneg double %i.jh
  %i.jk = select i1 %i.ji, double %i.jh, double %i.jj
  %i.jl = fadd double %i.jb, %i.jk                ; 3 uses
  %i.jm = add nsw i32 %i.iu, %.0759.lcssa
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jn
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9
  %i.jq = call double @llvm.fmuladd.f64(double %i.jl, double 7.500000e-01, double %i.jp) ; 2 uses
  %i.jr = fmul double %i.jl, -4.375000e-01
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.js = load double, ptr %i.en, align 8, !tbaa !9 ; 3 uses
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.js
  %i.jv = select i1 %i.jt, double %i.js, double %i.ju
  %i.jw = load double, ptr %i.es, align 8, !tbaa !9 ; 3 uses
  %i.jx = fcmp oge double %i.jw, 0.000000e+00
  %i.jy = fneg double %i.jw
  %i.jz = select i1 %i.jx, double %i.jw, double %i.jy
  %i.ka = fadd double %i.jv, %i.jz                ; 3 uses
  %i.kb = load double, ptr %i.ev, align 8, !tbaa !9
  %i.kc = call double @llvm.fmuladd.f64(double %i.ka, double 7.500000e-01, double %i.kb) ; 2 uses
  %i.kd = fmul double %i.ka, -4.375000e-01
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ke = load double, ptr %i.ey, align 8, !tbaa !9
  %i.kf = load double, ptr %i.en, align 8, !tbaa !9
  %i.kg = load double, ptr %i.fc, align 8, !tbaa !9
  %i.kh = load double, ptr %i.ff, align 8, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.0750 = phi double [ %i.jq, %bb.t ], [ %i.kc, %bb.u ], [ %i.ke, %bb.v ] ; 4 uses
  %.0749 = phi double [ %i.jr, %bb.t ], [ %i.kd, %bb.u ], [ %i.kg, %bb.v ] ; 4 uses
  %.0748 = phi double [ %i.jl, %bb.t ], [ %i.ka, %bb.u ], [ %i.kf, %bb.v ] ; 3 uses
  %.0747 = phi double [ %i.jq, %bb.t ], [ %i.kc, %bb.u ], [ %i.kh, %bb.v ] ; 4 uses
  %i.ki = fcmp oge double %.0750, 0.000000e+00
  %i.kj = fneg double %.0750
  %i.kk = select i1 %i.ki, double %.0750, double %i.kj
  %i.kl = fcmp oge double %.0749, 0.000000e+00
  %i.km = fneg double %.0749
  %i.kn = select i1 %i.kl, double %.0749, double %i.km
  %i.ko = fadd double %i.kk, %i.kn
  %i.kp = fcmp oge double %.0748, 0.000000e+00
  %i.kq = fneg double %.0748                      ; 2 uses
  %i.kr = select i1 %i.kp, double %.0748, double %i.kq
  %i.ks = fadd double %i.ko, %i.kr
  %i.kt = fcmp oge double %.0747, 0.000000e+00
  %i.ku = fneg double %.0747
  %i.kv = select i1 %i.kt, double %.0747, double %i.ku
  %i.kw = fadd double %i.ks, %i.kv                ; 7 uses
  %i.kx = fcmp oeq double %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ky = insertelement <2 x double> poison, double %.0750, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %.0747, i64 1
  %i.la = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fdiv <2 x double> %i.kz, %i.lb          ; 2 uses
  %i.ld = fdiv double %.0749, %i.kw
  %i.le = extractelement <2 x double> %i.lc, i64 0 ; 2 uses
  %i.lf = extractelement <2 x double> %i.lc, i64 1 ; 4 uses
  %i.lg = fadd double %i.le, %i.lf
  %i.lh = fmul double %i.lg, 5.000000e-01         ; 5 uses
  %i.li = fsub double %i.le, %i.lh
  %i.lj = fsub double %i.lf, %i.lh
  %i.lk = fdiv double %i.kq, %i.kw
  %i.ll = fmul double %i.ld, %i.lk
  %i.lm = call double @llvm.fmuladd.f64(double %i.li, double %i.lj, double %i.ll) ; 3 uses
  %i.ln = fcmp oge double %i.lm, 0.000000e+00     ; 2 uses
  %i.lo = fneg double %i.lm
  %i.lp = select i1 %i.ln, double %i.lm, double %i.lo
  %i.lq = call double @sqrt(double noundef %i.lp) #5 ; 3 uses
  br i1 %i.ln, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lr = fmul double %i.kw, %i.lh
  %i.ls = fmul double %i.kw, %i.lq                ; 2 uses
  %i.lt = fneg double %i.ls
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.lu = fadd double %i.lh, %i.lq                ; 2 uses
  %i.lv = fsub double %i.lh, %i.lq                ; 2 uses
  %i.lw = fsub double %i.lu, %i.lf
  %i.lx = call double @llvm.fabs.f64(double %i.lw)
  %i.ly = fsub double %i.lv, %i.lf
  %i.lz = call double @llvm.fabs.f64(double %i.ly)
  %i.ma = fcmp ugt double %i.lx, %i.lz
  %. = select i1 %i.ma, double %i.lv, double %i.lu
  %.0 = fmul double %i.kw, %.
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.y, %bb.z
  %.0743 = phi double [ 0.000000e+00, %bb.z ], [ %i.ls, %bb.y ], [ 0.000000e+00, %bb.w ]
  %.0742 = phi double [ 0.000000e+00, %bb.z ], [ %i.lt, %bb.y ], [ 0.000000e+00, %bb.w ] ; 4 uses
  %.1 = phi double [ %.0, %bb.z ], [ %i.lr, %bb.y ], [ 0.000000e+00, %bb.w ] ; 3 uses
  %i.mb = fcmp oge double %.0742, 0.000000e+00
  %i.mc = fneg double %.0742
  %i.md = select i1 %i.mb, double %.0742, double %i.mc
  %i.me = fneg double %.0743
  %i.mf = sext i32 %.0759.lcssa to i64            ; 2 uses
  %.not789984 = icmp slt i32 %i.eo, %.0759.lcssa
  br i1 %.not789984, label %._crit_edge989, label %.lr.ph988

bb.ab:                                            ; preds = %bb.ac
  %indvars886 = trunc i64 %indvars.iv.next884 to i32 ; 2 uses
  %.not789.not = icmp sgt i64 %indvars.iv883985, %i.mf
  br i1 %.not789.not, label %.lr.ph988, label %._crit_edge989.loopexit, !llvm.loop !16

.lr.ph988:                                        ; preds = %bb.aa, %bb.ab
  %indvars886986 = phi i32 [ %indvars886, %bb.ab ], [ %i.eo, %bb.aa ] ; 2 uses
  %indvars.iv883985 = phi i64 [ %indvars.iv.next884, %bb.ab ], [ %i.fh, %bb.aa ] ; 9 uses
  %i.mg = add nsw i64 %indvars.iv883985, 1        ; 3 uses
  %i.mh = add nsw i32 %indvars886986, 1
  %i.mi = mul nsw i64 %indvars.iv883985, %i.cx    ; 2 uses
  %i.mj = getelementptr [8 x i8], ptr %i.l, i64 %i.mg
  %i.mk = getelementptr [8 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !9 ; 4 uses
  %i.mm = getelementptr [8 x i8], ptr %i.l, i64 %i.mi
  %i.mn = getelementptr [8 x i8], ptr %i.mm, i64 %indvars.iv883985
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !9 ; 5 uses
  %i.mp = fsub double %i.mo, %.1                  ; 5 uses
  %i.mq = fcmp oge double %i.mp, 0.000000e+00
  %i.mr = fneg double %i.mp
  %i.ms = select i1 %i.mq, double %i.mp, double %i.mr
  %i.mt = fadd double %i.md, %i.ms
  %i.mu = fcmp oge double %i.ml, 0.000000e+00
  %i.mv = fneg double %i.ml
  %i.mw = select i1 %i.mu, double %i.ml, double %i.mv
  %i.mx = fadd double %i.mw, %i.mt                ; 3 uses
  %i.my = mul nsw i64 %i.mg, %i.cx                ; 2 uses
  %i.mz = mul nsw i32 %i.mh, %i.j
  %i.na = getelementptr [8 x i8], ptr %i.l, i64 %i.my
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %indvars.iv883985
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !9
  %i.nd = fdiv double %i.mp, %i.mx
  %i.ne = fmul double %i.mp, %i.nd
  %i.nf = fdiv double %.0742, %i.mx
  %i.ng = sext i32 %i.mz to i64
  %i.nh = getelementptr [8 x i8], ptr %i.l, i64 %i.mg
  %i.ni = getelementptr [8 x i8], ptr %i.nh, i64 %i.ng
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !9 ; 4 uses
  %i.nk = fadd double %i.mo, %i.nj
  %i.nl = fsub double %i.nk, %.1
  %i.nm = fsub double %i.nl, %.1
  %i.nn = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv883985
  %i.no = getelementptr i8, ptr %i.nn, i64 16
  %i.np = getelementptr [8 x i8], ptr %i.no, i64 %i.my
  %i.nq = load double, ptr %i.np, align 8, !tbaa !9
  %14 = fdiv double %i.ml, %i.mx                  ; 2 uses
  %15 = call double @llvm.fmuladd.f64(double %14, double %i.nc, double %i.ne)
  %16 = call double @llvm.fmuladd.f64(double %i.me, double %i.nf, double %15) ; 4 uses
  %i.nr = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.ns = insertelement <2 x double> %i.nr, double %i.nq, i64 1
  %i.nt = insertelement <2 x double> poison, double %14, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = fmul <2 x double> %i.ns, %i.nu          ; 3 uses
  %17 = fcmp oge double %16, 0.000000e+00
  %18 = fneg double %16
  %19 = select i1 %17, double %16, double %18
  %i.nw = extractelement <2 x double> %i.nv, i64 0 ; 3 uses
  %i.nx = fcmp oge double %i.nw, 0.000000e+00
  %i.ny = fneg double %i.nw
  %i.nz = select i1 %i.nx, double %i.nw, double %i.ny
  %i.oa = fadd double %i.nz, %19
  %i.ob = extractelement <2 x double> %i.nv, i64 1 ; 3 uses
  %i.oc = fcmp oge double %i.ob, 0.000000e+00
  %i.od = fneg double %i.ob
  %i.oe = select i1 %i.oc, double %i.ob, double %i.od
  %i.of = fadd double %i.oe, %i.oa                ; 2 uses
  %i.og = fdiv double %16, %i.of                  ; 5 uses
  %i.oh = insertelement <2 x double> poison, double %i.of, i64 0
  %i.oi = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = fdiv <2 x double> %i.nv, %i.oi          ; 5 uses
  %i.ok = icmp eq i64 %indvars.iv883985, %i.mf
  br i1 %i.ok, label %._crit_edge989.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph988
  %indvars.iv.next884 = add nsw i64 %indvars.iv883985, -1 ; 4 uses
  %i.ol = mul nsw i64 %indvars.iv.next884, %i.cx  ; 2 uses
  %i.om = getelementptr [8 x i8], ptr %i.l, i64 %i.ol
  %i.on = getelementptr [8 x i8], ptr %i.om, i64 %indvars.iv883985
  %i.oo = load double, ptr %i.on, align 8, !tbaa !9 ; 3 uses
  %i.op = fcmp oge double %i.oo, 0.000000e+00
  %i.oq = fneg double %i.oo
  %i.or = select i1 %i.op, double %i.oo, double %i.oq
  %i.os = fcmp oge <2 x double> %i.oj, zeroinitializer
  %i.ot = fneg <2 x double> %i.oj
  %i.ou = select <2 x i1> %i.os, <2 x double> %i.oj, <2 x double> %i.ot ; 2 uses
  %shift1144 = shufflevector <2 x double> %i.ou, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1145 = fadd <2 x double> %i.ou, %shift1144
  %i.ov = extractelement <2 x double> %foldExtExtBinop1145, i64 0
  %i.ow = fmul double %i.ov, %i.or
  %i.ox = fcmp oge double %i.og, 0.000000e+00
  %i.oy = fneg double %i.og
  %i.oz = select i1 %i.ox, double %i.og, double %i.oy
  %i.pa = fmul double %i.ci, %i.oz
  %i.pb = getelementptr [8 x i8], ptr %i.l, i64 %i.ol
  %i.pc = getelementptr [8 x i8], ptr %i.pb, i64 %indvars.iv.next884
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !9 ; 3 uses
  %i.pe = fcmp oge double %i.pd, 0.000000e+00
  %i.pf = fneg double %i.pd
  %i.pg = select i1 %i.pe, double %i.pd, double %i.pf
  %i.ph = fcmp oge double %i.mo, 0.000000e+00
  %i.pi = fneg double %i.mo
  %i.pj = select i1 %i.ph, double %i.mo, double %i.pi
  %i.pk = fadd double %i.pj, %i.pg
  %i.pl = fcmp oge double %i.nj, 0.000000e+00
  %i.pm = fneg double %i.nj
  %i.pn = select i1 %i.pl, double %i.nj, double %i.pm
  %i.po = fadd double %i.pn, %i.pk
  %i.pp = fmul double %i.pa, %i.po
  %i.pq = fcmp ugt double %i.ow, %i.pp
  br i1 %i.pq, label %bb.ab, label %._crit_edge990, !llvm.loop !16

._crit_edge990:                                   ; preds = %bb.ac
  store double %i.og, ptr %i.b, align 16, !tbaa !9
  store <2 x double> %i.oj, ptr %i.cv, align 8, !tbaa !9
  br label %._crit_edge989, !llvm.loop !16

._crit_edge989.loopexit:                          ; preds = %bb.ab, %.lr.ph988
  %.0757.lcssa.ph = phi i32 [ %.0759.lcssa, %.lr.ph988 ], [ %indvars886, %bb.ab ]
  store double %i.og, ptr %i.b, align 16, !tbaa !9
  store <2 x double> %i.oj, ptr %i.cv, align 8, !tbaa !9
  br label %._crit_edge989

._crit_edge989:                                   ; preds = %._crit_edge989.loopexit, %._crit_edge990, %bb.aa
  %.0757.lcssa = phi i32 [ %i.eo, %bb.aa ], [ %indvars886986, %._crit_edge990 ], [ %.0757.lcssa.ph, %._crit_edge989.loopexit ] ; 7 uses
  %.not790.not848 = icmp slt i32 %.0757.lcssa, %.0765863
  br i1 %.not790.not848, label %.lr.ph852, label %._crit_edge853

.lr.ph852:                                        ; preds = %._crit_edge989
  %i.pr = icmp sgt i32 %.0757.lcssa, %.0759.lcssa
  %.not792826 = icmp sgt i32 %spec.select, %.0765863
  %i.ps = sext i32 %.0757.lcssa to i64            ; 15 uses
  %i.pt = add i32 %spec.select802, 1              ; 4 uses
  %i.pu = sext i32 %spec.select to i64            ; 10 uses
  %i.pv = sext i32 %spec.select802 to i64         ; 2 uses
  %i.pw = mul i64 %i.da, %i.ps
  %i.px = add nsw i64 %i.ps, 1
  %i.py = mul i64 %i.dc, %i.px
  %i.pz = add nsw i64 %i.ps, 2
  %i.qa = mul i64 %i.dd, %i.pz
  %i.qb = mul i64 %i.df, %i.ps
  %i.qc = shl nsw i64 %i.pu, 3                    ; 3 uses
  %i.qd = mul nsw i64 %i.cx, %i.ps
  %i.qe = add i64 %i.qd, %i.k
  %i.qf = shl i64 %i.qe, 3
  %i.qg = add i32 %.0757.lcssa, 3
  %i.qh = add nsw i64 %i.ps, 1
  %i.qi = mul i64 %i.dh, %i.qh                    ; 2 uses
  %i.qj = add nsw i64 %i.ps, 2
  %i.qk = mul i64 %i.di, %i.qj                    ; 2 uses
  %i.ql = mul i64 %i.dk, %i.ps
  %i.qm = add nsw i64 %i.ps, 1
  %i.qn = mul i64 %i.dm, %i.qm
  %i.qo = mul i64 %i.do, %i.ps
  %i.qp = shl nsw i64 %i.pu, 3                    ; 4 uses
  %i.qq = getelementptr i8, ptr %scevgep1100, i64 %i.qo
  %scevgep1101 = getelementptr i8, ptr %i.qq, i64 %i.qp
  %i.qr = shl nsw i64 %i.ps, 3                    ; 2 uses
  %i.qs = xor i32 %.0757.lcssa, -1
  %i.qt = add i32 %.0765863, %i.qs
  %i.qu = zext i32 %i.qt to i64
  %i.qv = shl nuw nsw i64 %i.qu, 3                ; 2 uses
  %i.qw = add nsw i64 %i.qr, %i.qv
  %i.qx = mul i64 %i.qw, %i.cx
  %i.qy = sub i32 %.0765863, %spec.select
  %i.qz = zext i32 %i.qy to i64
  %i.ra = shl nuw nsw i64 %i.qz, 3                ; 2 uses
  %i.rb = getelementptr i8, ptr %scevgep1102, i64 %i.qx
  %i.rc = getelementptr i8, ptr %i.rb, i64 %i.qp
  %scevgep1103 = getelementptr i8, ptr %i.rc, i64 %i.ra
  %i.rd = add nsw i64 %i.ps, 1
  %i.re = mul i64 %i.dq, %i.rd
  %i.rf = getelementptr i8, ptr %scevgep1104, i64 %i.re
  %scevgep1105 = getelementptr i8, ptr %i.rf, i64 %i.qp
  %i.rg = add nsw i64 %i.qr, 8
  %i.rh = add nsw i64 %i.rg, %i.qv
  %i.ri = mul i64 %i.rh, %i.cx
  %i.rj = getelementptr i8, ptr %scevgep1106, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 %i.qp
  %scevgep1107 = getelementptr i8, ptr %i.rk, i64 %i.ra
  %i.rl = shl nsw i64 %i.ps, 4                    ; 2 uses
  %i.rm = add i32 %spec.select802, 1
  %i.rn = sub i32 %i.rm, %.0757.lcssa             ; 2 uses
  %i.ro = sub i32 %spec.select802, %.0757.lcssa   ; 3 uses
  %i.rp = getelementptr i8, ptr %5, i64 %i.rl
  %i.rq = getelementptr i8, ptr %i.rp, i64 -8
  %i.rr = getelementptr i8, ptr %5, i64 %i.rl
  %i.rs = getelementptr i8, ptr %i.rr, i64 -16
  %i.rt = getelementptr i8, ptr %i.ds, i64 %i.ql
  %i.ru = getelementptr i8, ptr %i.du, i64 %i.qn
  %i.rv = getelementptr i8, ptr %i.dv, i64 %i.qb
  %i.rw = getelementptr i8, ptr %i.rv, i64 %i.qc
  %i.rx = getelementptr i8, ptr %5, i64 %i.qf
  %i.ry = getelementptr i8, ptr %i.rx, i64 8
  %i.rz = getelementptr i8, ptr %i.dw, i64 %i.qi
  %i.sa = getelementptr i8, ptr %i.rz, i64 %i.qc
  %i.sb = getelementptr i8, ptr %i.dy, i64 %i.qi
  %i.sc = getelementptr i8, ptr %i.dz, i64 %i.qk
  %i.sd = getelementptr i8, ptr %i.sc, i64 %i.qc
  %i.se = getelementptr i8, ptr %i.eb, i64 %i.qk
  %i.sf = getelementptr i8, ptr %i.ed, i64 %i.pw
  %i.sg = getelementptr i8, ptr %i.ef, i64 %i.py
  %i.sh = getelementptr i8, ptr %i.eh, i64 %i.qa
  %i.si = sub i32 %.0765863, %spec.select         ; 2 uses
  %i.sj = zext i32 %i.si to i64
  %i.sk = add nuw nsw i64 %i.sj, 1                ; 2 uses
  %min.iters.check1113 = icmp ult i32 %i.si, 7
  %bound01108 = icmp ult ptr %scevgep1101, %scevgep1107
  %bound11109 = icmp ult ptr %scevgep1105, %scevgep1103
  %found.conflict1110 = and i1 %bound01108, %bound11109
  %i.sl = or i1 %found.conflict1110, %stride.check
  %n.vec1115 = and i64 %i.sk, 8589934584          ; 3 uses
  %i.sm = add nsw i64 %n.vec1115, %i.pu
  %cmp.n1132 = icmp eq i64 %i.sk, %n.vec1115
  %invariant.op = sub i64 1, %i.pu
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph852, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph852 ], [ %indvar.next, %.loopexit ] ; 11 uses
  %indvars.iv887 = phi i64 [ %i.ps, %.lr.ph852 ], [ %indvars.iv.next888, %.loopexit ] ; 38 uses
  %i.sn = trunc i64 %indvar to i32
  %i.so = sub i32 %i.rn, %i.sn                    ; 2 uses
  %i.sp = trunc i64 %indvar to i32                ; 2 uses
  %i.sq = trunc i64 %indvar to i32
  %i.sr = sub i32 %i.rn, %i.sq                    ; 2 uses
  %i.ss = trunc i64 %indvar to i32
  %i.st = sub i32 %i.ro, %i.ss                    ; 2 uses
  %i.su = shl nuw nsw i64 %indvar, 4
  %scevgep1140 = getelementptr i8, ptr %i.rq, i64 %i.su
  %i.sv = shl nuw nsw i64 %indvar, 4
  %scevgep1135 = getelementptr i8, ptr %i.rs, i64 %i.sv
  %i.sw = mul i64 %i.dl, %indvar                  ; 2 uses
  %scevgep1069 = getelementptr i8, ptr %i.rt, i64 %i.sw
  %scevgep1072 = getelementptr i8, ptr %i.ru, i64 %i.sw
  %i.sx = mul i64 %i.dg, %indvar                  ; 6 uses
  %scevgep1022 = getelementptr i8, ptr %i.rw, i64 %i.sx ; 2 uses
  %scevgep1023 = getelementptr i8, ptr %i.ry, i64 %i.sx
  %i.sy = trunc i64 %indvar to i32
  %i.sz = add i32 %i.qg, %i.sy
  %i.ta = call i32 @llvm.smin.i32(i32 %.0765863, i32 %i.sz)
  %i.tb = call i32 @llvm.smax.i32(i32 %i.ta, i32 %spec.select)
  %smax = sext i32 %i.tb to i64
  %i.tc = shl nsw i64 %smax, 3                    ; 3 uses
  %scevgep1024 = getelementptr i8, ptr %scevgep1023, i64 %i.tc ; 2 uses
  %scevgep1025 = getelementptr i8, ptr %i.sa, i64 %i.sx ; 2 uses
  %scevgep1026 = getelementptr i8, ptr %i.sb, i64 %i.sx
  %scevgep1027 = getelementptr i8, ptr %scevgep1026, i64 %i.tc ; 2 uses
  %scevgep1028 = getelementptr i8, ptr %i.sd, i64 %i.sx ; 2 uses
  %scevgep1029 = getelementptr i8, ptr %i.se, i64 %i.sx
  %scevgep1030 = getelementptr i8, ptr %scevgep1029, i64 %i.tc ; 2 uses
  %i.td = mul i64 %i.db, %indvar                  ; 3 uses
  %scevgep994 = getelementptr i8, ptr %i.sf, i64 %i.td
  %scevgep997 = getelementptr i8, ptr %i.sg, i64 %i.td
  %scevgep1000 = getelementptr i8, ptr %i.sh, i64 %i.td
  %indvars924 = trunc i64 %indvars.iv887 to i32   ; 2 uses
  %i.te = trunc i64 %indvars.iv887 to i32
  %i.tf = sub i32 %.0765863, %i.te
end_hunk_0
