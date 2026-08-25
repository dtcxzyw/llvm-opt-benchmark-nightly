Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImathMatrixAlgo?download=true
inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
bb.i:                                             ; preds = %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, double noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !8 ; 4 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load double, ptr %i.k, align 8, !tbaa !8 ; 2 uses
  %i.m = load double, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load double, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  store double 1.000000e+00, ptr %1, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !8
  store double 1.000000e+00, ptr %3, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !8
  %i.z = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.aa = fcmp one double %i.g, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %i.aa, double %i.z, double 0.000000e+00 ; 2 uses
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.c) ; 2 uses
  %i.ac = fcmp olt double %.sroa.speculated28.i.i, %i.ab
  %.sroa.speculated24.i.i = select i1 %i.ac, double %i.ab, double %.sroa.speculated28.i.i ; 2 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.ae = fcmp olt double %.sroa.speculated24.i.i, %i.ad
  %.sroa.speculated20.i.i = select i1 %i.ae, double %i.ad, double %.sroa.speculated24.i.i ; 2 uses
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.m) ; 2 uses
  %i.ag = fcmp olt double %.sroa.speculated20.i.i, %i.af
  %.sroa.speculated16.i.i = select i1 %i.ag, double %i.af, double %.sroa.speculated20.i.i ; 2 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.ai = fcmp olt double %.sroa.speculated16.i.i, %i.ah
  %.sroa.speculated12.i.i = select i1 %i.ai, double %i.ah, double %.sroa.speculated16.i.i ; 2 uses
  %i.aj = tail call noundef double @llvm.fabs.f64(double %i.o) ; 2 uses
  %i.ak = fcmp olt double %.sroa.speculated12.i.i, %i.aj
  %.sroa.speculated.i.i = select i1 %i.ak, double %i.aj, double %.sroa.speculated12.i.i
  %i.al = fmul double %4, %.sroa.speculated.i.i   ; 2 uses
  %i.am = fcmp une double %i.al, 0.000000e+00
  %i.an = insertelement <2 x double> %i.h, double %i.q, i64 0
  br i1 %i.am, label %.preheader129.i, label %.loopexit130.i

.preheader129.i:                                  ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aw = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.preheader129.i
  %.sroa.66.1 = phi double [ %i.q, %.preheader129.i ], [ %i.sz, %bb.h ] ; 6 uses
  %.sroa.57.0 = phi double [ %i.o, %.preheader129.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.39.0 = phi double [ %i.m, %.preheader129.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.0.1 = phi double [ %i.f, %.preheader129.i ], [ %i.ta, %bb.h ] ; 5 uses
  %i.ay = phi double [ %i.l, %.preheader129.i ], [ %i.st, %bb.h ] ; 2 uses
  %i.az = phi double [ %i.c, %.preheader129.i ], [ %i.sn, %bb.h ] ; 2 uses
  %i.ba = phi double [ %i.i, %.preheader129.i ], [ %i.sq, %bb.h ] ; 3 uses
  %i.bb = phi double [ %i.g, %.preheader129.i ], [ %i.sk, %bb.h ] ; 5 uses
  %.082.i = phi i32 [ 0, %.preheader129.i ], [ %i.be, %bb.h ] ; 2 uses
  %i.bc = phi <2 x double> [ %i.aw, %.preheader129.i ], [ %i.tb, %bb.h ] ; 2 uses
  %i.bd = phi <2 x double> [ %i.ax, %.preheader129.i ], [ %i.tc, %bb.h ] ; 3 uses
  %i.be = add nuw nsw i32 %.082.i, 1
  %i.bf = extractelement <2 x double> %i.bd, i64 0 ; 5 uses
  %i.bg = fadd double %i.bf, %.sroa.0.1           ; 2 uses
  %i.bh = fsub double %i.bb, %i.ba                ; 2 uses
  %i.bi = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bk = fmul double %4, %i.bj
  %i.bl = fcmp ugt double %i.bi, %i.bk
  br i1 %i.bl, label %bb.c, label %.thread134.i.i

bb.c:                                             ; preds = %bb.b
  %i.bm = fdiv double %i.bg, %i.bh                ; 4 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double 1.000000e+00)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bn)
  %i.bo = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.bp = fcmp olt double %i.bm, 0.000000e+00
  %i.bq = fneg double %i.bo
  %.0122.i.i = select i1 %i.bp, double %i.bq, double %i.bo ; 5 uses
  %i.br = fsub double %i.bf, %.sroa.0.1
  %i.bs = fneg double %i.bf
  %i.bt = fadd double %i.ba, %i.bb
  %i.bu = fmul double %i.bm, %.0122.i.i           ; 4 uses
  %i.bv = fmul double %i.br, %i.bu
  %i.bw = fmul double %.0122.i.i, %i.bs
  %i.bx = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bu, i64 1
  %i.bz = insertelement <2 x double> poison, double %.0122.i.i, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bb, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bw, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ca, <2 x double> %i.cc) ; 2 uses
  %i.ce = fmul <2 x double> %i.cd, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.cf = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ce) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = fmul double %4, %i.cg
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %i.cj = fcmp ugt double %i.ci, %i.ch
  %i.ck = extractelement <2 x double> %i.ce, i64 1
  %i.cl = extractelement <2 x double> %i.cd, i64 0
  br i1 %i.cj, label %.thread.i.i, label %bb.d

.thread134.i.i:                                   ; preds = %bb.b
  %i.cm = fsub double %i.bf, %.sroa.0.1           ; 2 uses
  %i.cn = fadd double %i.ba, %i.bb                ; 2 uses
  %i.co = tail call noundef double @llvm.fabs.f64(double %i.cn)
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.cq = fmul double %4, %i.cp
  %i.cr = fcmp ugt double %i.co, %i.cq
  br i1 %i.cr, label %.thread.i.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.c
  %.0120146.i.i = phi double [ %i.cm, %.thread134.i.i ], [ %i.cl, %bb.c ]
  %.0121145.i.i = phi double [ %i.cn, %.thread134.i.i ], [ %i.ck, %bb.c ]
  %.1123144.i.i = phi double [ 0.000000e+00, %.thread134.i.i ], [ %.0122.i.i, %bb.c ]
  %.0124141.i.i = phi double [ 1.000000e+00, %.thread134.i.i ], [ %i.bu, %bb.c ]
  %i.cs = fdiv double %.0120146.i.i, %.0121145.i.i ; 4 uses
  %i.ct = tail call noundef double @llvm.fabs.f64(double %i.cs)
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double 1.000000e+00)
  %sqrt133.i.i = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cv = fadd double %i.ct, %sqrt133.i.i
  %i.cw = fdiv double 1.000000e+00, %i.cv         ; 2 uses
  %i.cx = fcmp olt double %i.cs, 0.000000e+00
  %i.cy = fneg double %i.cw
  %.0117.i.i = select i1 %i.cx, double %i.cy, double %i.cw ; 3 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %.0117.i.i, double %.0117.i.i, double 1.000000e+00)
  %sqrt132.i.i = tail call double @llvm.sqrt.f64(double %i.cz)
  %i.da = fdiv double 1.000000e+00, %sqrt132.i.i  ; 3 uses
  %i.db = fmul double %.0117.i.i, %i.da           ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.da, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.c
  %.1123142.i.i = phi double [ %.1123144.i.i, %.thread.i.i ], [ %.0122.i.i, %bb.c ] ; 2 uses
  %.0124139.i.i = phi double [ %.0124141.i.i, %.thread.i.i ], [ %i.bu, %bb.c ] ; 2 uses
  %.0118129.i.i = phi double [ %i.db, %.thread.i.i ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.0119128.i.i = phi double [ %i.da, %.thread.i.i ], [ 1.000000e+00, %bb.c ]
  %i.de = phi <2 x double> [ %i.dd, %.thread.i.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.c ] ; 8 uses
  %i.df = insertelement <2 x double> poison, double %.sroa.57.0, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %.1123142.i.i, i64 1
  %i.dh = insertelement <2 x double> poison, double %.0119128.i.i, i64 0 ; 2 uses
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fmul <2 x double> %i.dg, %i.di
  %i.dk = fneg double %.1123142.i.i
  %i.dl = fneg double %.0118129.i.i
  %i.dm = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x double> %i.bd, %i.dn
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.di, <2 x double> %i.do) ; 2 uses
  %i.dq = fneg double %.sroa.39.0
  %i.dr = fneg double %.sroa.57.0
  %i.ds = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = insertelement <2 x double> %i.dh, double %.0118129.i.i, i64 1 ; 2 uses
  %i.dv = fmul <2 x double> %i.dt, %i.du
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = insertelement <2 x double> poison, double %i.ay, i64 0 ; 2 uses
  %i.dy = insertelement <2 x double> %i.dx, double %.sroa.0.1, i64 1
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dy, <2 x double> %i.dw) ; 2 uses
  %i.ea = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = insertelement <2 x double> %i.bd, double %i.dk, i64 1
  %i.ec = fmul <2 x double> %i.ea, %i.eb
  %i.ed = insertelement <2 x double> %i.bc, double %.0124139.i.i, i64 1
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.de, <2 x double> %i.ec) ; 5 uses
  %6 = load <2 x double>, ptr %1, align 8
  %i.ef = load double, ptr %i.r, align 8, !tbaa !8 ; 2 uses
  %i.eg = fneg double %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ef, i64 1
  %i.ej = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = load <2 x double>, ptr %i.ao, align 8
  %i.ek = load double, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.el = fneg double %i.ek
  %i.em = insertelement <2 x double> poison, double %i.el, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ek, i64 1
  %i.eo = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = load <2 x double>, ptr %i.ap, align 8
  %i.ep = load double, ptr %i.aq, align 8, !tbaa !8 ; 2 uses
  %i.eq = fneg double %i.ep
  %i.er = insertelement <2 x double> poison, double %.0118129.i.i, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x double> %i.dx, double %.0124139.i.i, i64 1
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.et, <2 x double> %i.dj) ; 5 uses
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> %i.ee, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ew = fneg <2 x double> %i.dp
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ey = fmul <2 x double> %i.ev, %i.ex
  %i.ez = shufflevector <2 x double> %i.ee, <2 x double> %i.eu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fa = shufflevector <2 x double> %i.dp, <2 x double> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fa, <2 x double> %i.ey) ; 2 uses
  %i.fc = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %.sroa.39.0, i64 1
  %i.fe = fmul <2 x double> %i.ev, %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.az, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fg, <2 x double> %i.fe) ; 2 uses
  %i.fi = shufflevector <2 x double> %i.ee, <2 x double> %i.eu, <2 x i32> <i32 3, i32 1> ; 3 uses
  %i.fj = fmul <2 x double> %i.fi, %i.ei
  %i.fk = shufflevector <2 x double> %i.ee, <2 x double> %i.eu, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.ej, <2 x double> %i.fj)
  store <2 x double> %i.fl, ptr %1, align 8, !tbaa !8
  %i.fm = fmul <2 x double> %i.fi, %i.en
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.eo, <2 x double> %i.fm)
  store <2 x double> %i.fn, ptr %i.ao, align 8, !tbaa !8
  %i.fo = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.ep, i64 1
  %i.fq = fmul <2 x double> %i.fi, %i.fp
  %i.fr = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fr, <2 x double> %i.fq)
  store <2 x double> %i.fs, ptr %i.ap, align 8, !tbaa !8
  %9 = load <2 x double>, ptr %3, align 8
  %i.ft = load double, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.fu = fneg double %i.ft
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.ft, i64 1
  %i.fx = fmul <2 x double> %i.de, %i.fw
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.fz, <2 x double> %i.fy)
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gb, ptr %3, align 8, !tbaa !8
  %10 = load <2 x double>, ptr %i.ar, align 8
  %i.gc = load double, ptr %i.w, align 8, !tbaa !8 ; 2 uses
  %i.gd = fneg double %i.gc
  %i.ge = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gc, i64 1
  %i.gg = fmul <2 x double> %i.de, %i.gf
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.gi, <2 x double> %i.gh)
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gk, ptr %i.ar, align 8, !tbaa !8
  %11 = load <2 x double>, ptr %i.as, align 8
  %i.gl = load double, ptr %i.at, align 8, !tbaa !8 ; 2 uses
  %i.gm = fneg double %i.gl
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gl, i64 1
  %i.gp = fmul <2 x double> %i.de, %i.go
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.gr, <2 x double> %i.gq)
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gt, ptr %i.as, align 8, !tbaa !8
  %i.gu = extractelement <2 x double> %i.dz, i64 0
  %i.gv = extractelement <2 x double> %i.eu, i64 0
  %i.gw = extractelement <2 x double> %i.fb, i64 0
  %i.gx = extractelement <2 x double> %i.fb, i64 1
  %i.gy = extractelement <2 x double> %i.fh, i64 0
  %i.gz = extractelement <2 x double> %i.fh, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.d
  %.sroa.57.1 = phi double [ %i.gv, %bb.d ], [ %.sroa.57.0, %.thread134.i.i ] ; 3 uses
  %.sroa.39.1 = phi double [ %i.gz, %bb.d ], [ %.sroa.39.0, %.thread134.i.i ] ; 4 uses
  %.sroa.33.2 = phi double [ %i.gx, %bb.d ], [ %i.bf, %.thread134.i.i ] ; 5 uses
  %.sroa.0.2 = phi double [ %i.gw, %bb.d ], [ %.sroa.0.1, %.thread134.i.i ] ; 5 uses
  %i.ha = phi double [ %i.gu, %bb.d ], [ %i.ay, %.thread134.i.i ] ; 4 uses
  %i.hb = phi double [ %i.gy, %bb.d ], [ %i.az, %.thread134.i.i ] ; 5 uses
  %.1130.i.i = phi i1 [ true, %bb.d ], [ false, %.thread134.i.i ]
  %i.hc = fadd double %.sroa.66.1, %.sroa.0.2     ; 2 uses
  %i.hd = fsub double %i.hb, %i.ha                ; 2 uses
  %i.he = tail call noundef double @llvm.fabs.f64(double %i.hd)
  %i.hf = tail call noundef double @llvm.fabs.f64(double %i.hc)
  %i.hg = fmul double %4, %i.hf
  %i.hh = fcmp ugt double %i.he, %i.hg
  br i1 %i.hh, label %bb.e, label %.thread134.i85.i

