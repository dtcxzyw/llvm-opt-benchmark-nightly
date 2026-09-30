Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorspaces?download=true
inline.NumInlined: 104
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dt_colorspaces_pseudoinverse:.loopexit.2.2
  store double %i.fy, ptr %i.ft, align 8, !tbaa !17
  %i.fz = load double, ptr %i.t, align 8, !tbaa !17
  %i.ga = fmul reassoc nsz arcp contract afn double %i.fz, %i.dj
  %i.gb = fadd reassoc nsz arcp contract afn double %i.fy, %i.ga
  store double %i.gb, ptr %i.ft, align 8, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store double 0.000000e+00, ptr %i.gc, align 8, !tbaa !17
  %i.gd = load double, ptr %i.d, align 8, !tbaa !17
  %i.ge = fmul reassoc nsz arcp contract afn double %i.gd, %i.dd ; 2 uses
  store double %i.ge, ptr %i.gc, align 8, !tbaa !17
  %i.gf = load double, ptr %i.l, align 8, !tbaa !17
  %i.gg = fmul reassoc nsz arcp contract afn double %i.gf, %i.cs
  %i.gh = fadd reassoc nsz arcp contract afn double %i.ge, %i.gg ; 2 uses
  store double %i.gh, ptr %i.gc, align 8, !tbaa !17
  %i.gi = load double, ptr %i.t, align 8, !tbaa !17
  %i.gj = fmul reassoc nsz arcp contract afn double %i.gi, %i.ck
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gh, %i.gj
  store double %i.gk, ptr %i.gc, align 8, !tbaa !17
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  store double 0.000000e+00, ptr %i.gl, align 8, !tbaa !17
  %i.gm = load double, ptr %i.d, align 8, !tbaa !17
  %i.gn = fmul reassoc nsz arcp contract afn double %i.gm, %i.db ; 2 uses
  store double %i.gn, ptr %i.gl, align 8, !tbaa !17
  %i.go = load double, ptr %i.l, align 8, !tbaa !17
  %i.gp = fmul reassoc nsz arcp contract afn double %i.go, %i.cq
  %i.gq = fadd reassoc nsz arcp contract afn double %i.gn, %i.gp ; 2 uses
  store double %i.gq, ptr %i.gl, align 8, !tbaa !17
  %i.gr = load double, ptr %i.t, align 8, !tbaa !17
  %i.gs = fmul reassoc nsz arcp contract afn double %i.gr, %i.ci
  %i.gt = fadd reassoc nsz arcp contract afn double %i.gq, %i.gs
  store double %i.gt, ptr %i.gl, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store double 0.000000e+00, ptr %i.gu, align 8, !tbaa !17
  %i.gv = load double, ptr %i.f, align 8, !tbaa !17
  %i.gw = fmul reassoc nsz arcp contract afn double %i.gv, %i.dr ; 2 uses
  store double %i.gw, ptr %i.gu, align 8, !tbaa !17
  %i.gx = load double, ptr %i.n, align 8, !tbaa !17
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gx, %i.dn
  %i.gz = fadd reassoc nsz arcp contract afn double %i.gw, %i.gy ; 2 uses
  store double %i.gz, ptr %i.gu, align 8, !tbaa !17
  %i.ha = load double, ptr %i.v, align 8, !tbaa !17
  %i.hb = fmul reassoc nsz arcp contract afn double %i.ha, %i.dj
  %i.hc = fadd reassoc nsz arcp contract afn double %i.gz, %i.hb
  store double %i.hc, ptr %i.gu, align 8, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  store double 0.000000e+00, ptr %i.hd, align 8, !tbaa !17
  %i.he = load double, ptr %i.f, align 8, !tbaa !17
  %i.hf = fmul reassoc nsz arcp contract afn double %i.he, %i.dd ; 2 uses
  store double %i.hf, ptr %i.hd, align 8, !tbaa !17
  %i.hg = load double, ptr %i.n, align 8, !tbaa !17
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hg, %i.cs
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hf, %i.hh ; 2 uses
  store double %i.hi, ptr %i.hd, align 8, !tbaa !17
  %i.hj = load double, ptr %i.v, align 8, !tbaa !17
  %i.hk = fmul reassoc nsz arcp contract afn double %i.hj, %i.ck
  %i.hl = fadd reassoc nsz arcp contract afn double %i.hi, %i.hk
  store double %i.hl, ptr %i.hd, align 8, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store double 0.000000e+00, ptr %i.hm, align 8, !tbaa !17
  %i.hn = load double, ptr %i.f, align 8, !tbaa !17
  %i.ho = fmul reassoc nsz arcp contract afn double %i.hn, %i.db ; 2 uses
  store double %i.ho, ptr %i.hm, align 8, !tbaa !17
  %i.hp = load double, ptr %i.n, align 8, !tbaa !17
  %i.hq = fmul reassoc nsz arcp contract afn double %i.hp, %i.cq
  %i.hr = fadd reassoc nsz arcp contract afn double %i.ho, %i.hq ; 2 uses
  store double %i.hr, ptr %i.hm, align 8, !tbaa !17
  %i.hs = load double, ptr %i.v, align 8, !tbaa !17
  %i.ht = fmul reassoc nsz arcp contract afn double %i.hs, %i.ci
  %i.hu = fadd reassoc nsz arcp contract afn double %i.hr, %i.ht
  store double %i.hu, ptr %i.hm, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @dt_colorspaces_conversion_matrices_rgb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [4 x [3 x double]], align 16      ; 11 uses
  %i.b = alloca [4 x [3 x double]], align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %.loopexit99, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %3, align 4, !tbaa !14   ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp ueq float %i.e, +inf
  br i1 %i.f, label %.loopexit99, label %.preheader96.preheader

