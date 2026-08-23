Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlahqr?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dlahqr_:bb.a
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
  %i.my = fdiv double %i.ml, %i.mx                ; 2 uses
  %i.mz = mul nsw i64 %i.mg, %i.cx                ; 2 uses
  %i.na = mul nsw i32 %i.mh, %i.j
  %i.nb = getelementptr [8 x i8], ptr %i.l, i64 %i.mz
  %i.nc = getelementptr [8 x i8], ptr %i.nb, i64 %indvars.iv883985
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !9
  %i.ne = fdiv double %i.mp, %i.mx
  %i.nf = fmul double %i.mp, %i.ne
  %i.ng = call double @llvm.fmuladd.f64(double %i.my, double %i.nd, double %i.nf)
  %i.nh = fdiv double %.0742, %i.mx
  %i.ni = call double @llvm.fmuladd.f64(double %i.me, double %i.nh, double %i.ng) ; 4 uses
  %i.nj = sext i32 %i.na to i64
  %i.nk = getelementptr [8 x i8], ptr %i.l, i64 %i.mg
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !9 ; 4 uses
  %i.nn = fadd double %i.mo, %i.nm
  %i.no = fsub double %i.nn, %.1
  %i.np = fsub double %i.no, %.1
  %i.nq = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv883985
  %i.nr = getelementptr i8, ptr %i.nq, i64 16
  %i.ns = getelementptr [8 x i8], ptr %i.nr, i64 %i.mz
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !9
  %i.nu = fcmp oge double %i.ni, 0.000000e+00
  %i.nv = fneg double %i.ni
  %i.nw = select i1 %i.nu, double %i.ni, double %i.nv
  %i.nx = insertelement <2 x double> poison, double %i.np, i64 0
  %i.ny = insertelement <2 x double> %i.nx, double %i.nt, i64 1
  %i.nz = insertelement <2 x double> poison, double %i.my, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x double> %i.ny, %i.oa          ; 3 uses
  %i.oc = extractelement <2 x double> %i.ob, i64 0 ; 3 uses
  %i.od = fcmp oge double %i.oc, 0.000000e+00
  %i.oe = fneg double %i.oc
  %i.of = select i1 %i.od, double %i.oc, double %i.oe
  %i.og = fadd double %i.of, %i.nw
  %i.oh = extractelement <2 x double> %i.ob, i64 1 ; 3 uses
  %i.oi = fcmp oge double %i.oh, 0.000000e+00
  %i.oj = fneg double %i.oh
  %i.ok = select i1 %i.oi, double %i.oh, double %i.oj
  %i.ol = fadd double %i.ok, %i.og                ; 2 uses
  %i.om = fdiv double %i.ni, %i.ol                ; 5 uses
  %i.on = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> zeroinitializer
  %i.op = fdiv <2 x double> %i.ob, %i.oo          ; 5 uses
  %i.oq = icmp eq i64 %indvars.iv883985, %i.mf
  br i1 %i.oq, label %._crit_edge989.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph988
  %indvars.iv.next884 = add nsw i64 %indvars.iv883985, -1 ; 4 uses
  %i.or = mul nsw i64 %indvars.iv.next884, %i.cx  ; 2 uses
  %i.os = getelementptr [8 x i8], ptr %i.l, i64 %i.or
  %i.ot = getelementptr [8 x i8], ptr %i.os, i64 %indvars.iv883985
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !9 ; 3 uses
  %i.ov = fcmp oge double %i.ou, 0.000000e+00
  %i.ow = fneg double %i.ou
  %i.ox = select i1 %i.ov, double %i.ou, double %i.ow
  %i.oy = fcmp oge <2 x double> %i.op, zeroinitializer
  %i.oz = fneg <2 x double> %i.op
  %i.pa = select <2 x i1> %i.oy, <2 x double> %i.op, <2 x double> %i.oz ; 2 uses
  %shift1144 = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1145 = fadd <2 x double> %i.pa, %shift1144
  %i.pb = extractelement <2 x double> %foldExtExtBinop1145, i64 0
  %i.pc = fmul double %i.pb, %i.ox
  %i.pd = fcmp oge double %i.om, 0.000000e+00
  %i.pe = fneg double %i.om
  %i.pf = select i1 %i.pd, double %i.om, double %i.pe
  %i.pg = fmul double %i.ci, %i.pf
  %i.ph = getelementptr [8 x i8], ptr %i.l, i64 %i.or
  %i.pi = getelementptr [8 x i8], ptr %i.ph, i64 %indvars.iv.next884
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !9 ; 3 uses
  %i.pk = fcmp oge double %i.pj, 0.000000e+00
  %i.pl = fneg double %i.pj
  %i.pm = select i1 %i.pk, double %i.pj, double %i.pl
  %i.pn = fcmp oge double %i.mo, 0.000000e+00
  %i.po = fneg double %i.mo
  %i.pp = select i1 %i.pn, double %i.mo, double %i.po
  %i.pq = fadd double %i.pp, %i.pm
  %i.pr = fcmp oge double %i.nm, 0.000000e+00
  %i.ps = fneg double %i.nm
  %i.pt = select i1 %i.pr, double %i.nm, double %i.ps
  %i.pu = fadd double %i.pt, %i.pq
  %i.pv = fmul double %i.pg, %i.pu
  %i.pw = fcmp ugt double %i.pc, %i.pv
  br i1 %i.pw, label %bb.ab, label %._crit_edge990, !llvm.loop !16

