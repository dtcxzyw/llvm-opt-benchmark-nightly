Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ap3p?download=true
inline.NumInlined: 292
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b:bb.a
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bk)
  %i.bu = insertelement <2 x double> %i.bj, double %i.bc, i64 0 ; 3 uses
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bw = insertelement <2 x double> %i.bv, double %i.bt, i64 1
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bu, <2 x double> %i.bw)
  %i.by = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bx) ; 5 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fdiv <2 x double> %i.ab, %i.bz          ; 10 uses
  %i.cb = fdiv <2 x double> %i.bu, %i.by          ; 8 uses
  %i.cc = fneg <2 x double> %i.bj
  %i.cd = shufflevector <2 x double> %i.br, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ce = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fdiv <2 x double> %i.cd, %i.ce          ; 11 uses
  %i.cg = shufflevector <2 x double> %i.ca, <2 x double> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.ch = shufflevector <2 x double> %i.ca, <2 x double> %i.cf, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x double> poison, double %i.bb, i64 0 ; 2 uses
  %i.cj = insertelement <2 x double> %i.ci, double %i.t, i64 1
  %i.ck = insertelement <2 x double> poison, double %i.i, i64 0 ; 2 uses
  %i.cl = insertelement <2 x double> %i.ck, double %i.g, i64 1
  %i.cm = fsub <2 x double> %i.z, %i.cl           ; 5 uses
  %i.cn = insertelement <2 x double> %i.cm, double %i.r, i64 1
  %i.co = fmul <2 x double> %i.cn, %i.cg
  %i.cp = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x double> %i.cp, double %i.ac, i64 1
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.ch, <2 x double> %i.co)
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cj, <2 x double> %i.cr) ; 4 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fneg double %i.ct
  %i.cv = fneg <2 x double> %i.ca                 ; 2 uses
  %i.cw = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %i.cv
  %i.cy = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cy, <2 x double> %i.cx) ; 6 uses
  %i.da = shufflevector <2 x double> %i.cm, <2 x double> %i.cz, <2 x i32> <i32 0, i32 3>
  %i.db = shufflevector <2 x double> %i.cv, <2 x double> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x double> %i.da, %i.db
  %i.dd = shufflevector <2 x double> %i.cm, <2 x double> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.de = shufflevector <2 x double> %i.ca, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.de, <2 x double> %i.dc) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0 ; 3 uses
  %i.dh = extractelement <2 x double> %i.df, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dg, double %i.dh)
  %sqrt.i236 = tail call noundef double @llvm.sqrt.f64(double %i.di) ; 6 uses
  %i.dj = insertelement <2 x double> poison, double %sqrt.i236, i64 0 ; 3 uses
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fdiv double %i.dg, %sqrt.i236           ; 2 uses
  %i.dm = fsub <2 x double> %i.cs, %i.by          ; 2 uses
  %i.dn = fmul <2 x double> %i.cs, %i.by
  %i.do = extractelement <2 x double> %i.dm, i64 0
  %i.dp = shufflevector <2 x double> %i.cz, <2 x double> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.dq = fneg <2 x double> %i.dp                 ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.ds = fdiv <2 x double> %i.dr, %i.dk          ; 5 uses
  %i.dt = fneg double %sqrt.i236
  %i.du = fneg <2 x double> %i.cf                 ; 2 uses
  %i.dv = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.dw = fmul <2 x double> %i.aj, %i.du
  %i.dx = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = shufflevector <2 x double> %i.cf, <2 x double> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.dy, <2 x double> %i.dw) ; 5 uses
  %i.ea = extractelement <2 x double> %i.cs, i64 1 ; 4 uses
  %i.eb = fmul double %i.ea, %i.cu                ; 3 uses
  %i.ec = fmul double %sqrt.i236, %i.ea           ; 3 uses
  %i.ed = shufflevector <2 x double> %i.cf, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ee = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ef = shufflevector <2 x double> %i.cb, <2 x double> %i.dz, <2 x i32> <i32 1, i32 2>
  %i.eg = shufflevector <2 x double> %i.v, <2 x double> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.eh = shufflevector <2 x double> %i.du, <2 x double> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ei = fmul <2 x double> %i.eg, %i.eh
  %i.ej = shufflevector <2 x double> %i.u, <2 x double> %i.cf, <2 x i32> <i32 0, i32 2>
  %i.ek = shufflevector <2 x double> %i.cb, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.ek, <2 x double> %i.ei) ; 3 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = fneg double %i.em                       ; 2 uses
  %i.eo = shufflevector <2 x double> %i.cf, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.ep = shufflevector <2 x double> %i.av, <2 x double> %i.el, <2 x i32> <i32 0, i32 2>
  %i.eq = fmul <2 x double> %i.eo, %i.ep
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.aq, <2 x double> %i.eq)
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.ay, <2 x double> %i.er) ; 2 uses
  %i.et = extractelement <2 x double> %i.ay, i64 1
  %i.eu = extractelement <2 x double> %i.el, i64 1
  %i.ev = tail call noundef double @llvm.fmuladd.f64(double %i.dv, double %i.et, double %i.eu)
  %i.ew = extractelement <2 x double> %i.dn, i64 1 ; 2 uses
  %i.ex = fmul double %i.do, %i.ew
  %foldExtExtBinop596 = fmul <2 x double> %i.es, %i.dq
  %i.ey = extractelement <2 x double> %foldExtExtBinop596, i64 1 ; 2 uses
  %i.ez = fmul double %sqrt.i236, %i.ew           ; 2 uses
  %i.fa = insertelement <2 x double> %i.dj, double %i.dt, i64 1
  %i.fb = fmul <2 x double> %i.fa, %i.es          ; 5 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 0 ; 2 uses
  %i.fd = fmul double %i.fc, %i.ez                ; 6 uses
  %i.fe = extractelement <2 x double> %i.fb, i64 1
  %i.ff = fmul double %i.eb, %i.fe
  %i.fg = fneg double %i.fd
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.ey, double %i.ff) ; 5 uses
  %i.fi = insertelement <2 x double> %i.fb, double %i.eb, i64 1
  %i.fj = fneg <2 x double> %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.fl, %i.fj          ; 6 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 1 ; 4 uses
  %i.fo = insertelement <2 x double> %i.fm, double %i.fh, i64 1
  %i.fp = extractelement <2 x double> %i.fm, i64 0 ; 3 uses
  %i.fq = fneg double %i.fp
  %i.fr = insertelement <2 x double> %i.dj, double %i.ec, i64 1
  %i.fs = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.ez, i64 1
  %i.fu = fmul <2 x double> %i.fr, %i.ft          ; 5 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0
  %i.fw = fneg double %i.fv
  %i.fx = fmul double %i.eb, %i.fw
  %i.fy = insertelement <2 x double> %i.fb, double %i.fd, i64 1
  %i.fz = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ga = insertelement <2 x double> %i.fz, double %i.fd, i64 1
  %i.gb = fmul <2 x double> %i.fy, %i.ga
  %i.gc = extractelement <2 x double> %i.fu, i64 1 ; 2 uses
  %i.gd = fmul double %i.gc, 2.000000e+00
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ey, double %i.fx) ; 6 uses
  %i.gf = fmul double %i.fd, %i.ge                ; 2 uses
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.fh, double %i.gf)
  %i.gh = fmul double %i.fn, %i.gd
  %i.gi = fneg double %i.gf
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fh, double %i.gh)
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.ge, double %i.gj)
  %i.gl = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gi, i64 1
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fm, <2 x double> %i.gm) ; 2 uses
  %i.go = extractelement <2 x double> %i.gn, i64 0
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fd, double %i.go)
  %i.gq = fneg double %i.ge
  %i.gr = fmul double %i.ge, %i.gq
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.gr)
  %i.gt = insertelement <2 x double> %i.fu, double %i.ec, i64 0
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.fu, <2 x double> %i.gb) ; 4 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0 ; 4 uses
  %i.gw = extractelement <2 x double> %i.gu, i64 1
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gv, double %i.gw) ; 6 uses
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.fp, double %i.gg)
  %i.gz = fmul double %i.gy, 2.000000e+00         ; 6 uses
  %i.ha = fneg double %i.gv
  %i.hb = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = shufflevector <2 x double> %i.gu, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.he = insertelement <2 x double> %i.gn, double %i.gp, i64 0
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.he) ; 6 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0 ; 2 uses
  %i.hh = extractelement <2 x double> %i.hf, i64 1
  %i.hi = fmul double %i.hh, 2.000000e+00         ; 7 uses
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fp, double %i.gs) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hn = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %i.gx, double noundef %i.gz, double noundef %i.hg, double noundef %i.hi, double noundef %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 5 uses
  %i.ho = icmp sgt i32 %i.hn, 0                   ; 2 uses
  br i1 %i.ho, label %.preheader.preheader.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.hn to i64 ; 6 uses
  %i.hp = fmul double %i.gx, 4.000000e+00         ; 4 uses
  %i.hq = fmul double %i.gz, 3.000000e+00         ; 4 uses
  %i.hr = fmul double %i.hg, 2.000000e+00         ; 4 uses
  %min.iters.check = icmp eq i32 %i.hn, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <2 x double> poison, double %i.hq, i64 0
  %broadcast.splat550 = shufflevector <2 x double> %broadcast.splatinsert549, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <2 x double> poison, double %i.hr, i64 0
  %broadcast.splat552 = shufflevector <2 x double> %broadcast.splatinsert551, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <2 x double> poison, double %i.gx, i64 0
  %broadcast.splat554 = shufflevector <2 x double> %broadcast.splatinsert553, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <2 x double> poison, double %i.gz, i64 0
  %broadcast.splat556 = shufflevector <2 x double> %broadcast.splatinsert555, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat558 = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <2 x double> poison, double %i.hi, i64 0
  %broadcast.splat560 = shufflevector <2 x double> %broadcast.splatinsert559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <2 x double> poison, double %i.hj, i64 0
  %broadcast.splat562 = shufflevector <2 x double> %broadcast.splatinsert561, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.hs, align 16, !tbaa !9 ; 8 uses
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat554, <2 x double> %wide.load, <2 x double> %broadcast.splat556)
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %wide.load, <2 x double> %broadcast.splat558)
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %wide.load, <2 x double> %broadcast.splat562)
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat550)
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %wide.load, <2 x double> %broadcast.splat552)
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.ia = fdiv <2 x double> %i.hw, %i.hz
  %i.ib = fsub <2 x double> %wide.load, %i.ia
  store <2 x double> %i.ib, ptr %i.hs, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %i.id = insertelement <2 x double> poison, double %i.hp, i64 1
  %i.ie = insertelement <2 x double> %i.hf, double %i.hq, i64 1
  %i.if = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.hr, i64 1
  %i.ih = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.hi, i64 1
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader601, %._crit_edge.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %._crit_edge.i ], [ %indvars.iv.1.i.ph, %._crit_edge.i.preheader601 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1.i ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !9 ; 3 uses
  %i.il = call double @llvm.fmuladd.f64(double %i.gx, double %i.ik, double %i.gz)
  %i.im = insertelement <2 x double> %i.ju, double %i.il, i64 0
  %i.in = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.im, <2 x double> %i.io, <2 x double> %i.jv)
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.io, <2 x double> %i.jx)
  %i.ir = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %i.io, <2 x double> %i.jz) ; 2 uses
  %i.is = extractelement <2 x double> %i.ir, i64 0
  %i.it = extractelement <2 x double> %i.ir, i64 1
  %i.iu = fdiv double %i.is, %i.it
  %i.iv = fsub double %i.ik, %i.iu
  store double %i.iv, ptr %i.ij, align 8, !tbaa !9
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i, !llvm.loop !63

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !9 ; 3 uses
  %i.iy = call double @llvm.fmuladd.f64(double %i.gx, double %i.ix, double %i.gz)
  %i.iz = insertelement <2 x double> %i.id, double %i.iy, i64 0
  %i.ja = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.jb, <2 x double> %i.ie)
  %i.jd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.jb, <2 x double> %i.ig)
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> %i.jb, <2 x double> %i.ii) ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 0
  %i.jg = extractelement <2 x double> %i.je, i64 1
  %i.jh = fdiv double %i.jf, %i.jg
  %i.ji = fsub double %i.ix, %i.jh
  store double %i.ji, ptr %i.iw, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.preheader, label %scalar.ph, !llvm.loop !64