.loopexit99:                                      ; preds = %bb.a, %bb.b
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !14 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load <2 x float>, ptr %.sroa.41.0..sroa_idx, align 4, !tbaa !14
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.47.0.copyload = load float, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !14
  %.pre = tail call float @llvm.fabs.f32(float %.sroa.0.0.copyload)
  %i.h = fcmp ueq float %.pre, +inf
  %i.i = fpext <2 x float> %i.g to <2 x double>
  %i.j = fpext reassoc nsz arcp contract afn float %.sroa.47.0.copyload to double
  br i1 %i.h, label %bb.c, label %.preheader96.preheader

.preheader96.preheader:                           ; preds = %bb.b, %.loopexit99
  %.sroa.0.0179 = phi float [ %.sroa.0.0.copyload, %.loopexit99 ], [ %i.d, %bb.b ]
  %.pn178 = phi ptr [ %0, %.loopexit99 ], [ %3, %bb.b ] ; 4 uses
  %.sroa.47.0175 = phi double [ %i.j, %.loopexit99 ], [ undef, %bb.b ] ; 2 uses
  %i.k = phi <2 x double> [ %i.i, %.loopexit99 ], [ undef, %bb.b ] ; 4 uses
  %.sroa.9.0.in = getelementptr inbounds nuw i8, ptr %.pn178, i64 4
  %.sroa.9.0 = load float, ptr %.sroa.9.0.in, align 4, !tbaa !14
  %.sroa.13.0.in = getelementptr inbounds nuw i8, ptr %.pn178, i64 8
  %.sroa.13.0 = load float, ptr %.sroa.13.0.in, align 4, !tbaa !14
  %.sroa.17.0.in = getelementptr inbounds nuw i8, ptr %.pn178, i64 12
  %.sroa.33.0.in = getelementptr inbounds nuw i8, ptr %.pn178, i64 28
  %i.l = fpext reassoc nsz arcp contract afn float %.sroa.13.0 to double ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, 1.933400e-02
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.q = load <4 x float>, ptr %.sroa.17.0.in, align 4, !tbaa !14 ; 4 uses
  %i.r = load <2 x float>, ptr %.sroa.33.0.in, align 4, !tbaa !14
  %i.s = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.t = fpext <4 x float> %i.s to <4 x double>   ; 2 uses
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.v = shufflevector <4 x float> %i.q, <4 x float> %i.u, <4 x i32> <i32 1, i32 0, i32 1, i32 4>
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fmul reassoc nsz arcp contract afn <4 x double> %i.t, <double 4.124530e-01, double 7.151600e-01, double 1.804230e-01, double 4.124530e-01>
  %i.y = fmul reassoc nsz arcp contract afn <4 x double> %i.w, <double 2.126710e-01, double 3.575800e-01, double f0x3FB279AAE6C8F755, double 2.126710e-01>
  %i.z = shufflevector <4 x double> %i.t, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <2 x double> %i.z, splat (double 3.575800e-01)
  %i.ab = shufflevector <4 x float> %i.q, <4 x float> %i.u, <2 x i32> <i32 1, i32 4>
  %i.ac = fpext <2 x float> %i.ab to <2 x double> ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn <2 x double> %i.ac, splat (double 7.151600e-01)
  %i.ae = fmul reassoc nsz arcp contract afn <2 x double> %i.z, splat (double 1.804230e-01)
  %i.af = fmul reassoc nsz arcp contract afn <2 x double> %i.ac, splat (double f0x3FB279AAE6C8F755)
  %i.ag = fadd reassoc nsz arcp contract afn <4 x double> %i.x, %i.y
  %i.ah = shufflevector <4 x float> %i.q, <4 x float> %i.u, <2 x i32> <i32 2, i32 5>
  %i.ai = fpext <2 x float> %i.ah to <2 x double> ; 3 uses
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ak = fmul reassoc nsz arcp contract afn <4 x double> %i.aj, <double 1.933400e-02, double 1.191930e-01, double 9.502270e-01, double 1.933400e-02>
  %i.al = fadd reassoc nsz arcp contract afn <2 x double> %i.aa, %i.ad
  %i.am = fmul reassoc nsz arcp contract afn <2 x double> %i.ai, splat (double 1.191930e-01)
  %i.an = fadd reassoc nsz arcp contract afn <2 x double> %i.ae, %i.af
  %i.ao = fmul reassoc nsz arcp contract afn <2 x double> %i.ai, splat (double 9.502270e-01)
  %i.ap = fadd reassoc nsz arcp contract afn <4 x double> %i.ag, %i.ak ; 6 uses
  %i.aq = fadd reassoc nsz arcp contract afn <2 x double> %i.al, %i.am ; 4 uses
  %i.ar = fadd reassoc nsz arcp contract afn <2 x double> %i.an, %i.ao ; 4 uses
  %i.as = fmul reassoc nsz arcp contract afn <2 x double> %i.k, <double 4.124530e-01, double 7.151600e-01>
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fmul reassoc nsz arcp contract afn <2 x double> %i.k, <double 3.575800e-01, double 2.126710e-01>
  %i.av = insertelement <2 x double> poison, double %.sroa.47.0175, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul reassoc nsz arcp contract afn <2 x double> %i.aw, <double 1.191930e-01, double 1.933400e-02>
  %i.ay = fadd reassoc nsz arcp contract afn <2 x double> %i.au, %i.at
  %i.az = fadd reassoc nsz arcp contract afn <2 x double> %i.ay, %i.ax ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.bb = fmul reassoc nsz arcp contract afn double %.sroa.47.0175, 9.502270e-01
  %.not90 = icmp eq ptr %4, null
  %i.bc = insertelement <2 x float> poison, float %.sroa.9.0, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %.sroa.0.0179, i64 1
  %i.be = fpext <2 x float> %i.bd to <2 x double> ; 4 uses
  %i.bf = shufflevector <2 x double> %i.k, <2 x double> %i.be, <2 x i32> <i32 0, i32 3>
  %i.bg = fmul reassoc nsz arcp contract afn <2 x double> %i.bf, <double 1.804230e-01, double 4.124530e-01>
  %i.bh = shufflevector <2 x double> %i.k, <2 x double> %i.be, <2 x i32> <i32 1, i32 2>
  %i.bi = fmul reassoc nsz arcp contract afn <2 x double> %i.bh, <double f0x3FB279AAE6C8F755, double 2.126710e-01>
  %i.bj = fadd reassoc nsz arcp contract afn <2 x double> %i.bg, %i.bi ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = fadd reassoc nsz arcp contract afn double %i.bk, %i.bb ; 4 uses
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bm, %i.m
  store double %i.bn, ptr %i.a, align 16, !tbaa !17
  %i.bo = fmul reassoc nsz arcp contract afn <2 x double> %i.be, <double 7.151600e-01, double 1.804230e-01>
  %i.bp = fmul reassoc nsz arcp contract afn <2 x double> %i.be, <double f0x3FB279AAE6C8F755, double 3.575800e-01>
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.br = fadd reassoc nsz arcp contract afn <2 x double> %i.bo, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.l, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul reassoc nsz arcp contract afn <2 x double> %i.bt, <double 1.191930e-01, double 9.502270e-01>
  %i.bv = fadd reassoc nsz arcp contract afn <2 x double> %i.br, %i.bu ; 3 uses
  %i.bw = load double, ptr %i.a, align 16, !tbaa !17 ; 2 uses
  %i.bx = extractelement <2 x double> %i.bv, i64 0
  %i.by = fadd reassoc nsz arcp contract afn double %i.bx, %i.bw
  %i.bz = extractelement <2 x double> %i.bv, i64 1
  %i.ca = fadd reassoc nsz arcp contract afn double %i.bz, %i.by ; 3 uses
  %i.cb = fdiv reassoc nsz arcp contract afn double %i.bw, %i.ca
  store double %i.cb, ptr %i.a, align 16, !tbaa !17
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv reassoc nsz arcp contract afn <2 x double> %i.bv, %i.cd
  store <2 x double> %i.ce, ptr %i.n, align 8, !tbaa !17
  br i1 %.not90, label %.preheader94.us.preheader, label %.preheader94.preheader

