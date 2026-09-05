Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exact_geodesic?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1107
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3igl8geodesic22GeodesicAlgorithmExact19intersect_intervalsEPNS0_8IntervalEPNS0_16IntervalWithStopE:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %.0151 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ]     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store i32 %.sink, ptr %i.r, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105  ; 3 uses
  %.not.i = icmp eq ptr %i.t, null                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.in.i = select i1 %.not.i, ptr %i.w, ptr %i.t
  %i.x = load double, ptr %.in.i, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !87 ; 2 uses
  %i.aa = fadd double %i.g, %i.z
  %i.ab = fcmp ogt double %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = zext nneg i32 %.0151 to i64             ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !153
  %i.ae = add nuw nsw i32 %.0151, 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac
  store double %i.z, ptr %i.af, align 8, !tbaa !87
  %.pre = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %.pre, %bb.e ], [ %i.v, %bb.d ]
  %.1152 = phi i32 [ %i.ae, %bb.e ], [ %.0151, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.in.i166 = select i1 %.not.i, ptr %i.ah, ptr %i.t
  %i.ai = load double, ptr %.in.i166, align 8, !tbaa !87
  %i.aj = zext nneg i32 %.1152 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store double %i.ai, ptr %i.al, align 8, !tbaa !87
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  %i.am = fmul double %i.f, 1.000000e-08          ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !87 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !87 ; 7 uses
  %i.ar = fsub double %i.ao, %i.aq                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load <2 x double>, ptr %i.as, align 8, !tbaa !87 ; 7 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0 ; 4 uses
  %i.ay = load double, ptr %i.au, align 8, !tbaa !87
  %i.az = load <2 x double>, ptr %i.at, align 8, !tbaa !87 ; 7 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 3 uses
  %i.bb = load double, ptr %i.av, align 8, !tbaa !87
  %i.bc = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc          ; 7 uses
  %i.be = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.be, <2 x double> %i.bd) ; 5 uses
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.bh = fcmp olt double %i.bg, %i.g
  br i1 %i.bh, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fsub <2 x double> %i.az, %i.aw
  %i.bi = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp ogt double %i.bj, %i.am
  br i1 %i.bk, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop323 = fsub <2 x double> %shift, %i.bf
  %i.bl = extractelement <2 x double> %foldExtExtBinop323, i64 0
  %i.bm = fmul double %i.bi, 2.000000e+00
  %i.bn = fdiv double %i.bl, %i.bm
  %.sroa.0.0.vec.insert = insertelement <2 x double> <double poison, double undef>, double %i.bn, i64 0
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.bo = fmul double %i.ar, %i.ar                ; 4 uses
  %i.bp = extractelement <2 x double> %i.bf, i64 0
  %shift325 = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop326 = fsub <2 x double> %shift325, %i.bf
  %i.bq = extractelement <2 x double> %foldExtExtBinop326, i64 0
  %i.br = fsub double %i.bq, %i.bo
  %i.bs = fmul double %i.br, 5.000000e-01         ; 3 uses
  %foldExtExtBinop328 = fsub <2 x double> %i.aw, %i.az
  %i.bt = extractelement <2 x double> %foldExtExtBinop328, i64 0 ; 3 uses
  %i.bu = fneg double %i.bo
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bu) ; 5 uses
  %i.bw = fmul double %i.ax, %i.bo
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bw) ; 7 uses
  %i.by = fneg double %i.bp
  %i.bz = fmul double %i.bo, %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bz) ; 2 uses
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.bv)
  %i.cc = fcmp olt double %i.cb, %i.am
  br i1 %i.cc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.ce = fcmp ogt double %i.cd, %i.am
  br i1 %i.ce, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.cf = fneg double %i.ca
  %i.cg = fdiv double %i.cf, %i.bx
  %.sroa.0.0.vec.insert342 = insertelement <2 x double> <double poison, double undef>, double %i.cg, i64 0
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  %i.ch = fneg double %i.ca
  %i.ci = fmul double %i.bv, %i.ch
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.ci) ; 3 uses
  %i.ck = fmul double %i.am, %i.am
  %i.cl = fcmp ogt double %i.cj, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = tail call double @sqrt(double noundef %i.cj) #22 ; 2 uses
  %i.cn = fcmp ogt double %i.bv, 0.000000e+00
  %i.co = fneg double %i.bx
  %i.cp = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cm, i64 1 ; 2 uses
  %i.ct = fsub <2 x double> %i.cq, %i.cs
  %i.cu = fsub <2 x double> %i.cq, %i.cs
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = insertelement <2 x i1> poison, i1 %i.cn, i64 0
  %i.cx = shufflevector <2 x i1> %i.cw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cy = select <2 x i1> %i.cx, <2 x double> %i.ct, <2 x double> %i.cv
  %i.cz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x double> %i.cy, %i.da          ; 3 uses
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %shift330 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop331 = fsub <2 x double> %i.db, %shift330
  %i.dd = extractelement <2 x double> %foldExtExtBinop331, i64 0
  %i.de = fcmp ogt double %i.dd, %i.am
  %. = select i1 %i.de, i32 2, i32 1
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.df = fcmp ult double %i.cj, 0.000000e+00
  br i1 %i.df, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = fneg double %i.bx
  %i.dh = fdiv double %i.dg, %i.bv
  %.sroa.0.0.vec.insert344 = insertelement <2 x double> <double poison, double undef>, double %i.dh, i64 0
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.o, %bb.p, %bb.h, %bb.i
  %.sroa.0.0 = phi <2 x double> [ %.sroa.0.0.vec.insert, %bb.i ], [ undef, %bb.h ], [ %.sroa.0.0.vec.insert342, %bb.l ], [ undef, %bb.k ], [ %i.dc, %bb.n ], [ undef, %bb.o ], [ %.sroa.0.0.vec.insert344, %bb.p ] ; 2 uses
  %.3 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 1, %bb.l ], [ 0, %bb.k ], [ %., %bb.n ], [ 0, %bb.o ], [ 1, %bb.p ] ; 3 uses
  %i.di = load double, ptr %1, align 8, !tbaa !87 ; 5 uses
  %i.dj = load double, ptr %2, align 8, !tbaa !87 ; 2 uses
  %i.dk = fcmp olt double %i.di, %i.dj
  %i.dl = select i1 %i.dk, double %i.dj, double %i.di ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !105 ; 3 uses
  %.not.i167 = icmp eq ptr %i.dn, null            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %.in.i168 = select i1 %.not.i167, ptr %i.dq, ptr %i.dn
  %i.dr = load double, ptr %.in.i168, align 8, !tbaa !87 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !87 ; 2 uses
  %i.du = fcmp olt double %i.dt, %i.dr
  %.sroa.speculated = select i1 %i.du, double %i.dt, double %i.dr ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double %i.dl, ptr %i.a, align 16, !tbaa !87
  %.not204 = icmp eq i32 %.3, 0
  br i1 %.not204, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sroa.speculated, ptr %i.dv, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %.lr.ph182