._crit_edge.i.preheader:                          ; preds = %scalar.ph, %middle.block
  %min.iters.check564 = icmp eq i32 %i.hn, 1
  br i1 %min.iters.check564, label %._crit_edge.i.preheader601, label %vector.ph565

vector.ph565:                                     ; preds = %._crit_edge.i.preheader
  %n.vec566 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert567 = insertelement <2 x double> poison, double %i.gx, i64 0
  %broadcast.splat568 = shufflevector <2 x double> %broadcast.splatinsert567, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %i.gz, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat572 = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %i.hi, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %i.hj, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.hq, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <2 x double> poison, double %i.hr, i64 0
  %broadcast.splat582 = shufflevector <2 x double> %broadcast.splatinsert581, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph565
  %index584 = phi i64 [ 0, %vector.ph565 ], [ %index.next586, %vector.body583 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.jj, align 16, !tbaa !9 ; 8 uses
  %i.jk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat568, <2 x double> %wide.load585, <2 x double> %broadcast.splat570)
  %i.jl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %wide.load585, <2 x double> %broadcast.splat572)
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %wide.load585, <2 x double> %broadcast.splat576)
  %i.jo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat578, <2 x double> %wide.load585, <2 x double> %broadcast.splat580)
  %i.jp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %wide.load585, <2 x double> %broadcast.splat582)
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.jr = fdiv <2 x double> %i.jn, %i.jq
  %i.js = fsub <2 x double> %wide.load585, %i.jr
  store <2 x double> %i.js, ptr %i.jj, align 16, !tbaa !9
  %index.next586 = add nuw i64 %index584, 2       ; 2 uses
  %i.jt = icmp eq i64 %index.next586, %n.vec566
  br i1 %i.jt, label %middle.block587, label %vector.body583, !llvm.loop !65

middle.block587:                                  ; preds = %vector.body583
  %cmp.n588 = icmp eq i64 %n.vec566, %wide.trip.count.i
  br i1 %cmp.n588, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i.preheader601

._crit_edge.i.preheader601:                       ; preds = %._crit_edge.i.preheader, %middle.block587
  %indvars.iv.1.i.ph = phi i64 [ 0, %._crit_edge.i.preheader ], [ %n.vec566, %middle.block587 ]
  %i.ju = insertelement <2 x double> poison, double %i.hp, i64 1
  %i.jv = insertelement <2 x double> %i.hf, double %i.hq, i64 1
  %i.jw = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.jx = insertelement <2 x double> %i.jw, double %i.hr, i64 1
  %i.jy = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.hi, i64 1
  br label %._crit_edge.i