.preheader94.preheader:                           ; preds = %.preheader96.preheader
  %i.cf = shufflevector <2 x double> %i.aq, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x double> %i.ap, <4 x double> %i.cf, <2 x i32> <i32 1, i32 5>
  %i.ch = shufflevector <4 x double> %i.ap, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.ci = fadd reassoc nsz arcp contract afn <2 x double> %i.cg, %i.ch
  %i.cj = shufflevector <2 x double> %i.ar, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x double> %i.ap, <4 x double> %i.cj, <2 x i32> <i32 2, i32 5>
  %i.cl = fadd reassoc nsz arcp contract afn <2 x double> %i.ck, %i.ci ; 3 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = fdiv reassoc nsz arcp contract afn <4 x double> %i.ap, %i.cm
  store <4 x double> %i.cn, ptr %i.o, align 8, !tbaa !17
  %5 = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double %i.bl, <2 x double> %i.az) ; 3 uses
  %i.co = shufflevector <2 x double> %i.aq, <2 x double> %i.az, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.cp = shufflevector <2 x double> %i.ar, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x double> %i.co, <4 x double> %i.cp, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.cr = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x double> %i.cr, double %5, i64 1
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cu = fdiv reassoc nsz arcp contract afn <4 x double> %i.cq, %i.ct
  store <4 x double> %i.cu, ptr %i.p, align 8, !tbaa !17
  %i.cv = fdiv reassoc nsz arcp contract afn double %i.bl, %5
  store double %i.cv, ptr %i.ba, align 8, !tbaa !17
  %6 = insertelement <4 x double> poison, double %i.ca, i64 0
  %7 = shufflevector <2 x double> %i.cl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x double> %6, <4 x double> %7, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cw = insertelement <4 x double> %8, double %5, i64 3
  %i.cx = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %i.cw
  store <4 x double> %i.cx, ptr %4, align 8, !tbaa !17
  br label %.split.us