.lr.ph:                                           ; preds = %bb.q
  %i.dw = fadd double %i.g, %i.dl                 ; 2 uses
  %i.dx = fsub double %.sroa.speculated, %i.g     ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 0 ; 3 uses
  %i.dy = fcmp ogt double %.sroa.0.0.vec.extract, %i.dw
  %i.dz = fcmp olt double %.sroa.0.0.vec.extract, %i.dx
  %or.cond = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

._crit_edge:                                      ; preds = %bb.v, %bb.s
  %.1.lcssa = phi i8 [ %.1, %bb.s ], [ %spec.select, %bb.v ] ; 2 uses
  %i.ea = zext i8 %.1.lcssa to i64                ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ea
  store double %.sroa.speculated, ptr %i.eb, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.not205 = icmp eq i8 %.1.lcssa, 0
  br i1 %.not205, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %3 = phi i64 [ 1, %._crit_edge.thread ], [ %i.ea, %._crit_edge ] ; 28 uses
  %i.ec = fcmp oeq double %i.ao, 1.000000e+100
  %i.ed = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %i.ee = fcmp oeq double %i.aq, 1.000000e+100    ; 2 uses
  %i.ef = fcmp oeq double %i.bb, 0.000000e+00     ; 2 uses
  br i1 %i.ec, label %.lr.ph182.split.us, label %.lr.ph182.split