_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit: ; preds = %._crit_edge.i, %middle.block587, %bb.a
  %i.ka = fneg <2 x double> %i.ds                 ; 2 uses
  %i.kb = fmul <2 x double> %i.cy, %i.ka
  %i.kc = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.kd, <2 x double> %i.kb) ; 2 uses
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kg = fdiv double %sqrt.i236, %i.ea           ; 2 uses
  %i.kh = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x double> %i.ae, %i.ki
  %i.kk = fmul double %i.t, %i.kg
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !9 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !9 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !9
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.ho, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %i.kv = extractelement <2 x double> %i.ca, i64 1
  %i.kw = extractelement <2 x double> %i.ds, i64 0
  %shift598 = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop599 = fmul <2 x double> %i.ca, %shift598
  %i.kx = extractelement <2 x double> %foldExtExtBinop599, i64 0
  %i.ky = call double @llvm.fmuladd.f64(double %i.kv, double %i.kw, double %i.kx)
  %i.kz = fcmp ogt double %i.ea, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.hn to i64
  %i.la = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = shufflevector <2 x double> %i.u, <2 x double> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ld = insertelement <2 x double> poison, double %i.km, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = extractelement <2 x double> %i.v, i64 0
  %i.li = insertelement <3 x double> poison, double %i.ky, i64 0
  %i.lj = shufflevector <3 x double> %i.li, <3 x double> poison, <3 x i32> zeroinitializer
  %i.lk = insertelement <3 x double> poison, double %i.dl, i64 0
  %i.ll = shufflevector <3 x double> %i.lk, <3 x double> poison, <3 x i32> zeroinitializer
  %i.lm = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = fneg <2 x double> %i.kf
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lt = insertelement <2 x double> poison, double %i.g, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.lx = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.ly = extractelement <2 x double> %i.dz, i64 0
  %i.lz = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ma = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fh, i64 1
  %i.mb = shufflevector <2 x double> %i.cf, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.mc = shufflevector <2 x double> %i.lx, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.md = shufflevector <2 x double> %i.lw, <2 x double> %i.gu, <2 x i32> <i32 0, i32 2>
  %i.me = shufflevector <2 x double> %i.cb, <2 x double> poison, <3 x i32> zeroinitializer
  %i.mf = insertelement <2 x double> %i.lz, double %i.en, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.mg = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.mg, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !9 ; 5 uses
  %i.mj = call noundef double @llvm.fabs.f64(double %i.mi)
  %i.mk = fcmp ogt double %i.mj, 1.000000e+00
  br i1 %i.mk, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ml = fneg double %i.mi
  %i.mm = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.mn, <2 x double> %i.mc)
  %i.mp = insertelement <2 x double> %i.fu, double %i.ml, i64 0
  %i.mq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.mn, <2 x double> %i.ma) ; 2 uses
  %i.mr = extractelement <2 x double> %i.mq, i64 0
  %i.ms = call double @sqrt(double noundef %i.mr) #17 ; 2 uses
  %i.mt = fneg double %i.ms
  %i.mu = extractelement <2 x double> %i.mq, i64 1
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double %i.mi, double %i.fn)
  %i.mw = select i1 %i.kz, double %i.ms, double %i.mt ; 4 uses
  %i.mx = fdiv double %i.mw, %i.mv
  %i.my = fneg double %i.mw                       ; 2 uses
  %i.mz = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nb = fmul <2 x double> %i.mo, %i.na          ; 5 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 1
  %i.nd = fneg double %i.nc                       ; 2 uses
  %i.ne = insertelement <2 x double> poison, double %i.mw, i64 0 ; 2 uses
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ng = fmul <2 x double> %i.nf, %i.nb          ; 3 uses
  %i.nh = fmul <2 x double> %i.mn, %i.nb          ; 3 uses
  %i.ni = fmul <2 x double> %i.ds, %i.mn
  %i.nj = fmul double %i.kk, %i.mw
  %i.nk = sext i32 %.0234531 to i64               ; 3 uses
  %i.nl = getelementptr inbounds [24 x i8], ptr %4, i64 %i.nk ; 4 uses
  %i.nm = shufflevector <2 x double> %i.ng, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.nn = insertelement <3 x double> %i.nm, double %i.mi, i64 2
  %i.no = fmul <3 x double> %i.ll, %i.nn
  %i.np = insertelement <3 x double> <double poison, double poison, double 0.000000e+00>, double %i.nd, i64 0
  %i.nq = shufflevector <2 x double> %i.nb, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.nr = shufflevector <3 x double> %i.np, <3 x double> %i.nq, <3 x i32> <i32 0, i32 3, i32 2>
  %i.ns = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.me, <3 x double> %i.nr, <3 x double> %i.no)
  %i.nt = shufflevector <2 x double> %i.nh, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.nu = insertelement <3 x double> %i.nt, double %i.my, i64 2
  %i.nv = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.lj, <3 x double> %i.nu, <3 x double> %i.ns) ; 6 uses
  %i.nw = extractelement <3 x double> %i.nv, i64 2
  %i.nx = fmul double %i.dv, %i.nw
  %i.ny = shufflevector <3 x double> %i.nv, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.nz = fmul <2 x double> %i.cf, %i.ny
  %i.oa = extractelement <3 x double> %i.nv, i64 1
  %i.ob = call double @llvm.fmuladd.f64(double %i.oa, double %i.lh, double %i.nx)
  %i.oc = shufflevector <3 x double> %i.nv, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.ak, <2 x double> %i.nz)
  %i.oe = extractelement <3 x double> %i.nv, i64 0
  %i.of = call double @llvm.fmuladd.f64(double %i.oe, double %i.ly, double %i.ob) ; 3 uses
  %i.og = shufflevector <3 x double> %i.nv, <3 x double> poison, <2 x i32> zeroinitializer
  %i.oh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.mf, <2 x double> %i.od) ; 5 uses
  %i.oi = fmul <2 x double> %i.kj, %i.nf
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nl, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds [72 x i8], ptr %3, i64 %i.nk ; 7 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.on = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oo = fmul <2 x double> %i.ds, %i.on
  %i.op = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oq = fmul <2 x double> %i.ds, %i.op
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> zeroinitializer, <2 x double> %i.ni)
  %i.os = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.os, <2 x double> %i.oo)
  %i.ou = insertelement <2 x double> %i.ne, double %i.my, i64 1
  %i.ov = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.ou, <2 x double> %i.or) ; 3 uses
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ox = fmul <2 x double> %i.mb, %i.ow
  %i.oy = fmul <2 x double> %i.dx, %i.ov
  %i.oz = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = fmul <2 x double> %i.mb, %i.oz
  %i.pb = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.pc, <2 x double> %i.oq)
  %i.pe = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.pe, <2 x double> %i.ot) ; 3 uses
  %i.pg = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.pg, <2 x double> %i.pd) ; 3 uses
  %i.pi = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.lc, <2 x double> %i.ox)
  %i.pk = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.ee, <2 x double> %i.pj) ; 5 uses
  %i.pm = extractelement <2 x double> %i.pl, i64 0
  %i.pn = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.po = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.lc, <2 x double> %i.pa)
  %i.pp = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.ee, <2 x double> %i.po) ; 4 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 0
  %i.ps = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.lq, <2 x double> %i.oy)
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.lp, <2 x double> %i.ps) ; 5 uses
  %i.pu = shufflevector <2 x double> %i.pq, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2>
  %i.pv = fmul <2 x double> %i.lv, %i.pu
  %i.pw = shufflevector <2 x double> %i.pl, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.px = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.pw, <2 x double> %i.pv)
  %i.py = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> %i.oh, <2 x double> %i.px)
  %i.pz = extractelement <2 x double> %i.pq, i64 1 ; 2 uses
  %i.qa = fmul double %i.i, %i.pz
  %i.qb = extractelement <2 x double> %i.pl, i64 1
  %i.qc = call double @llvm.fmuladd.f64(double %i.g, double %i.qb, double %i.qa)
  %i.qd = call double @llvm.fmuladd.f64(double %i.k, double %i.of, double %i.qc)
  %i.qe = fsub <2 x double> %i.oi, %i.py
  store <2 x double> %i.qe, ptr %i.nl, align 8, !tbaa !9
  %i.qf = fsub double %i.nj, %i.qd
  store double %i.qf, ptr %i.oj, align 8, !tbaa !9
  store double %i.pm, ptr %i.ok, align 8, !tbaa !9
  store double %i.pr, ptr %i.om, align 8, !tbaa !9
  %i.qg = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qg, ptr %i.ol, align 8, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ok, i64 56
  store double %i.pz, ptr %i.qh, align 8, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.qj = extractelement <2 x double> %i.oh, i64 0
  store double %i.qj, ptr %i.qi, align 8, !tbaa !9
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ok, i64 40
  %i.ql = shufflevector <2 x double> %i.oh, <2 x double> %i.pl, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ql, ptr %i.qk, align 8, !tbaa !9
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store double %i.of, ptr %i.qm, align 8, !tbaa !9
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.qn = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.qo = fmul <2 x double> %i.lg, %i.pq
  %i.qp = load double, ptr %i.nl, align 8, !tbaa !9
  %i.qq = extractelement <2 x double> %i.pt, i64 0
  %i.qr = fmul double %i.ko, %i.qq
  %i.qs = extractelement <2 x double> %i.pt, i64 1
  %i.qt = call double @llvm.fmuladd.f64(double %i.qs, double %i.km, double %i.qr)
  %i.qu = extractelement <2 x double> %i.oh, i64 1
  %i.qv = call double @llvm.fmuladd.f64(double %i.qu, double %i.kq, double %i.qt)
  %i.qw = load double, ptr %i.qn, align 8, !tbaa !9
  %i.qx = fadd double %i.qv, %i.qw
  %i.qy = load double, ptr %i.oj, align 8, !tbaa !9
  %i.qz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.le, <2 x double> %i.qo)
  %i.ra = insertelement <2 x double> %i.oh, double %i.of, i64 1
  %i.rb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> %i.lb, <2 x double> %i.qz)
  %i.rc = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.qy, i64 1
  %i.re = fadd <2 x double> %i.rb, %i.rd          ; 2 uses
  %i.rf = insertelement <2 x double> %i.re, double %i.qx, i64 1
  %i.rg = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rh = fdiv <2 x double> %i.rf, %i.rg          ; 2 uses
  %i.ri = extractelement <2 x double> %i.rh, i64 0
  %i.rj = fsub double %i.ri, %i.ks                ; 2 uses
  %i.rk = extractelement <2 x double> %i.rh, i64 1
  %i.rl = fsub double %i.rk, %i.ku                ; 2 uses
  %i.rm = fmul double %i.rl, %i.rl
  %i.rn = call double @llvm.fmuladd.f64(double %i.rj, double %i.rj, double %i.rm)
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nk
  store double %i.rn, ptr %i.ro, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.rp = add nsw i32 %.0234531, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.rp, %bb.e ], [ %.0234531, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !66

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv536 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next537, %.critedge ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv536
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %indvars.iv538 = phi i64 [ %indvars.iv536, %.preheader ], [ %indvars.iv.next539, %bb.h ] ; 5 uses
  %indvars.iv.next539 = add nsw i64 %indvars.iv538, -1 ; 4 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next539 ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !9 ; 2 uses
  %i.rs = fcmp ogt double %i.rr, %.pre
  br i1 %i.rs, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count542
  br i1 %exitcond543.not, label %.loopexit, label %.preheader, !llvm.loop !67

bb.h:                                             ; preds = %bb.g
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv538
  store double %i.rr, ptr %i.rt, align 8, !tbaa !9
  store double %.pre, ptr %i.rq, align 8, !tbaa !9
  %i.ru = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv538 ; 6 uses
  %i.rv = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv.next539 ; 6 uses
  %i.rw = load <2 x double>, ptr %i.ru, align 8, !tbaa !9
  %i.rx = load <2 x double>, ptr %i.rv, align 8, !tbaa !9
  store <2 x double> %i.rx, ptr %i.ru, align 8, !tbaa !9
  store <2 x double> %i.rw, ptr %i.rv, align 8, !tbaa !9
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 2 uses
  %i.sa = load <2 x double>, ptr %i.ry, align 8, !tbaa !9
  %i.sb = load <2 x double>, ptr %i.rz, align 8, !tbaa !9
  store <2 x double> %i.sb, ptr %i.ry, align 8, !tbaa !9
  store <2 x double> %i.sa, ptr %i.rz, align 8, !tbaa !9
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 32 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rv, i64 32 ; 2 uses
  %i.se = load <2 x double>, ptr %i.sc, align 8, !tbaa !9
  %i.sf = load <2 x double>, ptr %i.sd, align 8, !tbaa !9
  store <2 x double> %i.sf, ptr %i.sc, align 8, !tbaa !9
  store <2 x double> %i.se, ptr %i.sd, align 8, !tbaa !9
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 48 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rv, i64 48 ; 2 uses
  %i.si = load <2 x double>, ptr %i.sg, align 8, !tbaa !9
  %i.sj = load <2 x double>, ptr %i.sh, align 8, !tbaa !9
  store <2 x double> %i.sj, ptr %i.sg, align 8, !tbaa !9
  store <2 x double> %i.si, ptr %i.sh, align 8, !tbaa !9
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ru, i64 64 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rv, i64 64 ; 2 uses
  %i.sm = load double, ptr %i.sk, align 8, !tbaa !9
  %i.sn = load double, ptr %i.sl, align 8, !tbaa !9
  store double %i.sn, ptr %i.sk, align 8, !tbaa !9
  store double %i.sm, ptr %i.sl, align 8, !tbaa !9
  %i.so = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv538 ; 3 uses
  %i.sp = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next539 ; 3 uses
  %i.sq = load <2 x double>, ptr %i.so, align 8, !tbaa !9
  %i.sr = load <2 x double>, ptr %i.sp, align 8, !tbaa !9
  store <2 x double> %i.sr, ptr %i.so, align 8, !tbaa !9
  store <2 x double> %i.sq, ptr %i.sp, align 8, !tbaa !9
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 16 ; 2 uses
  %i.su = load double, ptr %i.ss, align 8, !tbaa !9
  %i.sv = load double, ptr %i.st, align 8, !tbaa !9
  store double %i.sv, ptr %i.ss, align 8, !tbaa !9
  store double %i.su, ptr %i.st, align 8, !tbaa !9
  %i.sw = icmp sgt i64 %indvars.iv538, 1
  br i1 %i.sw, label %bb.g, label %.critedge, !llvm.loop !68

.loopexit:                                        ; preds = %.critedge, %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, %._crit_edge
  %.0234.lcssa548 = phi i32 [ 0, %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit ], [ %.1, %._crit_edge ], [ %.1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0234.lcssa548
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.a = alloca [3 x [3 x double]], align 16      ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4ap3p5solveERNS_3MatES2_RKS1_S4_E25__cv_trace_location_fn276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.c = load i32, ptr %3, align 8, !tbaa !18
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %i.e = load i32, ptr %4, align 8, !tbaa !18
  %i.f = and i32 %i.e, 31
  %i.g = icmp eq i32 %i.d, %i.f
  %i.h = icmp eq i32 %i.d, 5                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %i.j = load ptr, ptr %6, align 8, !tbaa !31     ; 20 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ag = load double, ptr %i.af, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.am = load double, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.ao = load double, ptr %i.an, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.as = load double, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.au = load double, ptr %i.at, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.aw = load double, ptr %i.av, align 8, !tbaa !9
  %i.ax = invoke noundef zeroext i1 @_ZN2cv4ap3p5solveEPA3_dPddddddddddddddddddddd(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %i.k, double noundef %i.m, double noundef %i.o, double noundef %i.q, double noundef %i.s, double noundef %i.u, double noundef %i.w, double noundef %i.y, double noundef %i.aa, double noundef %i.ac, double noundef %i.ae, double noundef %i.ag, double noundef %i.ai, double noundef %i.ak, double noundef %i.am, double noundef %i.ao, double noundef %i.aq, double noundef %i.as, double noundef %i.au, double noundef %i.aw)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %i.b, i64 noundef 0)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.az, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !34
  store ptr %2, ptr %i.ay, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.bb, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !34
  store ptr %1, ptr %i.ba, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bc = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i1 %i.ax

bb.r:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.t ], [ %i.bn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.y

bb.v:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn25.pn = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.bp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.u, %bb.x, %bb.d
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn25.pn, %bb.x ], [ %.pn.pn, %bb.u ], [ %i.bm, %bb.r ]
  %i.br = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIdSaIdEED2Ev.exit31, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit31