.preheader94.us.preheader:                        ; preds = %.preheader96.preheader
  %i.cy = shufflevector <4 x double> %i.ap, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.cz = fadd reassoc nsz arcp contract afn <2 x double> %i.aq, %i.cy
  %i.da = fadd reassoc nsz arcp contract afn <2 x double> %i.ar, %i.cz ; 2 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dc = fdiv reassoc nsz arcp contract afn <4 x double> %i.ap, %i.db
  store <4 x double> %i.dc, ptr %i.o, align 8, !tbaa !17
  %i.dd = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v2f64(double %i.bl, <2 x double> %i.az) ; 2 uses
  %i.de = shufflevector <2 x double> %i.aq, <2 x double> %i.ar, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.df = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x double> %i.de, <4 x double> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dh = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.di = insertelement <2 x double> %i.dh, double %i.dd, i64 1
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dk = fdiv reassoc nsz arcp contract afn <4 x double> %i.dg, %i.dj
  store <4 x double> %i.dk, ptr %i.p, align 8, !tbaa !17
  %i.dl = fdiv reassoc nsz arcp contract afn double %i.bl, %i.dd
  store double %i.dl, ptr %i.ba, align 8, !tbaa !17
  br label %.split.us

.split.us:                                        ; preds = %.preheader94.preheader, %.preheader94.us.preheader
  %.not88 = icmp eq ptr %1, null
  br i1 %.not88, label %.loopexit, label %.preheader91.preheader