.lr.ph182.split.us:                               ; preds = %.lr.ph182
  br i1 %i.ee, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader, label %.lr.ph182.split.us.split

_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader: ; preds = %.lr.ph182.split.us
  %i.eg = shl nuw nsw i64 %3, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.b, i8 0, i64 %i.eg, i1 false), !tbaa !153
  br label %._crit_edge183

.lr.ph182.split.us.split:                         ; preds = %.lr.ph182.split.us
  br i1 %i.ef, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader: ; preds = %.lr.ph182.split.us.split
  %min.iters.check287 = icmp samesign ult i64 %3, 2
  br i1 %min.iters.check287, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader334, label %vector.ph288

vector.ph288:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader
  %n.vec289 = and i64 %3, 254                     ; 3 uses
  %broadcast.splat291 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat293 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert294 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat295 = shufflevector <2 x double> %broadcast.splatinsert294, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph288
  %index297 = phi i64 [ 0, %vector.ph288 ], [ %index.next300, %vector.body296 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index297 ; 2 uses
  %wide.load298 = load <2 x double>, ptr %i.eh, align 16, !tbaa !87
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %wide.load299 = load <2 x double>, ptr %i.ei, align 8, !tbaa !87
  %i.ej = fadd <2 x double> %wide.load298, %wide.load299
  %i.ek = fmul <2 x double> %i.ej, splat (double 5.000000e-01)
  %i.el = fsub <2 x double> %i.ek, %broadcast.splat291 ; 2 uses
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.el, <2 x double> %broadcast.splat293)
  %i.en = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.em)
  %i.eo = fadd <2 x double> %broadcast.splat295, %i.en
  %i.ep = fcmp ult <2 x double> %i.eo, splat (double 1.000000e+100)
  %i.eq = zext <2 x i1> %i.ep to <2 x i32>
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index297
  store <2 x i32> %i.eq, ptr %i.er, align 4, !tbaa !153
  %index.next300 = add nuw i64 %index297, 2       ; 2 uses
  %i.es = icmp eq i64 %index.next300, %n.vec289
  br i1 %i.es, label %middle.block301, label %vector.body296, !llvm.loop !394

middle.block301:                                  ; preds = %vector.body296
  %cmp.n302 = icmp eq i64 %3, %n.vec289
  br i1 %cmp.n302, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader334

_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader334: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader, %middle.block301
  %indvars.iv226.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader ], [ %n.vec289, %middle.block301 ]
  %i.et = extractelement <2 x double> %i.bd, i64 1
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader: ; preds = %.lr.ph182.split.us.split
  %min.iters.check305 = icmp samesign ult i64 %3, 4
  br i1 %min.iters.check305, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader333, label %vector.ph306