_ZNSt6vectorIdSaIdEED2Ev.exit31:                  ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.d = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 5, i1 noundef zeroext true) ; 2 uses
  %i.e = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 6, i1 noundef zeroext true) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 20
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.m = sub nuw nsw i64 20, %i.k
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.m)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %.not = icmp eq i64 %i.j, 160
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i38, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39:      ; preds = %bb.d
  store ptr %i.n, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39
  %i.o = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.o, label %.lr.ph, label %.preheader.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = icmp slt i32 %i.q, 2                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %3, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.e

.preheader56:                                     ; preds = %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50
  %i.ah = icmp slt i32 %.sroa.speculated, 4
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %.preheader56
  %i.ai = load ptr, ptr %3, align 8, !tbaa !31
  %4 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.d) ; 2 uses
  %smax = sext i32 %4 to i64
  %i.aj = add i32 %4, 4
  %5 = sub i32 %i.aj, %.sroa.speculated
  br label %.preheader.epil

bb.e:                                             ; preds = %.lr.ph, %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50 ] ; 20 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %2, align 8, !tbaa !18
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = load i32, ptr %i.s, align 8
  %i.aq = icmp eq i32 %i.ap, 1
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

bb.i:                                             ; preds = %bb.g
  %i.at = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !43
  %i.ax = mul i64 %i.aw, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

bb.k:                                             ; preds = %bb.i
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ba = sdiv i32 %i.az, %i.at                   ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.at                ; 0 uses
  %.recomposed = srem i32 %i.az, %i.at
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !43
  %i.be = sext i32 %i.ba to i64
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = sext i32 %.recomposed to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit:        ; preds = %bb.f, %bb.h, %bb.j, %bb.k
  %i.bj = phi ptr [ %i.ak, %bb.f ], [ %i.ar, %bb.h ], [ %i.av, %bb.j ], [ %i.bc, %bb.k ] ; 4 uses
  %.0.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %bb.h ], [ %i.ay, %bb.j ], [ %i.bi, %bb.k ]
  %i.bk = load float, ptr %.0.i, align 4, !tbaa !45
  %i.bl = fpext float %i.bk to double
  %i.bm = load double, ptr %0, align 8, !tbaa !26
  %i.bn = load double, ptr %i.w, align 8, !tbaa !24
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bn)
  %.idx = mul nuw nsw i64 %indvars.iv, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 6 uses
  store double %i.bo, ptr %i.bp, align 8, !tbaa !9
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

bb.m:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit
  %i.br = load i32, ptr %2, align 8, !tbaa !18
  %i.bs = and i32 %i.br, 16384
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = load i32, ptr %i.s, align 8
  %i.bv = icmp eq i32 %i.bu, 1
  %or.cond.i40 = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond.i40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

bb.o:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !43
  %i.ca = mul i64 %i.bz, %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ca
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

bb.q:                                             ; preds = %bb.o
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cd = sdiv i32 %i.cc, %i.bx                   ; 2 uses
  %i.ce = mul nsw i32 %i.cd, %i.bx                ; 0 uses
  %.recomposed73 = srem i32 %i.cc, %i.bx
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !43
  %i.cg = sext i32 %i.cd to i64
  %i.ch = mul i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  %i.cj = sext i32 %.recomposed73 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42:      ; preds = %bb.l, %bb.n, %bb.p, %bb.q
  %.0.i41 = phi ptr [ %i.bq, %bb.l ], [ %i.bw, %bb.n ], [ %i.cb, %bb.p ], [ %i.ck, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i41, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !46
  %i.cn = fpext float %i.cm to double
  %i.co = load double, ptr %i.y, align 8, !tbaa !27
  %i.cp = load double, ptr %i.z, align 8, !tbaa !25
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !9
  br i1 %i.ac, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42
  %i.cs = load i32, ptr %1, align 8, !tbaa !18
  %i.ct = and i32 %i.cs, 16384
  %i.cu = icmp ne i32 %i.ct, 0                    ; 3 uses
  %i.cv = load i32, ptr %i.ad, align 8
  %i.cw = icmp eq i32 %i.cv, 1
  %or.cond.i43 = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond.i43, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %indvars.iv
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dd = mul i64 %i.dc, %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.df = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dg = sdiv i32 %i.df, %i.cz                   ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.cz                ; 0 uses
  %.recomposed74 = srem i32 %i.df, %i.cz
  %i.di = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.dj = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dk = sext i32 %i.dg to i64
  %i.dl = mul i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = sext i32 %.recomposed74 to i64
  %i.do = getelementptr inbounds [12 x i8], ptr %i.dm, i64 %i.dn
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %i.dp = phi ptr [ %i.di, %bb.v ], [ %i.db, %bb.u ], [ %i.cx, %bb.s ] ; 6 uses
  %.0.i44.ph = phi ptr [ %i.do, %bb.v ], [ %i.de, %bb.u ], [ %i.cy, %bb.s ]
  %i.dq = load float, ptr %.0.i44.ph, align 4, !tbaa !48
  %i.dr = fpext float %i.dq to double
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store double %i.dr, ptr %i.ds, align 8, !tbaa !9
  %i.dt = load i32, ptr %i.ad, align 8
  %i.du = icmp eq i32 %i.dt, 1
  %or.cond.i45 = select i1 %i.cu, i1 true, i1 %i.du
  br i1 %or.cond.i45, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %indvars.iv
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.dw = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dy = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dz = mul i64 %i.dy, %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dz
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.eb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ec = sdiv i32 %i.eb, %i.dw                   ; 2 uses
  %i.ed = mul nsw i32 %i.ec, %i.dw                ; 0 uses
  %.recomposed75 = srem i32 %i.eb, %i.dw
  %i.ee = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ef = sext i32 %i.ec to i64
  %i.eg = mul i64 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.eg
  %i.ei = sext i32 %.recomposed75 to i64
  %i.ej = getelementptr inbounds [12 x i8], ptr %i.eh, i64 %i.ei
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42
  %i.ek = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.ek, i64 %indvars.iv ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.en = load <2 x float>, ptr %i.el, align 4, !tbaa !22
  %i.eo = fpext <2 x float> %i.en to <2 x double>
  store <2 x double> %i.eo, ptr %i.em, align 8, !tbaa !9
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

bb.ac:                                            ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i46.ph = phi ptr [ %i.ej, %bb.aa ], [ %i.ea, %bb.z ], [ %i.dv, %bb.x ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i46.ph, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !49
  %i.er = fpext float %i.eq to double
  %i.es = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store double %i.er, ptr %i.es, align 8, !tbaa !9
  %i.et = load i32, ptr %i.ad, align 8
  %i.eu = icmp eq i32 %i.et, 1
  %or.cond.i48 = select i1 %i.cu, i1 true, i1 %i.eu
  br i1 %or.cond.i48, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

bb.ae:                                            ; preds = %bb.ac
  %i.ew = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ey = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ez = mul i64 %i.ey, %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ez
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

bb.ag:                                            ; preds = %bb.ae
  %i.fb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fc = sdiv i32 %i.fb, %i.ew                   ; 2 uses
  %i.fd = mul nsw i32 %i.fc, %i.ew                ; 0 uses
  %.recomposed76 = srem i32 %i.fb, %i.ew
  %i.fe = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ff = sext i32 %i.fc to i64
  %i.fg = mul i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fg
  %i.fi = sext i32 %.recomposed76 to i64
  %i.fj = getelementptr inbounds [12 x i8], ptr %i.fh, i64 %i.fi
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50:     ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.0.i49 = phi ptr [ %i.el, %bb.ab ], [ %i.ev, %bb.ad ], [ %i.fa, %bb.af ], [ %i.fj, %bb.ag ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i49, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !50
  %i.fm = fpext float %i.fl to double
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store double %i.fm, ptr %i.fn, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader56, label %bb.e, !llvm.loop !71

.preheader.epil:                                  ; preds = %.preheader.lr.ph, %.preheader.epil
  %indvars.iv64 = phi i64 [ %smax, %.preheader.lr.ph ], [ %indvars.iv.next65, %.preheader.epil ] ; 2 uses
  %sext = mul i64 %indvars.iv64, 21474836480
  %6 = ashr exact i64 %sext, 29
  %scevgep.epil = getelementptr nuw i8, ptr %i.ai, i64 %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.epil, i8 0, i64 40, i1 false), !tbaa !9
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %epil.iter.cmp.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader.epil, !llvm.loop !72

._crit_edge:                                      ; preds = %.preheader.epil, %.preheader56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.d = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 5, i1 noundef zeroext true) ; 2 uses
  %i.e = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 6, i1 noundef zeroext true) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 20
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.m = sub nuw nsw i64 20, %i.k
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.m)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %.not = icmp eq i64 %i.j, 160
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i38, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39:      ; preds = %bb.d
  store ptr %i.n, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39
  %i.o = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.o, label %.lr.ph, label %.preheader.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = icmp slt i32 %i.q, 2                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %3, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.e

