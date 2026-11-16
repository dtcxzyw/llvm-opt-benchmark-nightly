Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImathMatrixAlgo?download=true
inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_232procrustesRotationAndTranslationIfEENS_8Matrix44IdEEPKNS_4Vec3IT_EES7_PKS4_mb:bb.a
  %i.lk = fsub double %i.lj, %i.li                ; 2 uses
  %i.ll = fadd double %i.lg, %i.lk                ; 3 uses
  %i.lm = fsub double %i.ll, %i.lg
  %i.ln = fsub double %i.lm, %i.lk
  %i.lo = load <2 x double>, ptr %i.bx, align 16, !tbaa !9
  %i.lp = fmul <2 x double> %i.hr, %i.lo          ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  %i.lr = fsub double %i.lq, %i.ln                ; 2 uses
  %i.ls = fadd double %i.ll, %i.lr                ; 3 uses
  %i.lt = fsub double %i.ls, %i.ll
  %i.lu = fsub double %i.lt, %i.lr
  %i.lv = extractelement <2 x double> %i.lp, i64 1
  %i.lw = fsub double %i.lv, %i.lu                ; 2 uses
  %i.lx = fadd double %i.ls, %i.lw                ; 2 uses
  %i.ly = fsub double %i.lx, %i.ls
  %i.lz = fsub double %i.ly, %i.lw
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.mb = load double, ptr %i.ma, align 16, !tbaa !9
  %i.mc = fmul double %i.ii, %i.mb
  %i.md = fsub double %i.mc, %i.lz
  %i.me = fadd double %i.lx, %i.md
  %i.mf = fdiv double %i.me, %.sroa.0110.2
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit224
  %.080 = phi double [ %i.mf, %.loopexit ], [ 1.000000e+00, %.loopexit224 ] ; 7 uses
  %i.mg = extractelement <2 x double> %i.bs, i64 0
  %i.mh = fmul double %i.mg, %.080                ; 2 uses
  %i.mi = extractelement <2 x double> %i.bs, i64 1
  %i.mj = fmul double %i.mi, %.080                ; 2 uses
  %i.mk = extractelement <2 x double> %i.bu, i64 1
  %i.ml = fmul double %i.mk, %.080                ; 2 uses
  %i.mm = extractelement <2 x double> %i.hr, i64 1 ; 2 uses
  %i.mn = fmul double %i.mm, %i.mj
  %i.mo = extractelement <2 x double> %i.hr, i64 0 ; 2 uses
  %i.mp = call double @llvm.fmuladd.f64(double %i.mh, double %i.mo, double %i.mn)
  %i.mq = call double @llvm.fmuladd.f64(double %i.ml, double %i.ii, double %i.mp)
  %i.mr = extractelement <2 x double> %i.bu, i64 0
  %i.ms = fsub double %i.mr, %i.mq
  %i.mt = insertelement <2 x double> poison, double %.080, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mv = fmul <2 x double> %i.gz, %i.mu
  %i.mw = fmul double %i.mo, %.080
  %i.mx = fmul <2 x double> %i.hn, %i.mu
  %i.my = fmul double %i.mm, %.080
  %i.mz = fmul <2 x double> %i.if, %i.mu
  %i.na = fmul double %i.ii, %.080
  store <2 x double> %i.mv, ptr %0, align 8, !tbaa !9
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.mw, ptr %i.nb, align 8, !tbaa !9
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.nc, align 8, !tbaa !9
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.mx, ptr %i.nd, align 8, !tbaa !9
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.my, ptr %i.ne, align 8, !tbaa !9
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.nf, align 8, !tbaa !9
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.mz, ptr %i.ng, align 8, !tbaa !9
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.na, ptr %i.nh, align 8, !tbaa !9
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ni, align 8, !tbaa !9
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nk = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nm = fmul <2 x double> %i.hn, %i.nl
  %i.nn = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> %i.gz, <2 x double> %i.nm)
  %i.nq = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.if, <2 x double> %i.np)
  %i.nt = fsub <2 x double> %i.bt, %i.ns
  store <2 x double> %i.nt, ptr %i.nj, align 8, !tbaa !9
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ms, ptr %i.nu, align 8, !tbaa !9
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %i.nv, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.i

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
  %i.c = load double, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !9 ; 4 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !9 ; 2 uses
  store double 1.000000e+00, ptr %1, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !9
  store double 1.000000e+00, ptr %3, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !9
  %i.z = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.aa = fcmp one double %i.g, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %i.aa, double %i.z, double 0.000000e+00 ; 2 uses
  %i.ab = tail call noundef double @llvm.fabs.f64(double %i.c) ; 2 uses
  %i.ac = fcmp olt double %.sroa.speculated28.i.i, %i.ab
  %.sroa.speculated24.i.i = select i1 %i.ac, double %i.ab, double %.sroa.speculated28.i.i ; 2 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.ae = fcmp olt double %.sroa.speculated24.i.i, %i.ad
  %.sroa.speculated20.i.i = select i1 %i.ae, double %i.ad, double %.sroa.speculated24.i.i ; 2 uses
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.ag = fcmp olt double %.sroa.speculated20.i.i, %i.af
  %.sroa.speculated16.i.i = select i1 %i.ag, double %i.af, double %.sroa.speculated20.i.i ; 2 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.m) ; 2 uses
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
  %.sroa.66.1 = phi double [ %i.q, %.preheader129.i ], [ %i.rp, %bb.h ] ; 6 uses
  %.sroa.57.0 = phi double [ %i.o, %.preheader129.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.39.0 = phi double [ %i.l, %.preheader129.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.0.1 = phi double [ %i.f, %.preheader129.i ], [ %i.rq, %bb.h ] ; 5 uses
  %i.ay = phi double [ %i.m, %.preheader129.i ], [ %i.rj, %bb.h ] ; 3 uses
  %i.az = phi double [ %i.c, %.preheader129.i ], [ %i.rd, %bb.h ] ; 2 uses
  %i.ba = phi double [ %i.i, %.preheader129.i ], [ %i.rg, %bb.h ] ; 3 uses
  %i.bb = phi double [ %i.g, %.preheader129.i ], [ %i.ra, %bb.h ] ; 5 uses
  %.082.i = phi i32 [ 0, %.preheader129.i ], [ %i.be, %bb.h ] ; 2 uses
  %i.bc = phi <2 x double> [ %i.aw, %.preheader129.i ], [ %i.rr, %bb.h ] ; 2 uses
  %i.bd = phi <2 x double> [ %i.ax, %.preheader129.i ], [ %i.rs, %bb.h ] ; 3 uses
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
  %i.br = fmul double %i.bm, %.0122.i.i           ; 4 uses
  %i.bs = fadd double %i.ba, %i.bb
  %6 = fsub double %i.bf, %.sroa.0.1
  %i.bt = fmul double %6, %i.br
  %7 = tail call double @llvm.fmuladd.f64(double %.0122.i.i, double %i.bs, double %i.bt) ; 2 uses
  %8 = fneg double %i.bf
  %9 = fmul double %.0122.i.i, %8
  %10 = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bb, double %9)
  %11 = fmul double %10, 2.000000e+00             ; 2 uses
  %12 = tail call noundef double @llvm.fabs.f64(double %11)
  %13 = tail call noundef double @llvm.fabs.f64(double %7)
  %i.bu = fmul double %4, %13
  %i.bv = fcmp ugt double %12, %i.bu
  br i1 %i.bv, label %.thread.i.i, label %bb.d

.thread134.i.i:                                   ; preds = %bb.b
  %i.bw = fsub double %i.bf, %.sroa.0.1           ; 2 uses
  %i.bx = fadd double %i.ba, %i.bb                ; 2 uses
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.bw)
  %i.ca = fmul double %4, %i.bz
  %i.cb = fcmp ugt double %i.by, %i.ca
  br i1 %i.cb, label %.thread.i.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.c
  %.0120146.i.i = phi double [ %i.bw, %.thread134.i.i ], [ %7, %bb.c ]
  %.0121145.i.i = phi double [ %i.bx, %.thread134.i.i ], [ %11, %bb.c ]
  %.1123144.i.i = phi double [ 0.000000e+00, %.thread134.i.i ], [ %.0122.i.i, %bb.c ]
  %.0124141.i.i = phi double [ 1.000000e+00, %.thread134.i.i ], [ %i.br, %bb.c ]
  %i.cc = fdiv double %.0120146.i.i, %.0121145.i.i ; 4 uses
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double 1.000000e+00)
  %sqrt133.i.i = tail call double @llvm.sqrt.f64(double %i.ce)
  %i.cf = fadd double %i.cd, %sqrt133.i.i
  %i.cg = fdiv double 1.000000e+00, %i.cf         ; 2 uses
  %i.ch = fcmp olt double %i.cc, 0.000000e+00
  %i.ci = fneg double %i.cg
  %.0117.i.i = select i1 %i.ch, double %i.ci, double %i.cg ; 3 uses
  %i.cj = tail call double @llvm.fmuladd.f64(double %.0117.i.i, double %.0117.i.i, double 1.000000e+00)
  %sqrt132.i.i = tail call double @llvm.sqrt.f64(double %i.cj)
  %i.ck = fdiv double 1.000000e+00, %sqrt132.i.i  ; 3 uses
  %i.cl = fmul double %.0117.i.i, %i.ck           ; 2 uses
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.ck, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.c
  %.1123142.i.i = phi double [ %.1123144.i.i, %.thread.i.i ], [ %.0122.i.i, %bb.c ] ; 2 uses
  %.0124139.i.i = phi double [ %.0124141.i.i, %.thread.i.i ], [ %i.br, %bb.c ] ; 2 uses
  %.0118129.i.i = phi double [ %i.cl, %.thread.i.i ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.0119128.i.i = phi double [ %i.ck, %.thread.i.i ], [ 1.000000e+00, %bb.c ]
  %i.co = phi <2 x double> [ %i.cn, %.thread.i.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.c ] ; 8 uses
  %i.cp = insertelement <2 x double> poison, double %.1123142.i.i, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %.sroa.57.0, i64 1
  %i.cr = insertelement <2 x double> poison, double %.0119128.i.i, i64 0 ; 2 uses
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul <2 x double> %i.cq, %i.cs
  %i.cu = fneg double %.1123142.i.i
  %i.cv = fneg double %.0118129.i.i
  %i.cw = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.bd, %i.cx
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.cs, <2 x double> %i.cy) ; 2 uses
  %i.da = fneg double %.sroa.39.0
  %i.db = fneg double %.sroa.57.0
  %i.dc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.db, i64 1
  %i.de = insertelement <2 x double> %i.cr, double %.0118129.i.i, i64 1 ; 2 uses
  %i.df = fmul <2 x double> %i.dd, %i.de
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dh = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %.sroa.0.1, i64 1
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.di, <2 x double> %i.dg) ; 2 uses
  %i.dk = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = insertelement <2 x double> %i.bd, double %i.cu, i64 1
  %i.dm = fmul <2 x double> %i.dk, %i.dl
  %i.dn = insertelement <2 x double> %i.bc, double %.0124139.i.i, i64 1
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.co, <2 x double> %i.dm) ; 5 uses
  %i.dp = load <1 x double>, ptr %1, align 8
  %i.dq = load double, ptr %i.r, align 8, !tbaa !9 ; 2 uses
  %i.dr = fneg double %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dq, i64 1
  %i.du = shufflevector <1 x double> %i.dp, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dv = load <1 x double>, ptr %i.ao, align 8
  %i.dw = load double, ptr %i.s, align 8, !tbaa !9 ; 2 uses
  %i.dx = fneg double %i.dw
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dw, i64 1
  %i.ea = shufflevector <1 x double> %i.dv, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eb = load <1 x double>, ptr %i.ap, align 8
  %i.ec = load double, ptr %i.aq, align 8, !tbaa !9 ; 2 uses
  %i.ed = fneg double %i.ec
  %i.ee = insertelement <2 x double> poison, double %.0118129.i.i, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> poison, double %.0124139.i.i, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ay, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eh, <2 x double> %i.ct) ; 5 uses
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> %i.do, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ek = fneg <2 x double> %i.cz
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> %i.do, <2 x i32> <i32 0, i32 2>
  %i.em = fmul <2 x double> %i.ej, %i.el
  %i.en = shufflevector <2 x double> %i.do, <2 x double> %i.ei, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eo = shufflevector <2 x double> %i.cz, <2 x double> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.eo, <2 x double> %i.em) ; 2 uses
  %i.eq = insertelement <2 x double> poison, double %i.da, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %.sroa.39.0, i64 1
  %i.es = fmul <2 x double> %i.ej, %i.er
  %i.et = insertelement <2 x double> poison, double %i.az, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.eu, <2 x double> %i.es) ; 2 uses
  %i.ew = shufflevector <2 x double> %i.ei, <2 x double> %i.do, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ex = fmul <2 x double> %i.ew, %i.dt
  %i.ey = shufflevector <2 x double> %i.do, <2 x double> %i.ei, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.du, <2 x double> %i.ex)
  store <2 x double> %i.ez, ptr %1, align 8, !tbaa !9
  %i.fa = fmul <2 x double> %i.ew, %i.dz
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ea, <2 x double> %i.fa)
  store <2 x double> %i.fb, ptr %i.ao, align 8, !tbaa !9
  %i.fc = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.ec, i64 1
  %i.fe = fmul <2 x double> %i.ew, %i.fd
  %i.ff = shufflevector <1 x double> %i.eb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ff, <2 x double> %i.fe)
  store <2 x double> %i.fg, ptr %i.ap, align 8, !tbaa !9
  %i.fh = load <1 x double>, ptr %3, align 8
  %i.fi = load double, ptr %i.v, align 8, !tbaa !9 ; 2 uses
  %i.fj = fneg double %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fi, i64 1
  %i.fm = fmul <2 x double> %i.co, %i.fl
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = shufflevector <1 x double> %i.fh, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.fo, <2 x double> %i.fn)
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fq, ptr %3, align 8, !tbaa !9
  %i.fr = load <1 x double>, ptr %i.ar, align 8
  %i.fs = load double, ptr %i.w, align 8, !tbaa !9 ; 2 uses
  %i.ft = fneg double %i.fs
  %i.fu = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fs, i64 1
  %i.fw = fmul <2 x double> %i.co, %i.fv
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = shufflevector <1 x double> %i.fr, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.fy, <2 x double> %i.fx)
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ga, ptr %i.ar, align 8, !tbaa !9
  %i.gb = load <1 x double>, ptr %i.as, align 8
  %i.gc = load double, ptr %i.at, align 8, !tbaa !9 ; 2 uses
  %i.gd = fneg double %i.gc
  %i.ge = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gc, i64 1
  %i.gg = fmul <2 x double> %i.co, %i.gf
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = shufflevector <1 x double> %i.gb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.gi, <2 x double> %i.gh)
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gk, ptr %i.as, align 8, !tbaa !9
  %i.gl = extractelement <2 x double> %i.dj, i64 0
  %i.gm = extractelement <2 x double> %i.ei, i64 1
  %i.gn = extractelement <2 x double> %i.ep, i64 0
  %i.go = extractelement <2 x double> %i.ep, i64 1
  %i.gp = extractelement <2 x double> %i.ev, i64 0
  %i.gq = extractelement <2 x double> %i.ev, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.d
  %.sroa.57.1 = phi double [ %i.gm, %bb.d ], [ %.sroa.57.0, %.thread134.i.i ] ; 3 uses
  %.sroa.39.1 = phi double [ %i.gq, %bb.d ], [ %.sroa.39.0, %.thread134.i.i ] ; 4 uses
  %.sroa.33.2 = phi double [ %i.go, %bb.d ], [ %i.bf, %.thread134.i.i ] ; 5 uses
  %.sroa.0.2 = phi double [ %i.gn, %bb.d ], [ %.sroa.0.1, %.thread134.i.i ] ; 5 uses
  %i.gr = phi double [ %i.gl, %bb.d ], [ %i.ay, %.thread134.i.i ] ; 4 uses
  %i.gs = phi double [ %i.gp, %bb.d ], [ %i.az, %.thread134.i.i ] ; 5 uses
  %.1130.i.i = phi i1 [ true, %bb.d ], [ false, %.thread134.i.i ]
  %i.gt = fadd double %.sroa.66.1, %.sroa.0.2     ; 2 uses
  %i.gu = fsub double %i.gs, %i.gr                ; 2 uses
  %i.gv = tail call noundef double @llvm.fabs.f64(double %i.gu)
  %i.gw = tail call noundef double @llvm.fabs.f64(double %i.gt)
  %i.gx = fmul double %4, %i.gw
  %i.gy = fcmp ugt double %i.gv, %i.gx
  br i1 %i.gy, label %bb.e, label %.thread134.i85.i

