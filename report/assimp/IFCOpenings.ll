inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %._crit_edge
  %i.bo = phi ptr [ %i.ck, %._crit_edge ], [ %i.bj, %.lr.ph191.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.cl, %._crit_edge ], [ %i.bi, %.lr.ph191.preheader ]
  %i.bq = phi i64 [ %i.cp, %._crit_edge ], [ %i.bn, %.lr.ph191.preheader ]
  %.0190 = phi i64 [ %.pre-phi, %._crit_edge ], [ 0, %.lr.ph191.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0190 ; 2 uses
  %.sroa.0158.0.copyload = load double, ptr %i.br, align 8 ; 6 uses
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.6161.0.copyload = load double, ptr %.sroa.6161.0..sroa_idx, align 8 ; 6 uses
  %i.bs = add nuw i64 %.0190, 1                   ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  %i.bu = select i1 %i.bt, i64 0, i64 %i.bs
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu ; 2 uses
  %.sroa.0155.0.copyload = load double, ptr %i.bv, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph191
  %i.bw = load ptr, ptr %i.n, align 8
  %i.bx = load ptr, ptr %.sroa.0165.0193, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph191, %bb.k
  %i.cc = phi i64 [ %i.cb, %bb.k ], [ %.0190, %.lr.ph191 ] ; 2 uses
  %.not199 = icmp eq i64 %i.cc, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cd = fsub double %.sroa.0155.0.copyload, %.sroa.0158.0.copyload ; 9 uses
  %i.ce = fsub double %.sroa.5.0.copyload, %.sroa.6161.0.copyload ; 9 uses
  %i.cf = fmul double %i.ce, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %i.cf)
  %sqrt.i27.i = tail call double @llvm.sqrt.f64(double %i.cg) ; 2 uses
  %i.ch = tail call double @llvm.fabs.f64(double %i.cd)
  %i.ci = tail call double @llvm.fabs.f64(double %i.ce)
  %i.cj = fcmp ogt double %i.ch, %i.ci
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.pre = load ptr, ptr %i.i, align 8
  %.pre203 = load ptr, ptr %0, align 8
  %.pre204 = add i64 %.3, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre204, %._crit_edge.loopexit ], [ %i.bs, %bb.l ] ; 2 uses
  %i.ck = phi ptr [ %.pre203, %._crit_edge.loopexit ], [ %i.bo, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %bb.l ] ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 4                 ; 2 uses
  %i.cq = icmp ult i64 %.pre-phi, %i.cp
  br i1 %i.cq, label %.lr.ph191, label %.loopexit, !llvm.loop !117