.preheader56:                                     ; preds = %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50
  %i.ah = icmp slt i32 %.sroa.speculated, 4
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %.preheader56
  %i.ai = load ptr, ptr %3, align 8, !tbaa !31
  %4 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.d) ; 2 uses
  %smax = sext i32 %4 to i64
  %i.aj = add i32 %4, 4
  %5 = sub i32 %i.aj, %.sroa.speculated
  br label %.preheader.epil

bb.e:                                             ; preds = %.lr.ph, %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50 ] ; 20 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %2, align 8, !tbaa !18
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = load i32, ptr %i.s, align 8
  %i.aq = icmp eq i32 %i.ap, 1
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

bb.i:                                             ; preds = %bb.g
  %i.at = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !43
  %i.ax = mul i64 %i.aw, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

bb.k:                                             ; preds = %bb.i
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ba = sdiv i32 %i.az, %i.at                   ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.at                ; 0 uses
  %.recomposed = srem i32 %i.az, %i.at
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !43
  %i.be = sext i32 %i.ba to i64
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = sext i32 %.recomposed to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bh
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit:        ; preds = %bb.f, %bb.h, %bb.j, %bb.k
  %i.bj = phi ptr [ %i.ak, %bb.f ], [ %i.ar, %bb.h ], [ %i.av, %bb.j ], [ %i.bc, %bb.k ] ; 4 uses
  %.0.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %bb.h ], [ %i.ay, %bb.j ], [ %i.bi, %bb.k ]
  %i.bk = load double, ptr %.0.i, align 8, !tbaa !52
  %i.bl = load double, ptr %0, align 8, !tbaa !26
  %i.bm = load double, ptr %i.w, align 8, !tbaa !24
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bl, double %i.bm)
  %.idx = mul nuw nsw i64 %indvars.iv, 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 7 uses
  store double %i.bn, ptr %i.bo, align 8, !tbaa !9
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

bb.m:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit
  %i.bq = load i32, ptr %2, align 8, !tbaa !18
  %i.br = and i32 %i.bq, 16384
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = load i32, ptr %i.s, align 8
  %i.bu = icmp eq i32 %i.bt, 1
  %or.cond.i40 = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond.i40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

bb.o:                                             ; preds = %bb.m
  %i.bw = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.v, align 8, !tbaa !43
  %i.bz = mul i64 %i.by, %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bz
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

bb.q:                                             ; preds = %bb.o
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = sdiv i32 %i.cb, %i.bw                   ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %i.bw                ; 0 uses
  %.recomposed73 = srem i32 %i.cb, %i.bw
  %i.ce = load i64, ptr %i.v, align 8, !tbaa !43
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cg
  %i.ci = sext i32 %.recomposed73 to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ci
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42:      ; preds = %bb.l, %bb.n, %bb.p, %bb.q
  %.0.i41 = phi ptr [ %i.bp, %bb.l ], [ %i.bv, %bb.n ], [ %i.ca, %bb.p ], [ %i.cj, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i41, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !53
  %i.cm = load double, ptr %i.y, align 8, !tbaa !27
  %i.cn = load double, ptr %i.z, align 8, !tbaa !25
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cm, double %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store double %i.co, ptr %i.cp, align 8, !tbaa !9
  br i1 %i.ac, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42
  %i.cq = load i32, ptr %1, align 8, !tbaa !18
  %i.cr = and i32 %i.cq, 16384
  %i.cs = icmp ne i32 %i.cr, 0                    ; 3 uses
  %i.ct = load i32, ptr %i.ad, align 8
  %i.cu = icmp eq i32 %i.ct, 1
  %or.cond.i43 = select i1 %i.cs, i1 true, i1 %i.cu
  br i1 %or.cond.i43, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.da = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.db = mul i64 %i.da, %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.de = sdiv i32 %i.dd, %i.cx                   ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.cx                ; 0 uses
  %.recomposed74 = srem i32 %i.dd, %i.cx
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.di = sext i32 %i.de to i64
  %i.dj = mul i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = sext i32 %.recomposed74 to i64
  %i.dm = getelementptr inbounds [24 x i8], ptr %i.dk, i64 %i.dl
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %i.dn = phi ptr [ %i.dg, %bb.v ], [ %i.cz, %bb.u ], [ %i.cv, %bb.s ] ; 6 uses
  %.0.i44.ph = phi ptr [ %i.dm, %bb.v ], [ %i.dc, %bb.u ], [ %i.cw, %bb.s ]
  %i.do = load double, ptr %.0.i44.ph, align 8, !tbaa !55
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store double %i.do, ptr %i.dp, align 8, !tbaa !9
  %i.dq = load i32, ptr %i.ad, align 8
  %i.dr = icmp eq i32 %i.dq, 1
  %or.cond.i45 = select i1 %i.cs, i1 true, i1 %i.dr
  br i1 %or.cond.i45, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %indvars.iv
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.dt = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.du = icmp eq i32 %i.dt, 1
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dw = mul i64 %i.dv, %indvars.iv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dw
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dz = sdiv i32 %i.dy, %i.dt                   ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %i.dt                ; 0 uses
  %.recomposed75 = srem i32 %i.dy, %i.dt
  %i.eb = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ec = sext i32 %i.dz to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ed
  %i.ef = sext i32 %.recomposed75 to i64
  %i.eg = getelementptr inbounds [24 x i8], ptr %i.ee, i64 %i.ef
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42
  %i.eh = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %indvars.iv ; 3 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store double %i.ej, ptr %i.ek, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store double %i.em, ptr %i.en, align 8, !tbaa !9
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ac:                                            ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i46.ph = phi ptr [ %i.eg, %bb.aa ], [ %i.dx, %bb.z ], [ %i.ds, %bb.x ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i46.ph, i64 8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store double %i.ep, ptr %i.eq, align 8, !tbaa !9
  %i.er = load i32, ptr %i.ad, align 8
  %i.es = icmp eq i32 %i.er, 1
  %or.cond.i48 = select i1 %i.cs, i1 true, i1 %i.es
  br i1 %or.cond.i48, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ae:                                            ; preds = %bb.ac
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ew = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ex = mul i64 %i.ew, %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ex
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ag:                                            ; preds = %bb.ae
  %i.ez = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fa = sdiv i32 %i.ez, %i.eu                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.eu                ; 0 uses
  %.recomposed76 = srem i32 %i.ez, %i.eu
  %i.fc = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.fd = sext i32 %i.fa to i64
  %i.fe = mul i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fe
  %i.fg = sext i32 %.recomposed76 to i64
  %i.fh = getelementptr inbounds [24 x i8], ptr %i.ff, i64 %i.fg
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50:     ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.0.i49 = phi ptr [ %i.ei, %bb.ab ], [ %i.et, %bb.ad ], [ %i.ey, %bb.af ], [ %i.fh, %bb.ag ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i49, i64 16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !57
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store double %i.fj, ptr %i.fk, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader56, label %bb.e, !llvm.loop !73

.preheader.epil:                                  ; preds = %.preheader.lr.ph, %.preheader.epil
  %indvars.iv64 = phi i64 [ %smax, %.preheader.lr.ph ], [ %indvars.iv.next65, %.preheader.epil ] ; 2 uses
  %sext = mul i64 %indvars.iv64, 21474836480
  %6 = ashr exact i64 %sext, 29
  %scevgep.epil = getelementptr nuw i8, ptr %i.ai, i64 %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.epil, i8 0, i64 40, i1 false), !tbaa !9
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %epil.iter.cmp.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader.epil, !llvm.loop !74

._crit_edge:                                      ; preds = %.preheader.epil, %.preheader56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.d = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 5, i1 noundef zeroext true) ; 2 uses
  %i.e = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 6, i1 noundef zeroext true) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 20
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.m = sub nuw nsw i64 20, %i.k
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.m)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %.not = icmp eq i64 %i.j, 160
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i38, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39:      ; preds = %bb.d
  store ptr %i.n, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39
  %i.o = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.o, label %.lr.ph, label %.preheader.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = icmp slt i32 %i.q, 2                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %3, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.e

.preheader56:                                     ; preds = %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50
  %i.ah = icmp slt i32 %.sroa.speculated, 4
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %.preheader56
  %i.ai = load ptr, ptr %3, align 8, !tbaa !31
  %4 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.d) ; 2 uses
  %smax = sext i32 %4 to i64
  %i.aj = add i32 %4, 4
  %5 = sub i32 %i.aj, %.sroa.speculated
  br label %.preheader.epil

bb.e:                                             ; preds = %.lr.ph, %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50 ] ; 20 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %2, align 8, !tbaa !18
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = load i32, ptr %i.s, align 8
  %i.aq = icmp eq i32 %i.ap, 1
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

bb.i:                                             ; preds = %bb.g
  %i.at = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !43
  %i.ax = mul i64 %i.aw, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

bb.k:                                             ; preds = %bb.i
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ba = sdiv i32 %i.az, %i.at                   ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.at                ; 0 uses
  %.recomposed = srem i32 %i.az, %i.at
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !43
  %i.be = sext i32 %i.ba to i64
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = sext i32 %.recomposed to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bh
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit

_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit:        ; preds = %bb.f, %bb.h, %bb.j, %bb.k
  %i.bj = phi ptr [ %i.ak, %bb.f ], [ %i.ar, %bb.h ], [ %i.av, %bb.j ], [ %i.bc, %bb.k ] ; 4 uses
  %.0.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %bb.h ], [ %i.ay, %bb.j ], [ %i.bi, %bb.k ]
  %i.bk = load double, ptr %.0.i, align 8, !tbaa !52
  %i.bl = load double, ptr %0, align 8, !tbaa !26
  %i.bm = load double, ptr %i.w, align 8, !tbaa !24
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bl, double %i.bm)
  %.idx = mul nuw nsw i64 %indvars.iv, 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 6 uses
  store double %i.bn, ptr %i.bo, align 8, !tbaa !9
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

bb.m:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit
  %i.bq = load i32, ptr %2, align 8, !tbaa !18
  %i.br = and i32 %i.bq, 16384
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = load i32, ptr %i.s, align 8
  %i.bu = icmp eq i32 %i.bt, 1
  %or.cond.i40 = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond.i40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

bb.o:                                             ; preds = %bb.m
  %i.bw = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.v, align 8, !tbaa !43
  %i.bz = mul i64 %i.by, %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bz
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