bb.e:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.gz = fdiv double %i.gt, %i.gu                ; 4 uses
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.gz, double 1.000000e+00)
  %sqrt.i100.i = tail call double @llvm.sqrt.f64(double %i.ha)
  %i.hb = fdiv double 1.000000e+00, %sqrt.i100.i  ; 2 uses
  %i.hc = fcmp olt double %i.gz, 0.000000e+00
  %i.hd = fneg double %i.hb
  %.0122.i101.i = select i1 %i.hc, double %i.hd, double %i.hb ; 5 uses
  %i.he = fmul double %i.gz, %.0122.i101.i        ; 4 uses
  %i.hf = fadd double %i.gr, %i.gs
  %14 = fsub double %.sroa.66.1, %.sroa.0.2
  %i.hg = fmul double %14, %i.he
  %15 = tail call double @llvm.fmuladd.f64(double %.0122.i101.i, double %i.hf, double %i.hg) ; 2 uses
  %16 = fneg double %.sroa.66.1
  %17 = fmul double %.0122.i101.i, %16
  %18 = tail call double @llvm.fmuladd.f64(double %i.he, double %i.gs, double %17)
  %19 = fmul double %18, 2.000000e+00             ; 2 uses
  %20 = tail call noundef double @llvm.fabs.f64(double %19)
  %21 = tail call noundef double @llvm.fabs.f64(double %15)
  %i.hh = fmul double %4, %21
  %i.hi = fcmp ugt double %20, %i.hh
  br i1 %i.hi, label %.thread.i88.i, label %bb.f

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.hj = fsub double %.sroa.66.1, %.sroa.0.2     ; 2 uses
  %i.hk = fadd double %i.gr, %i.gs                ; 2 uses
  %i.hl = tail call noundef double @llvm.fabs.f64(double %i.hk)
  %i.hm = tail call noundef double @llvm.fabs.f64(double %i.hj)
  %i.hn = fmul double %4, %i.hm
  %i.ho = fcmp ugt double %i.hl, %i.hn
  %i.hp = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %.sroa.66.1, i64 1
  br i1 %i.ho, label %.thread.i88.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.e
  %.0120146.i89.i = phi double [ %i.hj, %.thread134.i85.i ], [ %15, %bb.e ]
  %.0121145.i90.i = phi double [ %i.hk, %.thread134.i85.i ], [ %19, %bb.e ]
  %.1123144.i91.i = phi double [ 0.000000e+00, %.thread134.i85.i ], [ %.0122.i101.i, %bb.e ]
  %.0124141.i92.i = phi double [ 1.000000e+00, %.thread134.i85.i ], [ %i.he, %bb.e ]
  %i.hr = fdiv double %.0120146.i89.i, %.0121145.i90.i ; 4 uses
  %i.hs = tail call noundef double @llvm.fabs.f64(double %i.hr)
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.hr, double 1.000000e+00)
  %sqrt133.i93.i = tail call double @llvm.sqrt.f64(double %i.ht)
  %i.hu = fadd double %i.hs, %sqrt133.i93.i
  %i.hv = fdiv double 1.000000e+00, %i.hu         ; 2 uses
  %i.hw = fcmp olt double %i.hr, 0.000000e+00
  %i.hx = fneg double %i.hv
  %.0117.i94.i = select i1 %i.hw, double %i.hx, double %i.hv ; 3 uses
  %i.hy = tail call double @llvm.fmuladd.f64(double %.0117.i94.i, double %.0117.i94.i, double 1.000000e+00)
  %sqrt132.i95.i = tail call double @llvm.sqrt.f64(double %i.hy)
  %i.hz = fdiv double 1.000000e+00, %sqrt132.i95.i ; 4 uses
  %i.ia = fmul double %.0117.i94.i, %i.hz         ; 3 uses
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hz, i64 1
  %i.id = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %i.ia, i64 1
  %i.if = fmul double %.sroa.39.1, %i.hz
  br label %bb.f