bb.e:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.hi = fdiv double %i.hc, %i.hd                ; 4 uses
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.hi, double 1.000000e+00)
  %sqrt.i100.i = tail call double @llvm.sqrt.f64(double %i.hj)
  %i.hk = fdiv double 1.000000e+00, %sqrt.i100.i  ; 2 uses
  %i.hl = fcmp olt double %i.hi, 0.000000e+00
  %i.hm = fneg double %i.hk
  %.0122.i101.i = select i1 %i.hl, double %i.hm, double %i.hk ; 5 uses
  %i.hn = fsub double %.sroa.66.1, %.sroa.0.2
  %i.ho = fneg double %.sroa.66.1
  %i.hp = fadd double %i.ha, %i.hb
  %i.hq = fmul double %i.hi, %.0122.i101.i        ; 4 uses
  %i.hr = fmul double %i.hn, %i.hq
  %i.hs = fmul double %.0122.i101.i, %i.ho
  %i.ht = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hq, i64 1
  %i.hv = insertelement <2 x double> poison, double %.0122.i101.i, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hb, i64 1
  %i.hx = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hs, i64 1
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.hw, <2 x double> %i.hy) ; 2 uses
  %i.ia = fmul <2 x double> %i.hz, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.ib = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ia) ; 2 uses
  %i.ic = extractelement <2 x double> %i.ib, i64 0
  %i.id = fmul double %4, %i.ic
  %i.ie = extractelement <2 x double> %i.ib, i64 1
  %i.if = fcmp ugt double %i.ie, %i.id
  %i.ig = extractelement <2 x double> %i.ia, i64 1
  %i.ih = extractelement <2 x double> %i.hz, i64 0
  br i1 %i.if, label %.thread.i88.i, label %bb.f

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.ii = fsub double %.sroa.66.1, %.sroa.0.2     ; 2 uses
  %i.ij = fadd double %i.ha, %i.hb                ; 2 uses
  %i.ik = tail call noundef double @llvm.fabs.f64(double %i.ij)
  %i.il = tail call noundef double @llvm.fabs.f64(double %i.ii)
  %i.im = fmul double %4, %i.il
  %i.in = fcmp ugt double %i.ik, %i.im
  %i.io = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %.sroa.66.1, i64 1
  br i1 %i.in, label %.thread.i88.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.e
  %.0120146.i89.i = phi double [ %i.ii, %.thread134.i85.i ], [ %i.ih, %bb.e ]
  %.0121145.i90.i = phi double [ %i.ij, %.thread134.i85.i ], [ %i.ig, %bb.e ]
  %.1123144.i91.i = phi double [ 0.000000e+00, %.thread134.i85.i ], [ %.0122.i101.i, %bb.e ]
  %.0124141.i92.i = phi double [ 1.000000e+00, %.thread134.i85.i ], [ %i.hq, %bb.e ]
  %i.iq = fdiv double %.0120146.i89.i, %.0121145.i90.i ; 4 uses
  %i.ir = tail call noundef double @llvm.fabs.f64(double %i.iq)
  %i.is = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.iq, double 1.000000e+00)
  %sqrt133.i93.i = tail call double @llvm.sqrt.f64(double %i.is)
  %i.it = fadd double %i.ir, %sqrt133.i93.i
  %i.iu = fdiv double 1.000000e+00, %i.it         ; 2 uses
  %i.iv = fcmp olt double %i.iq, 0.000000e+00
  %i.iw = fneg double %i.iu
  %.0117.i94.i = select i1 %i.iv, double %i.iw, double %i.iu ; 3 uses
  %i.ix = tail call double @llvm.fmuladd.f64(double %.0117.i94.i, double %.0117.i94.i, double 1.000000e+00)
  %sqrt132.i95.i = tail call double @llvm.sqrt.f64(double %i.ix)
  %i.iy = fdiv double 1.000000e+00, %sqrt132.i95.i ; 4 uses
  %i.iz = fmul double %.0117.i94.i, %i.iy         ; 3 uses
  %i.ja = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.iy, i64 1
  %i.jc = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jd = insertelement <2 x double> %i.jc, double %i.iz, i64 1
  %i.je = fmul double %.sroa.39.1, %i.iy
  br label %bb.f