vector.ph306:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader
  %n.vec307 = and i64 %3, 252                     ; 3 uses
  %broadcast.splat309 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert310 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat311 = shufflevector <2 x double> %broadcast.splatinsert310, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph306
  %index313 = phi i64 [ 0, %vector.ph306 ], [ %index.next318, %vector.body312 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index313 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load314 = load <2 x double>, ptr %i.eu, align 16, !tbaa !87
  %wide.load315 = load <2 x double>, ptr %i.ev, align 16, !tbaa !87
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %wide.load316 = load <2 x double>, ptr %i.ew, align 8, !tbaa !87
  %wide.load317 = load <2 x double>, ptr %i.ex, align 8, !tbaa !87
  %i.ey = fadd <2 x double> %wide.load314, %wide.load316
  %i.ez = fadd <2 x double> %wide.load315, %wide.load317
  %i.fa = fmul <2 x double> %i.ey, splat (double 5.000000e-01)
  %i.fb = fmul <2 x double> %i.ez, splat (double 5.000000e-01)
  %i.fc = fsub <2 x double> %i.fa, %broadcast.splat309
  %i.fd = fsub <2 x double> %i.fb, %broadcast.splat309
  %i.fe = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fc)
  %i.ff = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fd)
  %i.fg = fadd <2 x double> %broadcast.splat311, %i.fe
  %i.fh = fadd <2 x double> %broadcast.splat311, %i.ff
  %i.fi = fcmp ult <2 x double> %i.fg, splat (double 1.000000e+100)
  %i.fj = fcmp ult <2 x double> %i.fh, splat (double 1.000000e+100)
  %i.fk = zext <2 x i1> %i.fi to <2 x i32>
  %i.fl = zext <2 x i1> %i.fj to <2 x i32>
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index313 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store <2 x i32> %i.fk, ptr %i.fm, align 4, !tbaa !153
  store <2 x i32> %i.fl, ptr %i.fn, align 4, !tbaa !153
  %index.next318 = add nuw i64 %index313, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next318, %n.vec307
  br i1 %i.fo, label %middle.block319, label %vector.body312, !llvm.loop !395

middle.block319:                                  ; preds = %vector.body312
  %cmp.n320 = icmp eq i64 %3, %n.vec307
  br i1 %cmp.n320, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader333

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader333: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader, %middle.block319
  %indvars.iv231.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader ], [ %n.vec307, %middle.block319 ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193

_ZN3igl8geodesic8Interval6signalEd.exit.us.us193: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader333, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ %indvars.iv231.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193.preheader333 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv231 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !87
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !87
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = fmul double %i.ft, 5.000000e-01
  %i.fv = fsub double %i.fu, %i.ba
  %i.fw = tail call noundef double @llvm.fabs.f64(double %i.fv)
  %.0.i172.us.us = fadd double %i.aq, %i.fw
  %i.fx = fcmp ult double %.0.i172.us.us, 1.000000e+100
  %i.fy = zext i1 %i.fx to i32
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv231
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !153
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %3
  br i1 %exitcond235.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193, !llvm.loop !396

_ZN3igl8geodesic8Interval6signalEd.exit.us:       ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader334, %_ZN3igl8geodesic8Interval6signalEd.exit.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ %indvars.iv226.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us.preheader334 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv226 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !87
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !87
  %i.ge = fadd double %i.gb, %i.gd
  %i.gf = fmul double %i.ge, 5.000000e-01
  %i.gg = fsub double %i.gf, %i.ba                ; 2 uses
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.gg, double %i.et)
  %sqrt.i170.us = tail call double @llvm.sqrt.f64(double %i.gh)
  %.0.i172.us = fadd double %i.aq, %sqrt.i170.us
  %i.gi = fcmp ult double %.0.i172.us, 1.000000e+100
  %i.gj = zext i1 %i.gi to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv226
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !153
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %3
  br i1 %exitcond230.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us, !llvm.loop !397

.lr.ph182.split:                                  ; preds = %.lr.ph182
  br i1 %i.ee, label %.lr.ph182.split.split.us, label %.lr.ph182.split.split.preheader

.lr.ph182.split.split.preheader:                  ; preds = %.lr.ph182.split
  %i.gl = extractelement <2 x double> %i.bd, i64 0
  %i.gm = extractelement <2 x double> %i.bd, i64 1
  br label %.lr.ph182.split.split

.lr.ph182.split.split.us:                         ; preds = %.lr.ph182.split
  br i1 %i.ed, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader

_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader: ; preds = %.lr.ph182.split.split.us
  %min.iters.check = icmp samesign ult i64 %3, 2
  br i1 %min.iters.check, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader338, label %vector.ph