bb.f:                                             ; preds = %.thread.i88.i, %bb.e
  %.1123142.i96.i = phi double [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.e ] ; 2 uses
  %.0124139.i97.i = phi double [ %.0124141.i92.i, %.thread.i88.i ], [ %i.he, %bb.e ]
  %.0118129.i98.i = phi double [ %i.ia, %.thread.i88.i ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.0119128.i99.i = phi double [ %i.if, %.thread.i88.i ], [ %.sroa.39.1, %bb.e ]
  %i.ig = phi <2 x double> [ %i.ic, %.thread.i88.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.e ] ; 11 uses
  %i.ih = phi <2 x double> [ %i.ie, %.thread.i88.i ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.e ] ; 2 uses
  %i.ii = fneg double %.1123142.i96.i
  %i.ij = fneg double %.0118129.i98.i             ; 2 uses
  %i.ik = insertelement <2 x double> poison, double %.sroa.57.1, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %.sroa.39.1, i64 1
  %i.im = fneg <2 x double> %i.il
  %i.in = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.io = insertelement <2 x double> %i.in, double %.1123142.i96.i, i64 1 ; 2 uses
  %i.ip = insertelement <2 x double> %i.ig, double %i.ij, i64 0
  %i.iq = fmul <2 x double> %i.io, %i.ip
  %i.ir = insertelement <2 x double> %i.io, double %i.ii, i64 1
  %i.is = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.it = fmul <2 x double> %i.ir, %i.is
  %i.iu = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %.0124139.i97.i, i64 1 ; 2 uses
  %i.iw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.is, <2 x double> %i.iq) ; 5 uses
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ig, <2 x double> %i.it) ; 5 uses
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iz = extractelement <2 x double> %i.iw, i64 1
  %i.ja = extractelement <2 x double> %i.ix, i64 1
  %i.jb = insertelement <2 x double> poison, double %.sroa.66.1, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.je = insertelement <2 x double> %i.jd, double %i.ij, i64 0
  %i.jf = fmul <2 x double> %i.jc, %i.je
  %i.jg = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.ih, <2 x double> %i.jf) ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = fneg double %i.jj
  %i.jl = shufflevector <2 x double> %i.iw, <2 x double> %i.ix, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.jm = insertelement <2 x double> %i.ji, double %i.jk, i64 0
  %i.jn = fmul <2 x double> %i.jl, %i.jm
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.iw, <2 x double> %i.jn)
  %i.jp = fmul double %.sroa.57.1, %i.ja
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.iz, double 0.000000e+00, double %i.jp)
  %i.jr = shufflevector <2 x double> %i.iw, <2 x double> %i.ig, <2 x i32> <i32 1, i32 2>
  %i.js = fmul <2 x double> %i.jr, %i.im
  %i.jt = shufflevector <2 x double> %i.ix, <2 x double> %i.ig, <2 x i32> <i32 1, i32 3>
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> zeroinitializer, <2 x double> %i.js)
  %i.jv = tail call double @llvm.fmuladd.f64(double %.0118129.i98.i, double 0.000000e+00, double %.0119128.i99.i)
  %i.jw = load double, ptr %1, align 8, !tbaa !9  ; 2 uses
  %i.jx = load <2 x double>, ptr %i.au, align 8, !tbaa !9 ; 3 uses
  %i.jy = load double, ptr %i.ao, align 8, !tbaa !9
  %i.jz = extractelement <2 x double> %i.jx, i64 0
  %i.ka = fneg double %i.jz
  %i.kb = shufflevector <2 x double> %i.ix, <2 x double> %i.iw, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.kc = insertelement <2 x double> %i.jx, double %i.jw, i64 0
  %i.kd = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.ke = fneg double %i.kd
  %i.kf = load <2 x double>, ptr %i.t, align 8, !tbaa !9 ; 3 uses
  %i.kg = load double, ptr %i.ap, align 8, !tbaa !9
  %i.kh = fneg <2 x double> %i.kf
  %i.ki = shufflevector <2 x double> %i.jx, <2 x double> %i.kh, <2 x i32> <i32 0, i32 2>
  %i.kj = fmul <2 x double> %i.kb, %i.ki
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.kc, <2 x double> %i.kj)
  store <2 x double> %i.kk, ptr %i.au, align 8, !tbaa !9
  %i.kl = insertelement <2 x double> %i.kf, double %i.ke, i64 1
  %i.km = fmul <2 x double> %i.kb, %i.kl
  %i.kn = insertelement <2 x double> %i.kf, double %i.jy, i64 0
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.kn, <2 x double> %i.km)
  store <2 x double> %i.ko, ptr %i.t, align 8, !tbaa !9
  %i.kp = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.kd, i64 1
  %i.kr = fmul <2 x double> %i.jl, %i.kq
  %i.ks = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.kt = insertelement <2 x double> %i.ks, double %i.kg, i64 1
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.kt, <2 x double> %i.kr) ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 0
  store double %i.kv, ptr %1, align 8, !tbaa !9
  %i.kw = extractelement <2 x double> %i.ku, i64 1
  store double %i.kw, ptr %i.u, align 8, !tbaa !9
  %i.kx = load double, ptr %3, align 8, !tbaa !9  ; 2 uses
  %i.ky = load <2 x double>, ptr %i.av, align 8, !tbaa !9 ; 3 uses
  %i.kz = load double, ptr %i.ar, align 8, !tbaa !9
  %i.la = extractelement <2 x double> %i.ky, i64 0
  %i.lb = fneg double %i.la
  %i.lc = insertelement <2 x double> %i.ky, double %i.kx, i64 0
  %i.ld = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.le = fneg double %i.ld
  %i.lf = load <2 x double>, ptr %i.x, align 8, !tbaa !9 ; 3 uses
  %i.lg = load <2 x double>, ptr %i.as, align 8
  %i.lh = fneg <2 x double> %i.lf
  %i.li = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lj = shufflevector <2 x double> %i.ky, <2 x double> %i.lh, <2 x i32> <i32 0, i32 2>
  %i.lk = fmul <2 x double> %i.li, %i.lj
  %i.ll = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.lc, <2 x double> %i.lk)
  store <2 x double> %i.ll, ptr %i.av, align 8, !tbaa !9
  %i.lm = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ln = insertelement <2 x double> %i.lm, double %i.le, i64 0
  %i.lo = fmul <2 x double> %i.ig, %i.ln
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lq = insertelement <2 x double> %i.lf, double %i.kz, i64 0
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.lq, <2 x double> %i.lp)
  store <2 x double> %i.lr, ptr %i.x, align 8, !tbaa !9
  %i.ls = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.ld, i64 1
  %i.lu = fmul <2 x double> %i.ig, %i.lt
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = insertelement <2 x double> %i.lg, double %i.kx, i64 1
  %i.lx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.lw, <2 x double> %i.lv) ; 2 uses
  %i.ly = extractelement <2 x double> %i.lx, i64 1
  store double %i.ly, ptr %3, align 8, !tbaa !9
  %i.lz = extractelement <2 x double> %i.lx, i64 0
  store double %i.lz, ptr %i.y, align 8, !tbaa !9
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.f
  %.sroa.57.2 = phi double [ %i.jq, %bb.f ], [ %.sroa.57.1, %.thread134.i85.i ] ; 5 uses
  %.sroa.39.2 = phi double [ %i.jv, %bb.f ], [ %.sroa.39.1, %.thread134.i85.i ] ; 6 uses
  %.1130.i87.i = phi i1 [ true, %bb.f ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.ma = phi <2 x double> [ %i.ju, %bb.f ], [ zeroinitializer, %.thread134.i85.i ] ; 3 uses
  %i.mb = phi <2 x double> [ %i.jo, %bb.f ], [ %i.hq, %.thread134.i85.i ] ; 5 uses
  %i.mc = extractelement <2 x double> %i.mb, i64 1 ; 6 uses
  %i.md = fadd double %.sroa.33.2, %i.mc          ; 2 uses
  %i.me = fsub double %.sroa.39.2, %.sroa.57.2    ; 2 uses
  %i.mf = tail call noundef double @llvm.fabs.f64(double %i.me)
  %i.mg = tail call noundef double @llvm.fabs.f64(double %i.md)
  %i.mh = fmul double %4, %i.mg
  %i.mi = fcmp ugt double %i.mf, %i.mh
  br i1 %i.mi, label %bb.g, label %.thread134.i102.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.mj = fdiv double %i.md, %i.me                ; 4 uses
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mj, double 1.000000e+00)
  %sqrt.i117.i = tail call double @llvm.sqrt.f64(double %i.mk)
  %i.ml = fdiv double 1.000000e+00, %sqrt.i117.i  ; 2 uses
  %i.mm = fcmp olt double %i.mj, 0.000000e+00
  %i.mn = fneg double %i.ml
  %.0122.i118.i = select i1 %i.mm, double %i.mn, double %i.ml ; 5 uses
  %i.mo = fmul double %i.mj, %.0122.i118.i        ; 4 uses
  %i.mp = fadd double %.sroa.57.2, %.sroa.39.2
  %22 = fsub double %i.mc, %.sroa.33.2
  %i.mq = fmul double %22, %i.mo
  %23 = tail call double @llvm.fmuladd.f64(double %.0122.i118.i, double %i.mp, double %i.mq) ; 2 uses
  %24 = fneg double %i.mc
  %25 = fmul double %.0122.i118.i, %24
  %26 = tail call double @llvm.fmuladd.f64(double %i.mo, double %.sroa.39.2, double %25)
  %27 = fmul double %26, 2.000000e+00             ; 2 uses
  %28 = tail call noundef double @llvm.fabs.f64(double %27)
  %29 = tail call noundef double @llvm.fabs.f64(double %23)
  %i.mr = fmul double %4, %29
  %i.ms = fcmp ugt double %28, %i.mr
  br i1 %i.ms, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.mt = fsub double %i.mc, %.sroa.33.2          ; 2 uses
  %i.mu = fadd double %.sroa.57.2, %.sroa.39.2    ; 2 uses
  %i.mv = tail call noundef double @llvm.fabs.f64(double %i.mu)
  %i.mw = tail call noundef double @llvm.fabs.f64(double %i.mt)
  %i.mx = fmul double %4, %i.mw
  %i.my = fcmp ugt double %i.mv, %i.mx
  br i1 %i.my, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.g
  %.0120146.i106.i = phi double [ %i.mt, %.thread134.i102.i ], [ %23, %bb.g ]
  %.0121145.i107.i = phi double [ %i.mu, %.thread134.i102.i ], [ %27, %bb.g ]
  %.1123144.i108.i = phi double [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.g ]
  %.0124141.i109.i = phi double [ 1.000000e+00, %.thread134.i102.i ], [ %i.mo, %bb.g ]
  %i.mz = fdiv double %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.na = tail call noundef double @llvm.fabs.f64(double %i.mz)
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.mz, double 1.000000e+00)
  %sqrt133.i110.i = tail call double @llvm.sqrt.f64(double %i.nb)
  %i.nc = fadd double %i.na, %sqrt133.i110.i
  %i.nd = fdiv double 1.000000e+00, %i.nc         ; 2 uses
  %i.ne = fcmp olt double %i.mz, 0.000000e+00
  %i.nf = fneg double %i.nd
  %.0117.i111.i = select i1 %i.ne, double %i.nf, double %i.nd ; 3 uses
  %i.ng = tail call double @llvm.fmuladd.f64(double %.0117.i111.i, double %.0117.i111.i, double 1.000000e+00)
  %sqrt132.i112.i = tail call double @llvm.sqrt.f64(double %i.ng)
  %i.nh = fdiv double 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.ni = fmul double %.0117.i111.i, %i.nh        ; 2 uses
  %i.nj = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.nh, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.g
  %.1123142.i113.i = phi double [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.g ] ; 2 uses
  %.0124139.i114.i = phi double [ %.0124141.i109.i, %.thread.i105.i ], [ %i.mo, %bb.g ]
  %.0118129.i115.i = phi double [ %i.ni, %.thread.i105.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.0119128.i116.i = phi double [ %i.nh, %.thread.i105.i ], [ 1.000000e+00, %bb.g ] ; 5 uses
  %i.nl = phi <2 x double> [ %i.nk, %.thread.i105.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.g ] ; 8 uses
  %i.nm = fneg double %.1123142.i113.i
  %i.nn = fneg double %.0118129.i115.i            ; 2 uses
  %i.no = fmul double %i.mc, %i.nn
  %i.np = tail call double @llvm.fmuladd.f64(double %.sroa.57.2, double %.0119128.i116.i, double %i.no)
  %i.nq = fmul double %i.mc, %.0119128.i116.i
  %i.nr = fmul double %.1123142.i113.i, %.0119128.i116.i
  %i.ns = fmul double %.sroa.39.2, %i.nn
  %i.nt = insertelement <2 x double> poison, double %.0124139.i114.i, i64 0
  %i.nu = insertelement <2 x double> %i.nt, double %.sroa.33.2, i64 1 ; 2 uses
  %i.nv = insertelement <2 x double> %i.nl, double %.0119128.i116.i, i64 1 ; 3 uses
  %i.nw = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.ns, i64 1
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.nv, <2 x double> %i.nx) ; 4 uses
  %i.nz = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.oa = insertelement <2 x double> %i.nz, double %.sroa.39.2, i64 1
  %i.ob = fmul <2 x double> %i.nv, %i.oa
  %i.oc = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.oc, <2 x double> %i.ob) ; 3 uses
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.of = fneg double %i.np
  %i.og = tail call double @llvm.fmuladd.f64(double %.sroa.57.2, double %.0118129.i115.i, double %i.nq)
  %i.oh = shufflevector <2 x double> %i.od, <2 x double> %i.ny, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.oi = insertelement <2 x double> poison, double %i.og, i64 0
  %i.oj = insertelement <2 x double> %i.oi, double %i.of, i64 1
  %i.ok = fmul <2 x double> %i.oh, %i.oj
  %i.ol = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.oe, <2 x double> %i.ok)
  %i.om = shufflevector <2 x double> %i.nl, <2 x double> %i.ny, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.on = fmul <2 x double> %i.om, splat (double -0.000000e+00)
  %i.oo = insertelement <2 x double> %i.oe, double %.0119128.i116.i, i64 0 ; 2 uses
  %i.op = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.ma, <2 x double> %i.on)
  %i.oq = fmul <2 x double> %i.oo, zeroinitializer
  %i.or = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> %i.ma, <2 x double> %i.oq)
  %i.os = load <1 x double>, ptr %i.r, align 8
  %i.ot = load double, ptr %i.au, align 8, !tbaa !9 ; 2 uses
  %i.ou = fneg double %i.ot
  %i.ov = shufflevector <2 x double> %i.ny, <2 x double> %i.od, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ow = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.ox = insertelement <2 x double> %i.ow, double %i.ot, i64 1
  %i.oy = fmul <2 x double> %i.ov, %i.ox
  %i.oz = shufflevector <1 x double> %i.os, <1 x double> poison, <2 x i32> zeroinitializer
  %i.pa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.oz, <2 x double> %i.oy)
  store <2 x double> %i.pa, ptr %i.r, align 8, !tbaa !9
  %i.pb = load <1 x double>, ptr %i.s, align 8
  %i.pc = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.pd = fneg double %i.pc
  %i.pe = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.pc, i64 1
  %i.pg = fmul <2 x double> %i.ov, %i.pf
  %i.ph = shufflevector <1 x double> %i.pb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.pi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.ph, <2 x double> %i.pg)
  store <2 x double> %i.pi, ptr %i.s, align 8, !tbaa !9
  %i.pj = load <1 x double>, ptr %i.aq, align 8
  %i.pk = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.pl = fneg double %i.pk
  %i.pm = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.pn = insertelement <2 x double> %i.pm, double %i.pk, i64 1
  %i.po = fmul <2 x double> %i.ov, %i.pn
  %i.pp = shufflevector <1 x double> %i.pj, <1 x double> poison, <2 x i32> zeroinitializer
  %i.pq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.pp, <2 x double> %i.po)
  store <2 x double> %i.pq, ptr %i.aq, align 8, !tbaa !9
  %i.pr = load <1 x double>, ptr %i.v, align 8
  %i.ps = load double, ptr %i.av, align 8, !tbaa !9 ; 2 uses
  %i.pt = fneg double %i.ps
  %i.pu = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.pv = insertelement <2 x double> %i.pu, double %i.ps, i64 1
  %i.pw = fmul <2 x double> %i.nl, %i.pv
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.py = shufflevector <1 x double> %i.pr, <1 x double> poison, <2 x i32> zeroinitializer
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.py, <2 x double> %i.px)
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qa, ptr %i.v, align 8, !tbaa !9
  %i.qb = load <1 x double>, ptr %i.w, align 8
  %i.qc = load double, ptr %i.x, align 8, !tbaa !9 ; 2 uses
  %i.qd = fneg double %i.qc
  %i.qe = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qf = insertelement <2 x double> %i.qe, double %i.qc, i64 1
  %i.qg = fmul <2 x double> %i.nl, %i.qf
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qi = shufflevector <1 x double> %i.qb, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.qi, <2 x double> %i.qh)
  %i.qk = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qk, ptr %i.w, align 8, !tbaa !9
  %i.ql = load <1 x double>, ptr %i.at, align 8
  %i.qm = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.qn = fneg double %i.qm
  %i.qo = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qp = insertelement <2 x double> %i.qo, double %i.qm, i64 1
  %i.qq = fmul <2 x double> %i.nl, %i.qp
  %i.qr = shufflevector <2 x double> %i.qq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qs = shufflevector <1 x double> %i.ql, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.qs, <2 x double> %i.qr)
  %i.qu = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.qu, ptr %i.at, align 8, !tbaa !9
  br label %bb.h

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.qv = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qw = insertelement <2 x double> %i.qv, double %.sroa.33.2, i64 1 ; 2 uses
  br i1 %.1130.i87.i, label %bb.h, label %.loopexit130.i.loopexit.split.loop.exit

