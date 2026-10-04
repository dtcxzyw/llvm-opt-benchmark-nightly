Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/route?download=true
inline.NumInlined: 60
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@reallyroutespline:bb.a
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244.epil.init ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  %i.ab = fdiv double %i.aa, %i.y
  store double %i.ab, ptr %i.z, align 8, !tbaa !34
  br label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %.epil.preheader, %.lr.ph210.preheader.loopexit.unr-lcssa, %.preheader
  %wide.trip.count252 = zext nneg i32 %3 to i64
  %i.ac = insertelement <2 x double> poison, double %4, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %5, i64 1
  %i.ae = insertelement <2 x double> poison, double %6, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %7, i64 1
  br label %.lr.ph210

bb.c:                                             ; preds = %bb.c, %.lr.ph208.new
  %indvars.iv244 = phi i64 [ 1, %.lr.ph208.new ], [ %indvars.iv.next245.1, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph208.new ], [ %niter.next.1, %bb.c ]
  %i.ag = load double, ptr %i.k, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  %i.aj = fdiv double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !34
  %i.ak = load double, ptr %i.k, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv244
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !34
  %i.ao = fdiv double %i.an, %i.ak
  store double %i.ao, ptr %i.am, align 8, !tbaa !34
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph210.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.ap = load double, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = zext nneg i32 %3 to i64                 ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -16
  %i.av = load double, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.at, i64 -8
  %i.ax = load double, ptr %i.aw, align 8
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ap, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ar, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %.sroa.17.0107.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ce, %bb.d ]
  %i.bc = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.ct, %bb.d ]
  %i.bd = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cu, %bb.d ]
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bi = load double, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.bj = fsub double 1.000000e+00, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1 ; 4 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bl)
  %i.bp = fmul <2 x double> %i.bm, %i.bo          ; 2 uses
  %i.bq = fmul <2 x double> %i.az, %i.bp
  %i.br = fmul <2 x double> %i.bb, %i.bp
  %i.bs = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bq)
  %i.bt = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.br)
  %i.bu = load double, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bw = load double, ptr %i.bv, align 8
  %i.bx = fsub double %i.bu, %i.bs                ; 2 uses
  %i.by = fsub double %i.bw, %i.bt                ; 2 uses
  %i.bz = load <4 x double>, ptr %i.bf, align 8   ; 7 uses
  %i.ca = load double, ptr %i.bg, align 8         ; 2 uses
  %i.cb = fmul double %i.ca, %i.ca
  %i.cc = extractelement <4 x double> %i.bz, i64 2 ; 2 uses
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cb)
  %i.ce = fadd double %.sroa.17.0107.i, %i.cd     ; 2 uses
  %i.cf = shufflevector <4 x double> %i.bz, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.cg = shufflevector <4 x double> %i.bz, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ch = insertelement <2 x double> %i.cg, double %i.by, i64 1
  %i.ci = fmul <2 x double> %i.cg, %i.ch
  %i.cj = shufflevector <4 x double> %i.bz, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ck = shufflevector <4 x double> %i.bz, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = insertelement <2 x double> %i.ck, double %i.bx, i64 1
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.ci)
  %i.cn = shufflevector <4 x double> %i.bz, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %i.by, i64 1
  %i.cp = fmul <2 x double> %i.cf, %i.co
  %i.cq = shufflevector <4 x double> %i.bz, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.cr = insertelement <2 x double> %i.cq, double %i.bx, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cr, <2 x double> %i.cp)
  %i.ct = fadd <2 x double> %i.bc, %i.cm          ; 2 uses
  %i.cu = fadd <2 x double> %i.bd, %i.cs          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.as
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.d, %.preheader
  %.sroa.17.0.lcssa.i = phi double [ 0.000000e+00, %.preheader ], [ %i.ce, %bb.d ] ; 2 uses
  %i.cv = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.ct, %bb.d ] ; 3 uses
  %i.cw = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.cu, %bb.d ] ; 3 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0 ; 2 uses
  %i.cy = fneg double %i.cx                       ; 2 uses
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = extractelement <2 x double> %i.cv, i64 0
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %.sroa.17.0.lcssa.i, double %i.cz) ; 2 uses
  %i.dc = tail call double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp ult double %i.dc, f0x3EB0C6F7A0B5ED8D
  br i1 %i.dd, label %._crit_edge.i..thread.i_crit_edge, label %bb.e

._crit_edge.i..thread.i_crit_edge:                ; preds = %._crit_edge.i
  %.pre267 = load double, ptr %2, align 8
  br label %.thread.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.de = fneg <2 x double> %i.cv
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x double> %i.df, double %i.cy, i64 1
  %i.dh = fmul <2 x double> %i.cw, %i.dg
  %i.di = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x double> %i.di, double %.sroa.17.0.lcssa.i, i64 1
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.dj, <2 x double> %i.dh)
  %i.dl = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fdiv <2 x double> %i.dk, %i.dm          ; 3 uses
  %i.do = extractelement <2 x double> %i.dn, i64 1 ; 2 uses
  %i.dp = extractelement <2 x double> %i.dn, i64 0 ; 2 uses
  %i.dq = fcmp ole double %i.do, 0.000000e+00
  %i.dr = fcmp ole double %i.dp, 0.000000e+00
  %or.cond3.i = select i1 %i.dq, i1 true, i1 %i.dr
  %.pre268 = load double, ptr %2, align 8         ; 2 uses
  br i1 %or.cond3.i, label %.thread.i, label %.mkspline.exit_crit_edge

.mkspline.exit_crit_edge:                         ; preds = %bb.e
  %.sroa.6173.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6173.0.copyload.pre = load double, ptr %.sroa.6173.0..sroa_idx.phi.trans.insert, align 8, !tbaa !9
  %.phi.trans.insert262 = getelementptr [16 x i8], ptr %2, i64 %i.e
  %.phi.trans.insert263 = getelementptr i8, ptr %.phi.trans.insert262, i64 -16
  %i.ds = load <2 x double>, ptr %.phi.trans.insert263, align 8, !tbaa !9
  br label %mkspline.exit

.thread.i:                                        ; preds = %._crit_edge.i..thread.i_crit_edge, %bb.e
  %i.dt = phi double [ %.pre267, %._crit_edge.i..thread.i_crit_edge ], [ %.pre268, %bb.e ] ; 2 uses
  %i.du = getelementptr [16 x i8], ptr %2, i64 %i.e
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load double, ptr %i.dw, align 8         ; 2 uses
  %i.dy = load <2 x double>, ptr %i.dv, align 8   ; 3 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = fsub double %i.dz, %i.dt
  %i.eb = extractelement <2 x double> %i.dy, i64 1
  %i.ec = fsub double %i.eb, %i.dx
  %i.ed = tail call double @hypot(double noundef %i.ea, double noundef %i.ec) #11
  %i.ee = fdiv double %i.ed, 3.000000e+00         ; 3 uses
  %i.ef = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  br label %mkspline.exit

