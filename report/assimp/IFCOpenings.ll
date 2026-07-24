inline.NumInlined: 3958
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a
  %or.cond28.i = select i1 %or.cond.i, i1 true, i1 %i.az
  br i1 %or.cond28.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit: ; preds = %bb.j
  %i.ba = load double, ptr %i.g, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp olt double %i.be, f0x3E80000000000000
  %i.bg = fcmp ole double %i.t, %i.s
  %or.cond29.not.i = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = fcmp oge double %i.ah, %i.af
  %spec.select.i = select i1 %or.cond29.not.i, i1 %i.bh, i1 false
  br i1 %spec.select.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %.loopexit

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread: ; preds = %bb.f, %bb.i, %bb.j, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.c
  %i.bi = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bj = load ptr, ptr %0, align 8               ; 3 uses
  %.not198 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not198, label %.loopexit, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %._crit_edge
  %i.bo = phi ptr [ %i.cu, %._crit_edge ], [ %i.bj, %.lr.ph191.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.cv, %._crit_edge ], [ %i.bi, %.lr.ph191.preheader ]
  %i.bq = phi i64 [ %i.cz, %._crit_edge ], [ %i.bn, %.lr.ph191.preheader ]
  %.0190 = phi i64 [ %.pre-phi, %._crit_edge ], [ 0, %.lr.ph191.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0190
  %i.bs = add nuw i64 %.0190, 1                   ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  %i.bu = select i1 %i.bt, i64 0, i64 %i.bs
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = load <2 x double>, ptr %i.br, align 8   ; 7 uses
  %i.bx = load <2 x double>, ptr %i.bv, align 8   ; 5 uses
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph191
  %i.by = load ptr, ptr %i.n, align 8
  %i.bz = load ptr, ptr %.sroa.0165.0193, align 8
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph191, %bb.k
  %i.ce = phi i64 [ %i.cd, %bb.k ], [ %.0190, %.lr.ph191 ] ; 2 uses
  %.not199 = icmp eq i64 %i.ce, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cf = fsub <2 x double> %i.bx, %i.bw          ; 7 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 1 ; 4 uses
  %i.ch = fmul double %i.cg, %i.cg
  %i.ci = extractelement <2 x double> %i.cf, i64 0 ; 4 uses
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.ch)
  %sqrt.i27.i = tail call double @llvm.sqrt.f64(double %i.cj) ; 2 uses
  %i.ck = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cf) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = extractelement <2 x double> %i.ck, i64 1
  %i.cn = fcmp ogt double %i.cl, %i.cm
  %i.co = extractelement <2 x double> %i.bx, i64 0
  %i.cp = extractelement <2 x double> %i.bx, i64 1
  %i.cq = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.pre = load ptr, ptr %i.i, align 8
  %.pre203 = load ptr, ptr %0, align 8
  %.pre204 = add i64 %.3, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre204, %._crit_edge.loopexit ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cu = phi ptr [ %.pre203, %._crit_edge.loopexit ], [ %i.bo, %bb.l ] ; 2 uses
  %i.cv = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %bb.l ] ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 4                 ; 2 uses
  %i.da = icmp ult i64 %.pre-phi, %i.cz
  br i1 %i.da, label %.lr.ph191, label %.loopexit, !llvm.loop !117