bb.h:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.qx = phi <2 x double> [ %i.ol, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.qw, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.qy = phi <2 x double> [ %i.or, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ zeroinitializer, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  %i.qz = phi <2 x double> [ %i.op, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.ma, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 4 uses
  %i.ra = extractelement <2 x double> %i.qz, i64 0 ; 3 uses
  %i.rb = tail call noundef double @llvm.fabs.f64(double %i.ra)
  %i.rc = fcmp one double %i.ra, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %i.rc, double %i.rb, double 0.000000e+00 ; 2 uses
  %i.rd = extractelement <2 x double> %i.qy, i64 0 ; 2 uses
  %i.re = tail call noundef double @llvm.fabs.f64(double %i.rd) ; 2 uses
  %i.rf = fcmp olt double %.sroa.speculated28.i119.i, %i.re
  %.sroa.speculated24.i120.i = select i1 %i.rf, double %i.re, double %.sroa.speculated28.i119.i ; 2 uses
  %i.rg = extractelement <2 x double> %i.qz, i64 1 ; 2 uses
  %i.rh = tail call noundef double @llvm.fabs.f64(double %i.rg) ; 2 uses
  %i.ri = fcmp olt double %.sroa.speculated24.i120.i, %i.rh
  %.sroa.speculated20.i121.i = select i1 %i.ri, double %i.rh, double %.sroa.speculated24.i120.i ; 2 uses
  %i.rj = extractelement <2 x double> %i.qy, i64 1 ; 2 uses
  %i.rk = tail call noundef double @llvm.fabs.f64(double %i.rj) ; 2 uses
  %i.rl = fcmp olt double %.sroa.speculated20.i121.i, %i.rk
  %.sroa.speculated12.i123.i = select i1 %i.rl, double %i.rk, double %.sroa.speculated20.i121.i
  %i.rm = fcmp ogt double %.sroa.speculated12.i123.i, %i.al
  %i.rn = icmp samesign ult i32 %.082.i, 19
  %i.ro = select i1 %i.rm, i1 %i.rn, i1 false
  %i.rp = extractelement <2 x double> %i.qx, i64 0
  %i.rq = extractelement <2 x double> %i.mb, i64 0 ; 2 uses
  %i.rr = shufflevector <2 x double> %i.qz, <2 x double> %i.mb, <2 x i32> <i32 1, i32 2>
  %i.rs = shufflevector <2 x double> %i.qx, <2 x double> %i.qz, <2 x i32> <i32 1, i32 2>
  br i1 %i.ro, label %bb.b, label %.loopexit130.i, !llvm.loop !45

.loopexit130.i.loopexit.split.loop.exit:          ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.rt = extractelement <2 x double> %i.mb, i64 0
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.split.loop.exit, %bb.h, %bb.a
  %.sroa.0.0 = phi double [ %i.f, %bb.a ], [ %i.rt, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.rq, %bb.h ] ; 3 uses
  %i.ru = phi <2 x double> [ %i.an, %bb.a ], [ %i.qw, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.qx, %bb.h ] ; 2 uses
  store double %.sroa.0.0, ptr %2, align 8, !tbaa !13
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.rx = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rx, ptr %i.rv, align 8, !tbaa !9
  %i.ry = fcmp olt double %.sroa.0.0, 0.000000e+00
  %i.rz = extractelement <2 x double> %i.ru, i64 1
  br i1 %i.ry, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.sa = fneg double %.sroa.0.0
  store double %i.sa, ptr %2, align 8, !tbaa !9
  %i.sb = load double, ptr %1, align 8, !tbaa !9
  %i.sc = fneg double %i.sb
  store double %i.sc, ptr %1, align 8, !tbaa !9
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sd = load double, ptr %gep.1.i, align 8, !tbaa !9
  %i.se = fneg double %i.sd
  store double %i.se, ptr %gep.1.i, align 8, !tbaa !9
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.sf = load double, ptr %gep.2.i, align 8, !tbaa !9
  %i.sg = fneg double %i.sf
  store double %i.sg, ptr %gep.2.i, align 8, !tbaa !9
  %.pre153.i = load double, ptr %i.rv, align 8, !tbaa !9
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.sh = phi double [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.rz, %.loopexit130.i ] ; 2 uses
  %i.si = fcmp olt double %i.sh, 0.000000e+00
  br i1 %i.si, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.sj = fneg double %i.sh
  store double %i.sj, ptr %i.rv, align 8, !tbaa !9
  %i.sk = load double, ptr %i.r, align 8, !tbaa !9
  %i.sl = fneg double %i.sk
  store double %i.sl, ptr %i.r, align 8, !tbaa !9
  %i.sm = load double, ptr %i.s, align 8, !tbaa !9
  %i.sn = fneg double %i.sm
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdEEbRNS_8Matrix44IT_EEiiS5_S5_S3_:bb.a
  %i.ku = fneg double %i.kt
  %i.kv = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.kt, i64 1
  %i.kx = fmul <2 x double> %i.ba, %i.kw
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kz = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.la, <2 x double> %i.ky) ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 1
  store double %i.lc, ptr %i.kq, align 8, !tbaa !9
  %i.ld = extractelement <2 x double> %i.lb, i64 0
  store double %i.ld, ptr %i.ks, align 8, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.g
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNK9Imath_3_28Matrix44IdE11determinantEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load double, ptr %i.g, align 8, !tbaa !9 ; 2 uses
  %i.j = load double, ptr %i.e, align 8, !tbaa !9 ; 2 uses
  %i.k = load <2 x double>, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !9 ; 3 uses
  %i.m = fneg <2 x double> %i.l
  %i.n = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.o = insertelement <2 x double> %i.n, double %i.j, i64 1
  %i.p = fmul <2 x double> %i.o, %i.m
  %i.q = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x double> %i.q, double %i.i, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.r, <2 x double> %i.p) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !9
  %i.v = fneg double %i.i
  %i.w = load <2 x double>, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = shufflevector <2 x double> %i.s, <2 x double> %i.k, <2 x i32> <i32 1, i32 2>
  %i.aa = fmul <2 x double> %i.y, %i.z
  %i.ab = insertelement <2 x double> %i.w, double %i.j, i64 1
  %i.ac = shufflevector <2 x double> %i.s, <2 x double> %i.l, <2 x i32> <i32 0, i32 2>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ac, <2 x double> %i.aa) ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = extractelement <2 x double> %i.ad, i64 1
  %i.ag = tail call noundef double @llvm.fmuladd.f64(double %i.u, double %i.af, double %i.ae)
  %i.ah = fneg double %i.b
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ag, double 0.000000e+00)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.ai, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !9 ; 2 uses
  %i.al = fcmp une double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !9 ; 2 uses
  %i.ar = load double, ptr %i.am, align 8, !tbaa !9 ; 2 uses
  %i.as = load <2 x double>, ptr %i.an, align 8, !tbaa !9 ; 3 uses
  %i.at = load <2 x double>, ptr %i.ap, align 8, !tbaa !9 ; 3 uses
  %i.au = fneg <2 x double> %i.at
  %i.av = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = insertelement <2 x double> %i.av, double %i.ar, i64 1
  %i.ax = fmul <2 x double> %i.aw, %i.au
  %i.ay = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.az = insertelement <2 x double> %i.ay, double %i.aq, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.az, <2 x double> %i.ax) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !9
  %i.bd = fneg double %i.aq
  %i.be = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = insertelement <2 x double> %i.bf, double %i.bd, i64 1
  %i.bh = shufflevector <2 x double> %i.ba, <2 x double> %i.as, <2 x i32> <i32 1, i32 2>
  %i.bi = fmul <2 x double> %i.bg, %i.bh
  %i.bj = insertelement <2 x double> %i.be, double %i.ar, i64 1
  %i.bk = shufflevector <2 x double> %i.ba, <2 x double> %i.at, <2 x i32> <i32 0, i32 2>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bk, <2 x double> %i.bi) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = extractelement <2 x double> %i.bl, i64 1
  %i.bo = tail call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bn, double %i.bm)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bo, double %.0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi double [ %i.bp, %bb.d ], [ %.0, %bb.c ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9
  %i.bs = fcmp une double %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = load double, ptr %i.bt, align 8, !tbaa !9 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bu, align 8, !tbaa !9 ; 3 uses
  %i.by = load <2 x double>, ptr %i.bv, align 8, !tbaa !9 ; 3 uses
  %i.bz = fneg <2 x double> %i.by
  %i.ca = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x double> %i.ca, double %i.bw, i64 1
  %i.cc = fmul <2 x double> %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !9
  %i.cf = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.cg = insertelement <2 x double> %i.cf, double %i.bw, i64 1
  %i.ch = load <2 x double>, ptr %i.bq, align 8, !tbaa !9 ; 2 uses
  %i.ci = shufflevector <2 x double> %i.by, <2 x double> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ci, <2 x double> %i.cc) ; 2 uses
  %i.ck = fneg <2 x double> %i.ch                 ; 2 uses
  %i.cl = shufflevector <2 x double> %i.cf, <2 x double> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cm = shufflevector <2 x double> %i.cj, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.cn = fmul <2 x double> %i.cl, %i.cm
  %i.co = shufflevector <2 x double> %i.cj, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.co, <2 x double> %i.cn) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = extractelement <2 x double> %i.cp, i64 1
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.ce, double %i.cr, double %i.cq)
  %i.ct = extractelement <2 x double> %i.ck, i64 0
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cs, double %.1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi double [ %i.cu, %bb.f ], [ %.1, %bb.e ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !9 ; 2 uses
  %i.cx = fcmp une double %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = load double, ptr %i.da, align 8, !tbaa !9 ; 2 uses
  %i.dd = load double, ptr %i.cy, align 8, !tbaa !9 ; 2 uses
  %i.de = load <2 x double>, ptr %i.cz, align 8, !tbaa !9 ; 3 uses
  %i.df = load <2 x double>, ptr %i.db, align 8, !tbaa !9 ; 3 uses
  %i.dg = fneg <2 x double> %i.df
  %i.dh = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.di = insertelement <2 x double> %i.dh, double %i.dd, i64 1
  %i.dj = fmul <2 x double> %i.di, %i.dg
  %i.dk = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dl = insertelement <2 x double> %i.dk, double %i.dc, i64 1
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.dl, <2 x double> %i.dj) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9
  %i.dp = fneg double %i.dc
  %i.dq = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x double> %i.dr, double %i.dp, i64 1
  %i.dt = shufflevector <2 x double> %i.dm, <2 x double> %i.de, <2 x i32> <i32 1, i32 2>
  %i.du = fmul <2 x double> %i.ds, %i.dt
  %i.dv = insertelement <2 x double> %i.dq, double %i.dd, i64 1
  %i.dw = shufflevector <2 x double> %i.dm, <2 x double> %i.df, <2 x i32> <i32 0, i32 2>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dw, <2 x double> %i.du) ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  %i.dz = extractelement <2 x double> %i.dx, i64 1
  %i.ea = tail call noundef double @llvm.fmuladd.f64(double %i.do, double %i.dz, double %i.dy)
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ea, double %.2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi double [ %i.eb, %bb.h ], [ %.2, %bb.g ]
  ret double %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN9Imath_3_24Vec3IdEE", !8, i64 0, !8, i64 8, !8, i64 16}