._crit_edge990:                                   ; preds = %bb.ac
  store double %i.om, ptr %i.b, align 16, !tbaa !9
  store <2 x double> %i.op, ptr %i.cv, align 8, !tbaa !9
  br label %._crit_edge989, !llvm.loop !16

._crit_edge989.loopexit:                          ; preds = %bb.ab, %.lr.ph988
  %.0757.lcssa.ph = phi i32 [ %.0759.lcssa, %.lr.ph988 ], [ %indvars886, %bb.ab ]
  store double %i.om, ptr %i.b, align 16, !tbaa !9
  store <2 x double> %i.op, ptr %i.cv, align 8, !tbaa !9
  br label %._crit_edge989

._crit_edge989:                                   ; preds = %._crit_edge989.loopexit, %._crit_edge990, %bb.aa
  %.0757.lcssa = phi i32 [ %i.eo, %bb.aa ], [ %indvars886986, %._crit_edge990 ], [ %.0757.lcssa.ph, %._crit_edge989.loopexit ] ; 7 uses
  %.not790.not848 = icmp slt i32 %.0757.lcssa, %.0765863
  br i1 %.not790.not848, label %.lr.ph852, label %._crit_edge853

.lr.ph852:                                        ; preds = %._crit_edge989
  %i.px = icmp sgt i32 %.0757.lcssa, %.0759.lcssa
  %.not792826 = icmp sgt i32 %spec.select, %.0765863
  %i.py = sext i32 %.0757.lcssa to i64            ; 15 uses
  %i.pz = add i32 %spec.select802, 1              ; 4 uses
  %i.qa = sext i32 %spec.select to i64            ; 10 uses
  %i.qb = sext i32 %spec.select802 to i64         ; 2 uses
  %i.qc = mul i64 %i.da, %i.py
  %i.qd = add nsw i64 %i.py, 1
  %i.qe = mul i64 %i.dc, %i.qd
  %i.qf = add nsw i64 %i.py, 2
  %i.qg = mul i64 %i.dd, %i.qf
  %i.qh = mul i64 %i.df, %i.py
  %i.qi = shl nsw i64 %i.qa, 3                    ; 3 uses
  %i.qj = mul nsw i64 %i.cx, %i.py
  %i.qk = add i64 %i.qj, %i.k
  %i.ql = shl i64 %i.qk, 3
  %i.qm = add i32 %.0757.lcssa, 3
  %i.qn = add nsw i64 %i.py, 1
  %i.qo = mul i64 %i.dh, %i.qn                    ; 2 uses
  %i.qp = add nsw i64 %i.py, 2
  %i.qq = mul i64 %i.di, %i.qp                    ; 2 uses
  %i.qr = mul i64 %i.dk, %i.py
  %i.qs = add nsw i64 %i.py, 1
  %i.qt = mul i64 %i.dm, %i.qs
  %i.qu = mul i64 %i.do, %i.py
  %i.qv = shl nsw i64 %i.qa, 3                    ; 4 uses
  %i.qw = getelementptr i8, ptr %scevgep1100, i64 %i.qu
  %scevgep1101 = getelementptr i8, ptr %i.qw, i64 %i.qv
  %i.qx = shl nsw i64 %i.py, 3                    ; 2 uses
  %i.qy = xor i32 %.0757.lcssa, -1
  %i.qz = add i32 %.0765863, %i.qy
  %i.ra = zext i32 %i.qz to i64
  %i.rb = shl nuw nsw i64 %i.ra, 3                ; 2 uses
  %i.rc = add nsw i64 %i.qx, %i.rb
  %i.rd = mul i64 %i.rc, %i.cx
  %i.re = sub i32 %.0765863, %spec.select
  %i.rf = zext i32 %i.re to i64
  %i.rg = shl nuw nsw i64 %i.rf, 3                ; 2 uses
  %i.rh = getelementptr i8, ptr %scevgep1102, i64 %i.rd
  %i.ri = getelementptr i8, ptr %i.rh, i64 %i.qv
  %scevgep1103 = getelementptr i8, ptr %i.ri, i64 %i.rg
  %i.rj = add nsw i64 %i.py, 1
  %i.rk = mul i64 %i.dq, %i.rj
  %i.rl = getelementptr i8, ptr %scevgep1104, i64 %i.rk
  %scevgep1105 = getelementptr i8, ptr %i.rl, i64 %i.qv
  %i.rm = add nsw i64 %i.qx, 8
  %i.rn = add nsw i64 %i.rm, %i.rb
  %i.ro = mul i64 %i.rn, %i.cx
  %i.rp = getelementptr i8, ptr %scevgep1106, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.rp, i64 %i.qv
  %scevgep1107 = getelementptr i8, ptr %i.rq, i64 %i.rg
  %14 = shl nsw i64 %i.py, 4                      ; 2 uses
  %i.rr = add i32 %spec.select802, 1
  %i.rs = sub i32 %i.rr, %.0757.lcssa             ; 2 uses
  %i.rt = sub i32 %spec.select802, %.0757.lcssa   ; 3 uses
  %15 = getelementptr i8, ptr %5, i64 %14
  %16 = getelementptr i8, ptr %15, i64 -8
  %17 = getelementptr i8, ptr %5, i64 %14
  %18 = getelementptr i8, ptr %17, i64 -16
  %i.ru = getelementptr i8, ptr %i.ds, i64 %i.qr
  %i.rv = getelementptr i8, ptr %i.du, i64 %i.qt
  %i.rw = getelementptr i8, ptr %i.dv, i64 %i.qh
  %i.rx = getelementptr i8, ptr %i.rw, i64 %i.qi
  %i.ry = getelementptr i8, ptr %5, i64 %i.ql
  %i.rz = getelementptr i8, ptr %i.ry, i64 8
  %i.sa = getelementptr i8, ptr %i.dw, i64 %i.qo
  %i.sb = getelementptr i8, ptr %i.sa, i64 %i.qi
  %i.sc = getelementptr i8, ptr %i.dy, i64 %i.qo
  %i.sd = getelementptr i8, ptr %i.dz, i64 %i.qq
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.qi
  %i.sf = getelementptr i8, ptr %i.eb, i64 %i.qq
  %i.sg = getelementptr i8, ptr %i.ed, i64 %i.qc
  %i.sh = getelementptr i8, ptr %i.ef, i64 %i.qe
  %i.si = getelementptr i8, ptr %i.eh, i64 %i.qg
  %i.sj = sub i32 %.0765863, %spec.select         ; 2 uses
  %i.sk = zext i32 %i.sj to i64
  %i.sl = add nuw nsw i64 %i.sk, 1                ; 2 uses
  %min.iters.check1113 = icmp ult i32 %i.sj, 7
  %bound01108 = icmp ult ptr %scevgep1101, %scevgep1107
  %bound11109 = icmp ult ptr %scevgep1105, %scevgep1103
  %found.conflict1110 = and i1 %bound01108, %bound11109
  %i.sm = or i1 %found.conflict1110, %stride.check
  %n.vec1115 = and i64 %i.sl, 8589934584          ; 3 uses
  %i.sn = add nsw i64 %n.vec1115, %i.qa
  %cmp.n1132 = icmp eq i64 %i.sl, %n.vec1115
  %invariant.op = sub i64 1, %i.qa
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph852, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph852 ], [ %indvar.next, %.loopexit ] ; 11 uses
  %indvars.iv887 = phi i64 [ %i.py, %.lr.ph852 ], [ %indvars.iv.next888, %.loopexit ] ; 38 uses
  %i.so = trunc i64 %indvar to i32
  %i.sp = sub i32 %i.rs, %i.so                    ; 2 uses
  %i.sq = trunc i64 %indvar to i32                ; 2 uses
  %i.sr = trunc i64 %indvar to i32
  %i.ss = sub i32 %i.rs, %i.sr                    ; 2 uses
  %i.st = trunc i64 %indvar to i32
  %i.su = sub i32 %i.rt, %i.st                    ; 2 uses
  %i.sv = shl nuw nsw i64 %indvar, 4
  %scevgep1140 = getelementptr i8, ptr %16, i64 %i.sv
  %i.sw = shl nuw nsw i64 %indvar, 4
  %scevgep1135 = getelementptr i8, ptr %18, i64 %i.sw
  %i.sx = mul i64 %i.dl, %indvar                  ; 2 uses
  %scevgep1069 = getelementptr i8, ptr %i.ru, i64 %i.sx
  %scevgep1072 = getelementptr i8, ptr %i.rv, i64 %i.sx
  %i.sy = mul i64 %i.dg, %indvar                  ; 6 uses
  %scevgep1022 = getelementptr i8, ptr %i.rx, i64 %i.sy ; 2 uses
  %scevgep1023 = getelementptr i8, ptr %i.rz, i64 %i.sy
  %i.sz = trunc i64 %indvar to i32
  %i.ta = add i32 %i.qm, %i.sz
  %i.tb = call i32 @llvm.smin.i32(i32 %.0765863, i32 %i.ta)
  %i.tc = call i32 @llvm.smax.i32(i32 %i.tb, i32 %spec.select)
  %smax = sext i32 %i.tc to i64
  %i.td = shl nsw i64 %smax, 3                    ; 3 uses
  %scevgep1024 = getelementptr i8, ptr %scevgep1023, i64 %i.td ; 2 uses
  %scevgep1025 = getelementptr i8, ptr %i.sb, i64 %i.sy ; 2 uses
  %scevgep1026 = getelementptr i8, ptr %i.sc, i64 %i.sy
  %scevgep1027 = getelementptr i8, ptr %scevgep1026, i64 %i.td ; 2 uses
  %scevgep1028 = getelementptr i8, ptr %i.se, i64 %i.sy ; 2 uses
  %scevgep1029 = getelementptr i8, ptr %i.sf, i64 %i.sy
  %scevgep1030 = getelementptr i8, ptr %scevgep1029, i64 %i.td ; 2 uses
  %i.te = mul i64 %i.db, %indvar                  ; 3 uses
  %scevgep994 = getelementptr i8, ptr %i.sg, i64 %i.te
  %scevgep997 = getelementptr i8, ptr %i.sh, i64 %i.te
  %scevgep1000 = getelementptr i8, ptr %i.si, i64 %i.te
  %indvars924 = trunc i64 %indvars.iv887 to i32   ; 2 uses
  %i.tf = trunc i64 %indvars.iv887 to i32
  %i.tg = sub i32 %.0765863, %i.tf
  %i.th = call i32 @llvm.umin.i32(i32 %i.tg, i32 2)
  %i.ti = add nuw nsw i32 %i.th, 1
  store i32 %i.ti, ptr %i.f, align 4, !tbaa !8
  %i.tj = icmp sgt i64 %indvars.iv887, %i.py
  br i1 %i.tj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.tk = add nsw i32 %indvars924, -1
  %i.tl = mul nsw i32 %i.tk, %i.j
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.to = getelementptr [8 x i8], ptr %i.tn, i64 %i.tm ; 2 uses
  call void @dcopy_(ptr noundef nonnull %i.f, ptr noundef %i.to, ptr noundef nonnull @c__1, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1) #5
  call void @dlarfg_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c) #5
  %i.tp = load double, ptr %i.b, align 16, !tbaa !9
  %i.tq = add nsw i64 %indvars.iv887, -1
  %i.tr = mul nsw i64 %i.tq, %i.cx                ; 2 uses
  store double %i.tp, ptr %i.to, align 8, !tbaa !9
  %i.ts = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.tt = getelementptr i8, ptr %i.ts, i64 8
  %i.tu = getelementptr [8 x i8], ptr %i.tt, i64 %i.tr
  store double 0.000000e+00, ptr %i.tu, align 8, !tbaa !9
  %i.tv = icmp slt i64 %indvars.iv887, %i.fj
  br i1 %i.tv, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.tw = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.tx = getelementptr i8, ptr %i.tw, i64 16
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %i.tr
  store double 0.000000e+00, ptr %i.ty, align 8, !tbaa !9
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  call void @dlarfg_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c) #5
  br i1 %i.px, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.tz = load double, ptr %i.c, align 8, !tbaa !9
  %i.ua = fsub double 1.000000e+00, %i.tz
  %i.ub = add nsw i32 %indvars924, -1
  %i.uc = mul nsw i32 %i.ub, %i.j
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.uf = getelementptr [8 x i8], ptr %i.ue, i64 %i.ud ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !9
  %i.uh = fmul double %i.ug, %i.ua
  store double %i.uh, ptr %i.uf, align 8, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ae, %bb.af
  %i.ui = load double, ptr %i.cv, align 8, !tbaa !9 ; 35 uses
  %i.uj = load double, ptr %i.c, align 8, !tbaa !9 ; 36 uses
  %i.uk = fmul double %i.ui, %i.uj                ; 34 uses
  %i.ul = load i32, ptr %i.f, align 4, !tbaa !8
  switch i32 %i.ul, label %.loopexit [
    i32 3, label %bb.aj
    i32 2, label %.preheader804
  ]