bb.m:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.1189 = phi i64 [ %.0190, %.lr.ph ], [ %.3, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 10 uses
  %.058188 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 2 uses
  %i.cr = load ptr, ptr %.sroa.0165.0193, align 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.058188 ; 2 uses
  %.sroa.0153.0.copyload = load double, ptr %i.cs, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.4154.0.copyload = load double, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.ct = add nuw i64 %.058188, 1                 ; 3 uses
  %i.cu = load ptr, ptr %i.n, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 4
  %i.cz = urem i64 %i.ct, %i.cy
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cz ; 2 uses
  %.sroa.0151.0.copyload = load double, ptr %i.da, align 8 ; 2 uses
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.4152.0.copyload = load double, ptr %.sroa.4152.0..sroa_idx, align 8 ; 2 uses
  %i.db = fsub double %.sroa.0153.0.copyload, %.sroa.0158.0.copyload ; 5 uses
  %i.dc = fsub double %.sroa.4154.0.copyload, %.sroa.6161.0.copyload ; 5 uses
  %i.dd = fsub double %.sroa.0151.0.copyload, %.sroa.0155.0.copyload ; 3 uses
  %i.de = fsub double %.sroa.4152.0.copyload, %.sroa.5.0.copyload ; 3 uses
  %i.df = fsub double %.sroa.0151.0.copyload, %.sroa.0158.0.copyload ; 2 uses
  %i.dg = fsub double %.sroa.4152.0.copyload, %.sroa.6161.0.copyload ; 2 uses
  %i.dh = fmul double %i.dc, %i.dc
  %i.di = tail call noundef double @llvm.fmuladd.f64(double %i.db, double %i.db, double %i.dh) ; 2 uses
  %i.dj = fcmp olt double %i.di, f0x3DDB7CDFC28AE400
  br i1 %i.dj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = fmul double %i.ce, %i.dc
  %i.dl = tail call noundef double @llvm.fmuladd.f64(double %i.db, double %i.cd, double %i.dk)
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.di)
  %i.dn = fmul double %sqrt.i27.i, %sqrt.i.i
  %i.do = fdiv double %i.dm, %i.dn
  %i.dp = fcmp ogt double %i.do, 9.999900e-01
  br i1 %i.dp, label %bb.o, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dq = fmul double %i.de, %i.de
  %i.dr = tail call noundef double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.dq) ; 2 uses
  %i.ds = fcmp olt double %i.dr, f0x3DDB7CDFC28AE400
  br i1 %i.ds, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = fmul double %i.ce, %i.de
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %i.dd, double %i.cd, double %i.dt)
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %sqrt.i28.i = tail call noundef double @llvm.sqrt.f64(double %i.dr)
  %i.dw = fmul double %sqrt.i27.i, %sqrt.i28.i
  %i.dx = fdiv double %i.dv, %i.dw
  %i.dy = fcmp ogt double %i.dx, 9.999900e-01
  br i1 %i.dy, label %bb.q, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.cj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dz = fdiv double %i.db, %i.cd                ; 2 uses
  %i.ea = fdiv double %i.df, %i.cd                ; 2 uses
  %i.eb = tail call double @llvm.fabs.f64(double %i.dz)
  %i.ec = fcmp oeq double %i.eb, +inf
  %i.ed = tail call double @llvm.fabs.f64(double %i.db)
  %i.ee = fcmp olt double %i.ed, f0x3E112E0BE0000000
  %or.cond100.i = select i1 %i.ec, i1 %i.ee, i1 false
  %.0.i = select i1 %or.cond100.i, double 0.000000e+00, double %i.dz ; 2 uses
  %i.ef = tail call double @llvm.fabs.f64(double %i.ea)
  %i.eg = fcmp oeq double %i.ef, +inf
  %i.eh = tail call double @llvm.fabs.f64(double %i.df)
  %i.ei = fcmp olt double %i.eh, f0x3E112E0BE0000000
  %or.cond.i59 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond.i59, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.ej = fdiv double %i.dc, %i.ce                ; 2 uses
  %i.ek = fdiv double %i.dg, %i.ce                ; 2 uses
  %i.el = tail call double @llvm.fabs.f64(double %i.ej)
  %i.em = fcmp oeq double %i.el, +inf
  %i.en = tail call double @llvm.fabs.f64(double %i.dc)
  %i.eo = fcmp olt double %i.en, f0x3E112E0BE0000000
  %or.cond102.i = select i1 %i.em, i1 %i.eo, i1 false
  %.196.i = select i1 %or.cond102.i, double 0.000000e+00, double %i.ej ; 2 uses
  %i.ep = tail call double @llvm.fabs.f64(double %i.ek)
  %i.eq = fcmp oeq double %i.ep, +inf
  %i.er = tail call double @llvm.fabs.f64(double %i.dg)
  %i.es = fcmp olt double %i.er, f0x3E112E0BE0000000
  %or.cond20.i = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %or.cond20.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.097.i = phi double [ 0.000000e+00, %bb.s ], [ %i.ea, %bb.r ], [ 0.000000e+00, %bb.u ], [ %i.ek, %bb.t ] ; 3 uses
  %.2.i = phi double [ %.0.i, %bb.s ], [ %.0.i, %bb.r ], [ %.196.i, %bb.u ], [ %.196.i, %bb.t ] ; 3 uses
  %i.et = fcmp olt double %.097.i, %.2.i          ; 2 uses
  %.198.i = select i1 %i.et, double %.2.i, double %.097.i ; 2 uses
  %.3.i = select i1 %i.et, double %.097.i, double %.2.i ; 2 uses
  %i.eu = fcmp ogt double %.3.i, 0.000000e+00
  %.sroa.speculated52.i = select i1 %i.eu, double %.3.i, double 0.000000e+00 ; 2 uses
  %i.ev = fcmp ogt double %.198.i, 0.000000e+00
  %.sroa.speculated48.i = select i1 %i.ev, double %.198.i, double 0.000000e+00 ; 2 uses
  %i.ew = fcmp olt double %.sroa.speculated52.i, 1.000000e+00
  %.sroa.speculated44.i = select i1 %i.ew, double %.sroa.speculated52.i, double 1.000000e+00 ; 3 uses
  %i.ex = fcmp olt double %.sroa.speculated48.i, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ex, double %.sroa.speculated48.i, double 1.000000e+00 ; 3 uses
  %i.ey = fsub double %.sroa.speculated.i, %.sroa.speculated44.i
  %i.ez = tail call double @llvm.fabs.f64(double %i.ey)
  %i.fa = fcmp uge double %i.ez, f0x3EE4F8B580000000
  br i1 %i.fa, label %bb.w, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.fb = fmul double %i.cd, %.sroa.speculated44.i
  %i.fc = fmul double %i.ce, %.sroa.speculated44.i
  %i.fd = fadd double %.sroa.0158.0.copyload, %i.fb ; 4 uses
  %i.fe = fadd double %.sroa.6161.0.copyload, %i.fc ; 4 uses
  %i.ff = fmul double %i.cd, %.sroa.speculated.i
  %i.fg = fmul double %i.ce, %.sroa.speculated.i
  %i.fh = fadd double %.sroa.0158.0.copyload, %i.ff ; 4 uses
  %i.fi = fadd double %.sroa.6161.0.copyload, %i.fg ; 4 uses
  %i.fj = fsub double %i.fd, %.sroa.0158.0.copyload ; 2 uses
  %i.fk = fsub double %i.fe, %.sroa.6161.0.copyload ; 2 uses
  %i.fl = fmul double %i.fk, %i.fk
  %i.fm = tail call noundef double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %i.fl)
  %i.fn = fcmp ogt double %i.fm, f0x3E80000000000000
  br i1 %i.fn, label %bb.x, label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.fo = add i64 %.1189, 1                       ; 8 uses
  %i.fp = load ptr, ptr %0, align 8               ; 6 uses
  %.idx180 = shl nsw i64 %i.fo, 4                 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %.idx180 ; 10 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.ft = load ptr, ptr %i.i, align 8             ; 9 uses
  %i.fu = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.fv = icmp eq ptr %i.fq, %i.ft
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.fd, ptr %i.ft, align 8
  %.sroa.9148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store double %i.fe, ptr %.sroa.9148.0..sroa_idx, align 8
  %i.fw = load ptr, ptr %i.i, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store ptr %i.fx, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fy = getelementptr inbounds i8, ptr %i.ft, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false)
  %i.fz = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %i.ga, ptr %i.i, align 8
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -16 ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fr                    ; 3 uses
  %i.ge = ashr exact i64 %i.gd, 4                 ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 1
  br i1 %i.gf, label %bb.ab, label %bb.ac, !prof !118