!11 = !{!10, !8, i64 16}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!10, !8, i64 0}
!14 = !{!"float", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN9Imath_3_24Vec3IfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!17 = !{!16, !14, i64 8}
!18 = !{!16, !14, i64 0}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, i1 true, !"_ZNK9Imath_3_28Matrix33IdE10transposedEv"}
!24 = distinct !{!24, !23, !"_ZNK9Imath_3_28Matrix33IdE10transposedEv: argument 0"}
!25 = distinct !{!25, i1 true, !"_ZNK9Imath_3_28Matrix33IdEmlERKS1_"}
!26 = distinct !{!26, !25, !"_ZNK9Imath_3_28Matrix33IdEmlERKS1_: argument 0"}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = !{!24}
!30 = !{!26}
!31 = !{!10, !8, i64 8}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, i1 true, !"_ZNK9Imath_3_28Matrix33IdE10transposedEv"}
!37 = distinct !{!37, !36, !"_ZNK9Imath_3_28Matrix33IdE10transposedEv: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZNK9Imath_3_28Matrix33IdEmlERKS1_"}
!39 = distinct !{!39, !38, !"_ZNK9Imath_3_28Matrix33IdEmlERKS1_: argument 0"}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = !{!37}
!43 = !{!39}
!44 = !{!16, !14, i64 4}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = !{!"_ZTSN9Imath_3_24Vec4IfEE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!49 = !{!48, !14, i64 0}
!50 = !{!48, !14, i64 4}
!51 = !{!48, !14, i64 8}
!52 = !{!48, !14, i64 12}
!53 = distinct !{!53, !12}
!54 = !{!"_ZTSN9Imath_3_24Vec4IdEE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!55 = !{!54, !8, i64 0}
!56 = !{!54, !8, i64 8}
!57 = !{!54, !8, i64 16}
!58 = !{!54, !8, i64 24}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = !{!"branch_weights", i32 1, i32 1048575}
!63 = distinct !{!63, !12}
end_hunk_1