.preheader804:                                    ; preds = %bb.ai
  %.not791823 = icmp sgt i64 %indvars.iv887, %i.qb
  br i1 %.not791823, label %.preheader, label %.lver.check

.lver.check:                                      ; preds = %.preheader804
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887 ; 10 uses
  %i.um = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv887
  %i.un = getelementptr i8, ptr %i.um, i64 8      ; 10 uses
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig.preheader

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %xtraiter1155 = and i32 %i.ss, 3                ; 2 uses
  %lcmp.mod1156.not = icmp eq i32 %xtraiter1155, 0
  br i1 %lcmp.mod1156.not, label %.ph.lver.orig.prol.loopexit, label %.ph.lver.orig.prol

.ph.lver.orig.prol:                               ; preds = %.ph.lver.orig.preheader, %.ph.lver.orig.prol
  %indvars.iv889.lver.orig.prol = phi i64 [ %indvars.iv.next890.lver.orig.prol, %.ph.lver.orig.prol ], [ %indvars.iv887, %.ph.lver.orig.preheader ] ; 2 uses
  %prol.iter1157 = phi i32 [ %prol.iter1157.next, %.ph.lver.orig.prol ], [ 0, %.ph.lver.orig.preheader ]
  %i.uo = mul nsw i64 %indvars.iv889.lver.orig.prol, %i.cx ; 2 uses
  %gep.lver.orig.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.uo ; 2 uses
  %i.up = load double, ptr %gep.lver.orig.prol, align 8, !tbaa !9 ; 2 uses
  %i.uq = getelementptr [8 x i8], ptr %i.un, i64 %i.uo ; 2 uses
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !9 ; 2 uses
  %i.us = call double @llvm.fmuladd.f64(double %i.ui, double %i.ur, double %i.up)
  %i.ut = fneg double %i.us                       ; 2 uses
  %i.uu = call double @llvm.fmuladd.f64(double %i.ut, double %i.uj, double %i.up)
  store double %i.uu, ptr %gep.lver.orig.prol, align 8, !tbaa !9
  %i.uv = call double @llvm.fmuladd.f64(double %i.ut, double %i.uk, double %i.ur)
  store double %i.uv, ptr %i.uq, align 8, !tbaa !9
  %indvars.iv.next890.lver.orig.prol = add nsw i64 %indvars.iv889.lver.orig.prol, 1 ; 2 uses
  %prol.iter1157.next = add i32 %prol.iter1157, 1 ; 2 uses
  %prol.iter1157.cmp.not = icmp eq i32 %prol.iter1157.next, %xtraiter1155
  br i1 %prol.iter1157.cmp.not, label %.ph.lver.orig.prol.loopexit, label %.ph.lver.orig.prol, !llvm.loop !17