vector.ph:                                        ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader
  %n.vec = and i64 %3, 254                        ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat264 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert265 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat266 = shufflevector <2 x double> %broadcast.splatinsert265, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gn, align 16, !tbaa !87
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %wide.load267 = load <2 x double>, ptr %i.go, align 8, !tbaa !87
  %i.gp = fadd <2 x double> %wide.load, %wide.load267
  %i.gq = fmul <2 x double> %i.gp, splat (double 5.000000e-01)
  %i.gr = fsub <2 x double> %i.gq, %broadcast.splat ; 2 uses
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gr, <2 x double> %broadcast.splat264)
  %i.gt = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gs)
  %i.gu = fadd <2 x double> %broadcast.splat266, %i.gt
  %i.gv = fcmp ugt <2 x double> %i.gu, splat (double 1.000000e+100)
  %i.gw = zext <2 x i1> %i.gv to <2 x i32>
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <2 x i32> %i.gw, ptr %i.gx, align 4, !tbaa !153
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader338

_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader338: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader ], [ %n.vec, %middle.block ]
  %i.gz = extractelement <2 x double> %i.bd, i64 0
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us186

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader: ; preds = %.lr.ph182.split.split.us
  %min.iters.check269 = icmp samesign ult i64 %3, 4
  br i1 %min.iters.check269, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader336, label %vector.ph270

vector.ph270:                                     ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader
  %n.vec271 = and i64 %3, 252                     ; 3 uses
  %broadcast.splat273 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert274 = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat275 = shufflevector <2 x double> %broadcast.splatinsert274, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph270
  %index277 = phi i64 [ 0, %vector.ph270 ], [ %index.next282, %vector.body276 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index277 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load278 = load <2 x double>, ptr %i.ha, align 16, !tbaa !87
  %wide.load279 = load <2 x double>, ptr %i.hb, align 16, !tbaa !87
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %wide.load280 = load <2 x double>, ptr %i.hc, align 8, !tbaa !87
  %wide.load281 = load <2 x double>, ptr %i.hd, align 8, !tbaa !87
  %i.he = fadd <2 x double> %wide.load278, %wide.load280
  %i.hf = fadd <2 x double> %wide.load279, %wide.load281
  %i.hg = fmul <2 x double> %i.he, splat (double 5.000000e-01)
  %i.hh = fmul <2 x double> %i.hf, splat (double 5.000000e-01)
  %i.hi = fsub <2 x double> %i.hg, %broadcast.splat273
  %i.hj = fsub <2 x double> %i.hh, %broadcast.splat273
  %i.hk = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hi)
  %i.hl = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hj)
  %i.hm = fadd <2 x double> %broadcast.splat275, %i.hk
  %i.hn = fadd <2 x double> %broadcast.splat275, %i.hl
  %i.ho = fcmp ugt <2 x double> %i.hm, splat (double 1.000000e+100)
  %i.hp = fcmp ugt <2 x double> %i.hn, splat (double 1.000000e+100)
  %i.hq = zext <2 x i1> %i.ho to <2 x i32>
  %i.hr = zext <2 x i1> %i.hp to <2 x i32>
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index277 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store <2 x i32> %i.hq, ptr %i.hs, align 4, !tbaa !153
  store <2 x i32> %i.hr, ptr %i.ht, align 4, !tbaa !153
  %index.next282 = add nuw i64 %index277, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next282, %n.vec271
  br i1 %i.hu, label %middle.block283, label %vector.body276, !llvm.loop !399

middle.block283:                                  ; preds = %vector.body276
  %cmp.n284 = icmp eq i64 %3, %n.vec271
  br i1 %cmp.n284, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader336

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader336: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader, %middle.block283
  %indvars.iv221.ph = phi i64 [ 0, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader ], [ %n.vec271, %middle.block283 ]
  br label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us