bb.ab:                                            ; preds = %bb.aa
  %i.gg = sub nsw i64 0, %i.ge
  %i.gh = getelementptr inbounds [16 x i8], ptr %i.fz, i64 %i.gg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr nonnull align 8 %i.fq, i64 %i.gd, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.gi = icmp eq i64 %i.gd, 16
  br i1 %i.gi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store double %i.fd, ptr %i.fq, align 8
  %.sroa.7.i.sroa.4.0..sroa.7.8..sroa_idx11.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store double %i.fe, ptr %.sroa.7.i.sroa.4.0..sroa.7.8..sroa_idx11.i.sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.af:                                            ; preds = %bb.x
  %i.gj = ptrtoint ptr %i.ft to i64
  %i.gk = sub i64 %i.gj, %i.fs                    ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775792
  br i1 %i.gl, label %bb.ag, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.gm = ashr exact i64 %i.gk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = tail call i64 @llvm.umin.i64(i64 %i.gn, i64 576460752303423487)
  %i.gq = select i1 %i.go, i64 576460752303423487, i64 %i.gp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gr = shl nuw nsw i64 %i.gq, 4
  %i.gs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #25 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx180 ; 2 uses
  store double %i.fd, ptr %i.gt, align 8
  %.sroa.9148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store double %i.fe, ptr %.sroa.9148.0..sroa_idx149, align 8
  %.not10.i.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gu = and i64 %.1189, 1152921504606846975
  %i.gv = add i64 %.1189, 1
  %xtraiter = and i64 %i.gv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i.prol ], [ %i.gs, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.prol = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.prol ], [ %i.fp, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.prol, i64 16, i1 false), !alias.scope !119
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !123

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gx, %.lr.ph.i.i.i.i.i.prol ]
  %.012.i.i.i.i.i.unr = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gx, %.lr.ph.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.unr = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gw, %.lr.ph.i.i.i.i.i.prol ]
  %i.gy = icmp samesign ult i64 %i.gu, 3
  br i1 %i.gy, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !119
  %i.gz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 16, i1 false), !alias.scope !119
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !alias.scope !119
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i64 16, i1 false), !alias.scope !119
  %i.hf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.hf, %i.fq
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gs, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.hg, %.lr.ph.i.i.i.i.i ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i = icmp eq ptr %i.fq, %i.ft
  br i1 %.not10.i.i.i16.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i