bb.f:                                             ; preds = %.thread.i88.i, %bb.e
  %.1123142.i96.i = phi double [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.e ] ; 2 uses
  %.0124139.i97.i = phi double [ %.0124141.i92.i, %.thread.i88.i ], [ %i.hq, %bb.e ]
  %.0118129.i98.i = phi double [ %i.iz, %.thread.i88.i ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.0119128.i99.i = phi double [ %i.je, %.thread.i88.i ], [ %.sroa.39.1, %bb.e ]
  %i.jf = phi <2 x double> [ %i.jb, %.thread.i88.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.e ] ; 11 uses
  %i.jg = phi <2 x double> [ %i.jd, %.thread.i88.i ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.e ] ; 2 uses
  %i.jh = fneg double %.1123142.i96.i
  %i.ji = fneg double %.0118129.i98.i             ; 2 uses
  %i.jj = insertelement <2 x double> poison, double %.sroa.57.1, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %.sroa.39.1, i64 1
  %i.jl = fneg <2 x double> %i.jk
  %i.jm = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %.1123142.i96.i, i64 1 ; 2 uses
  %i.jo = insertelement <2 x double> %i.jf, double %i.ji, i64 0
  %i.jp = fmul <2 x double> %i.jn, %i.jo
  %i.jq = insertelement <2 x double> %i.jn, double %i.jh, i64 1
  %i.jr = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.js = fmul <2 x double> %i.jq, %i.jr
  %i.jt = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %.0124139.i97.i, i64 1 ; 2 uses
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jr, <2 x double> %i.jp) ; 5 uses
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jf, <2 x double> %i.js) ; 5 uses
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = extractelement <2 x double> %i.jv, i64 1
  %i.jz = extractelement <2 x double> %i.jw, i64 1
  %i.ka = insertelement <2 x double> poison, double %.sroa.66.1, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kd = insertelement <2 x double> %i.kc, double %i.ji, i64 0
  %i.ke = fmul <2 x double> %i.kb, %i.kd
  %i.kf = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.jg, <2 x double> %i.ke) ; 2 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0
  %i.kj = fneg double %i.ki
  %i.kk = shufflevector <2 x double> %i.jv, <2 x double> %i.jw, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.kl = insertelement <2 x double> %i.kh, double %i.kj, i64 0
  %i.km = fmul <2 x double> %i.kk, %i.kl
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.jv, <2 x double> %i.km)
  %i.ko = shufflevector <2 x double> %i.jv, <2 x double> %i.jf, <2 x i32> <i32 1, i32 2>
  %i.kp = fmul <2 x double> %i.ko, %i.jl
  %i.kq = fmul double %.sroa.57.1, %i.jz
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.jy, double 0.000000e+00, double %i.kq)
  %i.ks = shufflevector <2 x double> %i.jw, <2 x double> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> zeroinitializer, <2 x double> %i.kp)
  %i.ku = tail call double @llvm.fmuladd.f64(double %.0118129.i98.i, double 0.000000e+00, double %.0119128.i99.i)
  %i.kv = load double, ptr %1, align 8, !tbaa !8  ; 2 uses
  %i.kw = load <2 x double>, ptr %i.au, align 8, !tbaa !8 ; 3 uses
  %i.kx = load double, ptr %i.ao, align 8, !tbaa !8
  %i.ky = extractelement <2 x double> %i.kw, i64 0
  %i.kz = fneg double %i.ky
  %i.la = shufflevector <2 x double> %i.jw, <2 x double> %i.jv, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.lb = insertelement <2 x double> %i.kw, double %i.kv, i64 0
  %i.lc = load double, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.ld = fneg double %i.lc
  %i.le = load <2 x double>, ptr %i.t, align 8, !tbaa !8 ; 3 uses
  %i.lf = load double, ptr %i.ap, align 8, !tbaa !8
  %i.lg = fneg <2 x double> %i.le
  %i.lh = shufflevector <2 x double> %i.kw, <2 x double> %i.lg, <2 x i32> <i32 0, i32 2>
  %i.li = fmul <2 x double> %i.la, %i.lh
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.lb, <2 x double> %i.li)
  store <2 x double> %i.lj, ptr %i.au, align 8, !tbaa !8
  %i.lk = insertelement <2 x double> %i.le, double %i.ld, i64 1
  %i.ll = fmul <2 x double> %i.la, %i.lk
  %i.lm = insertelement <2 x double> %i.le, double %i.kx, i64 0
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> %i.lm, <2 x double> %i.ll)
  store <2 x double> %i.ln, ptr %i.t, align 8, !tbaa !8
  %i.lo = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lp = insertelement <2 x double> %i.lo, double %i.lc, i64 1
  %i.lq = fmul <2 x double> %i.kk, %i.lp
  %i.lr = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lf, i64 1
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.ls, <2 x double> %i.lq) ; 2 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  store double %i.lu, ptr %1, align 8, !tbaa !8
  %i.lv = extractelement <2 x double> %i.lt, i64 1
  store double %i.lv, ptr %i.u, align 8, !tbaa !8
  %i.lw = load double, ptr %3, align 8, !tbaa !8  ; 2 uses
  %i.lx = load <2 x double>, ptr %i.av, align 8, !tbaa !8 ; 3 uses
  %i.ly = load double, ptr %i.ar, align 8, !tbaa !8
  %i.lz = extractelement <2 x double> %i.lx, i64 0
  %i.ma = fneg double %i.lz
  %i.mb = insertelement <2 x double> %i.lx, double %i.lw, i64 0
  %i.mc = load double, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.md = fneg double %i.mc
  %i.me = load <2 x double>, ptr %i.x, align 8, !tbaa !8 ; 3 uses
  %12 = load <2 x double>, ptr %i.as, align 8
  %i.mf = fneg <2 x double> %i.me
  %i.mg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mh = shufflevector <2 x double> %i.lx, <2 x double> %i.mf, <2 x i32> <i32 0, i32 2>
  %i.mi = fmul <2 x double> %i.mg, %i.mh
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.mb, <2 x double> %i.mi)
  store <2 x double> %i.mj, ptr %i.av, align 8, !tbaa !8
  %i.mk = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ml = insertelement <2 x double> %i.mk, double %i.md, i64 0
  %i.mm = fmul <2 x double> %i.jf, %i.ml
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mo = insertelement <2 x double> %i.me, double %i.ly, i64 0
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.mo, <2 x double> %i.mn)
  store <2 x double> %i.mp, ptr %i.x, align 8, !tbaa !8
  %i.mq = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mc, i64 1
  %i.ms = fmul <2 x double> %i.jf, %i.mr
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mu = insertelement <2 x double> %12, double %i.lw, i64 1
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.mu, <2 x double> %i.mt) ; 2 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 1
  store double %i.mw, ptr %3, align 8, !tbaa !8
  %i.mx = extractelement <2 x double> %i.mv, i64 0
  store double %i.mx, ptr %i.y, align 8, !tbaa !8
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.f
  %.sroa.57.2 = phi double [ %i.kr, %bb.f ], [ %.sroa.57.1, %.thread134.i85.i ] ; 4 uses
  %.sroa.39.2 = phi double [ %i.ku, %bb.f ], [ %.sroa.39.1, %.thread134.i85.i ] ; 6 uses
  %.1130.i87.i = phi i1 [ true, %bb.f ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.my = phi <2 x double> [ %i.kt, %bb.f ], [ zeroinitializer, %.thread134.i85.i ] ; 3 uses
  %i.mz = phi <2 x double> [ %i.kn, %bb.f ], [ %i.ip, %.thread134.i85.i ] ; 6 uses
  %i.na = extractelement <2 x double> %i.mz, i64 1 ; 4 uses
  %i.nb = fadd double %.sroa.33.2, %i.na          ; 2 uses
  %i.nc = fsub double %.sroa.39.2, %.sroa.57.2    ; 2 uses
  %i.nd = tail call noundef double @llvm.fabs.f64(double %i.nc)
  %i.ne = tail call noundef double @llvm.fabs.f64(double %i.nb)
  %i.nf = fmul double %4, %i.ne
  %i.ng = fcmp ugt double %i.nd, %i.nf
  br i1 %i.ng, label %bb.g, label %.thread134.i102.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.nh = fdiv double %i.nb, %i.nc                ; 4 uses
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.nh, double 1.000000e+00)
  %sqrt.i117.i = tail call double @llvm.sqrt.f64(double %i.ni)
  %i.nj = fdiv double 1.000000e+00, %sqrt.i117.i  ; 2 uses
  %i.nk = fcmp olt double %i.nh, 0.000000e+00
  %i.nl = fneg double %i.nj
  %.0122.i118.i = select i1 %i.nk, double %i.nl, double %i.nj ; 5 uses
  %i.nm = fsub double %i.na, %.sroa.33.2
  %i.nn = fneg double %i.na
  %i.no = fadd double %.sroa.57.2, %.sroa.39.2
  %i.np = fmul double %i.nh, %.0122.i118.i        ; 4 uses
  %i.nq = fmul double %i.nm, %i.np
  %i.nr = fmul double %.0122.i118.i, %i.nn
  %i.ns = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.np, i64 1
  %i.nu = insertelement <2 x double> poison, double %.0122.i118.i, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %.sroa.39.2, i64 1
  %i.nw = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.nr, i64 1
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.nv, <2 x double> %i.nx) ; 2 uses
  %i.nz = fmul <2 x double> %i.ny, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.oa = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nz) ; 2 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 0
  %i.oc = fmul double %4, %i.ob
  %i.od = extractelement <2 x double> %i.oa, i64 1
  %i.oe = fcmp ugt double %i.od, %i.oc
  %i.of = extractelement <2 x double> %i.nz, i64 1
  %i.og = extractelement <2 x double> %i.ny, i64 0
  br i1 %i.oe, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.oh = fsub double %i.na, %.sroa.33.2          ; 2 uses
  %i.oi = fadd double %.sroa.57.2, %.sroa.39.2    ; 2 uses
  %i.oj = tail call noundef double @llvm.fabs.f64(double %i.oi)
  %i.ok = tail call noundef double @llvm.fabs.f64(double %i.oh)
  %i.ol = fmul double %4, %i.ok
  %i.om = fcmp ugt double %i.oj, %i.ol
  br i1 %i.om, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.g
  %.0120146.i106.i = phi double [ %i.oh, %.thread134.i102.i ], [ %i.og, %bb.g ]
  %.0121145.i107.i = phi double [ %i.oi, %.thread134.i102.i ], [ %i.of, %bb.g ]
  %.1123144.i108.i = phi double [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.g ]
  %.0124141.i109.i = phi double [ 1.000000e+00, %.thread134.i102.i ], [ %i.np, %bb.g ]
  %i.on = fdiv double %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.oo = tail call noundef double @llvm.fabs.f64(double %i.on)
  %i.op = tail call double @llvm.fmuladd.f64(double %i.on, double %i.on, double 1.000000e+00)
  %sqrt133.i110.i = tail call double @llvm.sqrt.f64(double %i.op)
  %i.oq = fadd double %i.oo, %sqrt133.i110.i
  %i.or = fdiv double 1.000000e+00, %i.oq         ; 2 uses
  %i.os = fcmp olt double %i.on, 0.000000e+00
  %i.ot = fneg double %i.or
  %.0117.i111.i = select i1 %i.os, double %i.ot, double %i.or ; 3 uses
  %i.ou = tail call double @llvm.fmuladd.f64(double %.0117.i111.i, double %.0117.i111.i, double 1.000000e+00)
  %sqrt132.i112.i = tail call double @llvm.sqrt.f64(double %i.ou)
  %i.ov = fdiv double 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.ow = fmul double %.0117.i111.i, %i.ov        ; 2 uses
  %i.ox = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.ov, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.g
  %.1123142.i113.i = phi double [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.g ] ; 2 uses
  %.0124139.i114.i = phi double [ %.0124141.i109.i, %.thread.i105.i ], [ %i.np, %bb.g ]
  %.0118129.i115.i = phi double [ %i.ow, %.thread.i105.i ], [ 0.000000e+00, %bb.g ]
  %.0119128.i116.i = phi double [ %i.ov, %.thread.i105.i ], [ 1.000000e+00, %bb.g ] ; 3 uses
  %i.oz = phi <2 x double> [ %i.oy, %.thread.i105.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.g ] ; 10 uses
  %i.pa = fneg double %.1123142.i113.i
  %i.pb = fneg double %.0118129.i115.i            ; 2 uses
  %i.pc = fmul double %.1123142.i113.i, %.0119128.i116.i
  %i.pd = fmul double %.sroa.39.2, %i.pb
  %i.pe = insertelement <2 x double> poison, double %.0124139.i114.i, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %.sroa.33.2, i64 1 ; 2 uses
  %i.pg = insertelement <2 x double> %i.oz, double %.0119128.i116.i, i64 1 ; 3 uses
  %i.ph = insertelement <2 x double> poison, double %i.pc, i64 0
  %i.pi = insertelement <2 x double> %i.ph, double %i.pd, i64 1
  %i.pj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.pg, <2 x double> %i.pi) ; 4 uses
  %i.pk = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %.sroa.39.2, i64 1
  %i.pm = fmul <2 x double> %i.pg, %i.pl
  %i.pn = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.po = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.pn, <2 x double> %i.pm) ; 3 uses
  %i.pp = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pq = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pr = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ps = insertelement <2 x double> %i.pr, double %i.pb, i64 1
  %i.pt = fmul <2 x double> %i.pq, %i.ps
  %i.pu = insertelement <2 x double> poison, double %.sroa.57.2, i64 0
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pv, <2 x double> %i.oz, <2 x double> %i.pt) ; 2 uses
  %i.px = shufflevector <2 x double> %i.po, <2 x double> %i.pj, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.py = fneg <2 x double> %i.pw
  %i.pz = shufflevector <2 x double> %i.pw, <2 x double> %i.py, <2 x i32> <i32 0, i32 3>
  %i.qa = fmul <2 x double> %i.px, %i.pz
  %i.qb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> %i.pp, <2 x double> %i.qa)
  %i.qc = shufflevector <2 x double> %i.oz, <2 x double> %i.pj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qd = fmul <2 x double> %i.qc, splat (double -0.000000e+00)
  %i.qe = insertelement <2 x double> %i.pp, double %.0119128.i116.i, i64 0 ; 2 uses
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %i.my, <2 x double> %i.qd)
  %i.qg = fmul <2 x double> %i.qe, zeroinitializer
  %i.qh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.my, <2 x double> %i.qg)
  %13 = load <2 x double>, ptr %i.r, align 8
  %i.qi = load double, ptr %i.au, align 8, !tbaa !8 ; 2 uses
  %i.qj = fneg double %i.qi
  %i.qk = shufflevector <2 x double> %i.pj, <2 x double> %i.po, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ql = insertelement <2 x double> poison, double %i.qj, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %i.qi, i64 1
  %i.qn = fmul <2 x double> %i.qk, %i.qm
  %i.qo = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.qo, <2 x double> %i.qn)
  store <2 x double> %i.qp, ptr %i.r, align 8, !tbaa !8
  %14 = load <2 x double>, ptr %i.s, align 8
  %i.qq = load double, ptr %i.t, align 8, !tbaa !8 ; 2 uses
  %i.qr = fneg double %i.qq
  %i.qs = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qt = insertelement <2 x double> %i.qs, double %i.qq, i64 1
  %i.qu = fmul <2 x double> %i.qk, %i.qt
  %i.qv = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.qv, <2 x double> %i.qu)
  store <2 x double> %i.qw, ptr %i.s, align 8, !tbaa !8
  %15 = load <2 x double>, ptr %i.aq, align 8
  %i.qx = load double, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.qy = fneg double %i.qx
  %i.qz = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qx, i64 1
  %i.rb = fmul <2 x double> %i.qk, %i.ra
  %i.rc = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.rc, <2 x double> %i.rb)
  store <2 x double> %i.rd, ptr %i.aq, align 8, !tbaa !8
  %16 = load <2 x double>, ptr %i.v, align 8
  %i.re = load double, ptr %i.av, align 8, !tbaa !8 ; 2 uses
  %i.rf = fneg double %i.re
  %i.rg = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.rh = insertelement <2 x double> %i.rg, double %i.re, i64 1
  %i.ri = fmul <2 x double> %i.oz, %i.rh
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rk = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> %i.rk, <2 x double> %i.rj)
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rm, ptr %i.v, align 8, !tbaa !8
  %17 = load <2 x double>, ptr %i.w, align 8
  %i.rn = load double, ptr %i.x, align 8, !tbaa !8 ; 2 uses
  %i.ro = fneg double %i.rn
  %i.rp = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.rn, i64 1
  %i.rr = fmul <2 x double> %i.oz, %i.rq
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rt = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ru = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> %i.rt, <2 x double> %i.rs)
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rv, ptr %i.w, align 8, !tbaa !8
  %18 = load <2 x double>, ptr %i.at, align 8
  %i.rw = load double, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.rx = fneg double %i.rw
  %i.ry = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %i.rw, i64 1
  %i.sa = fmul <2 x double> %i.oz, %i.rz
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sc = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> %i.sc, <2 x double> %i.sb)
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.se, ptr %i.at, align 8, !tbaa !8
  br label %bb.h

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.sf = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sg = insertelement <2 x double> %i.sf, double %.sroa.33.2, i64 1 ; 2 uses
  br i1 %.1130.i87.i, label %bb.h, label %.loopexit130.i.loopexit.split.loop.exit