.ph.lver.orig.prol.loopexit:                      ; preds = %.ph.lver.orig.prol, %.ph.lver.orig.preheader
  %indvars.iv889.lver.orig.unr = phi i64 [ %indvars.iv887, %.ph.lver.orig.preheader ], [ %indvars.iv.next890.lver.orig.prol, %.ph.lver.orig.prol ]
  %i.uw = icmp ult i32 %i.su, 3
  br i1 %i.uw, label %.preheader, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig.prol.loopexit, %.ph.lver.orig
  %indvars.iv889.lver.orig = phi i64 [ %indvars.iv.next890.lver.orig.3, %.ph.lver.orig ], [ %indvars.iv889.lver.orig.unr, %.ph.lver.orig.prol.loopexit ] ; 5 uses
  %i.ux = mul nsw i64 %indvars.iv889.lver.orig, %i.cx ; 2 uses
  %gep.lver.orig = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ux ; 2 uses
  %i.uy = load double, ptr %gep.lver.orig, align 8, !tbaa !9 ; 2 uses
  %i.uz = getelementptr [8 x i8], ptr %i.un, i64 %i.ux ; 2 uses
  %i.va = load double, ptr %i.uz, align 8, !tbaa !9 ; 2 uses
  %i.vb = call double @llvm.fmuladd.f64(double %i.ui, double %i.va, double %i.uy)
  %i.vc = fneg double %i.vb                       ; 2 uses
  %i.vd = call double @llvm.fmuladd.f64(double %i.vc, double %i.uj, double %i.uy)
  store double %i.vd, ptr %gep.lver.orig, align 8, !tbaa !9
  %i.ve = call double @llvm.fmuladd.f64(double %i.vc, double %i.uk, double %i.va)
  store double %i.ve, ptr %i.uz, align 8, !tbaa !9
  %indvars.iv.next890.lver.orig = add nsw i64 %indvars.iv889.lver.orig, 1
  %i.vf = mul nsw i64 %indvars.iv.next890.lver.orig, %i.cx ; 2 uses
  %gep.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.vf ; 2 uses
  %i.vg = load double, ptr %gep.lver.orig.1, align 8, !tbaa !9 ; 2 uses
  %i.vh = getelementptr [8 x i8], ptr %i.un, i64 %i.vf ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !9 ; 2 uses
  %i.vj = call double @llvm.fmuladd.f64(double %i.ui, double %i.vi, double %i.vg)
  %i.vk = fneg double %i.vj                       ; 2 uses
  %i.vl = call double @llvm.fmuladd.f64(double %i.vk, double %i.uj, double %i.vg)
  store double %i.vl, ptr %gep.lver.orig.1, align 8, !tbaa !9
  %i.vm = call double @llvm.fmuladd.f64(double %i.vk, double %i.uk, double %i.vi)
  store double %i.vm, ptr %i.vh, align 8, !tbaa !9
  %indvars.iv.next890.lver.orig.1 = add nsw i64 %indvars.iv889.lver.orig, 2
  %i.vn = mul nsw i64 %indvars.iv.next890.lver.orig.1, %i.cx ; 2 uses
  %gep.lver.orig.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.vn ; 2 uses
  %i.vo = load double, ptr %gep.lver.orig.2, align 8, !tbaa !9 ; 2 uses
  %i.vp = getelementptr [8 x i8], ptr %i.un, i64 %i.vn ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !9 ; 2 uses
  %i.vr = call double @llvm.fmuladd.f64(double %i.ui, double %i.vq, double %i.vo)
  %i.vs = fneg double %i.vr                       ; 2 uses
  %i.vt = call double @llvm.fmuladd.f64(double %i.vs, double %i.uj, double %i.vo)
  store double %i.vt, ptr %gep.lver.orig.2, align 8, !tbaa !9
  %i.vu = call double @llvm.fmuladd.f64(double %i.vs, double %i.uk, double %i.vq)
  store double %i.vu, ptr %i.vp, align 8, !tbaa !9
  %indvars.iv.next890.lver.orig.2 = add nsw i64 %indvars.iv889.lver.orig, 3
  %i.vv = mul nsw i64 %indvars.iv.next890.lver.orig.2, %i.cx ; 2 uses
  %gep.lver.orig.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.vv ; 2 uses
  %i.vw = load double, ptr %gep.lver.orig.3, align 8, !tbaa !9 ; 2 uses
  %i.vx = getelementptr [8 x i8], ptr %i.un, i64 %i.vv ; 2 uses
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !9 ; 2 uses
  %i.vz = call double @llvm.fmuladd.f64(double %i.ui, double %i.vy, double %i.vw)
  %i.wa = fneg double %i.vz                       ; 2 uses
  %i.wb = call double @llvm.fmuladd.f64(double %i.wa, double %i.uj, double %i.vw)
  store double %i.wb, ptr %gep.lver.orig.3, align 8, !tbaa !9
  %i.wc = call double @llvm.fmuladd.f64(double %i.wa, double %i.uk, double %i.vy)
  store double %i.wc, ptr %i.vx, align 8, !tbaa !9
  %indvars.iv.next890.lver.orig.3 = add nsw i64 %indvars.iv889.lver.orig, 4 ; 2 uses
  %lftr.wideiv893.lver.orig.3 = trunc i64 %indvars.iv.next890.lver.orig.3 to i32
  %exitcond894.not.lver.orig.3 = icmp eq i32 %i.pz, %lftr.wideiv893.lver.orig.3
  br i1 %exitcond894.not.lver.orig.3, label %.preheader, label %.ph.lver.orig, !llvm.loop !18