bb.m:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.1189 = phi i64 [ %.0190, %.lr.ph ], [ %.3, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 10 uses
  %.058188 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 2 uses
  %i.db = load ptr, ptr %.sroa.0165.0193, align 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.058188 ; 2 uses
  %.sroa.0153.0.copyload = load double, ptr %i.dc, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.4154.0.copyload = load double, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.dd = add nuw i64 %.058188, 1                 ; 3 uses
  %i.de = load ptr, ptr %i.n, align 8
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.db to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 4
  %i.dj = urem i64 %i.dd, %i.di
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dj ; 2 uses
  %.sroa.0151.0.copyload = load double, ptr %i.dk, align 8 ; 2 uses
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.4152.0.copyload = load double, ptr %.sroa.4152.0..sroa_idx, align 8 ; 2 uses
  %i.dl = fsub double %.sroa.0151.0.copyload, %i.co ; 3 uses
  %i.dm = fsub double %.sroa.4152.0.copyload, %i.cp ; 3 uses
  %i.dn = insertelement <2 x double> poison, double %.sroa.0151.0.copyload, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %.sroa.0153.0.copyload, i64 1
  %i.dp = fsub <2 x double> %i.do, %i.cq          ; 3 uses
  %i.dq = insertelement <2 x double> poison, double %.sroa.4152.0.copyload, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %.sroa.4154.0.copyload, i64 1
  %i.ds = fsub <2 x double> %i.dr, %i.cs          ; 3 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 1 ; 3 uses
  %i.du = fmul double %i.dt, %i.dt
  %i.dv = extractelement <2 x double> %i.dp, i64 1 ; 3 uses
  %i.dw = tail call noundef double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double %i.du) ; 2 uses
  %i.dx = fcmp olt double %i.dw, f0x3DDB7CDFC28AE400
  br i1 %i.dx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = fmul double %i.cg, %i.dt
  %i.dz = tail call noundef double @llvm.fmuladd.f64(double %i.dv, double %i.ci, double %i.dy)
  %i.ea = tail call double @llvm.fabs.f64(double %i.dz)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.dw)
  %i.eb = fmul double %sqrt.i27.i, %sqrt.i.i
  %i.ec = fdiv double %i.ea, %i.eb
  %i.ed = fcmp ogt double %i.ec, 9.999900e-01
  br i1 %i.ed, label %bb.o, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ee = fmul double %i.dm, %i.dm
  %i.ef = tail call noundef double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %i.ee) ; 2 uses
  %i.eg = fcmp olt double %i.ef, f0x3DDB7CDFC28AE400
  br i1 %i.eg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eh = fmul double %i.cg, %i.dm
  %i.ei = tail call noundef double @llvm.fmuladd.f64(double %i.dl, double %i.ci, double %i.eh)
  %i.ej = tail call double @llvm.fabs.f64(double %i.ei)
  %sqrt.i28.i = tail call noundef double @llvm.sqrt.f64(double %i.ef)
  %i.ek = fmul double %sqrt.i27.i, %sqrt.i28.i
  %i.el = fdiv double %i.ej, %i.ek
  %i.em = fcmp ogt double %i.el, 9.999900e-01
  br i1 %i.em, label %bb.q, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.cn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.en = fdiv <2 x double> %i.dp, %i.cr          ; 3 uses
  %i.eo = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.en)
  %i.ep = fcmp oeq <2 x double> %i.eo, splat (double +inf) ; 2 uses
  %i.eq = extractelement <2 x i1> %i.ep, i64 1
  %i.er = extractelement <2 x double> %i.en, i64 1
  %i.es = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dp)
  %i.et = fcmp olt <2 x double> %i.es, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.eu = extractelement <2 x i1> %i.et, i64 1
  %or.cond100.i = select i1 %i.eq, i1 %i.eu, i1 false
  %.0.i = select i1 %or.cond100.i, double 0.000000e+00, double %i.er ; 2 uses
  %i.ev = extractelement <2 x i1> %i.ep, i64 0
  %i.ew = extractelement <2 x i1> %i.et, i64 0
  %or.cond.i59 = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = extractelement <2 x double> %i.en, i64 0
  br i1 %or.cond.i59, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.ey = fdiv <2 x double> %i.ds, %i.ct          ; 3 uses
  %i.ez = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ey)
  %i.fa = fcmp oeq <2 x double> %i.ez, splat (double +inf) ; 2 uses
  %i.fb = extractelement <2 x i1> %i.fa, i64 1
  %i.fc = extractelement <2 x double> %i.ey, i64 1
  %i.fd = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ds)
  %i.fe = fcmp olt <2 x double> %i.fd, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.ff = extractelement <2 x i1> %i.fe, i64 1
  %or.cond102.i = select i1 %i.fb, i1 %i.ff, i1 false
  %.196.i = select i1 %or.cond102.i, double 0.000000e+00, double %i.fc ; 2 uses
  %i.fg = extractelement <2 x i1> %i.fa, i64 0
  %i.fh = extractelement <2 x i1> %i.fe, i64 0
  %or.cond20.i = select i1 %i.fg, i1 %i.fh, i1 false
  %i.fi = extractelement <2 x double> %i.ey, i64 0
  br i1 %or.cond20.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.097.i = phi double [ 0.000000e+00, %bb.s ], [ %i.ex, %bb.r ], [ 0.000000e+00, %bb.u ], [ %i.fi, %bb.t ] ; 3 uses
  %.2.i = phi double [ %.0.i, %bb.s ], [ %.0.i, %bb.r ], [ %.196.i, %bb.u ], [ %.196.i, %bb.t ] ; 3 uses
  %i.fj = fcmp olt double %.097.i, %.2.i          ; 2 uses
  %.198.i.a = select i1 %i.fj, double %.2.i, double %.097.i ; 2 uses
  %.3.i = select i1 %i.fj, double %.097.i, double %.2.i ; 2 uses
  %2 = fcmp ogt double %.3.i, 0.000000e+00
  %.sroa.speculated52.i = select i1 %2, double %.3.i, double 0.000000e+00 ; 2 uses
  %3 = fcmp ogt double %.198.i.a, 0.000000e+00
  %.sroa.speculated48.i = select i1 %3, double %.198.i.a, double 0.000000e+00 ; 2 uses
  %4 = fcmp olt double %.sroa.speculated52.i, 1.000000e+00
  %.sroa.speculated44.i = select i1 %4, double %.sroa.speculated52.i, double 1.000000e+00 ; 2 uses
  %5 = fcmp olt double %.sroa.speculated48.i, 1.000000e+00
  %.sroa.speculated.i = select i1 %5, double %.sroa.speculated48.i, double 1.000000e+00 ; 2 uses
  %6 = fsub double %.sroa.speculated.i, %.sroa.speculated44.i
  %i.fk = tail call double @llvm.fabs.f64(double %6)
  %i.fl = fcmp uge double %i.fk, f0x3EE4F8B580000000
  br i1 %i.fl, label %bb.w, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.w:                                             ; preds = %bb.v
  %7 = insertelement <2 x double> poison, double %.sroa.speculated44.i, i64 0
  %i.fm = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x double> %i.cf, %i.fm
  %i.fo = fadd <2 x double> %i.bw, %i.fn          ; 5 uses
  %8 = insertelement <2 x double> poison, double %.sroa.speculated.i, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x double> %i.cf, %9
  %i.fq = fadd <2 x double> %i.bw, %i.fp          ; 5 uses
  %foldExtExtBinop.a = fsub <2 x double> %i.fo, %i.bw
  %i.fr = extractelement <2 x double> %foldExtExtBinop.a, i64 0 ; 2 uses
  %foldExtExtBinop242 = fsub <2 x double> %i.fo, %i.bw ; 2 uses
  %foldExtExtBinop244 = fmul <2 x double> %foldExtExtBinop242, %foldExtExtBinop242
  %i.fs = extractelement <2 x double> %foldExtExtBinop244, i64 1
  %i.ft = tail call noundef double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %i.fs)
  %i.fu = fcmp ogt double %i.ft, f0x3E80000000000000
  br i1 %i.fu, label %bb.x, label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.fv = add i64 %.1189, 1                       ; 8 uses
  %i.fw = load ptr, ptr %0, align 8               ; 7 uses
  %.idx180 = shl nsw i64 %i.fv, 4                 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %.idx180 ; 8 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = load ptr, ptr %i.i, align 8             ; 8 uses
  %i.ga = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.gb = icmp eq ptr %i.fx, %i.fz
  br i1 %i.gb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store <2 x double> %i.fo, ptr %i.fz, align 8
  %i.gc = load ptr, ptr %i.i, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.gd, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ge = getelementptr inbounds i8, ptr %i.fz, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false)
  %i.gf = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.gg, ptr %i.i, align 8
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -16 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.fy                    ; 3 uses
  %i.gk = ashr exact i64 %i.gj, 4                 ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 1
  br i1 %i.gl, label %bb.ab, label %bb.ac, !prof !118