.lr.ph.i.i.i17.i.i:                               ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, %.lr.ph.i.i.i17.i.i
  %.012.i.i.i18.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i17.i.i ], [ %i.hh, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  %.0911.i.i.i19.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i17.i.i ], [ %i.fq, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i, i64 16, i1 false), !alias.scope !125
  %i.hi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i, i64 16 ; 2 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.hi, %i.ft
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i17.i.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %.0.lcssa.i.i.i21.i.i = phi ptr [ %i.hh, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ], [ %i.hj, %.lr.ph.i.i.i17.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.hk = load ptr, ptr %i.j, align 8
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.hl, %i.fs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.hm) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.gs, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i.i, ptr %i.i, align 8
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.hn, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit: ; preds = %bb.z, %bb.ae, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ho = load ptr, ptr %i.b, align 8
  %i.hp = sdiv i64 %i.fo, 64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = and i64 %i.fo, -9223372036854775745
  %i.hs = icmp ugt i64 %i.hr, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.hs, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.hq, i64 %storemerge.idx.i.i.i ; 2 uses
  %i.ht = trunc i64 %i.fo to i32
  %i.hu = and i32 %i.ht, 63                       ; 4 uses
  %i.hv = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.hw = load ptr, ptr %i.l, align 8
  %.not.i65 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not.i65, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.hx = icmp eq ptr %storemerge.i.i.i, %i.hv
  %i.hy = icmp eq i32 %i.hu, %.sroa.2.0.copyload.i.i
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.ia = add nuw nsw i32 %i.hu, 1
  store i32 %i.ia, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ib = icmp eq i32 %i.hu, 63
  br i1 %i.ib, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.ic, ptr %i.k, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.id = and i64 %i.fo, 63
  %i.ie = shl nuw i64 1, %i.id
  %i.if = load i64, ptr %i.hv, align 8
  %i.ig = or i64 %i.if, %i.ie
  store i64 %i.ig, ptr %i.hv, align 8
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

.critedge.i:                                      ; preds = %bb.ai, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %storemerge.i.i.i, i32 %i.hu, i1 noundef zeroext true)
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

bb.am:                                            ; preds = %bb.w
  %i.ih = load ptr, ptr %i.b, align 8
  %i.ii = sdiv i64 %.1189, 64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.ii
  %i.ik = and i64 %.1189, -9223372036854775745
  %i.il = icmp ugt i64 %i.ik, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.il, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ij, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.im = and i64 %.1189, 63
  %i.in = shl nuw i64 1, %i.im
  %i.io = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.ip = or i64 %i.io, %i.in
  store i64 %i.ip, ptr %storemerge.i.i.i.i.i, align 8
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit: ; preds = %.critedge.i, %bb.al, %bb.am
  %.2 = phi i64 [ %.1189, %bb.am ], [ %i.fo, %bb.al ], [ %i.fo, %.critedge.i ] ; 4 uses
  %i.iq = fsub double %i.fh, %.sroa.0155.0.copyload ; 2 uses
  %i.ir = fsub double %i.fi, %.sroa.5.0.copyload  ; 2 uses
  %i.is = fmul double %i.ir, %i.ir
  %i.it = tail call noundef double @llvm.fmuladd.f64(double %i.iq, double %i.iq, double %i.is)
  %i.iu = fcmp ogt double %i.it, f0x3E80000000000000
  br i1 %i.iu, label %bb.an, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.an:                                            ; preds = %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %i.iv = add i64 %.2, 1                          ; 8 uses
  %i.iw = load ptr, ptr %0, align 8               ; 6 uses
  %.idx182 = shl nsw i64 %i.iv, 4                 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %.idx182 ; 10 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.ja = load ptr, ptr %i.i, align 8             ; 9 uses
  %i.jb = load ptr, ptr %i.j, align 8
  %.not.i70 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not.i70, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ix) ]
  %i.jc = icmp eq ptr %i.ix, %i.ja
  br i1 %i.jc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store double %i.fh, ptr %i.ja, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store double %i.fi, ptr %.sroa.9.0..sroa_idx, align 8
  %i.jd = load ptr, ptr %i.i, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr %i.je, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