bb.h:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.sh = phi <2 x double> [ %i.qb, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.sg, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.si = phi <2 x double> [ %i.qh, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ zeroinitializer, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  %i.sj = phi <2 x double> [ %i.qf, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.my, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 4 uses
  %i.sk = extractelement <2 x double> %i.sj, i64 0 ; 3 uses
  %i.sl = tail call noundef double @llvm.fabs.f64(double %i.sk)
  %i.sm = fcmp one double %i.sk, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %i.sm, double %i.sl, double 0.000000e+00 ; 2 uses
  %i.sn = extractelement <2 x double> %i.si, i64 0 ; 2 uses
  %i.so = tail call noundef double @llvm.fabs.f64(double %i.sn) ; 2 uses
  %i.sp = fcmp olt double %.sroa.speculated28.i119.i, %i.so
  %.sroa.speculated24.i120.i = select i1 %i.sp, double %i.so, double %.sroa.speculated28.i119.i ; 2 uses
  %i.sq = extractelement <2 x double> %i.sj, i64 1 ; 2 uses
  %i.sr = tail call noundef double @llvm.fabs.f64(double %i.sq) ; 2 uses
  %i.ss = fcmp olt double %.sroa.speculated24.i120.i, %i.sr
  %.sroa.speculated20.i121.i = select i1 %i.ss, double %i.sr, double %.sroa.speculated24.i120.i ; 2 uses
  %i.st = extractelement <2 x double> %i.si, i64 1 ; 2 uses
  %i.su = tail call noundef double @llvm.fabs.f64(double %i.st) ; 2 uses
  %i.sv = fcmp olt double %.sroa.speculated20.i121.i, %i.su
  %.sroa.speculated12.i123.i = select i1 %i.sv, double %i.su, double %.sroa.speculated20.i121.i
  %i.sw = fcmp ogt double %.sroa.speculated12.i123.i, %i.al
  %i.sx = icmp samesign ult i32 %.082.i, 19
  %i.sy = select i1 %i.sw, i1 %i.sx, i1 false
  %i.sz = extractelement <2 x double> %i.sh, i64 0
  %i.ta = extractelement <2 x double> %i.mz, i64 0 ; 2 uses
  %i.tb = shufflevector <2 x double> %i.sj, <2 x double> %i.mz, <2 x i32> <i32 1, i32 2>
  %i.tc = shufflevector <2 x double> %i.sh, <2 x double> %i.sj, <2 x i32> <i32 1, i32 2>
  br i1 %i.sy, label %bb.b, label %.loopexit130.i, !llvm.loop !45

.loopexit130.i.loopexit.split.loop.exit:          ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.td = extractelement <2 x double> %i.mz, i64 0
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.split.loop.exit, %bb.h, %bb.a
  %.sroa.0.0 = phi double [ %i.f, %bb.a ], [ %i.td, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.ta, %bb.h ] ; 3 uses
  %i.te = phi <2 x double> [ %i.an, %bb.a ], [ %i.sg, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.sh, %bb.h ] ; 2 uses
  store double %.sroa.0.0, ptr %2, align 8, !tbaa !23
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.th = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.th, ptr %i.tf, align 8, !tbaa !8
  %i.ti = fcmp olt double %.sroa.0.0, 0.000000e+00
  %i.tj = extractelement <2 x double> %i.te, i64 1
  br i1 %i.ti, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.tk = fneg double %.sroa.0.0
  store double %i.tk, ptr %2, align 8, !tbaa !8
  %i.tl = load double, ptr %1, align 8, !tbaa !8
  %i.tm = fneg double %i.tl
  store double %i.tm, ptr %1, align 8, !tbaa !8
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tn = load double, ptr %gep.1.i, align 8, !tbaa !8
  %i.to = fneg double %i.tn
  store double %i.to, ptr %gep.1.i, align 8, !tbaa !8
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.tp = load double, ptr %gep.2.i, align 8, !tbaa !8
  %i.tq = fneg double %i.tp
  store double %i.tq, ptr %gep.2.i, align 8, !tbaa !8
  %.pre153.i = load double, ptr %i.tf, align 8, !tbaa !8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.tr = phi double [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.tj, %.loopexit130.i ] ; 2 uses
  %i.ts = fcmp olt double %i.tr, 0.000000e+00
  br i1 %i.ts, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.tt = fneg double %i.tr
  store double %i.tt, ptr %i.tf, align 8, !tbaa !8
  %i.tu = load double, ptr %i.r, align 8, !tbaa !8
  %i.tv = fneg double %i.tu
  store double %i.tv, ptr %i.r, align 8, !tbaa !8
  %i.tw = load double, ptr %i.s, align 8, !tbaa !8
  %i.tx = fneg double %i.tw
  store double %i.tx, ptr %i.s, align 8, !tbaa !8
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ty = load double, ptr %gep.2.1.i, align 8, !tbaa !8
  %i.tz = fneg double %i.ty
  store double %i.tz, ptr %gep.2.1.i, align 8, !tbaa !8
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.ua = load double, ptr %i.tg, align 8, !tbaa !8 ; 2 uses
  %i.ub = fcmp olt double %i.ua, 0.000000e+00
  br i1 %i.ub, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.uc = fneg double %i.ua
  store double %i.uc, ptr %i.tg, align 8, !tbaa !8
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ud = load double, ptr %invariant.gep.2.i, align 8, !tbaa !8
  %i.ue = fneg double %i.ud
  store double %i.ue, ptr %invariant.gep.2.i, align 8, !tbaa !8
  %i.uf = load double, ptr %i.t, align 8, !tbaa !8
  %i.ug = fneg double %i.uf
  store double %i.ug, ptr %i.t, align 8, !tbaa !8
  %i.uh = load double, ptr %i.u, align 8, !tbaa !8
  %i.ui = fneg double %i.uh
  store double %i.ui, ptr %i.u, align 8, !tbaa !8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.um = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.un = load double, ptr %2, align 8, !tbaa !8  ; 2 uses
  %i.uo = load double, ptr %i.tf, align 8, !tbaa !8 ; 3 uses
  %i.up = fcmp olt double %i.un, %i.uo
  br i1 %i.up, label %bb.j, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.k, %.lr.ph.1145.i
  %i.uq = phi double [ %.pre, %bb.k ], [ %i.vr, %.lr.ph.1145.i ] ; 2 uses
  %i.ur = load double, ptr %2, align 8, !tbaa !8  ; 2 uses
  %i.us = fcmp olt double %i.ur, %i.uq
  br i1 %i.us, label %bb.i, label %._crit_edge.1.i

bb.i:                                             ; preds = %.lr.ph.preheader.1.i
  store double %i.uq, ptr %2, align 8, !tbaa !8
  store double %i.ur, ptr %i.tf, align 8, !tbaa !8
  %i.ut = load <2 x double>, ptr %1, align 8, !tbaa !8
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uu, ptr %1, align 8, !tbaa !8
  %i.uv = load <2 x double>, ptr %i.uj, align 8, !tbaa !8
  %i.uw = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uw, ptr %i.uj, align 8, !tbaa !8
  %i.ux = load <2 x double>, ptr %i.uk, align 8, !tbaa !8
  %i.uy = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.uy, ptr %i.uk, align 8, !tbaa !8
  %i.uz = load <2 x double>, ptr %3, align 8, !tbaa !8
  %i.va = shufflevector <2 x double> %i.uz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.va, ptr %3, align 8, !tbaa !8
  %i.vb = load <2 x double>, ptr %i.ul, align 8, !tbaa !8
  %i.vc = shufflevector <2 x double> %i.vb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vc, ptr %i.ul, align 8, !tbaa !8
  %i.vd = load <2 x double>, ptr %i.um, align 8, !tbaa !8
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ve, ptr %i.um, align 8, !tbaa !8
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %bb.i, %.lr.ph.preheader.1.i
  br i1 %5, label %bb.l, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

bb.j:                                             ; preds = %.lr.ph.preheader.i
  store double %i.uo, ptr %2, align 8, !tbaa !8
  store double %i.un, ptr %i.tf, align 8, !tbaa !8
  %i.vf = load <2 x double>, ptr %1, align 8, !tbaa !8
  %i.vg = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vg, ptr %1, align 8, !tbaa !8
  %i.vh = load <2 x double>, ptr %i.uj, align 8, !tbaa !8
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vi, ptr %i.uj, align 8, !tbaa !8
  %i.vj = load <2 x double>, ptr %i.uk, align 8, !tbaa !8
  %i.vk = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vk, ptr %i.uk, align 8, !tbaa !8
  %i.vl = load <2 x double>, ptr %3, align 8, !tbaa !8
  %i.vm = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vm, ptr %3, align 8, !tbaa !8
  %i.vn = load <2 x double>, ptr %i.ul, align 8, !tbaa !8
  %i.vo = shufflevector <2 x double> %i.vn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vo, ptr %i.ul, align 8, !tbaa !8
  %i.vp = load <2 x double>, ptr %i.um, align 8, !tbaa !8
  %i.vq = shufflevector <2 x double> %i.vp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vq, ptr %i.um, align 8, !tbaa !8
  %.pre154.i = load double, ptr %i.tf, align 8, !tbaa !8
  br label %.lr.ph.1145.i

.lr.ph.1145.i:                                    ; preds = %bb.j, %.lr.ph.preheader.i
  %i.vr = phi double [ %i.uo, %.lr.ph.preheader.i ], [ %.pre154.i, %bb.j ] ; 3 uses
  %i.vs = load double, ptr %i.tg, align 8, !tbaa !8 ; 2 uses
  %i.vt = fcmp olt double %i.vr, %i.vs
  br i1 %i.vt, label %bb.k, label %.lr.ph.preheader.1.i

bb.k:                                             ; preds = %.lr.ph.1145.i
  store double %i.vs, ptr %i.tf, align 8, !tbaa !8
  store double %i.vr, ptr %i.tg, align 8, !tbaa !8
  %i.vu = load <2 x double>, ptr %i.r, align 8, !tbaa !8
  %i.vv = shufflevector <2 x double> %i.vu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vv, ptr %i.r, align 8, !tbaa !8
  %i.vw = load <2 x double>, ptr %i.s, align 8, !tbaa !8
  %i.vx = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.vx, ptr %i.s, align 8, !tbaa !8
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.vz = load <2 x double>, ptr %i.vy, align 8, !tbaa !8
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wa, ptr %i.vy, align 8, !tbaa !8
  %i.wb = load <2 x double>, ptr %i.v, align 8, !tbaa !8
  %i.wc = shufflevector <2 x double> %i.wb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wc, ptr %i.v, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %i.ym = extractelement <2 x double> %i.yl, i64 0
  %i.yn = extractelement <2 x double> %i.yl, i64 1
  %i.yo = tail call noundef double @llvm.fmuladd.f64(double %i.yc, double %i.yn, double %i.ym)
  %i.yp = fcmp olt double %i.yo, 0.000000e+00
  br i1 %i.yp, label %.preheader.preheader.i, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.m
  %i.yq = fneg double %i.yc
  store double %i.yq, ptr %i.yb, align 8, !tbaa !8
  %i.yr = extractelement <2 x double> %i.xs, i64 1
  %i.ys = fneg double %i.yr
  store double %i.ys, ptr %i.x, align 8, !tbaa !8
  %i.yt = extractelement <2 x double> %i.xu, i64 1
  store double %i.yt, ptr %i.y, align 8, !tbaa !8
  %i.yu = load double, ptr %i.tg, align 8, !tbaa !10
  %i.yv = fneg double %i.yu
  store double %i.yv, ptr %i.tg, align 8, !tbaa !10
  br label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit: ; preds = %._crit_edge.1.i, %bb.m, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_29jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !27   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !27 ; 3 uses
  %i.m = load float, ptr %i.k, align 4, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 10 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.u, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ac, align 4, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !27
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.ai = fcmp one float %i.c, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %i.ai, float %i.ah, float 0.000000e+00 ; 2 uses
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.ak = fcmp olt float %.sroa.speculated28.i.i, %i.aj
  %.sroa.speculated24.i.i = select i1 %i.ak, float %i.aj, float %.sroa.speculated28.i.i ; 2 uses
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.am = fcmp olt float %.sroa.speculated24.i.i, %i.al
  %.sroa.speculated20.i.i = select i1 %i.am, float %i.al, float %.sroa.speculated24.i.i ; 2 uses
  %i.an = extractelement <2 x float> %i.l, i64 0
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an) ; 2 uses
  %i.ap = fcmp olt float %.sroa.speculated20.i.i, %i.ao
  %.sroa.speculated16.i.i = select i1 %i.ap, float %i.ao, float %.sroa.speculated20.i.i ; 2 uses
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.ar = fcmp olt float %.sroa.speculated16.i.i, %i.aq
  %.sroa.speculated12.i.i = select i1 %i.ar, float %i.aq, float %.sroa.speculated16.i.i ; 2 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated12.i.i, %i.as
  %.sroa.speculated.i.i = select i1 %i.at, float %i.as, float %.sroa.speculated12.i.i
  %i.au = fmul float %4, %.sroa.speculated.i.i    ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  %i.aw = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.i, i64 1
  br i1 %i.av, label %.preheader129.i.preheader, label %.loopexit130.i

.preheader129.i.preheader:                        ; preds = %bb.a
  %i.ay = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.o, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.e, i64 3
  %i.bb = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x float> %i.bb, float %i.e, i64 1
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.preheader129.i.preheader, %bb.g
  %.sroa.66.1 = phi float [ %i.rw, %bb.g ], [ %i.q, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.33.1 = phi float [ %i.rx, %bb.g ], [ %i.i, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.0.1 = phi float [ %.sroa.0.3, %bb.g ], [ %i.a, %.preheader129.i.preheader ] ; 6 uses
  %i.bd = phi float [ %i.rn, %bb.g ], [ %i.g, %.preheader129.i.preheader ] ; 5 uses
  %i.be = phi float [ %i.rh, %bb.g ], [ %i.c, %.preheader129.i.preheader ] ; 6 uses
  %.082.i = phi i32 [ %i.bi, %bb.g ], [ 0, %.preheader129.i.preheader ] ; 2 uses
  %i.bf = phi <2 x float> [ %i.ry, %bb.g ], [ %i.bc, %.preheader129.i.preheader ]
  %i.bg = phi <4 x float> [ %i.rz, %bb.g ], [ %i.ba, %.preheader129.i.preheader ] ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = add nuw nsw i32 %.082.i, 1
  %i.bj = fadd float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.bk = fsub float %i.be, %i.bd                 ; 2 uses
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bn = fmul float %4, %i.bm
  %i.bo = fcmp ugt float %i.bl, %i.bn
  br i1 %i.bo, label %bb.b, label %.thread134.i.i

bb.b:                                             ; preds = %.preheader129.i
  %i.bp = fdiv float %i.bj, %i.bk                 ; 4 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float 1.000000e+00)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.br = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bs = fcmp olt float %i.bp, 0.000000e+00
  %i.bt = fneg float %i.br
  %.0122.i.i = select i1 %i.bs, float %i.bt, float %i.br ; 5 uses
  %i.bu = fmul float %i.bp, %.0122.i.i            ; 4 uses
  %i.bv = fadd float %i.bd, %i.be
  %i.bw = fsub float %.sroa.33.1, %.sroa.0.1
  %i.bx = fmul float %i.bw, %i.bu
  %i.by = tail call float @llvm.fmuladd.f32(float %.0122.i.i, float %i.bv, float %i.bx) ; 2 uses
  %i.bz = fneg float %.sroa.33.1
  %i.ca = fmul float %.0122.i.i, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.be, float %i.ca)
  %i.cc = fmul float %i.cb, 2.000000e+00          ; 2 uses
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = tail call noundef float @llvm.fabs.f32(float %i.by)
  %i.cf = fmul float %4, %i.ce
  %i.cg = fcmp ugt float %i.cd, %i.cf
  br i1 %i.cg, label %.thread.i.i, label %bb.c

.thread134.i.i:                                   ; preds = %.preheader129.i
  %i.ch = fsub float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.ci = fadd float %i.bd, %i.be                 ; 2 uses
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cl = fmul float %4, %i.ck
  %i.cm = fcmp ugt float %i.cj, %i.cl
  br i1 %i.cm, label %.thread.i.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.b
  %.0120146.i.i = phi float [ %i.ch, %.thread134.i.i ], [ %i.by, %bb.b ]
  %.0121145.i.i = phi float [ %i.ci, %.thread134.i.i ], [ %i.cc, %bb.b ]
  %.1123144.i.i = phi float [ 0.000000e+00, %.thread134.i.i ], [ %.0122.i.i, %bb.b ]
  %.0124141.i.i = phi float [ 1.000000e+00, %.thread134.i.i ], [ %i.bu, %bb.b ]
  %i.cn = fdiv float %.0120146.i.i, %.0121145.i.i ; 4 uses
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float 1.000000e+00)
  %sqrt133.i.i = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cq = fadd float %i.co, %sqrt133.i.i
  %i.cr = fdiv float 1.000000e+00, %i.cq          ; 2 uses
  %i.cs = fcmp olt float %i.cn, 0.000000e+00
  %i.ct = fneg float %i.cr
  %.0117.i.i = select i1 %i.cs, float %i.ct, float %i.cr ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %.0117.i.i, float %.0117.i.i, float 1.000000e+00)
  %sqrt132.i.i = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt132.i.i   ; 3 uses
  %i.cw = fmul float %.0117.i.i, %i.cv            ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %.1123142.i.i = phi float [ %.1123144.i.i, %.thread.i.i ], [ %.0122.i.i, %bb.b ] ; 2 uses
  %.0124139.i.i = phi float [ %.0124141.i.i, %.thread.i.i ], [ %i.bu, %bb.b ] ; 2 uses
  %.0118129.i.i = phi float [ %i.cw, %.thread.i.i ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0119128.i.i = phi float [ %i.cv, %.thread.i.i ], [ 1.000000e+00, %bb.b ] ; 4 uses
  %i.cz = phi <2 x float> [ %i.cy, %.thread.i.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ] ; 10 uses
  %i.da = fmul float %.1123142.i.i, %.0119128.i.i
  %i.db = fneg float %.1123142.i.i
  %i.dc = fneg float %.0118129.i.i                ; 2 uses
  %i.dd = fmul float %i.be, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0119128.i.i, float %i.dd)
  %i.df = fmul float %.sroa.33.1, %i.dc
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.bd, float %.0119128.i.i, float %i.df)
  %i.dh = fneg float %i.dg
  %i.di = fmul float %i.be, %.0119128.i.i
  %i.dj = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0118129.i.i, float %i.di)
  %i.dk = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.33.1, i64 1
  %i.dm = fmul <2 x float> %i.cz, %i.dl
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %.0124139.i.i, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cz, <2 x float> %i.dn) ; 5 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.bg, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dv = fneg <4 x float> %i.bg
  %i.dw = extractelement <2 x float> %i.dq, i64 0
  %6 = load <4 x float>, ptr %1, align 4
  %i.dx = load float, ptr %i.r, align 4, !tbaa !27 ; 2 uses
  %i.dy = fneg float %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dx, i64 1
  %i.eb = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ec = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %7 = load <4 x float>, ptr %i.t, align 4
  %i.ed = load float, ptr %i.u, align 4, !tbaa !27 ; 2 uses
  %i.ee = fneg float %i.ed
  %i.ef = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ed, i64 1
  %i.eh = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ei = load float, ptr %i.w, align 4, !tbaa !27
  %i.ej = load float, ptr %i.x, align 4, !tbaa !27 ; 2 uses
  %i.ek = fneg float %i.ej
  %i.el = extractelement <2 x float> %i.dq, i64 1 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %.0118129.i.i, float %.0124139.i.i, float %i.da) ; 5 uses
  %i.en = insertelement <4 x float> %i.dt, float %i.em, i64 3 ; 2 uses
  %i.eo = shufflevector <4 x float> %i.du, <4 x float> %i.dr, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eq = fmul <4 x float> %i.en, %i.ep
  %i.er = fmul float %i.em, %i.dh
  %i.es = tail call float @llvm.fmuladd.f32(float %i.el, float %i.de, float %i.er)
  %i.et = fmul float %i.el, %i.dw
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.em, float %i.dj, float %i.et)
  %i.ev = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.bh, <4 x float> %i.eq)
  %i.ex = insertelement <2 x float> %i.dq, float %i.em, i64 0 ; 3 uses
  %i.ey = fmul <2 x float> %i.ex, %i.ea
  %i.ez = insertelement <2 x float> %i.eb, float %i.em, i64 1 ; 3 uses
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ec, <2 x float> %i.ey)
  store <2 x float> %i.fa, ptr %1, align 4, !tbaa !27
  %i.fb = fmul <2 x float> %i.ex, %i.eg
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.eh, <2 x float> %i.fb)
  store <2 x float> %i.fc, ptr %i.t, align 4, !tbaa !27
  %i.fd = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.ej, i64 1
  %i.ff = fmul <2 x float> %i.ex, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fh, <2 x float> %i.ff)
  store <2 x float> %i.fi, ptr %i.w, align 4, !tbaa !27
  %8 = load <4 x float>, ptr %3, align 4
  %i.fj = load float, ptr %i.z, align 4, !tbaa !27 ; 2 uses
  %i.fk = fneg float %i.fj
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fj, i64 1
  %i.fn = fmul <2 x float> %i.cz, %i.fm
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.fp, <2 x float> %i.fo)
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fr, ptr %3, align 4, !tbaa !27
  %9 = load <4 x float>, ptr %i.ab, align 4
  %i.fs = load float, ptr %i.ac, align 4, !tbaa !27 ; 2 uses
  %i.ft = fneg float %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fs, i64 1
  %i.fw = fmul <2 x float> %i.cz, %i.fv
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.fy, <2 x float> %i.fx)
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ga, ptr %i.ab, align 4, !tbaa !27
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !27
  %i.gc = load float, ptr %i.af, align 4, !tbaa !27 ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gc, i64 1
  %i.gg = fmul <2 x float> %i.cz, %i.gf
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.gj, <2 x float> %i.gh)
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gl, ptr %i.ae, align 4, !tbaa !27
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.c
  %.sroa.33.2 = phi float [ %i.eu, %bb.c ], [ %.sroa.33.1, %.thread134.i.i ] ; 5 uses
  %.sroa.0.2 = phi float [ %i.es, %bb.c ], [ %.sroa.0.1, %.thread134.i.i ] ; 6 uses
  %.1130.i.i = phi i1 [ true, %bb.c ], [ false, %.thread134.i.i ]
  %i.gm = phi <4 x float> [ %i.ew, %bb.c ], [ %i.bg, %.thread134.i.i ] ; 7 uses
  %i.gn = fadd float %.sroa.66.1, %.sroa.0.2      ; 2 uses
  %i.go = extractelement <4 x float> %i.gm, i64 2 ; 4 uses
  %i.gp = extractelement <4 x float> %i.gm, i64 3 ; 6 uses
  %i.gq = fsub float %i.gp, %i.go                 ; 2 uses
  %i.gr = tail call noundef float @llvm.fabs.f32(float %i.gq)
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gn)
  %i.gt = fmul float %4, %i.gs
  %i.gu = fcmp ugt float %i.gr, %i.gt
  br i1 %i.gu, label %bb.d, label %.thread134.i85.i

