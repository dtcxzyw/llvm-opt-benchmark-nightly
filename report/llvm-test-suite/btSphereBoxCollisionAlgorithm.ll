inline.NumInlined: 146
inline.NumDeleted: 47
begin_hunk_0_@_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f:bb.a
  %i.dq = fmul float %i.do, 0.000000e+00          ; 2 uses
  %i.dr = fsub float %.sroa.0167.0.vec.extract.5.pre-phi, %i.dq
  %i.ds = fsub float %.sroa.0167.4.vec.extract.5.pre-phi, %i.dq
  %i.dt = fsub float %.sroa.12.8.vec.extract.5.pre-phi, %i.do
  %.sroa.0.0.vec.insert.i77.5 = insertelement <2 x float> poison, float %i.dr, i64 0
  %.sroa.0.4.vec.insert.i78.5 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77.5, float %i.ds, i64 1
  %.sroa.3.12.vec.insert.i79.5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %.1.4, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.12.1.5290 = phi <2 x float> [ %.sroa.3.12.vec.insert.i79.5, %.thread ], [ %.sroa.12.1.4, %bb.l ]
  %.sroa.0167.1.5289 = phi <2 x float> [ %.sroa.0.4.vec.insert.i78.5, %.thread ], [ %.sroa.0167.1.4, %bb.l ] ; 2 uses
  %.sroa.0167.0.vec.extract171 = extractelement <2 x float> %.sroa.0167.1.5289, i64 0 ; 2 uses
  %i.du = fsub float %i.bj, %.sroa.0167.0.vec.extract171 ; 3 uses
  %.sroa.0167.4.vec.extract177 = extractelement <2 x float> %.sroa.0167.1.5289, i64 1 ; 2 uses
  %i.dv = fsub float %i.bm, %.sroa.0167.4.vec.extract177 ; 3 uses
  %.sroa.12.8.vec.extract183 = extractelement <2 x float> %.sroa.12.1.5290, i64 0 ; 2 uses
  %i.dw = fsub float %i.bp, %.sroa.12.8.vec.extract183 ; 3 uses
  %i.dx = fmul float %i.dv, %i.dv
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dx)
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dy)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dz)
  %i.ea = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.eb = fmul float %i.du, %i.ea                 ; 3 uses
  %i.ec = fmul float %i.dv, %i.ea                 ; 3 uses
  %i.ed = fmul float %i.dw, %i.ea                 ; 3 uses
  %i.ee = fmul float %i.m, %i.eb
  %i.ef = fmul float %i.m, %i.ec
  %i.eg = fmul float %i.m, %i.ed
  %i.eh = fadd float %.sroa.0167.0.vec.extract171, %i.ee
  %i.ei = fadd float %.sroa.0167.4.vec.extract177, %i.ef
  %i.ej = fadd float %.sroa.12.8.vec.extract183, %i.eg
  %.sroa.0.0.vec.insert.i92 = insertelement <2 x float> poison, float %i.eh, i64 0
  %.sroa.0.4.vec.insert.i93 = insertelement <2 x float> %.sroa.0.0.vec.insert.i92, float %i.ei, i64 1
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ej, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i93, ptr %2, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !33
  %i.ek = fmul float %5, %i.eb
  %i.el = fmul float %5, %i.ec
  %i.em = fmul float %5, %i.ed
  %i.en = fsub float %i.bj, %i.ek                 ; 2 uses
  %i.eo = fsub float %i.bm, %i.el                 ; 2 uses
  %i.ep = fsub float %i.bp, %i.em                 ; 2 uses
  %.sroa.0.0.vec.insert.i102 = insertelement <2 x float> poison, float %i.en, i64 0
  %.sroa.0.4.vec.insert.i103 = insertelement <2 x float> %.sroa.0.0.vec.insert.i102, float %i.eo, i64 1
  %.sroa.3.12.vec.insert.i104 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i103, ptr %3, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i104, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33
  %i.eq = load float, ptr %2, align 4, !tbaa !34  ; 4 uses
  %i.er = fsub float %i.en, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !34 ; 4 uses
  %i.eu = fsub float %i.eo, %i.et
  %i.ev = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !34 ; 4 uses
  %i.ew = fsub float %i.ep, %i.ev
  %i.ex = fmul float %i.ec, %i.eu
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.er, float %i.eb, float %i.ex)
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ed, float %i.ey)
  %i.fa = fcmp ogt float %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fc = load float, ptr %i.ab, align 4, !tbaa !34
  %i.fd = load float, ptr %i.as, align 4, !tbaa !34
  %i.fe = fmul float %i.et, %i.fd
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.eq, float %i.fe)
  %i.fg = load float, ptr %i.av, align 4, !tbaa !34
  %i.fh = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.ev, float %i.ff)
  %i.fi = load float, ptr %i.ac, align 4, !tbaa !34
  %i.fj = fadd float %i.fi, %i.fh
  %i.fk = load float, ptr %i.aq, align 4, !tbaa !34
  %i.fl = load float, ptr %i.at, align 4, !tbaa !34
  %i.fm = fmul float %i.et, %i.fl
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.eq, float %i.fm)
  %i.fo = load float, ptr %i.aw, align 4, !tbaa !34
  %i.fp = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.ev, float %i.fn)
  %i.fq = load float, ptr %i.ai, align 4, !tbaa !34
  %i.fr = fadd float %i.fq, %i.fp
  %i.fs = load float, ptr %i.ar, align 4, !tbaa !34
  %i.ft = load float, ptr %i.au, align 4, !tbaa !34
  %i.fu = fmul float %i.et, %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.eq, float %i.fu)
  %i.fw = load float, ptr %i.ax, align 4, !tbaa !34
  %i.fx = tail call noundef float @llvm.fmuladd.f32(float %i.fw, float %i.ev, float %i.fv)
  %i.fy = load float, ptr %i.an, align 4, !tbaa !34
  %i.fz = fadd float %i.fy, %i.fx
  %.sroa.0.0.vec.insert.i112 = insertelement <2 x float> poison, float %i.fj, i64 0
  %.sroa.0.4.vec.insert.i113 = insertelement <2 x float> %.sroa.0.0.vec.insert.i112, float %i.fr, i64 1
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fz, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i113, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !33
  %i.ga = load float, ptr %i.ab, align 4, !tbaa !34
  %i.gb = load float, ptr %3, align 4, !tbaa !34  ; 3 uses
  %i.gc = load float, ptr %i.as, align 4, !tbaa !34
  %i.gd = load float, ptr %i.fb, align 4, !tbaa !34 ; 3 uses
  %i.ge = fmul float %i.gc, %i.gd
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gb, float %i.ge)
  %i.gg = load float, ptr %i.av, align 4, !tbaa !34
  %i.gh = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.gh, float %i.gf)
  %i.gj = load float, ptr %i.ac, align 4, !tbaa !34
  %i.gk = fadd float %i.gi, %i.gj                 ; 2 uses
  %i.gl = load float, ptr %i.aq, align 4, !tbaa !34
  %i.gm = load float, ptr %i.at, align 4, !tbaa !34
  %i.gn = fmul float %i.gd, %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gb, float %i.gn)
  %i.gp = load float, ptr %i.aw, align 4, !tbaa !34
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.gp, float %i.gh, float %i.go)
  %i.gr = load float, ptr %i.ai, align 4, !tbaa !34
  %i.gs = fadd float %i.gr, %i.gq                 ; 2 uses
  %i.gt = load float, ptr %i.ar, align 4, !tbaa !34
  %i.gu = load float, ptr %i.au, align 4, !tbaa !34
  %i.gv = fmul float %i.gd, %i.gu
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gt, float %i.gb, float %i.gv)
  %i.gx = load float, ptr %i.ax, align 4, !tbaa !34
  %i.gy = tail call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gh, float %i.gw)
  %i.gz = load float, ptr %i.an, align 4, !tbaa !34
  %i.ha = fadd float %i.gz, %i.gy                 ; 2 uses
  %.sroa.0.0.vec.insert.i117 = insertelement <2 x float> poison, float %i.gk, i64 0
  %.sroa.0.4.vec.insert.i118 = insertelement <2 x float> %.sroa.0.0.vec.insert.i117, float %i.gs, i64 1
  %.sroa.3.12.vec.insert.i119 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i118, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i119, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33
  %i.hb = load float, ptr %2, align 4, !tbaa !34
  %i.hc = fsub float %i.hb, %i.gk                 ; 2 uses
  %i.hd = load float, ptr %i.es, align 4, !tbaa !34
  %i.he = fsub float %i.hd, %i.gs                 ; 2 uses
  %i.hf = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !34
  %i.hg = fsub float %i.hf, %i.ha                 ; 2 uses
  %i.hh = fmul float %i.he, %i.he
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hc, float %i.hh)
  %i.hj = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %i.hi) ; 2 uses
  %i.hk = fcmp ogt float %i.hj, f0x34000000
  br i1 %i.hk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %sqrt = tail call float @llvm.sqrt.f32(float %i.hj)
  %i.hl = fneg float %sqrt
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.hm = call noundef float @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.i) ; 2 uses
  %i.hn = fcmp ugt float %i.hm, 0.000000e+00
  br i1 %i.hn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ho = fsub float %i.hm, %i.m
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.o, %bb.m, %bb.q
  %.0 = phi float [ 1.000000e+07, %bb.n ], [ 1.000000e+00, %bb.m ], [ %i.ho, %bb.q ], [ %i.hl, %bb.o ], [ 1.000000e+00, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, ptr nonnull readnone align 8 captures(none) %3, ptr readnone captures(none) %4) unnamed_addr #7 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 4 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, float noundef %5, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6174.0.copyload = load float, ptr %.sroa.6174.0..sroa_idx, align 4 ; 4 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.13.16.copyload = load float, ptr %.sroa.13.16..sroa_idx, align 4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = load float, ptr %4, align 4, !tbaa !34
  %i.d = load float, ptr %i.b, align 4, !tbaa !34
  %i.e = fsub float %i.c, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !34
  %i.j = fsub float %i.g, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !34
  %i.o = fsub float %i.l, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.x = load float, ptr %i.u, align 4, !tbaa !34, !noalias !47
  %i.y = load float, ptr %i.v, align 4, !tbaa !34, !noalias !47
  %i.z = load float, ptr %i.w, align 4, !tbaa !34, !noalias !47
  %i.aa = load <2 x float>, ptr %6, align 4       ; 5 uses
  %i.ab = load <2 x float>, ptr %7, align 4       ; 3 uses
  %i.ac = load <2 x float>, ptr %i.a, align 4, !tbaa !34, !noalias !47
  %i.ad = load <2 x float>, ptr %i.p, align 4, !tbaa !34, !noalias !47
  %i.ae = load <2 x float>, ptr %i.q, align 4, !tbaa !34, !noalias !47
  %i.af = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.ad
  %i.ai = insertelement <2 x float> poison, float %i.e, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.aj, <2 x float> %i.ah)
  %i.al = insertelement <2 x float> poison, float %i.o, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.am, <2 x float> %i.ak) ; 5 uses
  %i.ao = fmul float %i.j, %i.y
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.x, float %i.e, float %i.ao)
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.o, float %i.ap) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.an, %i.aa
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop239 = fsub <2 x float> %i.an, %i.aa
  %i.ar = extractelement <2 x float> %foldExtExtBinop239, i64 1 ; 2 uses
  %9 = fsub float %i.aq, %.sroa.6174.0.copyload   ; 3 uses
  %10 = fmul float %i.ar, 0.000000e+00            ; 2 uses
  %i.as = fsub float %10, %8
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %i.as)
  %i.au = fsub float %i.at, %5                    ; 3 uses
  %i.av = fcmp ule float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.aw = fcmp ogt float %i.au, -1.000000e+07
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi float [ %i.au, %bb.c ], [ -1.000000e+07, %bb.b ] ; 2 uses
  %.sroa.0124.1 = phi <2 x float> [ <float -1.000000e+00, float 0.000000e+00>, %bb.c ], [ zeroinitializer, %bb.b ]
  %.sroa.7.1 = phi float [ %.sroa.6174.0.copyload, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.ax = phi <2 x float> [ %i.aa, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ay = fneg float %i.ar
  %i.az = tail call float @llvm.fmuladd.f32(float %8, float 0.000000e+00, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %i.az)
  %i.bb = fsub float %i.ba, %5                    ; 3 uses
  %i.bc = fcmp ule float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bd = fcmp ogt float %i.bb, %.1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi float [ %i.bb, %bb.f ], [ %.1, %bb.e ] ; 2 uses
  %.sroa.0124.1.1 = phi <2 x float> [ <float 0.000000e+00, float -1.000000e+00>, %bb.f ], [ %.sroa.0124.1, %bb.e ]
  %.sroa.7.1.1 = phi float [ %.sroa.6174.0.copyload, %bb.f ], [ %.sroa.7.1, %bb.e ]
  %i.be = phi <2 x float> [ %i.aa, %bb.f ], [ %i.ax, %bb.e ]
  %i.bf = tail call float @llvm.fmuladd.f32(float %8, float 0.000000e+00, float %10)
  %i.bg = fsub float %i.bf, %9
  %i.bh = fsub float %i.bg, %5                    ; 3 uses
  %i.bi = fcmp ule float %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bj = fcmp ogt float %i.bh, %.1.1
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.2 = phi float [ %i.bh, %bb.i ], [ %.1.1, %bb.h ] ; 2 uses
  %.sroa.0124.1.2 = phi <2 x float> [ zeroinitializer, %bb.i ], [ %.sroa.0124.1.1, %bb.h ]
  %.sroa.12.1.2 = phi <2 x float> [ <float -1.000000e+00, float 0.000000e+00>, %bb.i ], [ zeroinitializer, %bb.h ]
  %.sroa.7.1.2 = phi float [ %.sroa.6174.0.copyload, %bb.i ], [ %.sroa.7.1.1, %bb.h ]
  %i.bk = phi <2 x float> [ %i.aa, %bb.i ], [ %i.be, %bb.h ]
  %i.bl = fsub <2 x float> %i.an, %i.ab           ; 3 uses
  %i.bm = fsub float %i.aq, %.sroa.13.16.copyload ; 4 uses
  %i.bn = extractelement <2 x float> %i.bl, i64 1 ; 2 uses
  %i.bo = fmul float %i.bn, 0.000000e+00          ; 2 uses
  %i.bp = extractelement <2 x float> %i.bl, i64 0 ; 3 uses
  %i.bq = fadd float %i.bp, %i.bo
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float 0.000000e+00, float %i.bq)
  %i.bs = fsub float %i.br, %5                    ; 3 uses
  %i.bt = fcmp ule float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bu = fcmp ogt float %i.bs, %.1.2
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.3 = phi float [ %i.bs, %bb.l ], [ %.1.2, %bb.k ] ; 2 uses
  %.sroa.0124.1.3 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.l ], [ %.sroa.0124.1.2, %bb.k ]
  %.sroa.12.1.3 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.12.1.2, %bb.k ]
  %.sroa.7.1.3 = phi float [ %.sroa.13.16.copyload, %bb.l ], [ %.sroa.7.1.2, %bb.k ]
  %i.bv = phi <2 x float> [ %i.ab, %bb.l ], [ %i.bk, %bb.k ]
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.bn)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float 0.000000e+00, float %i.bw)
  %i.by = fsub float %i.bx, %5                    ; 3 uses
  %i.bz = fcmp ule float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ca = fcmp ogt float %i.by, %.1.3
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.4 = phi float [ %i.by, %bb.o ], [ %.1.3, %bb.n ] ; 2 uses
  %.sroa.0124.1.4 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %.sroa.0124.1.3, %bb.n ]
  %.sroa.12.1.4 = phi <2 x float> [ zeroinitializer, %bb.o ], [ %.sroa.12.1.3, %bb.n ]
  %.sroa.7.1.4 = phi float [ %.sroa.13.16.copyload, %bb.o ], [ %.sroa.7.1.3, %bb.n ]
  %i.cb = phi <2 x float> [ %i.ab, %bb.o ], [ %i.bv, %bb.n ]
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.bo)
  %i.cd = fadd float %i.bm, %i.cc
  %i.ce = fsub float %i.cd, %5                    ; 3 uses
  %i.cf = fcmp ule float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cg = fcmp ogt float %i.ce, %.1.4
  br i1 %i.cg, label %.critedge46, label %..critedge46_crit_edge