_ZN3igl8geodesic8Interval6signalEd.exit.us186.us: ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader336, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ %indvars.iv221.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us.preheader336 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv221 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !87
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !87
  %i.hz = fadd double %i.hw, %i.hy
  %i.ia = fmul double %i.hz, 5.000000e-01
  %i.ib = fsub double %i.ia, %i.ax
  %i.ic = tail call noundef double @llvm.fabs.f64(double %i.ib)
  %.0.i.us.us = fadd double %i.ao, %i.ic
  %i.id = fcmp ugt double %.0.i.us.us, 1.000000e+100
  %i.ie = zext i1 %i.id to i32
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv221
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !153
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %3
  br i1 %exitcond225.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us, !llvm.loop !400

_ZN3igl8geodesic8Interval6signalEd.exit.us186:    ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader338, %_ZN3igl8geodesic8Interval6signalEd.exit.us186
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ %indvars.iv216.ph, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.preheader338 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv216 ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !87
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !87
  %i.ik = fadd double %i.ih, %i.ij
  %i.il = fmul double %i.ik, 5.000000e-01
  %i.im = fsub double %i.il, %i.ax                ; 2 uses
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double %i.im, double %i.gz)
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.in)
  %.0.i.us = fadd double %i.ao, %sqrt.i.us
  %i.io = fcmp ugt double %.0.i.us, 1.000000e+100
  %i.ip = zext i1 %i.io to i32
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv216
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !153
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %3
  br i1 %exitcond220.not, label %._crit_edge183, label %_ZN3igl8geodesic8Interval6signalEd.exit.us186, !llvm.loop !401

bb.r:                                             ; preds = %.lr.ph
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %.sroa.0.0.vec.extract, ptr %i.ir, align 8, !tbaa !87
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %.1 = phi i8 [ 2, %bb.r ], [ 1, %.lr.ph ]       ; 4 uses
  %exitcond.not = icmp eq i32 %.3, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract = extractelement <2 x double> %.sroa.0.0, i64 1 ; 3 uses
  %i.is = fcmp ogt double %.sroa.0.8.vec.extract, %i.dw
  %i.it = fcmp olt double %.sroa.0.8.vec.extract, %i.dx
  %or.cond.1 = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.iu = add nuw nsw i8 %.1, 1
  %i.iv = zext nneg i8 %.1 to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.iv
  store double %.sroa.0.8.vec.extract, ptr %i.iw, align 8, !tbaa !87
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.1 = phi i8 [ %i.iu, %bb.u ], [ %.1, %bb.t ]
  %exitcond.not.1 = icmp eq i32 %.3, 2
  %spec.select = select i1 %exitcond.not.1, i8 %.1.1, i8 poison
  br label %._crit_edge

._crit_edge183:                                   ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit174, %_ZN3igl8geodesic8Interval6signalEd.exit.us186, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193, %middle.block, %middle.block283, %middle.block301, %middle.block319, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader, %._crit_edge
  %i.ix = phi i1 [ false, %middle.block ], [ false, %middle.block283 ], [ false, %middle.block301 ], [ false, %middle.block319 ], [ true, %._crit_edge ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ false, %_ZN3igl8geodesic8Interval6signalEd.exit174 ]
  %4 = phi i64 [ %3, %middle.block ], [ %3, %middle.block283 ], [ %3, %middle.block301 ], [ %3, %middle.block319 ], [ 0, %._crit_edge ], [ %3, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us.preheader ], [ %3, %_ZN3igl8geodesic8Interval6signalEd.exit.us186.us ], [ %3, %_ZN3igl8geodesic8Interval6signalEd.exit.us186 ], [ %3, %_ZN3igl8geodesic8Interval6signalEd.exit.us.us193 ], [ %3, %_ZN3igl8geodesic8Interval6signalEd.exit.us ], [ %3, %_ZN3igl8geodesic8Interval6signalEd.exit174 ]
  %i.iy = fsub double %i.dl, %i.g
  %i.iz = fcmp olt double %i.di, %i.iy
  br i1 %i.iz, label %bb.aa, label %bb.ad