.preheader91.preheader:                           ; preds = %.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader91.preheader, %.split.us
  %.not89 = icmp eq ptr %2, null
  br i1 %.not89, label %bb.c, label %.preheader

.preheader:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call fastcc void @dt_colorspaces_pseudoinverse(ptr noundef nonnull %i.a, ptr noundef %i.b)
  %gep112.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dm = load <4 x double>, ptr %i.b, align 16, !tbaa !17
  %i.dn = load <4 x double>, ptr %gep112.2, align 16, !tbaa !17
  %i.do = shufflevector <4 x double> %i.dm, <4 x double> %i.dn, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  store <4 x double> %i.do, ptr %2, align 8, !tbaa !17
  %invariant.gep111.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %gep112.2.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dq = load <4 x double>, ptr %invariant.gep111.1, align 8, !tbaa !17
  %i.dr = load <4 x double>, ptr %gep112.2.1, align 8, !tbaa !17
  %i.ds = shufflevector <4 x double> %i.dq, <4 x double> %i.dr, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  store <4 x double> %i.ds, ptr %i.dp, align 8, !tbaa !17
  %invariant.gep111.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %gep112.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.du = load <4 x double>, ptr %invariant.gep111.2, align 16, !tbaa !17
  %i.dv = load <4 x double>, ptr %gep112.2.2, align 16, !tbaa !17
  %i.dw = shufflevector <4 x double> %i.du, <4 x double> %i.dv, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  store <4 x double> %i.dw, ptr %i.dt, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %.preheader, %.loopexit99
  %.082 = phi i32 [ 0, %.loopexit99 ], [ 1, %.preheader ], [ 1, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.082
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_colorspaces_cygm_apply_coeffs_to_rgb(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #15 {
.preheader54:
  %i.a = load double, ptr %4, align 8, !tbaa !17
  %i.b = load float, ptr %5, align 4, !tbaa !14
  %i.c = fpext reassoc nsz arcp contract afn float %i.b to double ; 3 uses
  %i.d = fmul reassoc nsz arcp contract afn double %i.a, %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = fpext reassoc nsz arcp contract afn float %i.h to double ; 3 uses
  %i.j = fmul reassoc nsz arcp contract afn double %i.f, %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = fpext reassoc nsz arcp contract afn float %i.n to double ; 3 uses
  %i.p = fmul reassoc nsz arcp contract afn double %i.l, %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !14
  %i.u = fpext reassoc nsz arcp contract afn float %i.t to double ; 3 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.r, %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !17
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, %i.c ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !17
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, %i.i ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !17
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, %i.o ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = load double, ptr %i.af, align 8, !tbaa !17
  %i.ah = fmul reassoc nsz arcp contract afn double %i.ag, %i.u ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !17
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, %i.c ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = fmul reassoc nsz arcp contract afn double %i.am, %i.i ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, %i.o ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17
  %i.at = fmul reassoc nsz arcp contract afn double %i.as, %i.u ; 3 uses
  %i.au = load double, ptr %3, align 8, !tbaa !17 ; 3 uses
  %i.av = fmul reassoc nsz arcp contract afn double %i.au, %i.d
  %gep.1 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = load double, ptr %gep.1, align 8, !tbaa !17 ; 3 uses
  %i.ax = fmul reassoc nsz arcp contract afn double %i.aw, %i.j
  %i.ay = fadd reassoc nsz arcp contract afn double %i.av, %i.ax
  %gep.2 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = load double, ptr %gep.2, align 8, !tbaa !17 ; 3 uses
  %i.ba = fmul reassoc nsz arcp contract afn double %i.az, %i.p
  %i.bb = fadd reassoc nsz arcp contract afn double %i.ay, %i.ba
  %gep.3 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bc = load double, ptr %gep.3, align 8, !tbaa !17 ; 3 uses
  %i.bd = fmul reassoc nsz arcp contract afn double %i.bc, %i.v
  %i.be = fadd reassoc nsz arcp contract afn double %i.bb, %i.bd ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load double, ptr %invariant.gep.1, align 8, !tbaa !17 ; 3 uses
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, %i.d
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bh = load double, ptr %gep.1.1, align 8, !tbaa !17 ; 3 uses
  %i.bi = fmul reassoc nsz arcp contract afn double %i.bh, %i.j
  %i.bj = fadd reassoc nsz arcp contract afn double %i.bg, %i.bi
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bk = load double, ptr %gep.2.1, align 8, !tbaa !17 ; 3 uses
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bk, %i.p
  %i.bm = fadd reassoc nsz arcp contract afn double %i.bj, %i.bl
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bn = load double, ptr %gep.3.1, align 8, !tbaa !17 ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, %i.v
  %i.bp = fadd reassoc nsz arcp contract afn double %i.bm, %i.bo ; 2 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load double, ptr %invariant.gep.2, align 8, !tbaa !17 ; 3 uses
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, %i.d
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bs = load double, ptr %gep.1.2, align 8, !tbaa !17 ; 3 uses
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bs, %i.j
  %i.bu = fadd reassoc nsz arcp contract afn double %i.br, %i.bt
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bv = load double, ptr %gep.2.2, align 8, !tbaa !17 ; 3 uses
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bv, %i.p
  %i.bx = fadd reassoc nsz arcp contract afn double %i.bu, %i.bw
  %gep.3.2 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.by = load double, ptr %gep.3.2, align 8, !tbaa !17 ; 3 uses
  %i.bz = fmul reassoc nsz arcp contract afn double %i.by, %i.v
  %i.ca = fadd reassoc nsz arcp contract afn double %i.bx, %i.bz ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn double %i.au, %i.y
  %i.cc = fmul reassoc nsz arcp contract afn double %i.aw, %i.ab
  %i.cd = fadd reassoc nsz arcp contract afn double %i.cb, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn double %i.az, %i.ae
  %i.cf = fadd reassoc nsz arcp contract afn double %i.cd, %i.ce
  %i.cg = fmul reassoc nsz arcp contract afn double %i.bc, %i.ah
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cf, %i.cg ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn double %i.bf, %i.y
  %i.cj = fmul reassoc nsz arcp contract afn double %i.bh, %i.ab
  %i.ck = fadd reassoc nsz arcp contract afn double %i.ci, %i.cj
  %i.cl = fmul reassoc nsz arcp contract afn double %i.bk, %i.ae
  %i.cm = fadd reassoc nsz arcp contract afn double %i.ck, %i.cl
  %i.cn = fmul reassoc nsz arcp contract afn double %i.bn, %i.ah
  %i.co = fadd reassoc nsz arcp contract afn double %i.cm, %i.cn ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn double %i.bq, %i.y
  %i.cq = fmul reassoc nsz arcp contract afn double %i.bs, %i.ab
  %i.cr = fadd reassoc nsz arcp contract afn double %i.cp, %i.cq
  %i.cs = fmul reassoc nsz arcp contract afn double %i.bv, %i.ae
  %i.ct = fadd reassoc nsz arcp contract afn double %i.cr, %i.cs
  %i.cu = fmul reassoc nsz arcp contract afn double %i.by, %i.ah
  %i.cv = fadd reassoc nsz arcp contract afn double %i.ct, %i.cu ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn double %i.au, %i.ak
  %i.cx = fmul reassoc nsz arcp contract afn double %i.aw, %i.an
  %i.cy = fadd reassoc nsz arcp contract afn double %i.cw, %i.cx
  %i.cz = fmul reassoc nsz arcp contract afn double %i.az, %i.aq
  %i.da = fadd reassoc nsz arcp contract afn double %i.cy, %i.cz
  %i.db = fmul reassoc nsz arcp contract afn double %i.bc, %i.at
  %i.dc = fadd reassoc nsz arcp contract afn double %i.da, %i.db ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn double %i.bf, %i.ak
  %i.de = fmul reassoc nsz arcp contract afn double %i.bh, %i.an
  %i.df = fadd reassoc nsz arcp contract afn double %i.dd, %i.de
  %i.dg = fmul reassoc nsz arcp contract afn double %i.bk, %i.aq
  %i.dh = fadd reassoc nsz arcp contract afn double %i.df, %i.dg
  %i.di = fmul reassoc nsz arcp contract afn double %i.bn, %i.at
  %i.dj = fadd reassoc nsz arcp contract afn double %i.dh, %i.di ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn double %i.bq, %i.ak
  %i.dl = fmul reassoc nsz arcp contract afn double %i.bs, %i.an
  %i.dm = fadd reassoc nsz arcp contract afn double %i.dk, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn double %i.bv, %i.aq
  %i.do = fadd reassoc nsz arcp contract afn double %i.dm, %i.dn
end_hunk_0