..critedge46_crit_edge:                           ; preds = %bb.q
  %i.ch = fsub <2 x float> %i.an, %i.cb
  %.pre230 = fsub float %i.aq, %.sroa.7.1.4
  br label %.critedge46

.critedge46:                                      ; preds = %bb.q, %..critedge46_crit_edge
  %.pre-phi231 = phi float [ %.pre230, %..critedge46_crit_edge ], [ %i.bm, %bb.q ]
  %.1.5 = phi float [ %.1.4, %..critedge46_crit_edge ], [ %i.ce, %bb.q ] ; 3 uses
  %.sroa.0124.1.5 = phi <2 x float> [ %.sroa.0124.1.4, %..critedge46_crit_edge ], [ zeroinitializer, %bb.q ] ; 4 uses
  %.sroa.12.1.5 = phi <2 x float> [ %.sroa.12.1.4, %..critedge46_crit_edge ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.q ]
  %i.ci = phi <2 x float> [ %i.ch, %..critedge46_crit_edge ], [ %i.bl, %bb.q ] ; 2 uses
  %.sroa.0124.0.vec.extract = extractelement <2 x float> %.sroa.0124.1.5, i64 0
  %foldExtExtBinop241 = fmul <2 x float> %.sroa.0124.1.5, %i.ci
  %i.cj = extractelement <2 x float> %foldExtExtBinop241, i64 1
  %i.ck = extractelement <2 x float> %i.ci, i64 0
  %i.cl = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract, float %i.ck, float %i.cj)
  %.sroa.12.8.vec.extract = extractelement <2 x float> %.sroa.12.1.5, i64 0 ; 3 uses
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %.sroa.12.8.vec.extract, float %.pre-phi231, float %i.cl) ; 2 uses
  %i.cn = fmul float %.sroa.12.8.vec.extract, %i.cm
  %i.co = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %.sroa.0124.1.5, %i.cp
  %i.cr = fsub <2 x float> %i.an, %i.cq           ; 2 uses
  %i.cs = fsub float %i.aq, %i.cn                 ; 2 uses
  %.sroa.3.12.vec.insert.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %i.cr, ptr %2, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i59, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33
  %i.ct = fmul float %.1.5, %.sroa.12.8.vec.extract
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cv = insertelement <2 x float> poison, float %.1.5, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cw, %.sroa.0124.1.5
  %i.cy = fadd <2 x float> %i.cx, %i.cr
  %i.cz = fadd float %i.ct, %i.cs
  %.sroa.3.12.vec.insert.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cz, i64 0
  store <2 x float> %i.cy, ptr %3, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i69, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !33
  %i.da = load float, ptr %i.a, align 4, !tbaa !34
  %i.db = load float, ptr %2, align 4, !tbaa !34  ; 3 uses
  %i.dc = load float, ptr %i.r, align 4, !tbaa !34
  %i.dd = load float, ptr %i.cu, align 4, !tbaa !34 ; 3 uses
  %i.de = fmul float %i.dc, %i.dd
  %i.df = tail call float @llvm.fmuladd.f32(float %i.da, float %i.db, float %i.de)
  %i.dg = load float, ptr %i.u, align 4, !tbaa !34
  %i.dh = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %i.di = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dh, float %i.df)
  %i.dj = load float, ptr %i.b, align 4, !tbaa !34
  %i.dk = fadd float %i.di, %i.dj
  %i.dl = load float, ptr %i.p, align 4, !tbaa !34
  %i.dm = load float, ptr %i.s, align 4, !tbaa !34
  %i.dn = fmul float %i.dd, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.db, float %i.dn)
  %i.dp = load float, ptr %i.v, align 4, !tbaa !34
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.dh, float %i.do)
  %i.dr = load float, ptr %i.h, align 4, !tbaa !34
  %i.ds = fadd float %i.dr, %i.dq
  %i.dt = load float, ptr %i.q, align 4, !tbaa !34
  %i.du = load float, ptr %i.t, align 4, !tbaa !34
  %i.dv = fmul float %i.dd, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.db, float %i.dv)
  %i.dx = load float, ptr %i.w, align 4, !tbaa !34
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dh, float %i.dw)
  %i.dz = load float, ptr %i.m, align 4, !tbaa !34
  %i.ea = fadd float %i.dz, %i.dy
  %.sroa.0.0.vec.insert.i72 = insertelement <2 x float> poison, float %i.dk, i64 0
  %.sroa.0.4.vec.insert.i73 = insertelement <2 x float> %.sroa.0.0.vec.insert.i72, float %i.ds, i64 1
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i73, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !33
  %i.eb = load float, ptr %i.a, align 4, !tbaa !34
  %i.ec = load float, ptr %3, align 4, !tbaa !34  ; 3 uses
  %i.ed = load float, ptr %i.r, align 4, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !34 ; 3 uses
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.ec, float %i.eg)
  %i.ei = load float, ptr %i.u, align 4, !tbaa !34
  %i.ej = load float, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %i.eh)
  %i.el = load float, ptr %i.b, align 4, !tbaa !34
  %i.em = fadd float %i.ek, %i.el
  %i.en = load float, ptr %i.p, align 4, !tbaa !34
  %i.eo = load float, ptr %i.s, align 4, !tbaa !34
  %i.ep = fmul float %i.ef, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ec, float %i.ep)
  %i.er = load float, ptr %i.v, align 4, !tbaa !34
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.er, float %i.ej, float %i.eq)
  %i.et = load float, ptr %i.h, align 4, !tbaa !34
  %i.eu = fadd float %i.et, %i.es
  %i.ev = load float, ptr %i.q, align 4, !tbaa !34
  %i.ew = load float, ptr %i.t, align 4, !tbaa !34
  %i.ex = fmul float %i.ef, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ec, float %i.ex)
  %i.ez = load float, ptr %i.w, align 4, !tbaa !34
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ej, float %i.ey)
  %i.fb = load float, ptr %i.m, align 4, !tbaa !34
  %i.fc = fadd float %i.fb, %i.fa
  %.sroa.0.0.vec.insert.i77 = insertelement <2 x float> poison, float %i.em, i64 0
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77, float %i.eu, i64 1
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fc, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.g, %bb.j, %bb.m, %bb.p, %.critedge46
  %.3 = phi float [ %.1.5, %.critedge46 ], [ 1.000000e+00, %bb.p ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.a ]
  ret float %.3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !21
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
end_hunk_0