.lr.ph182.split.split:                            ; preds = %.lr.ph182.split.split.preheader, %_ZN3igl8geodesic8Interval6signalEd.exit174
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %_ZN3igl8geodesic8Interval6signalEd.exit174 ], [ 0, %.lr.ph182.split.split.preheader ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv211 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !87
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !87
  %i.je = fadd double %i.jb, %i.jd
  %i.jf = fmul double %i.je, 5.000000e-01         ; 2 uses
  %i.jg = fsub double %i.jf, %i.ax                ; 3 uses
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph182.split.split
  %i.jh = tail call noundef double @llvm.fabs.f64(double %i.jg)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

bb.x:                                             ; preds = %.lr.ph182.split.split
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jg, double %i.gl)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ji)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit

_ZN3igl8geodesic8Interval6signalEd.exit:          ; preds = %bb.x, %bb.w
  %.pn.i = phi double [ %i.jh, %bb.w ], [ %sqrt.i, %bb.x ]
  %.0.i = fadd double %i.ao, %.pn.i
  %i.jj = fsub double %i.jf, %i.ba                ; 3 uses
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.jk = tail call noundef double @llvm.fabs.f64(double %i.jj)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit174

bb.z:                                             ; preds = %_ZN3igl8geodesic8Interval6signalEd.exit
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jj, double %i.gm)
  %sqrt.i170 = tail call double @llvm.sqrt.f64(double %i.jl)
  br label %_ZN3igl8geodesic8Interval6signalEd.exit174

_ZN3igl8geodesic8Interval6signalEd.exit174:       ; preds = %bb.z, %bb.y
  %.pn.i171 = phi double [ %i.jk, %bb.y ], [ %sqrt.i170, %bb.z ]
  %.0.i172 = fadd double %i.aq, %.pn.i171
  %i.jm = fcmp ugt double %.0.i, %.0.i172
  %i.jn = zext i1 %i.jm to i32
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv211
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !153
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %3
  br i1 %exitcond215.not, label %._crit_edge183, label %.lr.ph182.split.split, !llvm.loop !402

bb.aa:                                            ; preds = %._crit_edge183
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !153
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store double %i.di, ptr %i.a, align 16, !tbaa !87
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.jr, align 8, !tbaa !153
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.di, ptr %i.js, align 8, !tbaa !87
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %._crit_edge183
  %.2153 = phi i32 [ 0, %bb.ab ], [ 1, %bb.ac ], [ 0, %._crit_edge183 ] ; 2 uses
  br i1 %i.ix, label %._crit_edge202, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.ad
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.ae

._crit_edge202:                                   ; preds = %bb.ah, %bb.ad
  %.3154.lcssa = phi i32 [ %.2153, %bb.ad ], [ %.4, %bb.ah ] ; 6 uses
  %i.jv = load ptr, ptr %i.do, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  %.in.i176 = select i1 %.not.i167, ptr %i.jw, ptr %i.dn
  %i.jx = load double, ptr %.in.i176, align 8, !tbaa !87
  %i.jy = load double, ptr %i.ds, align 8, !tbaa !87 ; 2 uses
  %i.jz = fadd double %i.g, %i.jy
  %i.ka = fcmp ogt double %i.jx, %i.jz
  br i1 %i.ka, label %bb.ai, label %bb.al