bb.aq:                                            ; preds = %bb.ao
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false)
  %i.jg = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.jh, ptr %i.i, align 8
  %i.ji = getelementptr inbounds i8, ptr %i.jg, i64 -16 ; 2 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.iy                    ; 3 uses
  %i.jl = ashr exact i64 %i.jk, 4                 ; 2 uses
  %i.jm = icmp sgt i64 %i.jl, 1
  br i1 %i.jm, label %bb.ar, label %bb.as, !prof !118

bb.ar:                                            ; preds = %bb.aq
  %i.jn = sub nsw i64 0, %i.jl
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.jg, i64 %i.jn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jo, ptr nonnull align 8 %i.ix, i64 %i.jk, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.jp = icmp eq i64 %i.jk, 16
  br i1 %i.jp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i64 16, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  store double %i.fh, ptr %i.ix, align 8
  %.sroa.7.i69.sroa.4.0..sroa.7.8..sroa_idx11.i73.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store double %i.fi, ptr %.sroa.7.i69.sroa.4.0..sroa.7.8..sroa_idx11.i73.sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

bb.av:                                            ; preds = %bb.an
  %i.jq = ptrtoint ptr %i.ja to i64
  %i.jr = sub i64 %i.jq, %i.iz                    ; 2 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775792
  br i1 %i.js, label %bb.aw, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74: ; preds = %bb.av
  %i.jt = ashr exact i64 %i.jr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i75, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 576460752303423487)
  %i.jx = select i1 %i.jv, i64 576460752303423487, i64 %i.jw ; 3 uses
  %.not.i.i.i76 = icmp ne i64 %i.jx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i76)
  %i.jy = shl nuw nsw i64 %i.jx, 4
  %i.jz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #25 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.idx182 ; 2 uses
  store double %i.fh, ptr %i.ka, align 8
  %.sroa.9.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store double %i.fi, ptr %.sroa.9.0..sroa_idx144, align 8
  %.not10.i.i.i.i.i77 = icmp eq i64 %i.iv, 0
  br i1 %.not10.i.i.i.i.i77, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74
  %i.kb = and i64 %.2, 1152921504606846975
  %i.kc = add i64 %.2, 1
  %xtraiter244 = and i64 %i.kc, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.lr.ph.i.i.i.i.i78.prol.loopexit, label %.lr.ph.i.i.i.i.i78.prol

.lr.ph.i.i.i.i.i78.prol:                          ; preds = %.lr.ph.i.i.i.i.i78.preheader, %.lr.ph.i.i.i.i.i78.prol
  %.012.i.i.i.i.i79.prol = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i78.prol ], [ %i.jz, %.lr.ph.i.i.i.i.i78.preheader ] ; 2 uses
  %.0911.i.i.i.i.i80.prol = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i78.prol ], [ %i.iw, %.lr.ph.i.i.i.i.i78.preheader ] ; 2 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %.lr.ph.i.i.i.i.i78.prol ], [ 0, %.lr.ph.i.i.i.i.i78.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i79.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i80.prol, i64 16, i1 false), !alias.scope !129
  %i.kd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80.prol, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79.prol, i64 16 ; 3 uses
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %.lr.ph.i.i.i.i.i78.prol.loopexit, label %.lr.ph.i.i.i.i.i78.prol, !llvm.loop !133