bb.q:                                             ; preds = %bb.o
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = sdiv i32 %i.cb, %i.bw                   ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %i.bw                ; 0 uses
  %.recomposed73 = srem i32 %i.cb, %i.bw
  %i.ce = load i64, ptr %i.v, align 8, !tbaa !43
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cg
  %i.ci = sext i32 %.recomposed73 to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ci
  br label %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42

_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42:      ; preds = %bb.l, %bb.n, %bb.p, %bb.q
  %.0.i41 = phi ptr [ %i.bp, %bb.l ], [ %i.bv, %bb.n ], [ %i.ca, %bb.p ], [ %i.cj, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i41, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !53
  %i.cm = load double, ptr %i.y, align 8, !tbaa !27
  %i.cn = load double, ptr %i.z, align 8, !tbaa !25
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cm, double %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store double %i.co, ptr %i.cp, align 8, !tbaa !9
  br i1 %i.ac, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42
  %i.cq = load i32, ptr %1, align 8, !tbaa !18
  %i.cr = and i32 %i.cq, 16384
  %i.cs = icmp ne i32 %i.cr, 0                    ; 3 uses
  %i.ct = load i32, ptr %i.ad, align 8
  %i.cu = icmp eq i32 %i.ct, 1
  %or.cond.i43 = select i1 %i.cs, i1 true, i1 %i.cu
  br i1 %or.cond.i43, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %indvars.iv
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.da = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.db = mul i64 %i.da, %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.de = sdiv i32 %i.dd, %i.cx                   ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.cx                ; 0 uses
  %.recomposed74 = srem i32 %i.dd, %i.cx
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.di = sext i32 %i.de to i64
  %i.dj = mul i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = sext i32 %.recomposed74 to i64
  %i.dm = getelementptr inbounds [12 x i8], ptr %i.dk, i64 %i.dl
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %i.dn = phi ptr [ %i.dg, %bb.v ], [ %i.cz, %bb.u ], [ %i.cv, %bb.s ] ; 6 uses
  %.0.i44.ph = phi ptr [ %i.dm, %bb.v ], [ %i.dc, %bb.u ], [ %i.cw, %bb.s ]
  %i.do = load float, ptr %.0.i44.ph, align 4, !tbaa !48
  %i.dp = fpext float %i.do to double
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store double %i.dp, ptr %i.dq, align 8, !tbaa !9
  %i.dr = load i32, ptr %i.ad, align 8
  %i.ds = icmp eq i32 %i.dr, 1
  %or.cond.i45 = select i1 %i.cs, i1 true, i1 %i.ds
  br i1 %or.cond.i45, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.du = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dw = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dx = mul i64 %i.dw, %indvars.iv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dx
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ea = sdiv i32 %i.dz, %i.du                   ; 2 uses
  %i.eb = mul nsw i32 %i.ea, %i.du                ; 0 uses
  %.recomposed75 = srem i32 %i.dz, %i.du
  %i.ec = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ed = sext i32 %i.ea to i64
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ee
  %i.eg = sext i32 %.recomposed75 to i64
  %i.eh = getelementptr inbounds [12 x i8], ptr %i.ef, i64 %i.eg
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK2cv3Mat2atINS_6Point_IdEEEERKT_i.exit42
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %indvars.iv ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.el = load <2 x float>, ptr %i.ej, align 4, !tbaa !22
  %i.em = fpext <2 x float> %i.el to <2 x double>
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !9
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

bb.ac:                                            ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i46.ph = phi ptr [ %i.eh, %bb.aa ], [ %i.dy, %bb.z ], [ %i.dt, %bb.x ]
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i46.ph, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !49
  %i.ep = fpext float %i.eo to double
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store double %i.ep, ptr %i.eq, align 8, !tbaa !9
  %i.er = load i32, ptr %i.ad, align 8
  %i.es = icmp eq i32 %i.er, 1
  %or.cond.i48 = select i1 %i.cs, i1 true, i1 %i.es
  br i1 %or.cond.i48, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

bb.ae:                                            ; preds = %bb.ac
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ew = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ex = mul i64 %i.ew, %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ex
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

bb.ag:                                            ; preds = %bb.ae
  %i.ez = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fa = sdiv i32 %i.ez, %i.eu                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.eu                ; 0 uses
  %.recomposed76 = srem i32 %i.ez, %i.eu
  %i.fc = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.fd = sext i32 %i.fa to i64
  %i.fe = mul i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fe
  %i.fg = sext i32 %.recomposed76 to i64
  %i.fh = getelementptr inbounds [12 x i8], ptr %i.ff, i64 %i.fg
  br label %_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50

_ZNK2cv3Mat2atINS_7Point3_IfEEEERKT_i.exit50:     ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.0.i49 = phi ptr [ %i.ej, %bb.ab ], [ %i.et, %bb.ad ], [ %i.ey, %bb.af ], [ %i.fh, %bb.ag ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i49, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !50
  %i.fk = fpext float %i.fj to double
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store double %i.fk, ptr %i.fl, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader56, label %bb.e, !llvm.loop !75

.preheader.epil:                                  ; preds = %.preheader.lr.ph, %.preheader.epil
  %indvars.iv64 = phi i64 [ %smax, %.preheader.lr.ph ], [ %indvars.iv.next65, %.preheader.epil ] ; 2 uses
  %sext = mul i64 %indvars.iv64, 21474836480
  %6 = ashr exact i64 %sext, 29
  %scevgep.epil = getelementptr nuw i8, ptr %i.ai, i64 %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.epil, i8 0, i64 40, i1 false), !tbaa !9
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %epil.iter.cmp.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader.epil, !llvm.loop !76

._crit_edge:                                      ; preds = %.preheader.epil, %.preheader56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.d = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 5, i1 noundef zeroext true) ; 2 uses
  %i.e = tail call noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 3, i32 noundef 6, i1 noundef zeroext true) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 20
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %i.m = sub nuw nsw i64 20, %i.k
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.m)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  %.not = icmp eq i64 %i.j, 160
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i38, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39:      ; preds = %bb.d
  store ptr %i.n, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i39
  %i.o = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.o, label %.lr.ph, label %.preheader.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = icmp slt i32 %i.q, 2                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %3, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.e

.preheader56:                                     ; preds = %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50
  %i.ah = icmp slt i32 %.sroa.speculated, 4
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %.preheader56
  %i.ai = load ptr, ptr %3, align 8, !tbaa !31
  %4 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.d) ; 2 uses
  %smax = sext i32 %4 to i64
  %i.aj = add i32 %4, 4
  %5 = sub i32 %i.aj, %.sroa.speculated
  br label %.preheader.epil

bb.e:                                             ; preds = %.lr.ph, %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50 ] ; 20 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %2, align 8, !tbaa !18
  %i.an = and i32 %i.am, 16384
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = load i32, ptr %i.s, align 8
  %i.aq = icmp eq i32 %i.ap, 1
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

bb.i:                                             ; preds = %bb.g
  %i.at = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !43
  %i.ax = mul i64 %i.aw, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

bb.k:                                             ; preds = %bb.i
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ba = sdiv i32 %i.az, %i.at                   ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.at                ; 0 uses
  %.recomposed = srem i32 %i.az, %i.at
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.bd = load i64, ptr %i.v, align 8, !tbaa !43
  %i.be = sext i32 %i.ba to i64
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bh = sext i32 %.recomposed to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit

_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit:        ; preds = %bb.f, %bb.h, %bb.j, %bb.k
  %i.bj = phi ptr [ %i.ak, %bb.f ], [ %i.ar, %bb.h ], [ %i.av, %bb.j ], [ %i.bc, %bb.k ] ; 4 uses
  %.0.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %bb.h ], [ %i.ay, %bb.j ], [ %i.bi, %bb.k ]
  %i.bk = load float, ptr %.0.i, align 4, !tbaa !45
  %i.bl = fpext float %i.bk to double
  %i.bm = load double, ptr %0, align 8, !tbaa !26
  %i.bn = load double, ptr %i.w, align 8, !tbaa !24
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bn)
  %.idx = mul nuw nsw i64 %indvars.iv, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 7 uses
  store double %i.bo, ptr %i.bp, align 8, !tbaa !9
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

bb.m:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit
  %i.br = load i32, ptr %2, align 8, !tbaa !18
  %i.bs = and i32 %i.br, 16384
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = load i32, ptr %i.s, align 8
  %i.bv = icmp eq i32 %i.bu, 1
  %or.cond.i40 = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond.i40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

bb.o:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !41  ; 4 uses
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !43
  %i.ca = mul i64 %i.bz, %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ca
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

bb.q:                                             ; preds = %bb.o
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cd = sdiv i32 %i.cc, %i.bx                   ; 2 uses
  %i.ce = mul nsw i32 %i.cd, %i.bx                ; 0 uses
  %.recomposed73 = srem i32 %i.cc, %i.bx
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !43
  %i.cg = sext i32 %i.cd to i64
  %i.ch = mul i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  %i.cj = sext i32 %.recomposed73 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  br label %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42