mkspline.exit:                                    ; preds = %.mkspline.exit_crit_edge, %.thread.i
  %.sroa.6173.0.copyload = phi double [ %i.dx, %.thread.i ], [ %.sroa.6173.0.copyload.pre, %.mkspline.exit_crit_edge ] ; 9 uses
  %.sroa.0170.0.copyload = phi double [ %i.dt, %.thread.i ], [ %.pre268, %.mkspline.exit_crit_edge ] ; 10 uses
  %.185.i = phi double [ %i.ee, %.thread.i ], [ %i.do, %.mkspline.exit_crit_edge ]
  %.1.i = phi double [ %i.ee, %.thread.i ], [ %i.dp, %.mkspline.exit_crit_edge ]
  %i.eh = phi <2 x double> [ %i.dy, %.thread.i ], [ %i.ds, %.mkspline.exit_crit_edge ] ; 11 uses
  %i.ei = phi <2 x double> [ %i.eg, %.thread.i ], [ %i.dn, %.mkspline.exit_crit_edge ]
  %i.ej = fmul double %4, %.185.i                 ; 2 uses
  %i.ek = insertelement <2 x double> poison, double %6, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %5, i64 1
  %i.em = fmul <2 x double> %i.el, %i.ei          ; 2 uses
  %i.en = fmul double %7, %.1.i                   ; 2 uses
  %i.eo = icmp eq i32 %3, 2
  %wide.trip.count.i.i = zext nneg i32 %3 to i64
  %.not68.i.i = icmp eq i64 %1, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.es = extractelement <2 x double> %i.eh, i64 1 ; 3 uses
  %i.et = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.eu = insertelement <2 x double> %i.et, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.ev = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ew = insertelement <2 x double> %i.ev, double %i.ej, i64 0
  %i.ex = insertelement <2 x double> %i.eh, double %.sroa.0170.0.copyload, i64 1
  %i.ey = insertelement <2 x double> poison, double %.sroa.0170.0.copyload, i64 0 ; 2 uses
  %i.ez = insertelement <2 x double> %i.eh, double %.sroa.6173.0.copyload, i64 0 ; 3 uses
  %i.fa = insertelement <2 x double> %i.ev, double %i.en, i64 1
  %i.fb = insertelement <2 x double> poison, double %.sroa.6173.0.copyload, i64 0
  %i.fc = insertelement <2 x double> %i.et, double %.sroa.6173.0.copyload, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %mkspline.exit
  %.032.i = phi double [ 4.000000e+00, %mkspline.exit ], [ %.133.i, %bb.am ] ; 4 uses
  %.not.i = phi i1 [ false, %mkspline.exit ], [ true, %bb.am ]
  %i.fd = insertelement <2 x double> poison, double %.032.i, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = fmul <2 x double> %i.ew, %i.fe
  %i.fg = fdiv <2 x double> %i.ff, splat (double 3.000000e+00) ; 2 uses
  %i.fh = fadd <2 x double> %i.eu, %i.fg          ; 3 uses
  %i.fi = fsub <2 x double> %i.eu, %i.fg          ; 6 uses
  %i.fj = shufflevector <2 x double> %i.fh, <2 x double> %i.fi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fk = extractelement <2 x double> %i.fh, i64 0 ; 6 uses
  %i.fl = fmul <2 x double> %i.fa, %i.fe
  %i.fm = fdiv <2 x double> %i.fl, splat (double 3.000000e+00) ; 2 uses
  %i.fn = fadd <2 x double> %i.ez, %i.fm          ; 6 uses
  %i.fo = fsub <2 x double> %i.ez, %i.fm          ; 4 uses
  br i1 %.not.i, label %bb.g, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.fp = shufflevector <2 x double> %i.fn, <2 x double> %i.fo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fq = fsub double %i.fk, %.sroa.0170.0.copyload
  %i.fr = shufflevector <2 x double> %i.ez, <2 x double> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fs = fsub <2 x double> %i.fp, %i.fr          ; 2 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0
  %i.fu = call double @hypot(double noundef %i.fq, double noundef %i.ft) #11
  %i.fv = fadd double %i.fu, 0.000000e+00
  %i.fw = shufflevector <2 x double> %i.fi, <2 x double> %i.eh, <2 x i32> <i32 1, i32 2>
  %i.fx = fsub <2 x double> %i.fw, %i.fj          ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  %i.fz = extractelement <2 x double> %i.fs, i64 1
  %i.ga = call double @hypot(double noundef %i.fy, double noundef %i.fz) #11
  %i.gb = fadd double %i.fv, %i.ga
  %foldExtExtBinop = fsub <2 x double> %i.eh, %i.fp
  %i.gc = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.gd = extractelement <2 x double> %i.fx, i64 1
  %i.ge = call double @hypot(double noundef %i.gd, double noundef %i.gc) #11
  %i.gf = fadd double %i.gb, %i.ge
  br i1 %i.h, label %.lr.ph.i36.i, label %dist_n.exit41.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i36.i
  %indvars.iv.i37.i = phi i64 [ %indvars.iv.next.i39.i, %.lr.ph.i36.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %.014.i38.i = phi double [ %i.go, %.lr.ph.i36.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i37.i ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -16
  %i.gi = load <2 x double>, ptr %i.gg, align 8, !tbaa !9
  %i.gj = load <2 x double>, ptr %i.gh, align 8, !tbaa !9
  %i.gk = fsub <2 x double> %i.gi, %i.gj          ; 2 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 0
  %i.gm = extractelement <2 x double> %i.gk, i64 1
  %i.gn = call double @hypot(double noundef %i.gl, double noundef %i.gm) #11
  %i.go = fadd double %.014.i38.i, %i.gn          ; 2 uses
  %indvars.iv.next.i39.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %indvars.iv.next.i39.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i40.i, label %dist_n.exit41.loopexit.i, label %.lr.ph.i36.i, !llvm.loop !22

dist_n.exit41.loopexit.i:                         ; preds = %.lr.ph.i36.i
  %i.gp = fadd double %i.go, -1.000000e-03
  br label %dist_n.exit41.i

dist_n.exit41.i:                                  ; preds = %dist_n.exit41.loopexit.i, %.lr.ph.i.preheader.i
  %.0.lcssa.i.i = phi double [ -1.000000e-03, %.lr.ph.i.preheader.i ], [ %i.gp, %dist_n.exit41.loopexit.i ]
  %i.gq = fcmp olt double %i.gf, %.0.lcssa.i.i
  br i1 %i.gq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %dist_n.exit41.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.g
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ex) ; 2 uses
  %shift = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348 = fsub <2 x double> %i.gr, %shift
  %i.gs = extractelement <2 x double> %foldExtExtBinop348, i64 0 ; 2 uses
  %i.gt = fsub double %i.fk, %.sroa.0170.0.copyload
  %i.gu = fmul double %i.gt, 3.000000e+00         ; 2 uses
  %i.gv = shufflevector <2 x double> %i.fi, <2 x double> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.gw = fmul <2 x double> %i.gv, <double 3.000000e+00, double 1.000000e+00>
  %i.gx = shufflevector <2 x double> %i.ey, <2 x double> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> splat (double 3.000000e+00), <2 x double> %i.gw) ; 2 uses
  %8 = extractelement <2 x double> %i.gy, i64 0
  %9 = call double @llvm.fmuladd.f64(double %i.fk, double -6.000000e+00, double %8) ; 2 uses
  %10 = extractelement <2 x double> %i.fo, i64 1  ; 3 uses
  %11 = call double @llvm.fmuladd.f64(double %10, double 3.000000e+00, double %.sroa.6173.0.copyload)
  %i.gz = extractelement <2 x double> %i.gy, i64 1
  %12 = fsub double %i.gz, %11                    ; 2 uses
  %i.ha = fmul double %10, 3.000000e+00
  %i.hb = call double @llvm.fmuladd.f64(double %.sroa.6173.0.copyload, double 3.000000e+00, double %i.ha)
  %i.hc = extractelement <2 x double> %i.fn, i64 0 ; 3 uses
  %i.hd = call double @llvm.fmuladd.f64(double %i.hc, double -6.000000e+00, double %i.hb) ; 2 uses
  %i.he = fsub double %i.hc, %.sroa.6173.0.copyload
  %i.hf = fmul double %i.he, 3.000000e+00         ; 2 uses
  %i.hg = shufflevector <2 x double> %i.ey, <2 x double> %i.fh, <2 x i32> <i32 0, i32 2>
  %i.hh = shufflevector <2 x double> %i.fi, <2 x double> %i.eh, <2 x i32> <i32 1, i32 2>
  %i.hi = shufflevector <2 x double> %i.fb, <2 x double> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.hj = shufflevector <2 x double> %i.fo, <2 x double> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.hk = extractelement <2 x double> %i.fi, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.lr.ph71.i.i
  %.04969.i.i = phi i64 [ 0, %.lr.ph71.i.i ], [ %i.oh, %.loopexit.i.i ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.04969.i.i ; 4 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %i.hl, align 8, !tbaa !9 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.sroa.5.0.copyload.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !9 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %.sroa.7.16.copyload.i.i = load double, ptr %i.hm, align 8, !tbaa !9 ; 2 uses
  %.sroa.10.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %.sroa.10.16.copyload.i.i = load double, ptr %.sroa.10.16..sroa_idx.i.i, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.hn = fsub double %.sroa.7.16.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.ho = fsub double %.sroa.10.16.copyload.i.i, %.sroa.5.0.copyload.i.i ; 3 uses
  %i.hp = fcmp oeq double %i.hn, 0.000000e+00
  br i1 %i.hp, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.hq = fcmp oeq double %i.ho, 0.000000e+00
  store double %i.gs, ptr %i.ep, align 8, !tbaa !9
  store double %9, ptr %i.eq, align 16, !tbaa !9
  store double %i.gu, ptr %i.er, align 8, !tbaa !9
  %i.hr = fsub double %.sroa.0170.0.copyload, %.sroa.0.0.copyload.i.i
  store double %i.hr, ptr %i.a, align 16, !tbaa !9
  %i.hs = call i32 @solve3(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 9 uses
  br i1 %i.hq, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  store double %12, ptr %i.ep, align 8, !tbaa !9
  store double %i.hd, ptr %i.eq, align 16, !tbaa !9
  store double %i.hf, ptr %i.er, align 8, !tbaa !9
  %i.ht = fsub double %.sroa.6173.0.copyload, %.sroa.5.0.copyload.i.i
  store double %i.ht, ptr %i.a, align 16, !tbaa !9
  %i.hu = call i32 @solve3(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #11 ; 9 uses
  %i.hv = icmp eq i32 %i.hs, 4
  %i.hw = icmp ne i32 %i.hu, 4                    ; 2 uses
  br i1 %i.hv, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.hx = icmp sgt i32 %i.hu, 0
  %or.cond100.i.i = and i1 %i.hw, %i.hx
  br i1 %or.cond100.i.i, label %.lr.ph174.preheader.i.i.i, label %.loopexit.sink.split.i.i

.lr.ph174.preheader.i.i.i:                        ; preds = %bb.k
  %wide.trip.count206.i.i.i = zext nneg i32 %i.hu to i64 ; 2 uses
  %xtraiter390 = and i64 %wide.trip.count206.i.i.i, 1
  %i.hy = icmp eq i32 %i.hu, 1
  br i1 %i.hy, label %.lr.ph174.i.i.i.epil.preheader, label %.lr.ph174.preheader.i.i.i.new

.lr.ph174.preheader.i.i.i.new:                    ; preds = %.lr.ph174.preheader.i.i.i
  %unroll_iter394 = and i64 %wide.trip.count206.i.i.i, 2147483646
  br label %.lr.ph174.i.i.i

.lr.ph174.i.i.i:                                  ; preds = %addroot.exit.i.i.i.1, %.lr.ph174.preheader.i.i.i.new
  %indvars.iv203.i.i.i = phi i64 [ 0, %.lr.ph174.preheader.i.i.i.new ], [ %indvars.iv.next204.i.i.i.1, %addroot.exit.i.i.i.1 ] ; 3 uses
  %.0137172.i.i.i = phi i32 [ 0, %.lr.ph174.preheader.i.i.i.new ], [ %.10.i.i.i.1, %addroot.exit.i.i.i.1 ] ; 3 uses
  %niter395 = phi i64 [ 0, %.lr.ph174.preheader.i.i.i.new ], [ %niter395.next.1, %addroot.exit.i.i.i.1 ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv203.i.i.i
  %i.ia = load double, ptr %i.hz, align 16, !tbaa !9 ; 3 uses
  %i.ib = fcmp oge double %i.ia, 0.000000e+00
  %i.ic = fcmp ole double %i.ia, 1.000000e+00
  %or.cond.i.i.i.i = and i1 %i.ib, %i.ic
  br i1 %or.cond.i.i.i.i, label %bb.l, label %addroot.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph174.i.i.i
  %i.id = sext i32 %.0137172.i.i.i to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.id
  store double %i.ia, ptr %i.ie, align 8, !tbaa !9
  %i.if = add nsw i32 %.0137172.i.i.i, 1
  br label %addroot.exit.i.i.i

addroot.exit.i.i.i:                               ; preds = %bb.l, %.lr.ph174.i.i.i
  %.10.i.i.i = phi i32 [ %i.if, %bb.l ], [ %.0137172.i.i.i, %.lr.ph174.i.i.i ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv203.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9 ; 3 uses
  %i.ij = fcmp oge double %i.ii, 0.000000e+00
  %i.ik = fcmp ole double %i.ii, 1.000000e+00
  %or.cond.i.i.i.i.1 = and i1 %i.ij, %i.ik
  br i1 %or.cond.i.i.i.i.1, label %bb.m, label %addroot.exit.i.i.i.1

bb.m:                                             ; preds = %addroot.exit.i.i.i
  %i.il = sext i32 %.10.i.i.i to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.il
  store double %i.ii, ptr %i.im, align 8, !tbaa !9
  %i.in = add nsw i32 %.10.i.i.i, 1
  br label %addroot.exit.i.i.i.1

addroot.exit.i.i.i.1:                             ; preds = %bb.m, %addroot.exit.i.i.i
  %.10.i.i.i.1 = phi i32 [ %i.in, %bb.m ], [ %.10.i.i.i, %addroot.exit.i.i.i ] ; 3 uses
  %indvars.iv.next204.i.i.i.1 = add nuw nsw i64 %indvars.iv203.i.i.i, 2 ; 2 uses
  %niter395.next.1 = add i64 %niter395, 2         ; 2 uses
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394
  br i1 %niter395.ncmp.1, label %splineintersectsline.exit.i.i.loopexit.unr-lcssa, label %.lr.ph174.i.i.i, !llvm.loop !23

bb.n:                                             ; preds = %bb.j
  %i.io = icmp sgt i32 %i.hs, 0                   ; 2 uses
  br i1 %i.hw, label %.preheader144.i.i.i, label %.preheader141.i.i.i

.preheader144.i.i.i:                              ; preds = %bb.n
  %i.ip = icmp sgt i32 %i.hu, 0
  %or.cond222.i.i.i = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %or.cond222.i.i.i, label %.preheader143.us.preheader.i.i.i, label %.loopexit.sink.split.i.i

.preheader143.us.preheader.i.i.i:                 ; preds = %.preheader144.i.i.i
  %wide.trip.count196.i.i.i = zext nneg i32 %i.hs to i64
  %wide.trip.count191.i.i.i = zext nneg i32 %i.hu to i64 ; 2 uses
  %xtraiter384 = and i64 %wide.trip.count191.i.i.i, 1
  %i.iq = icmp eq i32 %i.hu, 1
  %unroll_iter388 = and i64 %wide.trip.count191.i.i.i, 2147483646
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  %lcmp.mod387 = trunc i32 %i.hu to i1
  br label %.preheader143.us.i.i.i

.preheader143.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i, %.preheader143.us.preheader.i.i.i
  %indvars.iv193.i.i.i = phi i64 [ 0, %.preheader143.us.preheader.i.i.i ], [ %indvars.iv.next194.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.2139160.us.i.i.i = phi i32 [ 0, %.preheader143.us.preheader.i.i.i ], [ %.us-phi.us.i.i.i, %._crit_edge.us.i.i.i ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv193.i.i.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !9 ; 8 uses
  %i.it = fcmp oge double %i.is, 0.000000e+00
  %i.iu = fcmp ole double %i.is, 1.000000e+00
  %or.cond.i124.us.i.i.i = and i1 %i.it, %i.iu
  %or.cond.i124.fr.us.i.i.i = freeze i1 %or.cond.i124.us.i.i.i
  br i1 %or.cond.i124.fr.us.i.i.i, label %.lr.ph158.split.us.us.i.i.i.preheader, label %._crit_edge.us.i.i.i

.lr.ph158.split.us.us.i.i.i.preheader:            ; preds = %.preheader143.us.i.i.i
  br i1 %i.iq, label %.lr.ph158.split.us.us.i.i.i.epil.preheader, label %.lr.ph158.split.us.us.i.i.i

.lr.ph158.split.us.us.i.i.i:                      ; preds = %.lr.ph158.split.us.us.i.i.i.preheader, %addroot.exit125.us.us.i.i.i.1
  %indvars.iv188.i.i.i = phi i64 [ %indvars.iv.next189.i.i.i.1, %addroot.exit125.us.us.i.i.i.1 ], [ 0, %.lr.ph158.split.us.us.i.i.i.preheader ] ; 3 uses
  %.3140156.us.us.i.i.i = phi i32 [ %.4.us.us.i.i.i.1, %addroot.exit125.us.us.i.i.i.1 ], [ %.2139160.us.i.i.i, %.lr.ph158.split.us.us.i.i.i.preheader ] ; 3 uses
  %niter389 = phi i64 [ %niter389.next.1, %addroot.exit125.us.us.i.i.i.1 ], [ 0, %.lr.ph158.split.us.us.i.i.i.preheader ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188.i.i.i
  %i.iw = load double, ptr %i.iv, align 16, !tbaa !9
  %i.ix = fcmp oeq double %i.is, %i.iw
  br i1 %i.ix, label %bb.o, label %addroot.exit125.us.us.i.i.i

bb.o:                                             ; preds = %.lr.ph158.split.us.us.i.i.i
  %i.iy = sext i32 %.3140156.us.us.i.i.i to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.iy
  store double %i.is, ptr %i.iz, align 8, !tbaa !9
  %i.ja = add nsw i32 %.3140156.us.us.i.i.i, 1
  br label %addroot.exit125.us.us.i.i.i

addroot.exit125.us.us.i.i.i:                      ; preds = %bb.o, %.lr.ph158.split.us.us.i.i.i
  %.4.us.us.i.i.i = phi i32 [ %.3140156.us.us.i.i.i, %.lr.ph158.split.us.us.i.i.i ], [ %i.ja, %bb.o ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !9
  %i.je = fcmp oeq double %i.is, %i.jd
  br i1 %i.je, label %bb.p, label %addroot.exit125.us.us.i.i.i.1

bb.p:                                             ; preds = %addroot.exit125.us.us.i.i.i
  %i.jf = sext i32 %.4.us.us.i.i.i to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.jf
  store double %i.is, ptr %i.jg, align 8, !tbaa !9
  %i.jh = add nsw i32 %.4.us.us.i.i.i, 1
  br label %addroot.exit125.us.us.i.i.i.1

addroot.exit125.us.us.i.i.i.1:                    ; preds = %bb.p, %addroot.exit125.us.us.i.i.i
  %.4.us.us.i.i.i.1 = phi i32 [ %.4.us.us.i.i.i, %addroot.exit125.us.us.i.i.i ], [ %i.jh, %bb.p ] ; 3 uses
  %indvars.iv.next189.i.i.i.1 = add nuw nsw i64 %indvars.iv188.i.i.i, 2 ; 2 uses
  %niter389.next.1 = add i64 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i64 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %._crit_edge.us.i.i.i.loopexit.unr-lcssa, label %.lr.ph158.split.us.us.i.i.i, !llvm.loop !24

._crit_edge.us.i.i.i.loopexit.unr-lcssa:          ; preds = %addroot.exit125.us.us.i.i.i.1
  br i1 %lcmp.mod385.not, label %._crit_edge.us.i.i.i, label %.lr.ph158.split.us.us.i.i.i.epil.preheader

.lr.ph158.split.us.us.i.i.i.epil.preheader:       ; preds = %._crit_edge.us.i.i.i.loopexit.unr-lcssa, %.lr.ph158.split.us.us.i.i.i.preheader
  %indvars.iv188.i.i.i.epil.init = phi i64 [ 0, %.lr.ph158.split.us.us.i.i.i.preheader ], [ %indvars.iv.next189.i.i.i.1, %._crit_edge.us.i.i.i.loopexit.unr-lcssa ]
  %.3140156.us.us.i.i.i.epil.init = phi i32 [ %.2139160.us.i.i.i, %.lr.ph158.split.us.us.i.i.i.preheader ], [ %.4.us.us.i.i.i.1, %._crit_edge.us.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod387)
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188.i.i.i.epil.init
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !9
  %i.jk = fcmp oeq double %i.is, %i.jj
  br i1 %i.jk, label %bb.q, label %._crit_edge.us.i.i.i

bb.q:                                             ; preds = %.lr.ph158.split.us.us.i.i.i.epil.preheader
  %i.jl = sext i32 %.3140156.us.us.i.i.i.epil.init to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.jl
  store double %i.is, ptr %i.jm, align 8, !tbaa !9
  %i.jn = add nsw i32 %.3140156.us.us.i.i.i.epil.init, 1
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.i.i.i.loopexit.unr-lcssa, %bb.q, %.lr.ph158.split.us.us.i.i.i.epil.preheader, %.preheader143.us.i.i.i
  %.us-phi.us.i.i.i = phi i32 [ %.2139160.us.i.i.i, %.preheader143.us.i.i.i ], [ %.4.us.us.i.i.i.1, %._crit_edge.us.i.i.i.loopexit.unr-lcssa ], [ %.3140156.us.us.i.i.i.epil.init, %.lr.ph158.split.us.us.i.i.i.epil.preheader ], [ %i.jn, %bb.q ] ; 2 uses
  %indvars.iv.next194.i.i.i = add nuw nsw i64 %indvars.iv193.i.i.i, 1 ; 2 uses
  %exitcond197.not.i.i.i = icmp eq i64 %indvars.iv.next194.i.i.i, %wide.trip.count196.i.i.i
  br i1 %exitcond197.not.i.i.i, label %splineintersectsline.exit.i.i, label %.preheader143.us.i.i.i, !llvm.loop !25

.preheader141.i.i.i:                              ; preds = %bb.n
  br i1 %i.io, label %.lr.ph170.preheader.i.i.i, label %.loopexit.sink.split.i.i

.lr.ph170.preheader.i.i.i:                        ; preds = %.preheader141.i.i.i
  %wide.trip.count201.i.i.i = zext nneg i32 %i.hs to i64 ; 2 uses
  %xtraiter378 = and i64 %wide.trip.count201.i.i.i, 1
  %i.jo = icmp eq i32 %i.hs, 1
  br i1 %i.jo, label %.lr.ph170.i.i.i.epil.preheader, label %.lr.ph170.preheader.i.i.i.new

.lr.ph170.preheader.i.i.i.new:                    ; preds = %.lr.ph170.preheader.i.i.i
  %unroll_iter382 = and i64 %wide.trip.count201.i.i.i, 2147483646
  br label %.lr.ph170.i.i.i

.lr.ph170.i.i.i:                                  ; preds = %addroot.exit123.i.i.i.1, %.lr.ph170.preheader.i.i.i.new
  %indvars.iv198.i.i.i = phi i64 [ 0, %.lr.ph170.preheader.i.i.i.new ], [ %indvars.iv.next199.i.i.i.1, %addroot.exit123.i.i.i.1 ] ; 3 uses
  %.1138168.i.i.i = phi i32 [ 0, %.lr.ph170.preheader.i.i.i.new ], [ %.11.i.i.i.1, %addroot.exit123.i.i.i.1 ] ; 3 uses
  %niter383 = phi i64 [ 0, %.lr.ph170.preheader.i.i.i.new ], [ %niter383.next.1, %addroot.exit123.i.i.i.1 ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv198.i.i.i
  %i.jq = load double, ptr %i.jp, align 16, !tbaa !9 ; 3 uses
  %i.jr = fcmp oge double %i.jq, 0.000000e+00
  %i.js = fcmp ole double %i.jq, 1.000000e+00
  %or.cond.i122.i.i.i = and i1 %i.jr, %i.js
  br i1 %or.cond.i122.i.i.i, label %bb.r, label %addroot.exit123.i.i.i

bb.r:                                             ; preds = %.lr.ph170.i.i.i
  %i.jt = sext i32 %.1138168.i.i.i to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.jt
  store double %i.jq, ptr %i.ju, align 8, !tbaa !9
  %i.jv = add nsw i32 %.1138168.i.i.i, 1
  br label %addroot.exit123.i.i.i

addroot.exit123.i.i.i:                            ; preds = %bb.r, %.lr.ph170.i.i.i
  %.11.i.i.i = phi i32 [ %i.jv, %bb.r ], [ %.1138168.i.i.i, %.lr.ph170.i.i.i ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv198.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !9 ; 3 uses
  %i.jz = fcmp oge double %i.jy, 0.000000e+00
  %i.ka = fcmp ole double %i.jy, 1.000000e+00
  %or.cond.i122.i.i.i.1 = and i1 %i.jz, %i.ka
  br i1 %or.cond.i122.i.i.i.1, label %bb.s, label %addroot.exit123.i.i.i.1

bb.s:                                             ; preds = %addroot.exit123.i.i.i
  %i.kb = sext i32 %.11.i.i.i to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.kb
  store double %i.jy, ptr %i.kc, align 8, !tbaa !9
  %i.kd = add nsw i32 %.11.i.i.i, 1
  br label %addroot.exit123.i.i.i.1

addroot.exit123.i.i.i.1:                          ; preds = %bb.s, %addroot.exit123.i.i.i
  %.11.i.i.i.1 = phi i32 [ %i.kd, %bb.s ], [ %.11.i.i.i, %addroot.exit123.i.i.i ] ; 3 uses
  %indvars.iv.next199.i.i.i.1 = add nuw nsw i64 %indvars.iv198.i.i.i, 2 ; 2 uses
  %niter383.next.1 = add i64 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %splineintersectsline.exit.i.i.loopexit354.unr-lcssa, label %.lr.ph170.i.i.i, !llvm.loop !26

bb.t:                                             ; preds = %bb.i
  %i.ke = icmp ne i32 %i.hs, 4
  %i.kf = icmp sgt i32 %i.hs, 0
  %or.cond101.i.i = and i1 %i.ke, %i.kf
  br i1 %or.cond101.i.i, label %.lr.ph154.i.i.i, label %.loopexit.sink.split.i.i

.lr.ph154.i.i.i:                                  ; preds = %bb.t
  %wide.trip.count186.i.i.i = zext nneg i32 %i.hs to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph154.i.i.i
  %indvars.iv183.i.i.i = phi i64 [ 0, %.lr.ph154.i.i.i ], [ %indvars.iv.next184.i.i.i, %bb.w ] ; 2 uses
  %.6152.i.i.i = phi i32 [ 0, %.lr.ph154.i.i.i ], [ %.7.i.i.i, %bb.w ] ; 4 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv183.i.i.i
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !9 ; 6 uses
  %i.ki = fcmp oge double %i.kh, 0.000000e+00
  %i.kj = fcmp ole double %i.kh, 1.000000e+00
  %or.cond.i.i.i = and i1 %i.ki, %i.kj
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kk = call double @llvm.fmuladd.f64(double %i.kh, double %12, double %i.hd)
  %i.kl = call double @llvm.fmuladd.f64(double %i.kh, double %i.kk, double %i.hf)
  %i.km = call double @llvm.fmuladd.f64(double %i.kh, double %i.kl, double %.sroa.6173.0.copyload)
  %i.kn = fsub double %i.km, %.sroa.5.0.copyload.i.i
  %i.ko = fdiv double %i.kn, %i.ho                ; 2 uses
  %i.kp = fcmp oge double %i.ko, 0.000000e+00
  %i.kq = fcmp ole double %i.ko, 1.000000e+00
  %or.cond3.i.i.i = and i1 %i.kp, %i.kq
  br i1 %or.cond3.i.i.i, label %addroot.exit127.i.i.i, label %bb.w

addroot.exit127.i.i.i:                            ; preds = %bb.v
  %i.kr = sext i32 %.6152.i.i.i to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.kr
  store double %i.kh, ptr %i.ks, align 8, !tbaa !9
  %i.kt = add nsw i32 %.6152.i.i.i, 1
  br label %bb.w

bb.w:                                             ; preds = %addroot.exit127.i.i.i, %bb.v, %bb.u
  %.7.i.i.i = phi i32 [ %i.kt, %addroot.exit127.i.i.i ], [ %.6152.i.i.i, %bb.v ], [ %.6152.i.i.i, %bb.u ] ; 2 uses
  %indvars.iv.next184.i.i.i = add nuw nsw i64 %indvars.iv183.i.i.i, 1 ; 2 uses
  %exitcond187.not.i.i.i = icmp eq i64 %indvars.iv.next184.i.i.i, %wide.trip.count186.i.i.i
  br i1 %exitcond187.not.i.i.i, label %splineintersectsline.exit.i.i, label %bb.u, !llvm.loop !27

bb.x:                                             ; preds = %bb.h
  %i.ku = fdiv double %i.ho, %i.hn                ; 2 uses
  %i.kv = fneg double %i.ku
  %i.kw = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.hg, <2 x double> %i.hi) ; 4 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 1 ; 2 uses
  %i.la = extractelement <2 x double> %i.ky, i64 0 ; 3 uses
  %i.lb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.hh, <2 x double> %i.hj) ; 3 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = shufflevector <2 x double> %i.ky, <2 x double> %i.lb, <2 x i32> <i32 1, i32 2>
  %i.le = shufflevector <2 x double> %i.lb, <2 x double> %i.ky, <2 x i32> <i32 1, i32 2>
  %i.lf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> splat (double 3.000000e+00), <2 x double> %i.le) ; 2 uses
  %shift350 = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop351 = fsub <2 x double> %i.lf, %shift350
  %i.lg = extractelement <2 x double> %foldExtExtBinop351, i64 0
  store double %i.lg, ptr %i.ep, align 8, !tbaa !9
  %i.lh = fmul double %i.lc, 3.000000e+00
  %i.li = call double @llvm.fmuladd.f64(double %i.la, double 3.000000e+00, double %i.lh)
  %i.lj = call double @llvm.fmuladd.f64(double %i.kz, double -6.000000e+00, double %i.li)
  store double %i.lj, ptr %i.eq, align 16, !tbaa !9
  %i.lk = fsub double %i.kz, %i.la
  %i.ll = fmul double %i.lk, 3.000000e+00
  store double %i.ll, ptr %i.er, align 8, !tbaa !9
  %i.lm = fneg double %.sroa.5.0.copyload.i.i
  %i.ln = call double @llvm.fmuladd.f64(double %i.ku, double %.sroa.0.0.copyload.i.i, double %i.lm)
  %i.lo = fadd double %i.ln, %i.la
  store double %i.lo, ptr %i.a, align 16, !tbaa !9
  %i.lp = call i32 @solve3(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.lq = icmp ne i32 %i.lp, 4
  %i.lr = icmp sgt i32 %i.lp, 0
  %or.cond102.i.i = and i1 %i.lq, %i.lr
  br i1 %or.cond102.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.sink.split.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.x
  %wide.trip.count.i.i.i = zext nneg i32 %i.lp to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.z ] ; 2 uses
  %.8150.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.9.i.i.i, %bb.z ] ; 4 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !9 ; 6 uses
  %i.lu = fcmp oge double %i.lt, 0.000000e+00
  %i.lv = fcmp ole double %i.lt, 1.000000e+00
  %or.cond5.i.i.i = and i1 %i.lu, %i.lv
  br i1 %or.cond5.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.lw = call double @llvm.fmuladd.f64(double %i.lt, double %i.gs, double %9)
  %i.lx = call double @llvm.fmuladd.f64(double %i.lt, double %i.lw, double %i.gu)
  %i.ly = call double @llvm.fmuladd.f64(double %i.lt, double %i.lx, double %.sroa.0170.0.copyload)
  %i.lz = fsub double %i.ly, %.sroa.0.0.copyload.i.i
  %i.ma = fdiv double %i.lz, %i.hn                ; 2 uses
  %i.mb = fcmp oge double %i.ma, 0.000000e+00
  %i.mc = fcmp ole double %i.ma, 1.000000e+00
  %or.cond7.i.i.i = and i1 %i.mb, %i.mc
  br i1 %or.cond7.i.i.i, label %addroot.exit129.i.i.i, label %bb.z

addroot.exit129.i.i.i:                            ; preds = %bb.y
  %i.md = sext i32 %.8150.i.i.i to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.md
  store double %i.lt, ptr %i.me, align 8, !tbaa !9
  %i.mf = add nsw i32 %.8150.i.i.i, 1
  br label %bb.z

bb.z:                                             ; preds = %addroot.exit129.i.i.i, %bb.y, %.lr.ph.i.i.i
  %.9.i.i.i = phi i32 [ %i.mf, %addroot.exit129.i.i.i ], [ %.8150.i.i.i, %bb.y ], [ %.8150.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %splineintersectsline.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !28

splineintersectsline.exit.i.i.loopexit.unr-lcssa: ; preds = %addroot.exit.i.i.i.1
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %splineintersectsline.exit.i.i, label %.lr.ph174.i.i.i.epil.preheader

.lr.ph174.i.i.i.epil.preheader:                   ; preds = %splineintersectsline.exit.i.i.loopexit.unr-lcssa, %.lr.ph174.preheader.i.i.i
  %indvars.iv203.i.i.i.epil.init = phi i64 [ 0, %.lr.ph174.preheader.i.i.i ], [ %indvars.iv.next204.i.i.i.1, %splineintersectsline.exit.i.i.loopexit.unr-lcssa ]
  %.0137172.i.i.i.epil.init = phi i32 [ 0, %.lr.ph174.preheader.i.i.i ], [ %.10.i.i.i.1, %splineintersectsline.exit.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod393 = trunc i32 %i.hu to i1
  call void @llvm.assume(i1 %lcmp.mod393)
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv203.i.i.i.epil.init
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !9 ; 3 uses
  %i.mi = fcmp oge double %i.mh, 0.000000e+00
  %i.mj = fcmp ole double %i.mh, 1.000000e+00
  %or.cond.i.i.i.i.epil = and i1 %i.mi, %i.mj
  br i1 %or.cond.i.i.i.i.epil, label %bb.aa, label %splineintersectsline.exit.i.i

bb.aa:                                            ; preds = %.lr.ph174.i.i.i.epil.preheader
  %i.mk = sext i32 %.0137172.i.i.i.epil.init to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.mk
  store double %i.mh, ptr %i.ml, align 8, !tbaa !9
  %i.mm = add nsw i32 %.0137172.i.i.i.epil.init, 1
  br label %splineintersectsline.exit.i.i

splineintersectsline.exit.i.i.loopexit354.unr-lcssa: ; preds = %addroot.exit123.i.i.i.1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %splineintersectsline.exit.i.i, label %.lr.ph170.i.i.i.epil.preheader

.lr.ph170.i.i.i.epil.preheader:                   ; preds = %splineintersectsline.exit.i.i.loopexit354.unr-lcssa, %.lr.ph170.preheader.i.i.i
  %indvars.iv198.i.i.i.epil.init = phi i64 [ 0, %.lr.ph170.preheader.i.i.i ], [ %indvars.iv.next199.i.i.i.1, %splineintersectsline.exit.i.i.loopexit354.unr-lcssa ]
  %.1138168.i.i.i.epil.init = phi i32 [ 0, %.lr.ph170.preheader.i.i.i ], [ %.11.i.i.i.1, %splineintersectsline.exit.i.i.loopexit354.unr-lcssa ] ; 3 uses
  %lcmp.mod381 = trunc i32 %i.hs to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv198.i.i.i.epil.init
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !9 ; 3 uses
  %i.mp = fcmp oge double %i.mo, 0.000000e+00
  %i.mq = fcmp ole double %i.mo, 1.000000e+00
  %or.cond.i122.i.i.i.epil = and i1 %i.mp, %i.mq
  br i1 %or.cond.i122.i.i.i.epil, label %bb.ab, label %splineintersectsline.exit.i.i

bb.ab:                                            ; preds = %.lr.ph170.i.i.i.epil.preheader
  %i.mr = sext i32 %.1138168.i.i.i.epil.init to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.mr
  store double %i.mo, ptr %i.ms, align 8, !tbaa !9
  %i.mt = add nsw i32 %.1138168.i.i.i.epil.init, 1
  br label %splineintersectsline.exit.i.i

splineintersectsline.exit.i.i:                    ; preds = %bb.z, %bb.w, %splineintersectsline.exit.i.i.loopexit354.unr-lcssa, %bb.ab, %.lr.ph170.i.i.i.epil.preheader, %._crit_edge.us.i.i.i, %splineintersectsline.exit.i.i.loopexit.unr-lcssa, %bb.aa, %.lr.ph174.i.i.i.epil.preheader
  %.0111.i.i.i = phi i32 [ %.1138168.i.i.i.epil.init, %.lr.ph170.i.i.i.epil.preheader ], [ %.0137172.i.i.i.epil.init, %.lr.ph174.i.i.i.epil.preheader ], [ %.us-phi.us.i.i.i, %._crit_edge.us.i.i.i ], [ %.7.i.i.i, %bb.w ], [ %.10.i.i.i.1, %splineintersectsline.exit.i.i.loopexit.unr-lcssa ], [ %i.mm, %bb.aa ], [ %.11.i.i.i.1, %splineintersectsline.exit.i.i.loopexit354.unr-lcssa ], [ %i.mt, %bb.ab ], [ %.9.i.i.i, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.mu = icmp ne i32 %.0111.i.i.i, 4
  %i.mv = icmp sgt i32 %.0111.i.i.i, 0
  %or.cond72.i.i = and i1 %i.mu, %i.mv
  br i1 %or.cond72.i.i, label %.lr.ph.preheader.i42.i, label %.loopexit.i.i

.lr.ph.preheader.i42.i:                           ; preds = %splineintersectsline.exit.i.i
  %wide.trip.count.i43.i = zext nneg i32 %.0111.i.i.i to i64
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %bb.ae, %.lr.ph.preheader.i42.i
  %indvars.iv.i45.i = phi i64 [ 0, %.lr.ph.preheader.i42.i ], [ %indvars.iv.next.i46.i, %bb.ae ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i45.i
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !9 ; 6 uses
  %i.my = fcmp olt double %i.mx, f0x3EB0C6F7A0B5ED8D
  %i.mz = fcmp ogt double %i.mx, f0x3FEFFFFDE7210BE9
  %or.cond.i.i = or i1 %i.my, %i.mz
  br i1 %or.cond.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i44.i
  %i.na = fmul double %i.mx, 3.000000e+00         ; 2 uses
  %i.nb = fsub double 1.000000e+00, %i.mx         ; 4 uses
  %i.nc = fmul double %i.mx, %i.na
  %i.nd = fmul double %i.nb, %i.nc                ; 2 uses
  %i.ne = fmul double %i.na, %i.nb
  %i.nf = fmul double %i.nb, %i.ne                ; 2 uses
  %i.ng = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %i.mx, i64 1 ; 3 uses
  %i.ni = fmul <2 x double> %i.nh, %i.nh
  %i.nj = fmul <2 x double> %i.nh, %i.ni          ; 3 uses
  %i.nk = fmul double %i.fk, %i.nf
  %i.nl = extractelement <2 x double> %i.nj, i64 0
  %i.nm = call double @llvm.fmuladd.f64(double %i.nl, double %.sroa.0170.0.copyload, double %i.nk)
  %i.nn = call double @llvm.fmuladd.f64(double %i.nd, double %i.hk, double %i.nm)
  %i.no = fmul double %i.hc, %i.nf
  %i.np = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.nn, i64 1
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.fc, <2 x double> %i.nq) ; 2 uses
  %i.ns = extractelement <2 x double> %i.nr, i64 0
  %i.nt = call double @llvm.fmuladd.f64(double %i.nd, double %10, double %i.ns)
  %i.nu = extractelement <2 x double> %i.nj, i64 1
  %i.nv = call double @llvm.fmuladd.f64(double %i.nu, double %i.es, double %i.nt) ; 2 uses
  %i.nw = extractelement <2 x double> %i.nr, i64 1 ; 2 uses
  %i.nx = fsub double %i.nw, %.sroa.0.0.copyload.i.i ; 2 uses
  %i.ny = fsub double %i.nv, %.sroa.5.0.copyload.i.i ; 2 uses
  %i.nz = fmul double %i.ny, %i.ny
  %i.oa = call double @llvm.fmuladd.f64(double %i.nx, double %i.nx, double %i.nz)
  %i.ob = fcmp olt double %i.oa, 1.000000e-03
  br i1 %i.ob, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.oc = fsub double %i.nw, %.sroa.7.16.copyload.i.i ; 2 uses
  %i.od = fsub double %i.nv, %.sroa.10.16.copyload.i.i ; 2 uses
  %i.oe = fmul double %i.od, %i.od
  %i.of = call double @llvm.fmuladd.f64(double %i.oc, double %i.oc, double %i.oe)
  %i.og = fcmp olt double %i.of, 1.000000e-03
  br i1 %i.og, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i44.i
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count.i43.i
  br i1 %exitcond.not.i47.i, label %.loopexit.i.i, label %.lr.ph.i44.i, !llvm.loop !29

.loopexit.sink.split.i.i:                         ; preds = %bb.x, %bb.t, %.preheader141.i.i.i, %.preheader144.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ae, %.loopexit.sink.split.i.i, %splineintersectsline.exit.i.i
  %i.oh = add nuw i64 %.04969.i.i, 1              ; 2 uses
  %exitcond79.not.i.i = icmp eq i64 %i.oh, %1
  br i1 %exitcond79.not.i.i, label %.loopexit.i, label %bb.h, !llvm.loop !30

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.oi = load i64, ptr @opl, align 8, !tbaa !11  ; 3 uses
  %i.oj = add i64 %i.oi, 4                        ; 3 uses
  %i.ok = load i64, ptr @opn, align 8, !tbaa !11
  %.not.i.i = icmp ugt i64 %i.oj, %i.ok
  %.pre96.i = load ptr, ptr @ops, align 8, !tbaa !14 ; 2 uses
  br i1 %.not.i.i, label %bb.af, label %growops.exit.i

bb.af:                                            ; preds = %.loopexit.i
  %i.ol = shl i64 %i.oj, 4
  %i.om = call ptr @realloc(ptr noundef %.pre96.i, i64 noundef %i.ol) #9 ; 3 uses
  store ptr %i.om, ptr @ops, align 8, !tbaa !14
  %.not5.i.i = icmp eq ptr %i.om, null
  br i1 %.not5.i.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.oj, ptr @opn, align 8, !tbaa !11
  br label %growops.exit.i

growops.exit.i:                                   ; preds = %bb.ag, %.loopexit.i
  %i.on = phi ptr [ %.pre96.i, %.loopexit.i ], [ %i.om, %bb.ag ]
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %i.oi ; 2 uses
  store double %i.fk, ptr %i.oo, align 8, !tbaa !37
  br label %bb.an

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.op = fcmp olt double %.032.i, 5.000000e-03
  br i1 %i.op, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.eo, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.oq = load i64, ptr @opl, align 8, !tbaa !11  ; 3 uses
  %i.or = add i64 %i.oq, 4                        ; 3 uses
  %i.os = load i64, ptr @opn, align 8, !tbaa !11
  %.not.i48.i = icmp ugt i64 %i.or, %i.os
  %.pre.i130 = load ptr, ptr @ops, align 8, !tbaa !14 ; 2 uses
  br i1 %.not.i48.i, label %bb.ak, label %growops.exit51.i

bb.ak:                                            ; preds = %bb.aj
  %i.ot = shl i64 %i.or, 4
  %i.ou = call ptr @realloc(ptr noundef %.pre.i130, i64 noundef %i.ot) #9 ; 3 uses
  store ptr %i.ou, ptr @ops, align 8, !tbaa !14
  %.not5.i50.i = icmp eq ptr %i.ou, null
  br i1 %.not5.i50.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i64 %i.or, ptr @opn, align 8, !tbaa !11
  br label %growops.exit51.i

growops.exit51.i:                                 ; preds = %bb.al, %bb.aj
  %i.ov = phi ptr [ %.pre.i130, %bb.aj ], [ %i.ou, %bb.al ]
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.ov, i64 %i.oq ; 2 uses
  store double %i.fk, ptr %i.ow, align 8, !tbaa !37
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.ox = fcmp ogt double %.032.i, 1.000000e-02
  %i.oy = fmul nnan double %.032.i, 5.000000e-01
  %.133.i = select i1 %i.ox, double %i.oy, double 0.000000e+00
  br label %bb.f

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %indvars.iv249 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next250, %.lr.ph210 ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv249 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !34 ; 3 uses
  %i.pc = fsub double 1.000000e+00, %i.pb         ; 3 uses
  %i.pd = fmul double %i.pb, 3.000000e+00         ; 2 uses
  %i.pe = fmul double %i.pd, %i.pc
  %i.pf = fmul double %i.pc, %i.pe
  %i.pg = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.ph = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = fmul <2 x double> %i.ad, %i.ph
  store <2 x double> %i.pi, ptr %i.pa, align 8, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pk = fmul double %i.pb, %i.pd
  %i.pl = fmul double %i.pc, %i.pk
  %i.pm = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.pn = shufflevector <2 x double> %i.pm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.po = fmul <2 x double> %i.af, %i.pn
  store <2 x double> %i.po, ptr %i.pj, align 8, !tbaa !9
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %.lr.ph.i, label %.lr.ph210, !llvm.loop !31

bb.an:                                            ; preds = %growops.exit51.i, %growops.exit.i
  %.sink320 = phi ptr [ %i.ow, %growops.exit51.i ], [ %i.oo, %growops.exit.i ] ; 4 uses
  %.sink136.i = phi i64 [ %i.oq, %growops.exit51.i ], [ %i.oi, %growops.exit.i ]
  %i.pp = getelementptr inbounds nuw i8, ptr %.sink320, i64 8
  %i.pq = extractelement <2 x double> %i.fn, i64 0
  store double %i.pq, ptr %i.pp, align 8, !tbaa !38
  %i.pr = getelementptr i8, ptr %.sink320, i64 16
  %i.ps = extractelement <2 x double> %i.fi, i64 1
  store double %i.ps, ptr %i.pr, align 8, !tbaa !37
  %i.pt = getelementptr i8, ptr %.sink320, i64 24
  %i.pu = extractelement <2 x double> %i.fo, i64 1
  store double %i.pu, ptr %i.pt, align 8, !tbaa !38
  %i.pv = getelementptr i8, ptr %.sink320, i64 32
  %i.pw = add i64 %.sink136.i, 3
  store <2 x double> %i.eh, ptr %i.pv, align 8, !tbaa !9
  store i64 %i.pw, ptr @opl, align 8, !tbaa !11
  call void @free(ptr noundef %i.f) #11
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ak, %bb.af
  call void @free(ptr noundef %i.f) #11
  br label %bb.aq

.loopexit:                                        ; preds = %dist_n.exit41.i, %bb.ai
  %i.px = fmul double %i.ej, f0x3FD5555555555555
  %i.py = fmul <2 x double> %i.em, splat (double f0x3FD5555555555555) ; 2 uses
  %i.pz = fadd double %.sroa.0170.0.copyload, %i.px
  %i.qa = fmul double %i.en, f0x3FD5555555555555
  %i.qb = insertelement <2 x double> %i.eh, double %.sroa.6173.0.copyload, i64 1 ; 3 uses
  %i.qc = fsub <2 x double> %i.qb, %i.py
  %i.qd = fadd <2 x double> %i.qb, %i.py
  %i.qe = shufflevector <2 x double> %i.qc, <2 x double> %i.qd, <2 x i32> <i32 0, i32 3>
  %i.qf = fsub double %i.es, %i.qa
  %i.qg = icmp sgt i32 %3, 2
  br i1 %i.qg, label %.lr.ph215.preheader, label %._crit_edge216

.lr.ph215.preheader:                              ; preds = %.loopexit
  %i.qh = add nsw i32 %3, -1
  %wide.trip.count257 = zext nneg i32 %i.qh to i64
  br label %.lr.ph215

._crit_edge216:                                   ; preds = %.lr.ph215, %.loopexit
  %.0123.lcssa = phi i32 [ -1, %.loopexit ], [ %.1124, %.lr.ph215 ] ; 3 uses
  call void @free(ptr noundef %i.f) #11
  %i.qi = sext i32 %.0123.lcssa to i64
  %i.qj = getelementptr inbounds [16 x i8], ptr %2, i64 %i.qi ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 -16
  %i.ql = add nsw i32 %.0123.lcssa, 1             ; 2 uses
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [16 x i8], ptr %2, i64 %i.qm
  %i.qo = load <4 x double>, ptr %i.qk, align 8   ; 4 uses
  %i.qp = load <2 x double>, ptr %i.qn, align 8
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qr = shufflevector <4 x double> %i.qo, <4 x double> %i.qq, <2 x i32> <i32 2, i32 4>
  %i.qs = shufflevector <4 x double> %i.qo, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.qt = fsub <2 x double> %i.qr, %i.qs          ; 4 uses
  %i.qu = shufflevector <4 x double> %i.qo, <4 x double> %i.qq, <2 x i32> <i32 3, i32 5>
  %i.qv = shufflevector <4 x double> %i.qo, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qw = fsub <2 x double> %i.qu, %i.qv          ; 4 uses
  %i.qx = fmul <2 x double> %i.qw, %i.qw
  %i.qy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.qt, <2 x double> %i.qx) ; 2 uses
  %i.qz = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qy) ; 2 uses
  %i.ra = fcmp ogt <2 x double> %i.qy, splat (double f0x3EB0C6F7A0B5ED8D) ; 2 uses
  %i.rb = fdiv <2 x double> %i.qt, %i.qz
  %i.rc = fdiv <2 x double> %i.qw, %i.qz
  %i.rd = select <2 x i1> %i.ra, <2 x double> %i.rc, <2 x double> %i.qw
  %i.re = select <2 x i1> %i.ra, <2 x double> %i.rb, <2 x double> %i.qt
  %i.rf = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.re) ; 4 uses
  %i.rg = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.rd) ; 4 uses
  %i.rh = fmul double %i.rg, %i.rg
  %i.ri = call double @llvm.fmuladd.f64(double %i.rf, double %i.rf, double %i.rh) ; 2 uses
  %i.rj = fcmp ogt double %i.ri, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %sqrt.i154 = call double @llvm.sqrt.f64(double %i.ri) ; 2 uses
  %i.rk = fdiv double %i.rf, %sqrt.i154
  %i.rl = fdiv double %i.rg, %sqrt.i154
  %.sroa.6.0.i155 = select i1 %i.rj, double %i.rl, double %i.rg ; 2 uses
  %.sroa.0.0.i156 = select i1 %i.rj, double %i.rk, double %i.rf ; 2 uses
end_hunk_0