bb.ab:                                            ; preds = %bb.aa
  %i.gm = sub nsw i64 0, %i.gk
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.gf, i64 %i.gm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %i.fx, i64 %i.gj, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.go = icmp eq i64 %i.gj, 16
  br i1 %i.go, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store <2 x double> %i.fo, ptr %i.fx, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.af:                                            ; preds = %bb.x
  %i.gp = ptrtoint ptr %i.fw to i64
  %i.gq = ptrtoint ptr %i.fz to i64
  %i.gr = sub i64 %i.gq, %i.gp                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775792
  br i1 %i.gs, label %bb.ag, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.gt = ashr exact i64 %i.gr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 576460752303423487)
  %i.gx = select i1 %i.gv, i64 576460752303423487, i64 %i.gw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 4
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #25 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx180
  store <2 x double> %i.fo, ptr %i.ha, align 8
  %.not10.i.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hb = and i64 %.1189, 1152921504606846975
  %i.hc = add i64 %.1189, 1
  %xtraiter = and i64 %i.hc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.prol ], [ %i.gz, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.prol = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.prol ], [ %i.fw, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.prol, i64 16, i1 false), !alias.scope !119
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !123

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.prol ]
  %.012.i.i.i.i.i.unr = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.unr = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hd, %.lr.ph.i.i.i.i.i.prol ]
  %i.hf = icmp samesign ult i64 %i.hb, 3
  br i1 %i.hf, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !119
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !alias.scope !119
  %i.hi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false), !alias.scope !119
  %i.hk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48
  %i.hl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !alias.scope !119
  %i.hm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.hm, %i.fx
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.hn, %.lr.ph.i.i.i.i.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i = icmp eq ptr %i.fx, %i.fz
  br i1 %.not10.i.i.i16.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i