bb.ae:                                            ; preds = %.lr.ph201, %bb.ah
  %.0199 = phi i64 [ 0, %.lr.ph201 ], [ %i.ko, %bb.ah ] ; 3 uses
  %.3154198 = phi i32 [ %.2153, %.lr.ph201 ], [ %.4, %bb.ah ] ; 5 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0199
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !153 ; 2 uses
  %i.kd = icmp eq i32 %.3154198, 0
  br i1 %i.kd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ke = add i32 %.3154198, -1
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !153
  %.not = icmp eq i32 %i.kh, %i.kc
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ki = zext i32 %.3154198 to i64               ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ki
  store i32 %i.kc, ptr %i.kj, align 4, !tbaa !153
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0199
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !87
  %i.km = add i32 %.3154198, 1
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.ki
  store double %i.kl, ptr %i.kn, align 8, !tbaa !87
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi i32 [ %i.km, %bb.ag ], [ %.3154198, %bb.af ] ; 2 uses
  %i.ko = add nuw nsw i64 %.0199, 1               ; 2 uses
  %exitcond239.not = icmp eq i64 %i.ko, %4
  br i1 %exitcond239.not, label %._crit_edge202, label %bb.ae, !llvm.loop !403

bb.ai:                                            ; preds = %._crit_edge202
  %i.kp = icmp eq i32 %.3154.lcssa, 0
  br i1 %i.kp, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.kr = add i32 %.3154.lcssa, -1
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !153
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %i.kv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.kx = zext i32 %.3154.lcssa to i64            ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.kx
  store i32 0, ptr %i.ky, align 4, !tbaa !153
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.la = add i32 %.3154.lcssa, 1
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.kx
  store double %i.jy, ptr %i.lb, align 8, !tbaa !87
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %._crit_edge202
  %.5 = phi i32 [ %i.la, %bb.ak ], [ %.3154.lcssa, %bb.aj ], [ %.3154.lcssa, %._crit_edge202 ]
  %i.lc = load double, ptr %1, align 8, !tbaa !87
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.lc, ptr %i.ld, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.f
  %.0145 = phi i32 [ %.1152, %bb.f ], [ %.5, %bb.al ]
  ret i32 %.0145
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !85
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165
  store ptr %i.u, ptr %i.s, align 8, !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !85, !alias.scope !413, !noalias !412
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !85, !alias.scope !412, !noalias !413
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !165, !alias.scope !413, !noalias !412
  store ptr %i.y, ptr %i.w, align 8, !tbaa !165, !alias.scope !412, !noalias !413
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !413, !noalias !412
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !85, !alias.scope !415, !noalias !414
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !85, !alias.scope !414, !noalias !415
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165, !alias.scope !415, !noalias !414
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !165, !alias.scope !414, !noalias !415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !415, !noalias !414
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !161
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #23
  br label %_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN3igl8geodesic8IntervalESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN3igl8geodesic8IntervalESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !163
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !162
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPN3igl8geodesic8IntervalES3_St9_IdentityIS3_ES2_SaIS3_EE24_M_get_insert_unique_posERKS3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.02229 = load ptr, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %.not30 = icmp eq ptr %.02229, null
  br i1 %.not30, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !85     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02231 = phi ptr [ %.02229, %.lr.ph ], [ %.022, %bb.e ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02231, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !87 ; 2 uses
  %i.k = fcmp une double %i.e, %i.j
  br i1 %i.k, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.l = fcmp olt double %i.e, %i.j
  br i1 %i.l, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.c, align 8, !tbaa !87 ; 2 uses
  %i.n = load double, ptr %i.h, align 8, !tbaa !87 ; 2 uses
  %i.o = fcmp une double %i.m, %i.n
  br i1 %i.o, label %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit, label %.split26

.split26:                                         ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = icmp ult i32 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %bb.d

_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit:        ; preds = %bb.c
  %i.x = fcmp olt double %i.m, %i.n
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split26, %.split, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit, %.split, %.split26, %bb.d
  %.sink = phi i64 [ 24, %bb.d ], [ 16, %.split26 ], [ 16, %.split ], [ 16, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit ]
  %.0.i23 = phi i1 [ false, %bb.d ], [ true, %.split26 ], [ true, %.split ], [ true, %_ZNK3igl8geodesic8IntervalclEPS1_S2_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02231, i64 %.sink
  %.022 = load ptr, ptr %i.y, align 8, !tbaa !154 ; 2 uses
  %.not = icmp eq ptr %.022, null
end_hunk_0