_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42:      ; preds = %bb.l, %bb.n, %bb.p, %bb.q
  %.0.i41 = phi ptr [ %i.bq, %bb.l ], [ %i.bw, %bb.n ], [ %i.cb, %bb.p ], [ %i.ck, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i41, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !46
  %i.cn = fpext float %i.cm to double
  %i.co = load double, ptr %i.y, align 8, !tbaa !27
  %i.cp = load double, ptr %i.z, align 8, !tbaa !25
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.co, double %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !9
  br i1 %i.ac, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42
  %i.cs = load i32, ptr %1, align 8, !tbaa !18
  %i.ct = and i32 %i.cs, 16384
  %i.cu = icmp ne i32 %i.ct, 0                    ; 3 uses
  %i.cv = load i32, ptr %i.ad, align 8
  %i.cw = icmp eq i32 %i.cv, 1
  %or.cond.i43 = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond.i43, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %indvars.iv
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dd = mul i64 %i.dc, %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.df = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dg = sdiv i32 %i.df, %i.cz                   ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %i.cz                ; 0 uses
  %.recomposed74 = srem i32 %i.df, %i.cz
  %i.di = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.dj = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dk = sext i32 %i.dg to i64
  %i.dl = mul i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = sext i32 %.recomposed74 to i64
  %i.do = getelementptr inbounds [24 x i8], ptr %i.dm, i64 %i.dn
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %i.dp = phi ptr [ %i.di, %bb.v ], [ %i.db, %bb.u ], [ %i.cx, %bb.s ] ; 6 uses
  %.0.i44.ph = phi ptr [ %i.do, %bb.v ], [ %i.de, %bb.u ], [ %i.cy, %bb.s ]
  %i.dq = load double, ptr %.0.i44.ph, align 8, !tbaa !55
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store double %i.dq, ptr %i.dr, align 8, !tbaa !9
  %i.ds = load i32, ptr %i.ad, align 8
  %i.dt = icmp eq i32 %i.ds, 1
  %or.cond.i45 = select i1 %i.cu, i1 true, i1 %i.dt
  br i1 %or.cond.i45, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.dv = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dx = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.dy = mul i64 %i.dx, %indvars.iv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dy
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ea = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.eb = sdiv i32 %i.ea, %i.dv                   ; 2 uses
  %i.ec = mul nsw i32 %i.eb, %i.dv                ; 0 uses
  %.recomposed75 = srem i32 %i.ea, %i.dv
  %i.ed = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ee = sext i32 %i.eb to i64
  %i.ef = mul i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ef
  %i.eh = sext i32 %.recomposed75 to i64
  %i.ei = getelementptr inbounds [24 x i8], ptr %i.eg, i64 %i.eh
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK2cv3Mat2atINS_6Point_IfEEEERKT_i.exit42
  %i.ej = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %indvars.iv ; 3 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !55
  %i.em = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store double %i.el, ptr %i.em, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !56
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store double %i.eo, ptr %i.ep, align 8, !tbaa !9
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ac:                                            ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i46.ph = phi ptr [ %i.ei, %bb.aa ], [ %i.dz, %bb.z ], [ %i.du, %bb.x ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i46.ph, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !56
  %i.es = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store double %i.er, ptr %i.es, align 8, !tbaa !9
  %i.et = load i32, ptr %i.ad, align 8
  %i.eu = icmp eq i32 %i.et, 1
  %or.cond.i48 = select i1 %i.cu, i1 true, i1 %i.eu
  br i1 %or.cond.i48, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ae:                                            ; preds = %bb.ac
  %i.ew = load i32, ptr %i.ae, align 4, !tbaa !41 ; 4 uses
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ey = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ez = mul i64 %i.ey, %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ez
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ag:                                            ; preds = %bb.ae
  %i.fb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fc = sdiv i32 %i.fb, %i.ew                   ; 2 uses
  %i.fd = mul nsw i32 %i.fc, %i.ew                ; 0 uses
  %.recomposed76 = srem i32 %i.fb, %i.ew
  %i.fe = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.ff = sext i32 %i.fc to i64
  %i.fg = mul i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fg
  %i.fi = sext i32 %.recomposed76 to i64
  %i.fj = getelementptr inbounds [24 x i8], ptr %i.fh, i64 %i.fi
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50:     ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.0.i49 = phi ptr [ %i.ek, %bb.ab ], [ %i.ev, %bb.ad ], [ %i.fa, %bb.af ], [ %i.fj, %bb.ag ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i49, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !57
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store double %i.fl, ptr %i.fm, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader56, label %bb.e, !llvm.loop !77

.preheader.epil:                                  ; preds = %.preheader.lr.ph, %.preheader.epil
  %indvars.iv64 = phi i64 [ %smax, %.preheader.lr.ph ], [ %indvars.iv.next65, %.preheader.epil ] ; 2 uses
  %sext = mul i64 %indvars.iv64, 21474836480
  %6 = ashr exact i64 %sext, 29
  %scevgep.epil = getelementptr nuw i8, ptr %i.ai, i64 %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.epil, i8 0, i64 40, i1 false), !tbaa !9
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %epil.iter.cmp.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader.epil, !llvm.loop !78

._crit_edge:                                      ; preds = %.preheader.epil, %.preheader56
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4ap3p5solveEPA3_dPddddddddddddddddddddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12, double noundef %13, double noundef %14, double noundef %15, double noundef %16, double noundef %17, double noundef %18, double noundef %19, double noundef %20, double noundef %21, double noundef %22) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x [4 x double]], align 16      ; 12 uses
  %i.b = alloca [3 x [4 x double]], align 16      ; 15 uses
  %i.c = alloca [4 x [3 x [3 x double]]], align 16 ; 7 uses
  %i.d = alloca [4 x [3 x double]], align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.c, i8 0, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.g = load <2 x double>, ptr %i.e, align 8, !tbaa !9 ; 5 uses
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !9
  %i.i = fneg <2 x double> %i.h                   ; 5 uses
  %i.j = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = insertelement <2 x double> poison, double %3, i64 0
  %i.l = insertelement <2 x double> %i.k, double %8, i64 1
  %i.m = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.l, <2 x double> %i.m) ; 3 uses
  %i.o = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.p = insertelement <2 x double> poison, double %4, i64 0
  %i.q = insertelement <2 x double> %i.p, double %9, i64 1
  %i.r = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.q, <2 x double> %i.r) ; 3 uses
  %i.t = fmul <2 x double> %i.s, %i.s
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.n, <2 x double> %i.t)
  %i.v = fadd <2 x double> %i.u, splat (double 1.000000e+00)
  %i.w = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.v)
  %i.x = fdiv <2 x double> splat (double 1.000000e+00), %i.w ; 3 uses
  %i.y = fmul <2 x double> %i.n, %i.x
  %i.z = extractelement <2 x double> %i.g, i64 0
  %i.aa = extractelement <2 x double> %i.i, i64 0
  %i.ab = extractelement <2 x double> %i.g, i64 1
  %i.ac = extractelement <2 x double> %i.i, i64 1
  %i.ad = insertelement <2 x double> poison, double %13, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %14, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.ae, <2 x double> %i.i) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1 ; 3 uses
  %i.ah = fmul double %i.ag, %i.ag
  %i.ai = extractelement <2 x double> %i.af, i64 0 ; 3 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ah)
  %i.ak = fadd double %i.aj, 1.000000e+00
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ak)
  %i.al = fdiv double 1.000000e+00, %sqrt.i       ; 3 uses
  %i.am = fmul double %i.ai, %i.al
  %i.an = fmul double %i.ag, %i.al
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.z, double %18, double %i.aa)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ab, double %19, double %i.ac)
  store <2 x double> %i.y, ptr %i.a, align 16, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.am, ptr %i.aq, align 16, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ao, ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.at = fmul <2 x double> %i.s, %i.x
  store <2 x double> %i.at, ptr %i.as, align 16, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.an, ptr %i.au, align 16, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.ap, ptr %i.av, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> %i.x, ptr %i.aw, align 16, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.al, ptr %i.ax, align 16, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double 1.000000e+00, ptr %i.ay, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store double %5, ptr %i.b, align 16, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %10, ptr %i.az, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %15, ptr %i.ba, align 16, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %20, ptr %i.bb, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %6, ptr %i.bc, align 16, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %11, ptr %i.bd, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double %16, ptr %i.be, align 16, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %21, ptr %i.bf, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %7, ptr %i.bg, align 16, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store double %12, ptr %i.bh, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store double %17, ptr %i.bi, align 16, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double %22, ptr %i.bj, align 8, !tbaa !9
  %i.bk = call noundef i32 @_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b(ptr nonnull readonly align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bl = icmp ne i32 %i.bk, 0                    ; 2 uses
  br i1 %i.bl, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa !9
  %i.bm = load double, ptr %i.d, align 16, !tbaa !9
  store double %i.bm, ptr %2, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.bq, ptr %i.br, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 16 dereferenceable(24) %i.bs, i64 24, i1 false), !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.bv, ptr %i.bw, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i1 %i.bl
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #6

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x [4 x double]], align 16      ; 12 uses
  %i.b = alloca [3 x [4 x double]], align 16      ; 15 uses
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.c = alloca [4 x [3 x [3 x double]]], align 16 ; 6 uses
  %i.d = alloca [4 x [3 x double]], align 16      ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_E25__cv_trace_location_fn301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.c, i8 0, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %3, align 8, !tbaa !18
  %i.f = and i32 %i.e, 31                         ; 2 uses
  %i.g = load i32, ptr %4, align 8, !tbaa !18
  %i.h = and i32 %i.g, 31
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = icmp eq i32 %i.f, 5                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai
end_hunk_0
begin_hunk_1_@_ZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_:bb.a
  %i.ao = load double, ptr %i.an, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.as = load double, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.av = load <2 x double>, ptr %i.o, align 8, !tbaa !9 ; 2 uses
  %i.aw = load <2 x double>, ptr %i.v, align 8, !tbaa !9 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.at, align 8, !tbaa !9 ; 5 uses
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !9
  %i.az = fneg <2 x double> %i.ay                 ; 5 uses
  %i.ba = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bb, <2 x double> %i.bc) ; 3 uses
  %i.be = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = shufflevector <2 x double> %i.av, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bg = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bf, <2 x double> %i.bg) ; 3 uses
  %i.bi = fmul <2 x double> %i.bh, %i.bh
  %i.bj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bi)
  %i.bk = fadd <2 x double> %i.bj, splat (double 1.000000e+00)
  %i.bl = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bk)
  %i.bm = fdiv <2 x double> splat (double 1.000000e+00), %i.bl ; 3 uses
  %i.bn = fmul <2 x double> %i.bd, %i.bm
  %i.bo = extractelement <2 x double> %i.ax, i64 0
  %i.bp = extractelement <2 x double> %i.az, i64 0
  %i.bq = extractelement <2 x double> %i.ax, i64 1
  %i.br = extractelement <2 x double> %i.az, i64 1
  %i.bs = load <2 x double>, ptr %i.ac, align 8, !tbaa !9
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bs, <2 x double> %i.az) ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 1 ; 3 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = extractelement <2 x double> %i.bt, i64 0 ; 3 uses
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bv)
  %i.by = fadd double %i.bx, 1.000000e+00
  %sqrt.i = call double @llvm.sqrt.f64(double %i.by)
  %i.bz = fdiv double 1.000000e+00, %sqrt.i       ; 3 uses
  %i.ca = fmul double %i.bw, %i.bz
  %i.cb = fmul double %i.bu, %i.bz
  %i.cc = call double @llvm.fmuladd.f64(double %i.bo, double %i.ak, double %i.bp)
  %i.cd = call double @llvm.fmuladd.f64(double %i.bq, double %i.am, double %i.br)
  store <2 x double> %i.bn, ptr %i.a, align 16, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ca, ptr %i.ce, align 16, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.cc, ptr %i.cf, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ch = fmul <2 x double> %i.bh, %i.bm
  store <2 x double> %i.ch, ptr %i.cg, align 16, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.cb, ptr %i.ci, align 16, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.cd, ptr %i.cj, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> %i.bm, ptr %i.ck, align 16, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.bz, ptr %i.cl, align 16, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double 1.000000e+00, ptr %i.cm, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store double %i.q, ptr %i.b, align 16, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.x, ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.ae, ptr %i.co, align 16, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.ao, ptr %i.cp, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %i.s, ptr %i.cq, align 16, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %i.z, ptr %i.cr, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double %i.ag, ptr %i.cs, align 16, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %i.aq, ptr %i.ct, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %i.u, ptr %i.cu, align 16, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store double %i.ab, ptr %i.cv, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store double %i.ai, ptr %i.cw, align 16, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double %i.as, ptr %i.cx, align 8, !tbaa !9
  %i.cy = invoke noundef i32 @_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b(ptr nonnull readonly align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext %i.n)
          to label %_ZN2cv4ap3p5solveEPA3_A3_dPS1_ddddddddddddddddddddb.exit unwind label %bb.q ; 3 uses