bb.d:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.gv = fdiv float %i.gn, %i.gq                 ; 4 uses
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gv, float 1.000000e+00)
  %sqrt.i100.i = tail call float @llvm.sqrt.f32(float %i.gw)
  %i.gx = fdiv float 1.000000e+00, %sqrt.i100.i   ; 2 uses
  %i.gy = fcmp olt float %i.gv, 0.000000e+00
  %i.gz = fneg float %i.gx
  %.0122.i101.i = select i1 %i.gy, float %i.gz, float %i.gx ; 5 uses
  %i.ha = fmul float %i.gv, %.0122.i101.i         ; 4 uses
  %i.hb = fadd float %i.go, %i.gp
  %i.hc = fsub float %.sroa.66.1, %.sroa.0.2
  %i.hd = fmul float %i.hc, %i.ha
  %i.he = tail call float @llvm.fmuladd.f32(float %.0122.i101.i, float %i.hb, float %i.hd) ; 2 uses
  %i.hf = fneg float %.sroa.66.1
  %i.hg = fmul float %.0122.i101.i, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.gp, float %i.hg)
  %i.hi = fmul float %i.hh, 2.000000e+00          ; 2 uses
  %i.hj = tail call noundef float @llvm.fabs.f32(float %i.hi)
  %i.hk = tail call noundef float @llvm.fabs.f32(float %i.he)
  %i.hl = fmul float %4, %i.hk
  %i.hm = fcmp ugt float %i.hj, %i.hl
  br i1 %i.hm, label %.thread.i88.i, label %bb.e

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.hn = fsub float %.sroa.66.1, %.sroa.0.2      ; 2 uses
  %i.ho = fadd float %i.go, %i.gp                 ; 2 uses
  %i.hp = tail call noundef float @llvm.fabs.f32(float %i.ho)
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.hn)
  %i.hr = fmul float %4, %i.hq
  %i.hs = fcmp ugt float %i.hp, %i.hr
  %i.ht = extractelement <4 x float> %i.gm, i64 0
  %i.hu = extractelement <4 x float> %i.gm, i64 1
  br i1 %i.hs, label %.thread.i88.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.d
  %.0120146.i89.i = phi float [ %i.hn, %.thread134.i85.i ], [ %i.he, %bb.d ]
  %.0121145.i90.i = phi float [ %i.ho, %.thread134.i85.i ], [ %i.hi, %bb.d ]
  %.1123144.i91.i = phi float [ 0.000000e+00, %.thread134.i85.i ], [ %.0122.i101.i, %bb.d ]
  %.0124141.i92.i = phi float [ 1.000000e+00, %.thread134.i85.i ], [ %i.ha, %bb.d ]
  %i.hv = fdiv float %.0120146.i89.i, %.0121145.i90.i ; 4 uses
  %i.hw = tail call noundef float @llvm.fabs.f32(float %i.hv)
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float 1.000000e+00)
  %sqrt133.i93.i = tail call float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fadd float %i.hw, %sqrt133.i93.i
  %i.hz = fdiv float 1.000000e+00, %i.hy          ; 2 uses
  %i.ia = fcmp olt float %i.hv, 0.000000e+00
  %i.ib = fneg float %i.hz
  %.0117.i94.i = select i1 %i.ia, float %i.ib, float %i.hz ; 3 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %.0117.i94.i, float %.0117.i94.i, float 1.000000e+00)
  %sqrt132.i95.i = tail call float @llvm.sqrt.f32(float %i.ic)
  %i.id = fdiv float 1.000000e+00, %sqrt132.i95.i ; 3 uses
  %i.ie = fmul float %.0117.i94.i, %i.id          ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.id, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.thread.i88.i, %bb.d
  %.1123142.i96.i = phi float [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.d ] ; 2 uses
  %.0124139.i97.i = phi float [ %.0124141.i92.i, %.thread.i88.i ], [ %i.ha, %bb.d ] ; 2 uses
  %.0118129.i98.i = phi float [ %i.ie, %.thread.i88.i ], [ 0.000000e+00, %bb.d ] ; 7 uses
  %.0119128.i99.i = phi float [ %i.id, %.thread.i88.i ], [ 1.000000e+00, %bb.d ] ; 7 uses
  %i.ih = phi <2 x float> [ %i.ig, %.thread.i88.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ] ; 7 uses
  %i.ii = fmul float %.1123142.i96.i, %.0119128.i99.i
  %i.ij = fneg float %.1123142.i96.i
  %i.ik = fneg float %.0118129.i98.i              ; 2 uses
  %i.il = fmul float %i.gp, %i.ik
  %i.im = tail call float @llvm.fmuladd.f32(float %.sroa.0.2, float %.0119128.i99.i, float %i.il)
  %i.in = fmul float %.sroa.66.1, %i.ik
  %i.io = tail call float @llvm.fmuladd.f32(float %i.go, float %.0119128.i99.i, float %i.in)
  %i.ip = fneg float %i.io
  %i.iq = fmul float %i.gp, %.0119128.i99.i
  %i.ir = tail call float @llvm.fmuladd.f32(float %.sroa.0.2, float %.0118129.i98.i, float %i.iq)
  %i.is = extractelement <4 x float> %i.gm, i64 0 ; 2 uses
  %i.it = fneg float %i.is
  %i.iu = extractelement <4 x float> %i.gm, i64 1 ; 2 uses
  %i.iv = fneg float %i.iu
  %i.iw = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %.sroa.66.1, i64 1
  %i.iy = fmul <2 x float> %i.ih, %i.ix
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jb = insertelement <2 x float> %i.ja, float %.0124139.i97.i, i64 1
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.ih, <2 x float> %i.iz) ; 4 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %i.je = fmul float %.0118129.i98.i, %i.iv
  %i.jf = fmul float %i.iu, %.0119128.i99.i
  %i.jg = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float 0.000000e+00, float %i.jf)
  %i.jh = load float, ptr %1, align 4, !tbaa !27  ; 2 uses
  %i.ji = load <2 x float>, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.jj = load float, ptr %i.t, align 4, !tbaa !27
  %i.jk = extractelement <2 x float> %i.ji, i64 0 ; 2 uses
  %i.jl = fneg float %i.jk
  %i.jm = insertelement <2 x float> %i.ji, float %i.jh, i64 0
  %i.jn = load float, ptr %i.y, align 4, !tbaa !27 ; 2 uses
  %i.jo = fneg float %i.jn
  %i.jp = load <2 x float>, ptr %i.v, align 4, !tbaa !27 ; 2 uses
  %i.jq = load float, ptr %i.w, align 4, !tbaa !27
  %i.jr = extractelement <2 x float> %i.jp, i64 0 ; 2 uses
  %i.js = fneg float %i.jr
  %i.jt = extractelement <2 x float> %i.jc, i64 1 ; 7 uses
  %i.ju = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float %.0124139.i97.i, float %i.ii) ; 9 uses
  %i.jv = fmul float %i.ju, %i.ip
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.im, float %i.jv)
  %i.jx = fmul float %i.jt, %i.jd
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ir, float %i.jx)
  %i.jz = fmul float %i.ju, %i.it
  %i.ka = fmul float %i.is, %i.jt
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.ju, float 0.000000e+00, float %i.ka)
  %i.kc = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.ke = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.je, i64 1
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> zeroinitializer, <2 x float> %i.kf)
  %i.kh = fmul float %i.ju, %i.jl
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jh, float %i.kh)
  store float %i.ki, ptr %1, align 4, !tbaa !27
  %i.kj = fmul float %i.ju, %i.js
  %i.kk = fmul float %i.jt, %i.jk
  %i.kl = insertelement <2 x float> %i.jc, float %i.ju, i64 0 ; 2 uses
  %i.km = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kj, i64 1
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.jm, <2 x float> %i.kn)
  store <2 x float> %i.ko, ptr %i.s, align 4, !tbaa !27
  %i.kp = fmul float %i.ju, %i.jo
  %i.kq = fmul float %i.jt, %i.jr
  %i.kr = insertelement <2 x float> %i.jp, float %i.jj, i64 0
  %i.ks = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kp, i64 1
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.kr, <2 x float> %i.kt)
  store <2 x float> %i.ku, ptr %i.v, align 4, !tbaa !27
  %i.kv = fmul float %i.jt, %i.jn
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jq, float %i.kv)
  store float %i.kw, ptr %i.y, align 4, !tbaa !27
  %i.kx = load float, ptr %3, align 4, !tbaa !27  ; 2 uses
  %i.ky = load <2 x float>, ptr %i.aa, align 4, !tbaa !27 ; 3 uses
  %i.kz = load float, ptr %i.ab, align 4, !tbaa !27
  %i.la = extractelement <2 x float> %i.ky, i64 0
  %i.lb = fneg float %i.la
  %i.lc = fmul float %.0118129.i98.i, %i.lb
  %i.ld = tail call float @llvm.fmuladd.f32(float %.0119128.i99.i, float %i.kx, float %i.lc)
  store float %i.ld, ptr %3, align 4, !tbaa !27
  %i.le = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lf = insertelement <2 x float> %i.ky, float %i.kx, i64 0
  %i.lg = load float, ptr %i.ag, align 4, !tbaa !27 ; 2 uses
  %i.lh = fneg float %i.lg
  %i.li = load <2 x float>, ptr %i.ad, align 4, !tbaa !27 ; 3 uses
  %i.lj = load float, ptr %i.ae, align 4, !tbaa !27
  %i.lk = extractelement <2 x float> %i.li, i64 0
  %i.ll = fneg float %i.lk
  %i.lm = insertelement <2 x float> %i.le, float %i.ll, i64 0
  %i.ln = fmul <2 x float> %i.ih, %i.lm
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.lf, <2 x float> %i.lo)
  store <2 x float> %i.lp, ptr %i.aa, align 4, !tbaa !27
  %i.lq = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lr = insertelement <2 x float> %i.lq, float %i.lh, i64 0
  %i.ls = fmul <2 x float> %i.ih, %i.lr
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = insertelement <2 x float> %i.li, float %i.kz, i64 0
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.lu, <2 x float> %i.lt)
  store <2 x float> %i.lv, ptr %i.ad, align 4, !tbaa !27
  %i.lw = fmul float %.0119128.i99.i, %i.lg
  %i.lx = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float %i.lj, float %i.lw)
  store float %i.lx, ptr %i.ag, align 4, !tbaa !27
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.e
  %.sroa.66.2 = phi float [ %i.jy, %bb.e ], [ %.sroa.66.1, %.thread134.i85.i ] ; 7 uses
  %.sroa.57.2 = phi float [ %i.kb, %bb.e ], [ %i.ht, %.thread134.i85.i ] ; 5 uses
  %.sroa.39.2 = phi float [ %i.jg, %bb.e ], [ %i.hu, %.thread134.i85.i ] ; 6 uses
  %.sroa.0.3 = phi float [ %i.jw, %bb.e ], [ %.sroa.0.2, %.thread134.i85.i ] ; 3 uses
  %.1130.i87.i = phi i1 [ true, %bb.e ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.ly = phi <2 x float> [ %i.kg, %bb.e ], [ zeroinitializer, %.thread134.i85.i ] ; 2 uses
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ma = fadd float %.sroa.33.2, %.sroa.66.2     ; 2 uses
  %i.mb = fsub float %.sroa.39.2, %.sroa.57.2     ; 2 uses
  %i.mc = tail call noundef float @llvm.fabs.f32(float %i.mb)
  %i.md = tail call noundef float @llvm.fabs.f32(float %i.ma)
  %i.me = fmul float %4, %i.md
  %i.mf = fcmp ugt float %i.mc, %i.me
  br i1 %i.mf, label %bb.f, label %.thread134.i102.i

bb.f:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.mg = fdiv float %i.ma, %i.mb                 ; 4 uses
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mg, float 1.000000e+00)
  %sqrt.i117.i = tail call float @llvm.sqrt.f32(float %i.mh)
  %i.mi = fdiv float 1.000000e+00, %sqrt.i117.i   ; 2 uses
  %i.mj = fcmp olt float %i.mg, 0.000000e+00
  %i.mk = fneg float %i.mi
  %.0122.i118.i = select i1 %i.mj, float %i.mk, float %i.mi ; 5 uses
  %i.ml = fmul float %i.mg, %.0122.i118.i         ; 4 uses
  %i.mm = fadd float %.sroa.57.2, %.sroa.39.2
  %i.mn = fsub float %.sroa.66.2, %.sroa.33.2
  %i.mo = fmul float %i.mn, %i.ml
  %i.mp = tail call float @llvm.fmuladd.f32(float %.0122.i118.i, float %i.mm, float %i.mo) ; 2 uses
  %i.mq = fneg float %.sroa.66.2
  %i.mr = fmul float %.0122.i118.i, %i.mq
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.ml, float %.sroa.39.2, float %i.mr)
  %i.mt = fmul float %i.ms, 2.000000e+00          ; 2 uses
  %i.mu = tail call noundef float @llvm.fabs.f32(float %i.mt)
  %i.mv = tail call noundef float @llvm.fabs.f32(float %i.mp)
  %i.mw = fmul float %4, %i.mv
  %i.mx = fcmp ugt float %i.mu, %i.mw
  br i1 %i.mx, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.my = fsub float %.sroa.66.2, %.sroa.33.2     ; 2 uses
  %i.mz = fadd float %.sroa.57.2, %.sroa.39.2     ; 2 uses
  %i.na = tail call noundef float @llvm.fabs.f32(float %i.mz)
  %i.nb = tail call noundef float @llvm.fabs.f32(float %i.my)
  %i.nc = fmul float %4, %i.nb
  %i.nd = fcmp ugt float %i.na, %i.nc
  br i1 %i.nd, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.f
  %.0120146.i106.i = phi float [ %i.my, %.thread134.i102.i ], [ %i.mp, %bb.f ]
  %.0121145.i107.i = phi float [ %i.mz, %.thread134.i102.i ], [ %i.mt, %bb.f ]
  %.1123144.i108.i = phi float [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.f ]
  %.0124141.i109.i = phi float [ 1.000000e+00, %.thread134.i102.i ], [ %i.ml, %bb.f ]
  %i.ne = fdiv float %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.nf = tail call noundef float @llvm.fabs.f32(float %i.ne)
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.ne, float 1.000000e+00)
  %sqrt133.i110.i = tail call float @llvm.sqrt.f32(float %i.ng)
  %i.nh = fadd float %i.nf, %sqrt133.i110.i
  %i.ni = fdiv float 1.000000e+00, %i.nh          ; 2 uses
  %i.nj = fcmp olt float %i.ne, 0.000000e+00
  %i.nk = fneg float %i.ni
  %.0117.i111.i = select i1 %i.nj, float %i.nk, float %i.ni ; 3 uses
  %i.nl = tail call float @llvm.fmuladd.f32(float %.0117.i111.i, float %.0117.i111.i, float 1.000000e+00)
  %sqrt132.i112.i = tail call float @llvm.sqrt.f32(float %i.nl)
  %i.nm = fdiv float 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.nn = fmul float %.0117.i111.i, %i.nm         ; 2 uses
  %i.no = insertelement <2 x float> poison, float %i.nn, i64 0
  %i.np = insertelement <2 x float> %i.no, float %i.nm, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.f
  %.1123142.i113.i = phi float [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.f ] ; 2 uses
  %.0124139.i114.i = phi float [ %.0124141.i109.i, %.thread.i105.i ], [ %i.ml, %bb.f ]
  %.0118129.i115.i = phi float [ %i.nn, %.thread.i105.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0119128.i116.i = phi float [ %i.nm, %.thread.i105.i ], [ 1.000000e+00, %bb.f ] ; 3 uses
  %i.nq = phi <2 x float> [ %i.np, %.thread.i105.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.f ] ; 10 uses
  %i.nr = fneg float %.1123142.i113.i
  %i.ns = fneg float %.0118129.i115.i             ; 2 uses
  %i.nt = fmul float %.sroa.66.2, %i.ns
  %i.nu = tail call float @llvm.fmuladd.f32(float %.sroa.57.2, float %.0119128.i116.i, float %i.nt)
  %i.nv = fmul float %.sroa.66.2, %.0119128.i116.i
  %i.nw = fmul float %.1123142.i113.i, %.0119128.i116.i
  %i.nx = fmul float %.sroa.39.2, %i.ns
  %i.ny = insertelement <2 x float> poison, float %.0124139.i114.i, i64 0
  %i.nz = insertelement <2 x float> %i.ny, float %.sroa.33.2, i64 1 ; 2 uses
  %i.oa = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nx, i64 1
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> %i.nq, <2 x float> %i.ob) ; 6 uses
  %i.od = fneg float %i.nu
  %i.oe = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %.sroa.39.2, i64 1
  %i.og = fmul <2 x float> %i.nq, %i.of
  %i.oh = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> %i.oh, <2 x float> %i.og) ; 5 uses
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ok = tail call float @llvm.fmuladd.f32(float %.sroa.57.2, float %.0118129.i115.i, float %i.nv)
  %i.ol = extractelement <2 x float> %i.oi, i64 0
  %i.om = fmul float %i.ol, %i.ok
  %i.on = extractelement <2 x float> %i.oc, i64 0
  %i.oo = fmul float %i.on, %i.od
  %i.op = insertelement <2 x float> poison, float %i.om, i64 0
  %i.oq = insertelement <2 x float> %i.op, float %i.oo, i64 1
  %i.or = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.oj, <2 x float> %i.oq)
  %i.os = shufflevector <2 x float> %i.oi, <2 x float> %i.oc, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ot = shufflevector <2 x float> %i.nq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ou = shufflevector <4 x float> %i.os, <4 x float> %i.ot, <4 x i32> <i32 0, i32 5, i32 2, i32 4> ; 2 uses
  %i.ov = fmul <4 x float> %i.ou, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.ow = shufflevector <2 x float> %i.oc, <2 x float> %i.oi, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> %i.ou, <4 x i32> <i32 0, i32 7, i32 2, i32 5>
  %i.oy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.lz, <4 x float> %i.ov)
  %10 = load <4 x float>, ptr %i.r, align 4
  %i.oz = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.pa = fneg float %i.oz
  %i.pb = shufflevector <2 x float> %i.oc, <2 x float> %i.oj, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.pc = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.oz, i64 1
  %i.pe = fmul <2 x float> %i.pb, %i.pd
  %i.pf = shufflevector <2 x float> %i.oi, <2 x float> %i.oc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pg = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ph = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.pg, <2 x float> %i.pe)
  store <2 x float> %i.ph, ptr %i.r, align 4, !tbaa !27
  %11 = load <4 x float>, ptr %i.u, align 4
  %i.pi = load float, ptr %i.v, align 4, !tbaa !27 ; 2 uses
  %i.pj = fneg float %i.pi
  %i.pk = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pl = insertelement <2 x float> %i.pk, float %i.pi, i64 1
  %i.pm = fmul <2 x float> %i.pb, %i.pl
  %i.pn = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.pn, <2 x float> %i.pm)
  store <2 x float> %i.po, ptr %i.u, align 4, !tbaa !27
  %i.pp = load float, ptr %i.x, align 4, !tbaa !27
  %i.pq = load float, ptr %i.y, align 4, !tbaa !27 ; 2 uses
  %i.pr = fneg float %i.pq
  %i.ps = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.pt = insertelement <2 x float> %i.ps, float %i.pq, i64 1
  %i.pu = fmul <2 x float> %i.pb, %i.pt
  %i.pv = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.pw = shufflevector <2 x float> %i.pv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.px = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.pw, <2 x float> %i.pu)
  store <2 x float> %i.px, ptr %i.x, align 4, !tbaa !27
  %12 = load <4 x float>, ptr %i.z, align 4
  %i.py = load float, ptr %i.aa, align 4, !tbaa !27 ; 2 uses
  %i.pz = fneg float %i.py
  %i.qa = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qb = insertelement <2 x float> %i.qa, float %i.py, i64 1
  %i.qc = fmul <2 x float> %i.nq, %i.qb
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qe = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.qe, <2 x float> %i.qd)
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qg, ptr %i.z, align 4, !tbaa !27
  %13 = load <4 x float>, ptr %i.ac, align 4
  %i.qh = load float, ptr %i.ad, align 4, !tbaa !27 ; 2 uses
  %i.qi = fneg float %i.qh
  %i.qj = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qk = insertelement <2 x float> %i.qj, float %i.qh, i64 1
  %i.ql = fmul <2 x float> %i.nq, %i.qk
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qn = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.qn, <2 x float> %i.qm)
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qp, ptr %i.ac, align 4, !tbaa !27
  %i.qq = load float, ptr %i.af, align 4, !tbaa !27
  %i.qr = load float, ptr %i.ag, align 4, !tbaa !27 ; 2 uses
  %i.qs = fneg float %i.qr
  %i.qt = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.qu = insertelement <2 x float> %i.qt, float %i.qr, i64 1
  %i.qv = fmul <2 x float> %i.nq, %i.qu
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qx = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.qy, <2 x float> %i.qw)
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ra, ptr %i.af, align 4, !tbaa !27
  br label %bb.g

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.rb = insertelement <2 x float> poison, float %.sroa.66.2, i64 0
  %i.rc = insertelement <2 x float> %i.rb, float %.sroa.33.2, i64 1 ; 2 uses
  %i.rd = shufflevector <2 x float> %i.ly, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  br i1 %.1130.i87.i, label %bb.g, label %.loopexit130.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.rf = phi <2 x float> [ %i.or, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.rc, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.rg = phi <4 x float> [ %i.oy, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.re, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 6 uses
  %i.rh = extractelement <4 x float> %i.rg, i64 3 ; 3 uses
  %i.ri = tail call noundef float @llvm.fabs.f32(float %i.rh)
  %i.rj = fcmp one float %i.rh, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %i.rj, float %i.ri, float 0.000000e+00 ; 2 uses
  %i.rk = extractelement <4 x float> %i.rg, i64 1
  %i.rl = tail call noundef float @llvm.fabs.f32(float %i.rk) ; 2 uses
  %i.rm = fcmp olt float %.sroa.speculated28.i119.i, %i.rl
  %.sroa.speculated24.i120.i = select i1 %i.rm, float %i.rl, float %.sroa.speculated28.i119.i ; 2 uses
  %i.rn = extractelement <4 x float> %i.rg, i64 2 ; 2 uses
  %i.ro = tail call noundef float @llvm.fabs.f32(float %i.rn) ; 2 uses
  %i.rp = fcmp olt float %.sroa.speculated24.i120.i, %i.ro
  %.sroa.speculated20.i121.i = select i1 %i.rp, float %i.ro, float %.sroa.speculated24.i120.i ; 2 uses
  %i.rq = extractelement <4 x float> %i.rg, i64 0
  %i.rr = tail call noundef float @llvm.fabs.f32(float %i.rq) ; 2 uses
  %i.rs = fcmp olt float %.sroa.speculated20.i121.i, %i.rr
  %.sroa.speculated12.i123.i = select i1 %i.rs, float %i.rr, float %.sroa.speculated20.i121.i
  %i.rt = fcmp ogt float %.sroa.speculated12.i123.i, %i.au
  %i.ru = icmp samesign ult i32 %.082.i, 19
  %i.rv = select i1 %i.rt, i1 %i.ru, i1 false
  %i.rw = extractelement <2 x float> %i.rf, i64 0
  %i.rx = extractelement <2 x float> %i.rf, i64 1
  %i.ry = shufflevector <4 x float> %i.rg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.rz = shufflevector <4 x float> %i.rg, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  br i1 %i.rv, label %.preheader129.i, label %.loopexit130.i, !llvm.loop !46

.loopexit130.i:                                   ; preds = %bb.g, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %bb.a
  %.sroa.0.0 = phi float [ %i.a, %bb.a ], [ %.sroa.0.3, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ], [ %.sroa.0.3, %bb.g ] ; 3 uses
  %i.sa = phi <2 x float> [ %i.ax, %bb.a ], [ %i.rf, %bb.g ], [ %i.rc, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  store float %.sroa.0.0, ptr %2, align 4, !tbaa !41
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.sd = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.sd, ptr %i.sb, align 4, !tbaa !27
  %i.se = fcmp olt float %.sroa.0.0, 0.000000e+00
  %i.sf = extractelement <2 x float> %i.sa, i64 1
  br i1 %i.se, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.sg = fneg float %.sroa.0.0
  store float %i.sg, ptr %2, align 4, !tbaa !27
  %i.sh = load float, ptr %1, align 4, !tbaa !27
  %i.si = fneg float %i.sh
  store float %i.si, ptr %1, align 4, !tbaa !27
  %i.sj = load float, ptr %i.t, align 4, !tbaa !27
  %i.sk = fneg float %i.sj
  store float %i.sk, ptr %i.t, align 4, !tbaa !27
  %i.sl = load float, ptr %i.w, align 4, !tbaa !27
  %i.sm = fneg float %i.sl
  store float %i.sm, ptr %i.w, align 4, !tbaa !27
  %.pre153.i = load float, ptr %i.sb, align 4, !tbaa !27
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.sn = phi float [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.sf, %.loopexit130.i ] ; 2 uses
  %i.so = fcmp olt float %i.sn, 0.000000e+00
  br i1 %i.so, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.sp = fneg float %i.sn
  store float %i.sp, ptr %i.sb, align 4, !tbaa !27
  %i.sq = load float, ptr %i.r, align 4, !tbaa !27
  %i.sr = fneg float %i.sq
  store float %i.sr, ptr %i.r, align 4, !tbaa !27
  %i.ss = load float, ptr %i.u, align 4, !tbaa !27
  %i.st = fneg float %i.ss
  store float %i.st, ptr %i.u, align 4, !tbaa !27
  %i.su = load float, ptr %i.x, align 4, !tbaa !27
  %i.sv = fneg float %i.su
  store float %i.sv, ptr %i.x, align 4, !tbaa !27
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.sw = load float, ptr %i.sc, align 4, !tbaa !27 ; 2 uses
  %i.sx = fcmp olt float %i.sw, 0.000000e+00
  br i1 %i.sx, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.sy = fneg float %i.sw
  store float %i.sy, ptr %i.sc, align 4, !tbaa !27
  %i.sz = load float, ptr %i.s, align 4, !tbaa !27
  %i.ta = fneg float %i.sz
  store float %i.ta, ptr %i.s, align 4, !tbaa !27
  %i.tb = load float, ptr %i.v, align 4, !tbaa !27
  %i.tc = fneg float %i.tb
  store float %i.tc, ptr %i.v, align 4, !tbaa !27
  %i.td = load float, ptr %i.y, align 4, !tbaa !27
  %i.te = fneg float %i.td
  store float %i.te, ptr %i.y, align 4, !tbaa !27
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.tf = load float, ptr %2, align 4, !tbaa !27  ; 2 uses
  %i.tg = load float, ptr %i.sb, align 4, !tbaa !27 ; 3 uses
  %i.th = fcmp olt float %i.tf, %i.tg
  br i1 %i.th, label %bb.i, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.j, %.lr.ph.1145.i
  %i.ti = phi float [ %.pre, %bb.j ], [ %i.uj, %.lr.ph.1145.i ] ; 2 uses
  %i.tj = load float, ptr %2, align 4, !tbaa !27  ; 2 uses
  %i.tk = fcmp olt float %i.tj, %i.ti
  br i1 %i.tk, label %bb.h, label %._crit_edge.1.i

bb.h:                                             ; preds = %.lr.ph.preheader.1.i
  store float %i.ti, ptr %2, align 4, !tbaa !27
  store float %i.tj, ptr %i.sb, align 4, !tbaa !27
  %i.tl = load <2 x float>, ptr %1, align 4, !tbaa !27
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tm, ptr %1, align 4, !tbaa !27
  %i.tn = load <2 x float>, ptr %i.t, align 4, !tbaa !27
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.to, ptr %i.t, align 4, !tbaa !27
  %i.tp = load <2 x float>, ptr %i.w, align 4, !tbaa !27
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tq, ptr %i.w, align 4, !tbaa !27
  %i.tr = load <2 x float>, ptr %3, align 4, !tbaa !27
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ts, ptr %3, align 4, !tbaa !27
  %i.tt = load <2 x float>, ptr %i.ab, align 4, !tbaa !27
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tu, ptr %i.ab, align 4, !tbaa !27
  %i.tv = load <2 x float>, ptr %i.ae, align 4, !tbaa !27
  %i.tw = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tw, ptr %i.ae, align 4, !tbaa !27
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %bb.h, %.lr.ph.preheader.1.i
  br i1 %5, label %bb.k, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIfEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

bb.i:                                             ; preds = %.lr.ph.preheader.i
  store float %i.tg, ptr %2, align 4, !tbaa !27
  store float %i.tf, ptr %i.sb, align 4, !tbaa !27
  %i.tx = load <2 x float>, ptr %1, align 4, !tbaa !27
  %i.ty = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ty, ptr %1, align 4, !tbaa !27
  %i.tz = load <2 x float>, ptr %i.t, align 4, !tbaa !27
  %i.ua = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ua, ptr %i.t, align 4, !tbaa !27
  %i.ub = load <2 x float>, ptr %i.w, align 4, !tbaa !27
  %i.uc = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.uc, ptr %i.w, align 4, !tbaa !27
  %i.ud = load <2 x float>, ptr %3, align 4, !tbaa !27
  %i.ue = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ue, ptr %3, align 4, !tbaa !27
  %i.uf = load <2 x float>, ptr %i.ab, align 4, !tbaa !27
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ug, ptr %i.ab, align 4, !tbaa !27
  %i.uh = load <2 x float>, ptr %i.ae, align 4, !tbaa !27
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ui, ptr %i.ae, align 4, !tbaa !27
  %.pre154.i = load float, ptr %i.sb, align 4, !tbaa !27
  br label %.lr.ph.1145.i

.lr.ph.1145.i:                                    ; preds = %bb.i, %.lr.ph.preheader.i
  %i.uj = phi float [ %i.tg, %.lr.ph.preheader.i ], [ %.pre154.i, %bb.i ] ; 3 uses
  %i.uk = load float, ptr %i.sc, align 4, !tbaa !27 ; 2 uses
  %i.ul = fcmp olt float %i.uj, %i.uk
  br i1 %i.ul, label %bb.j, label %.lr.ph.preheader.1.i

bb.j:                                             ; preds = %.lr.ph.1145.i
  store float %i.uk, ptr %i.sb, align 4, !tbaa !27
  store float %i.uj, ptr %i.sc, align 4, !tbaa !27
  %i.um = load <2 x float>, ptr %i.r, align 4, !tbaa !27
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.un, ptr %i.r, align 4, !tbaa !27
  %i.uo = load <2 x float>, ptr %i.u, align 4, !tbaa !27
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.up, ptr %i.u, align 4, !tbaa !27
  %i.uq = load <2 x float>, ptr %i.x, align 4, !tbaa !27
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ur, ptr %i.x, align 4, !tbaa !27
  %i.us = load <2 x float>, ptr %i.z, align 4, !tbaa !27
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ut, ptr %i.z, align 4, !tbaa !27
end_hunk_1