.ph:                                              ; preds = %.lver.check
  %load_initial = load double, ptr %scevgep1135, align 8 ; 2 uses
  %xtraiter1158 = and i32 %i.ss, 3                ; 2 uses
  %lcmp.mod1159.not = icmp eq i32 %xtraiter1158, 0
  br i1 %lcmp.mod1159.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.ph, %.prol.preheader
  %store_forwarded.prol = phi double [ %i.wj, %.prol.preheader ], [ %load_initial, %.ph ] ; 2 uses
  %indvars.iv889.prol = phi i64 [ %indvars.iv.next890.prol, %.prol.preheader ], [ %indvars.iv887, %.ph ] ; 2 uses
  %prol.iter1160 = phi i32 [ %prol.iter1160.next, %.prol.preheader ], [ 0, %.ph ]
  %i.wd = mul nuw nsw i64 %indvars.iv889.prol, %i.cx ; 2 uses
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.wd
  %i.we = getelementptr [8 x i8], ptr %i.un, i64 %i.wd ; 2 uses
  %i.wf = load double, ptr %i.we, align 8, !tbaa !9 ; 2 uses
  %i.wg = call double @llvm.fmuladd.f64(double %i.ui, double %i.wf, double %store_forwarded.prol)
  %i.wh = fneg double %i.wg                       ; 2 uses
  %i.wi = call double @llvm.fmuladd.f64(double %i.wh, double %i.uj, double %store_forwarded.prol)
  store double %i.wi, ptr %gep.prol, align 8, !tbaa !9
  %i.wj = call double @llvm.fmuladd.f64(double %i.wh, double %i.uk, double %i.wf) ; 3 uses
  store double %i.wj, ptr %i.we, align 8, !tbaa !9
  %indvars.iv.next890.prol = add nsw i64 %indvars.iv889.prol, 1 ; 2 uses
  %prol.iter1160.next = add i32 %prol.iter1160, 1 ; 2 uses
end_hunk_0