_ZN2cv4ap3p5solveEPA3_A3_dPS1_ddddddddddddddddddddb.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv4ap3p5solveEPA3_A3_dPS1_ddddddddddddddddddddb.exit
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.trip.count = zext nneg i32 %i.cy to i64
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit53, %_ZN2cv4ap3p5solveEPA3_A3_dPS1_ddddddddddddddddddddb.exit
  %i.di = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !36
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !39
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #19
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %i.cy

bb.o:                                             ; preds = %bb.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.p:                                             ; preds = %bb.j
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.q:                                             ; preds = %bb.k
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.r:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit53
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit53 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %i.dv, i64 noundef 0)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i64 0, ptr %i.db, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !34
  store ptr %8, ptr %i.da, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.dw = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %indvars.iv
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.dw, i64 noundef 0)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i64 0, ptr %i.dd, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !34
  store ptr %7, ptr %i.dc, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.dx = load ptr, ptr %i.de, align 8, !tbaa !60 ; 3 uses
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !61
  %.not.i48 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i48, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dx, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.w
  %i.dz = load ptr, ptr %i.de, align 8, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 208
  store ptr %i.ea, ptr %i.de, align 8, !tbaa !60
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.x:                                             ; preds = %bb.v
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dx, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ag

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.x
  %i.eb = load ptr, ptr %i.dg, align 8, !tbaa !60 ; 3 uses
  %i.ec = load ptr, ptr %i.dh, align 8, !tbaa !61
  %.not.i50 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i50, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.eb, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %.noexc51 unwind label %bb.ag

.noexc51:                                         ; preds = %bb.y
  %i.ed = load ptr, ptr %i.dg, align 8, !tbaa !60
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 208
  store ptr %i.ee, ptr %i.dg, align 8, !tbaa !60
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit53

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.eb, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit53 unwind label %bb.ag

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit53: ; preds = %.noexc51, %bb.z
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !79

bb.aa:                                            ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.s
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn37.pn = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %i.ef, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ah

bb.ad:                                            ; preds = %bb.t
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.u
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn40.pn = phi { ptr, i32 } [ %i.ei, %bb.ae ], [ %i.eh, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ac
  %.pn43 = phi { ptr, i32 } [ %i.ej, %bb.ag ], [ %.pn40.pn, %bb.af ], [ %.pn37.pn, %bb.ac ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.o, %bb.p, %bb.ah, %bb.q, %bb.d
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.du, %bb.q ], [ %.pn43, %bb.ah ], [ %i.dt, %bb.p ], [ %i.ds, %bb.o ]
  %i.ek = load ptr, ptr %6, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIdSaIdEED2Ev.exit55, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !36
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit55

_ZNSt6vectorIdSaIdEED2Ev.exit55:                  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

declare noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv4ap3p5solveEPA3_A3_dPS1_ddddddddddddddddddddb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12, double noundef %13, double noundef %14, double noundef %15, double noundef %16, double noundef %17, double noundef %18, double noundef %19, double noundef %20, double noundef %21, double noundef %22, i1 noundef zeroext %23) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x [4 x double]], align 16      ; 12 uses
  %i.b = alloca [3 x [4 x double]], align 16      ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !9 ; 5 uses
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !9
  %i.g = fneg <2 x double> %i.f                   ; 5 uses
  %i.h = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x double> poison, double %3, i64 0
  %i.j = insertelement <2 x double> %i.i, double %8, i64 1
  %i.k = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.j, <2 x double> %i.k) ; 3 uses
  %i.m = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = insertelement <2 x double> poison, double %4, i64 0
  %i.o = insertelement <2 x double> %i.n, double %9, i64 1
  %i.p = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.p) ; 3 uses
  %i.r = fmul <2 x double> %i.q, %i.q
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.l, <2 x double> %i.r)
  %i.t = fadd <2 x double> %i.s, splat (double 1.000000e+00)
  %i.u = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.t)
  %i.v = fdiv <2 x double> splat (double 1.000000e+00), %i.u ; 3 uses
  %i.w = fmul <2 x double> %i.l, %i.v
  %i.x = extractelement <2 x double> %i.e, i64 0
  %i.y = extractelement <2 x double> %i.g, i64 0
  %i.z = extractelement <2 x double> %i.e, i64 1
  %i.aa = extractelement <2 x double> %i.g, i64 1
  %i.ab = insertelement <2 x double> poison, double %13, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %14, i64 1
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.ac, <2 x double> %i.g) ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = extractelement <2 x double> %i.ad, i64 0 ; 3 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.af)
  %i.ai = fadd double %i.ah, 1.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = fdiv double 1.000000e+00, %sqrt         ; 3 uses
  %i.ak = fmul double %i.ag, %i.aj
  %i.al = fmul double %i.ae, %i.aj
  %i.am = tail call double @llvm.fmuladd.f64(double %i.x, double %18, double %i.y)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.z, double %19, double %i.aa)
  store <2 x double> %i.w, ptr %i.a, align 16, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ak, ptr %i.ao, align 16, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.am, ptr %i.ap, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = fmul <2 x double> %i.q, %i.v
  store <2 x double> %i.ar, ptr %i.aq, align 16, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.al, ptr %i.as, align 16, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.an, ptr %i.at, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> %i.v, ptr %i.au, align 16, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.aj, ptr %i.av, align 16, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double 1.000000e+00, ptr %i.aw, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store double %5, ptr %i.b, align 16, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %10, ptr %i.ax, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %15, ptr %i.ay, align 16, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %20, ptr %i.az, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %6, ptr %i.ba, align 16, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %11, ptr %i.bb, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double %16, ptr %i.bc, align 16, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %21, ptr %i.bd, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %7, ptr %i.be, align 16, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store double %12, ptr %i.bf, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store double %17, ptr %i.bg, align 16, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double %22, ptr %i.bh, align 8, !tbaa !9
  %i.bi = call noundef i32 @_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.bi
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !9
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !40
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !9
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #17
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #17
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !80

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i29) #17
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i29) #17
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 208 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !80

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #18
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !61
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #18
  invoke void @__cxa_rethrow() #20
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #19
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x double> @llvm.fmuladd.v3f64(<3 x double>, <3 x double>, <3 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!13 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!14 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!15 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !14, i64 4, !5, i64 8, !4, i64 12}
!16 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!17 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !12, i64 56, !13, i64 64, !15, i64 72, !16, i64 128}
!18 = !{!17, !5, i64 0}
!19 = !{!17, !5, i64 4}
!20 = !{!17, !11, i64 24}
!21 = !{!"float", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSN2cv4ap3pE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!24 = !{!23, !8, i64 16}
!25 = !{!23, !8, i64 24}
!26 = !{!23, !8, i64 0}
!27 = !{!23, !8, i64 8}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"p1 double", !10, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!33 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !10, i64 8, !32, i64 16}
!34 = !{!33, !5, i64 0}
!35 = !{!33, !10, i64 8}
!36 = !{!30, !29, i64 16}
!37 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !10, i64 0}
!38 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !37, i64 0, !5, i64 8}
!39 = !{!38, !5, i64 8}
!40 = !{!30, !29, i64 8}
!41 = !{!17, !5, i64 12}
!42 = !{!"long", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSN2cv6Point_IfEE", !21, i64 0, !21, i64 4}
!45 = !{!44, !21, i64 0}
!46 = !{!44, !21, i64 4}
!47 = !{!"_ZTSN2cv7Point3_IfEE", !21, i64 0, !21, i64 4, !21, i64 8}
!48 = !{!47, !21, i64 0}
!49 = !{!47, !21, i64 4}
!50 = !{!47, !21, i64 8}
!51 = !{!"_ZTSN2cv6Point_IdEE", !8, i64 0, !8, i64 8}
!52 = !{!51, !8, i64 0}
!53 = !{!51, !8, i64 8}
!54 = !{!"_ZTSN2cv7Point3_IdEE", !8, i64 0, !8, i64 8, !8, i64 16}
!55 = !{!54, !8, i64 0}
!56 = !{!54, !8, i64 8}
!57 = !{!54, !8, i64 16}
!58 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 8}
!61 = !{!59, !58, i64 16}
!62 = distinct !{!62, !28, !69, !70}
!63 = distinct !{!63, !28, !70, !69}
!64 = distinct !{!64, !28, !70, !69}
!65 = distinct !{!65, !28, !69, !70}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !28}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !28}
!81 = !{!59, !58, i64 0}
end_hunk_1