.lr.ph.i.i.i17.i.i:                               ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, %.lr.ph.i.i.i17.i.i
  %.012.i.i.i18.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i17.i.i ], [ %i.ho, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  %.0911.i.i.i19.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i17.i.i ], [ %i.fx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i, i64 16, i1 false), !alias.scope !125
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i, i64 16 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i, i64 16 ; 2 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.hp, %i.fz
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i17.i.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %.0.lcssa.i.i.i21.i.i = phi ptr [ %i.ho, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ], [ %i.hq, %.lr.ph.i.i.i17.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gr) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.gz, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i.i, ptr %i.i, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hr, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit: ; preds = %bb.z, %bb.ae, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.hs = load ptr, ptr %i.b, align 8
  %i.ht = sdiv i64 %i.fv, 64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = and i64 %i.fv, -9223372036854775745
  %i.hw = icmp ugt i64 %i.hv, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.hw, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.hu, i64 %storemerge.idx.i.i.i ; 2 uses
  %i.hx = trunc i64 %i.fv to i32
  %i.hy = and i32 %i.hx, 63                       ; 4 uses
  %i.hz = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.ia = load ptr, ptr %i.l, align 8
  %.not.i65 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i65, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ib = icmp eq ptr %storemerge.i.i.i, %i.hz
  %i.ic = icmp eq i32 %i.hy, %.sroa.2.0.copyload.i.i
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.ie = add nuw nsw i32 %i.hy, 1
  store i32 %i.ie, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.if = icmp eq i32 %i.hy, 63
  br i1 %i.if, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.ig, ptr %i.k, align 8
  br label %bb.al

end_hunk_0