.lr.ph.i.i.i.i.i78.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i78.prol, %.lr.ph.i.i.i.i.i78.preheader
  %.lcssa242.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.ke, %.lr.ph.i.i.i.i.i78.prol ]
  %.012.i.i.i.i.i79.unr = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.ke, %.lr.ph.i.i.i.i.i78.prol ]
  %.0911.i.i.i.i.i80.unr = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.kd, %.lr.ph.i.i.i.i.i78.prol ]
  %i.kf = icmp samesign ult i64 %i.kb, 3
  br i1 %i.kf, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.prol.loopexit, %.lr.ph.i.i.i.i.i78
  %.012.i.i.i.i.i79 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i78 ], [ %.012.i.i.i.i.i79.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i80 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i78 ], [ %.0911.i.i.i.i.i80.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i79, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i80, i64 16, i1 false), !alias.scope !129
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.kg, i64 16, i1 false), !alias.scope !129
  %i.ki = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i64 16, i1 false), !alias.scope !129
  %i.kk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 48
  %i.kl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i64 16, i1 false), !alias.scope !129
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 64 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 64 ; 2 uses
  %.not.i.i.i.i.i81.3 = icmp eq ptr %i.km, %i.ix
  br i1 %.not.i.i.i.i.i81.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82: ; preds = %.lr.ph.i.i.i.i.i78.prol.loopexit, %.lr.ph.i.i.i.i.i78, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74
  %.0.lcssa.i.i.i.i.i83 = phi ptr [ %i.jz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74 ], [ %.lcssa242.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ], [ %i.kn, %.lr.ph.i.i.i.i.i78 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i83, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i84 = icmp eq ptr %i.ix, %i.ja
  br i1 %.not10.i.i.i16.i.i84, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89, label %.lr.ph.i.i.i17.i.i85

.lr.ph.i.i.i17.i.i85:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, %.lr.ph.i.i.i17.i.i85
  %.012.i.i.i18.i.i86 = phi ptr [ %i.kq, %.lr.ph.i.i.i17.i.i85 ], [ %i.ko, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ] ; 2 uses
  %.0911.i.i.i19.i.i87 = phi ptr [ %i.kp, %.lr.ph.i.i.i17.i.i85 ], [ %i.ix, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i86, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i87, i64 16, i1 false), !alias.scope !134
  %i.kp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i87, i64 16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i86, i64 16 ; 2 uses
  %.not.i.i.i20.i.i88 = icmp eq ptr %i.kp, %i.ja
  br i1 %.not.i.i.i20.i.i88, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89, label %.lr.ph.i.i.i17.i.i85, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89: ; preds = %.lr.ph.i.i.i17.i.i85, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82
  %.0.lcssa.i.i.i21.i.i90 = phi ptr [ %i.ko, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ], [ %i.kq, %.lr.ph.i.i.i17.i.i85 ]
  %.not.i23.i.i91 = icmp eq ptr %i.iw, null
  br i1 %.not.i23.i.i91, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89
  %i.kr = load ptr, ptr %i.j, align 8
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = sub i64 %i.ks, %i.iz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.kt) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92: ; preds = %bb.ax, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89
  store ptr %i.jz, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i.i90, ptr %i.i, align 8
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.ku, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93: ; preds = %bb.ap, %bb.au, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92
  %i.kv = load ptr, ptr %i.b, align 8
  %i.kw = sdiv i64 %i.iv, 64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = and i64 %i.iv, -9223372036854775745
  %i.kz = icmp ugt i64 %i.ky, -9223372036854775808
  %storemerge.idx.i.i.i99 = select i1 %i.kz, i64 -8, i64 0
  %storemerge.i.i.i100 = getelementptr inbounds i8, ptr %i.kx, i64 %storemerge.idx.i.i.i99 ; 2 uses
  %i.la = trunc i64 %i.iv to i32
  %i.lb = and i32 %i.la, 63                       ; 4 uses
  %i.lc = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.ld = load ptr, ptr %i.l, align 8
  %.not.i103 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not.i103, label %.critedge.i106, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93
  %.sroa.2.0.copyload.i.i105 = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.le = icmp eq ptr %storemerge.i.i.i100, %i.lc
  %i.lf = icmp eq i32 %i.lb, %.sroa.2.0.copyload.i.i105
  %i.lg = select i1 %i.le, i1 %i.lf, i1 false
  br i1 %i.lg, label %bb.az, label %.critedge.i106

bb.az:                                            ; preds = %bb.ay
  %i.lh = add nuw nsw i32 %i.lb, 1
  store i32 %i.lh, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.li = icmp eq i32 %i.lb, 63
  br i1 %i.li, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %i.lj, ptr %i.k, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.lk = and i64 %i.iv, 63
  %i.ll = shl nuw i64 1, %i.lk
  %i.lm = xor i64 %i.ll, -1
  %i.ln = load i64, ptr %i.lc, align 8
  %i.lo = and i64 %i.ln, %i.lm
  store i64 %i.lo, ptr %i.lc, align 8
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

.critedge.i106:                                   ; preds = %bb.ay, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %storemerge.i.i.i100, i32 %i.lb, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread: ; preds = %.critedge.i106, %bb.bb, %bb.v, %bb.n, %bb.p, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %.3 = phi i64 [ %.1189, %bb.v ], [ %.2, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit ], [ %.1189, %bb.p ], [ %.1189, %bb.n ], [ %i.iv, %bb.bb ], [ %i.iv, %.critedge.i106 ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.cc
end_hunk_0
